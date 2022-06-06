#################################################################
# UK GEOGRAPHY * 76 - Build UK HexGrid with postcodes reference #
#################################################################

pkgs <- c('popiFun', 'data.table', 'dggridR', 'fst')
invisible(lapply(pkgs, require, character.only = TRUE))
	
message('loading postcodes data...')
pch <- read_fst(file.path(geouk_path, 'postcodes'), columns = c('postcode', 'x_lon', 'y_lat'), as.data.table = TRUE)

message('building the grids by metric (M / I) and spacing (1/2, 1, 2)...')
for(ms in c(FALSE, TRUE)){
    
    message('===============================================')
    message('building the grids by ', ifelse(ms, 'metric', 'imperial'), ' measurement...')
    
    for(sp in 0:5){
        
        hname <- paste0(ifelse(ms, 'M', 'I'), sp)
        
        message(' + building the grids by spacing ', sp, '...')
        dggs <- dgconstruct(spacing = ifelse(sp == 0, 0.5, sp), metric = ms, resround = 'down')

        message(' + adding to postcodes the corresponding grid...')
        pch$cell <- dgGEO_to_SEQNUM(dggs, pch$x_lon, pch$y_lat)$seqnum
        
        message(' + calculate the centroid of the cells')
        cellcenters <- dgSEQNUM_to_GEO(dggs, pch$cell)
        
        message(' + getting the grid cell boundaries for cells with some postcodes in them...')
        grid <- dgcellstogrid(dggs, pch$cell, frame = FALSE, wrapcells = TRUE)
        
        message(' + converting the grid cell boundaries in a formal SpatialPolygonsDataFrame...')
        grid_ids <- as.data.frame(sapply(slot(grid, 'polygons'), function(x) slot(x, 'ID')), stringsAsFactors = FALSE)
        row.names(grid_ids) <- sapply(slot(grid, 'polygons'), function(x) slot(x, 'ID'))
        grid <- SpatialPolygonsDataFrame(grid, grid_ids)
        colnames(grid@data) <- c('id')

        message(' + convert grid to WGS84...')
        grid <- spTransform(grid, crs.wgs)

        message(' + saving the polygons in RDS format...')
        saveRDS(grid, file.path(bnduk_path, 'rds', 'hexgrid', hname) )
        
        setnames(pch, 'cell', hname)
        
    message('-----------------------------------------------')
    
    }

}

message('adding the reference columns to the postcodes table...')
pc <- read_fst(file.path(geouk_path, 'postcodes'), as.data.table = TRUE)
cols <- names(pc)
pc <- pch[pc, on = 'postcode']
setcolorder(pc, cols)

message('saving postcodes as fst with index by PCA and PCD...')
write_fst_idx('postcodes', c('PCA', 'PCD'), pc, geouk_path, 'postcodes')

message('saving postcodes as fst with index by LAD...')
write_fst_idx('postcodes', c('RGN', 'LAD'), pc, geouk_path, 'postcodes_lad')

message('cleaning...')
rm(list = ls())
gc()
