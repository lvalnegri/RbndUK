#########################################################################################
# dmpkg.geouk * Boundaries UK * Copy boundaries from PUBLIC repo to package DATA subdir #
#########################################################################################

bnames <- levels(dmpkg.geouk::location_types$location_type)

for(bn in bnames){
    if(file.exists(file.path(dmpkg.funs::bnduk_spath, bn))){
        message('Processing <', bn, '>')
        message(' * reading...')
        assign(bn, readRDS(file.path(dmpkg.funs::bnduk_spath, bn)))
        message(' * saving shapefile...')
        rgdal::writeOGR(get(bn), dsn = 'data-raw', layer = bn, driver = 'ESRI Shapefile', overwrite_layer = TRUE)
        message(' * saving compressed rda...')
        save(list = bn, file = file.path('data', paste0(bn, '.rda')), version = 3, compress = 'gzip')
    } else{
        message('Boundaries for <', bn, '> not found!')
    }
}

rm(list = c(bnames, 'bn', 'bnames'))
