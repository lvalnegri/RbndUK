####################################################################################################
# UK GEOGRAPHY * 16 - SINGLE AREA POLYGONS AS CONVEX HULL FROM POSTCODES OR UNION OF OUTPUT AREAS) #
####################################################################################################

pkgs <- c('dmpkg.funs', 'concaveman', 'data.table', 'fst', 'rgeos', 'raster', 'sf', 'sp')
invisible(lapply(pkgs, require, char = TRUE))

out_path <- file.path(bnduk_path, 'postcodes')

message('Loading data...')
cols <- c('LSOA', 'MSOA', 'WARD', 'PAR', 'PFN', 'PCS', 'PCD', 'PCT', 'BUA', 'BUAS')
pc <- read_fst_idx(file.path(geouk_path, 'postcodes'), 1, c('PCU', 'x_lon', 'y_lat', 'OA', cols))
bnd <- readRDS(file.path(bnduk_spath, 'OA'))

message('Deleting old files...')
system(paste('rm', file.path(out_path, 'oa', '*')))
system(paste('rm', file.path(out_path, 'ch', '*')))

for(col in cols){
    message('\nProcessing geography type: ', col)
    ys <- levels(droplevels(pc[[col]]))
    for(ysl in ys){
        
        message('\nProcessing location id: ', ysl)
        
        message(' - by convex hull...')
        pcs <- unique(pc[get(col) == ysl, .(x_lon, y_lat)])
        coordinates(pcs) <- ~x_lon+y_lat
        if(length(pcs) <= 4){
            yh <- gConvexHull(pcs)
        } else {
            yh <- as(concaveman(st_as_sf(pcs), concavity = 2), 'Spatial')
        }
        yh <- gBuffer(yh, width = 0.0005, joinStyle = 'MITRE', capStyle = 'SQUARE')
        yh <- SpatialPolygonsDataFrame(yh, data.frame('id' = ysl), match.ID = FALSE)
        proj4string(yh) <- crs.wgs
        yh <- spTransform(yh, crs.wgs)
        saveRDS(yh, file.path(out_path, 'ch', ysl))
        
        message(' - by output areas...')
        pcs <- unique(pc[get(col) == ysl, .(OA)])
        yb <- aggregate(subset(bnd, bnd$id %in% pcs$OA))
        yb <- SpatialPolygonsDataFrame(yb, data.frame('id' = ysl))
        saveRDS(yb, file.path(out_path, 'oa', ysl))
        
    }
}
