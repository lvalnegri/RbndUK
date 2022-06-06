area_type <- 'OA'
center_code <- 'E00000001'
palette = 'Reds'
neigh_order = 1
pct = 10
maptile = leaflet::providers$Stamen.TonerLite
bnd_path = file.path(Sys.getenv('PUB_PATH'), 'boundaries', 'uk', 'rds')
data_path = file.path(Sys.getenv('PUB_PATH'), 'datasets', 'uk', 'geography')

# define functions
get_dts <- function(
                area_type,
                center_code,
                neigh_path = file.path(Sys.getenv('PUB_PATH'), 'datasets', 'uk', 'geography', 'neighbours')
            ){
    
        idx <- fst::read_fst(file.path(neigh_path, paste0(area_type, '.idx')), as.data.table = TRUE)
        fst::read_fst(file.path(neigh_path, area_type), 
                from = idx[location_id == center_code, n1], 
                to = idx[location_id == center_code, n2], 
                columns = c('neighbour_id'),
                as.data.table = TRUE
        )
}
get_neighs <- function(area_type, center_code, neigh_order = 1){
    get_dts(area_type, center_code)
}

draw_neighbors <- function(
                    area_type, 
                    center_code, 
                    neigh_order = 1, 
                    maptile = leaflet::providers$Stamen.TonerLite,
                    palette = 'Reds', 
                    bnd_path = file.path(Sys.getenv('PUB_PATH'), 'boundaries', 'uk', 'rds'),
                    data_path = file.path(Sys.getenv('PUB_PATH'), 'datasets', 'uk', 'geography'),
                    pct = 10
    ){
        pkgs <- c('data.table', 'leaflet', 'leaflet.extras')
        lapply(pkgs, require, char = TRUE)
        
        dts <- get_neighs(area_type, center_code, neigh_order)
        area.lst <- c(center_code, dts$neighbour_id)
        bnd <- readRDS(file.path(bnd_path, paste0('s', pct), area_type))
        bnd <- subset(bnd, bnd$id %in% area.lst)
        if(area_type %in% c('OA', 'WPZ')){
            lcn <- data.table(location_id = area.lst, name = area.lst, lbl = area.lst)
        } else {
            lcn <- fst::read_fst(file.path(data_path, 'locations'), columns = c('type', 'location_id', 'name'), as.data.table = TRUE)
            lcn <- lcn[
                type == area_type & location_id %in% area.lst, 
                .(location_id, name, lbl = paste0(name, ' (', location_id, ')'))
            ]
        }
        bnd <- merge(bnd, lcn, by.x = 'id', by.y = 'location_id')
        bnd.c <- subset(bnd, bnd$id == center_code)
        bnd.n <- subset(bnd, bnd$id %in% dts$neighbour_id)
        bnd.bb <- sp::bbox(bnd)
        
        
        leaflet() %>% 
            addProviderTiles(maptile) %>% 
            fitBounds(bnd.bb[1], bnd.bb[2], bnd.bb[3], bnd.bb[4]) %>% 
            addResetMapButton() %>% 
            addPolygons(
                data = rmapshaper::ms_dissolve(bnd),
                color = 'black',
                weight = 6
            ) %>% 
            addPolygons(
                data = bnd.c,
                color = 'red',
                weight = 4,
                label = ~lbl,
                highlightOptions = highlightOptions(
                    color = 'red',
                    weight = 8,
                    bringToFront = TRUE
                )
            ) %>% 
            addPolygons(
                data = bnd.n,
                color = 'blue',
                weight = 2,
                label = ~lbl,
                highlightOptions = highlightOptions(
                    color = 'gold',
                    weight = 6,
                    bringToFront = TRUE
                )
            )

}

draw_neighbors('PCA', 'SE')
draw_neighbors('PCD', 'SE17')
draw_neighbors('OA', 'E00000001')
