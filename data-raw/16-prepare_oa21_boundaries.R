####################################################
# UK GEOGRAPHY * 31 - Prepare UK file for OAs 2021 #
####################################################

nc <- parallel::detectCores() - 2
bpath <- file.path(Rfuns::bnduk_path, 's00')

url <- c(pfx = 'https://opendata.arcgis.com/api/v3/datasets/', sfx = '_0/downloads/data?format=shp&spatialRefId=27700&where=1%3D1')
ids <- c( 'OA' = 'a76086060b26451a8c62e056592edaa9', 'LSOA' = '2242a61368144cfcb3511de16a012c5c', 'MSOA' = '38255434eb54456cbd202f54fddfe5c9')

for(id in ids){
    idn <- names(ids)[which(ids == id)]
    idc <- paste0(idn, '21')
    message('\nProcessing ', idn)
    message(' - Reading boundaries')
    y <- Rgeo::dwn_shp_zip(paste0(url['pfx'], id, url['sfx']), paste0(idc, 'CD'), idc)
    message(' - Saving as BNG')
    qs::qsave(y, file.path(bpath, paste0(idc, 'gb')), nthreads = nc)
    message(' - Transform and saving as WGS84')
    y <- y |> sf::st_transform(4326)
    qs::qsave(y, file.path(bpath, idc), nthreads = nc)
    message(' - Simplifying:')
    for(p in seq(10, 50, 10)){
        message('   * ', p, '%...')
        y |> rmapshaper::ms_simplify(keep = p/100, keep_shapes = TRUE) |> 
                sf::st_make_valid() |> 
                dplyr::arrange(!!idc) |>
                qs::qsave(file.path(Rfuns::bnduk_path, paste0('s', p), idc), nthreads = nc)
    }
}

message('Cleaning...')
rm(list = ls())
gc()
