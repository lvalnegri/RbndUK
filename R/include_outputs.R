#########################################################################################################################
# dmpkg.bnduk * Boundaries UK * Copy csv outputs of the aggregation process from PUBLIC repo to package DATA-RAW subdir #
#########################################################################################################################

bnames <- dmpkg.geouk::location_types[, .(location_type, max_child)]
bnames <- bnames[!is.na(max_child)]

for(bn in bnames){
    bname <- paste0(bn$max_child, '_to_', bn$location_type, '.csv')
    if(file.exists(file.path(dmpkg.funs::bnduk_spath, bn))){
        message('Processing <', bn, '>')
        file.copy( file.path(dmpkg.funs::ext_path, 'uk', 'geography', 'lookups', bname), file.copy('data-raw', bname) )
    } else{
        message('File not present for <', bn[1], '>!')
    }
}
