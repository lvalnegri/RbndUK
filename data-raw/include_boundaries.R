####################################################################################
# RbndUK * Boundaries UK * Copy boundaries from PUBLIC repo to package DATA folder #
####################################################################################

bnames <-c(RgeoUK::location_types$location_type, 'UK', 'UKni', 'CTRYni', 'RGNni')

for(bn in bnames){
    if(file.exists(file.path(Rfuns::bnduk_spath, bn))){
        message('Processing <', bn, '>')
        assign(bn, readRDS(file.path(Rfuns::bnduk_spath, bn)))
        save(list = bn, file = file.path('data', paste0(bn, '.rda')), version = 3, compress = 'gzip')
    } else{
        message('Boundaries for <', bn, '> not found!')
    }
}

rm(list = ls())

# Census Small Areas 2021 while waiting the end of publication
bnames <-c('OA21', 'LSOA21', 'MSOA21') 
for(bn in bnames){
    message('Processing <', bn, '>')
    assign(bn, qs::qread(file.path(Rfuns::bnduk_spath, bn), nthreads = ))
    save(list = bn, file = file.path('data', paste0(bn, '.rda')), version = 3, compress = 'gzip')
}


bn <- 'CIS'
file.copy(paste0('../RgeoUK/data-raw/shp/', bn), file.path(Rfuns::bnduk_spath, bn))
assign(bn, readRDS(file.path(Rfuns::bnduk_spath, bn)))
save(list = bn, file = file.path('data', paste0(bn, '.rda')), version = 3, compress = 'gzip')
document()
