#########################################################################################
# dmpkg.bnduk * Boundaries UK * Copy boundaries from PUBLIC repo to package DATA folder #
#########################################################################################

dmpkg.funs::load_pkgs(dmp = FALSE)

bnames <-dmpkg.geouk::location_types$location_type

for(bn in bnames){
    if(file.exists(file.path(bnduk_spath, bn))){
        message('Processing <', bn, '>')
        assign(bn, readRDS(file.path(bnduk_spath, bn)))
        save(list = bn, file = file.path('data', paste0(bn, '.rda')), version = 3, compress = 'gzip')
    } else{
        message('Boundaries for <', bn, '> not found!')
    }
}

rm(list = ls())
