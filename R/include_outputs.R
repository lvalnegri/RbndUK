#########################################################################################################################
# dmpkg.bnduk * Boundaries UK * Copy csv outputs of the aggregation process from PUBLIC repo to package DATA-RAW subdir #
#########################################################################################################################

bnames <- dmpkg.geouk::location_types[, c('location_type', 'max_child')]
bnames <- bnames[!is.na(bnames$max_child), ]

for(idx in 1:nrow(bnames)){
    bname <- paste0(bnames[idx, 'max_child'], '_to_', bnames[idx, 'location_type'], '.csv')
    if(file.exists(file.path(dmpkg.funs::bnduk_spath, bnames[idx, 'max_child']))){
        message('Processing <', bnames[idx, 'max_child'], '>')
        file.copy( file.path(dmpkg.funs::ext_path, 'uk', 'geography', 'lookups', bname), file.copy('data-raw', bname) )
    } else{
        message('File not present for <',bnames[idx, 'max_child'], '>!')
    }
}
