####################################################
# UK GEOGRAPHY * 77 - Crop UK Borders from HexGrid #
####################################################

pkgs <- c('popiFun', 'rgeos')
invisible(lapply(pkgs, require, character.only = TRUE))
	
bnd_hpath <- file.path(bnduk_path, 'rds', 'hexgrid')

message('loading UK boundaries...')
uk <- readRDS(file.path(bnduk_spath, 'CTRY'))
uk <- spTransform(uk, crs.gb)
uk <- gBuffer(uk, byid = TRUE, width = 0)
uk <- gUnaryUnion(uk)
uk <- spTransform(uk, crs.wgs)

for(hname in dir(bnd_hpath)){
    
    message('Processing file ', hname, '...')

    message(' + reading the polygons...')
    readRDS(grid, file.path(bnd_hpath, hname) )

    message(' + cutting out UK borders...')
    grid <- gIntersection(grid, uk, byid = TRUE)
    
    message(' + converting the grid cell boundaries in a formal SpatialPolygonsDataFrame...')
    grid_ids <- as.data.frame(sapply(slot(grid, 'polygons'), function(x) slot(x, 'ID')), stringsAsFactors = FALSE)
    row.names(grid_ids) <- sapply(slot(grid, 'polygons'), function(x) slot(x, 'ID'))
    grid <- SpatialPolygonsDataFrame(grid, grid_ids)
    colnames(grid@data) <- c('id')

    message(' + saving the polygons in RDS format...')
    saveRDS(grid, file.path(bnd_hpath, hname) )
    
    message('===============================================')
    
}

message('cleaning...')
rm(list = ls())
gc()
