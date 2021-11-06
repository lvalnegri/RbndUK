##################################################################################
# UK GEOGRAPHY * 56 - BOUNDARIES: dissolve OAs boundaries to create parent areas #
##################################################################################
# check exact link: nrow(output_areas[, .N, .(X, Y)][!is.na(Y), .N, X][N > 1]) == 0

dmpkg.funs::load_pkgs(dmp = FALSE, 'sf', 'dmpkg.geouk')

lcn <- setdiff(location_types$location_type, c('OA', 'WPZ', NA))
message('Location types not found: ', paste(lcn[which(!lcn %in% names(output_areas))], collapse = ', '))
lcn <- lcn[which(lcn %in% names(output_areas))]
rgns <- unique(output_areas$RGN)

create_parent <- function(child, parent, p, verbose = TRUE){ # X > CHILD (left), Y > PARENT (right)
    if(verbose) message(' - merging boundaries and lookups...')
    yc <- merge(
            readRDS(file.path(bnduk_path, paste0('s', p), child)) |> dplyr::rename(X := !!child),
            unique(output_areas[, .(X = get(child), Y = get(parent))][!is.na(Y)])
    )
    if(verbose) message(' - dissolving...')
    if(child == 'OA'){
        y <- NULL
        for(rgn in rgns){
            if(verbose) message('   * region ', rgn, '...')
            yt <- yc |> subset(X %in% output_areas[RGN == rgn, OA])
            if(nrow(yt) > 0) y <- rbind(y, yt |> rmapshaper::ms_dissolve('Y') )
        }
    } else {
        y <- yc |> rmapshaper::ms_dissolve('Y')
    }
    if(verbose) message(' - validating...')
    y <- y |> st_make_valid()
    if(verbose) message(' - saving...')
    y |> dplyr::arrange(Y) |>
            dplyr::rename(!!parent := Y) |>
            saveRDS(file.path(bnduk_path, paste0('s', p), parent))
}

for(p in c('00', seq(10, 50, 10))){
    message('\n =============================================')
    message('Processing boundaries simplified at ', as.numeric(p), '%...\n')
    for(lc in lcn){
        message('Processing location type: ', lc)
        create_parent(location_types[location_type == lc, max_child], lc, p)
    }
}

message('Cleaning...')
rm(list = ls())
gc()
