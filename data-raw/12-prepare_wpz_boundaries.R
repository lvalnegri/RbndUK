#######################################################################
# UK GEOGRAPHY * 12 - Prepare UK shapefile for WPZs (WorkPlace Zones) #
#######################################################################

dmpkg.funs::load_pkgs(dmp = FALSE, 'sf')

in_path <- file.path(ext_path, 'uk', 'geography', 'boundaries', 'WPZ')
out_path <- file.path(bnduk_path, 'shp')

# download files
down_unz_ren_shp(
  'https://opendata.arcgis.com/api/v3/datasets/a399c2a5922a4beaa080de63c0a218a3_2/downloads/data?format=shp&spatialRefId=27700', 
  in_path, 'EW'  
)
down_unz_ren_shp('https://www.nrscotland.gov.uk/files//geography/products/workplacezones2011scotland.zip', in_path, 'SC')
down_unz_ren_shp('https://www.nisra.gov.uk/sites/nisra.gov.uk/files/publications/WZ2011_NI_ESRI_0.zip', in_path, 'NI')

# clean and transform each 
rsrt <- function(x, y) st_read(in_path, x) |> dplyr::select(y) |> dplyr::rename('WPZ' = 1) |> st_transform(4326) 
ye <- rsrt('EW', 'wz11cd') 
ys <- rsrt('SC', 'WZCD')  
yn <- rsrt('NI', 'CD')

# create unique UK boundary spatial object
y <- rbind(ye, ys, yn) |> dplyr::arrange(WPZ)

# check count by country: E: 50,868, W: 2,710 (EW: 53,578), SCO: 5,375 (GB: 58,953), N 1,756 (UK: 60,709)  
table(substr(y$WPZ, 1, 1))

# save polygons in original folder
st_write(y, file.path(in_path, 'UK.shp'), delete_layer = TRUE)

# save polygons in the boundaries/shp+s00 folders for further processing
st_write(y, file.path(out_path, 'WPZ.shp'), delete_layer = TRUE)
saveRDS(y |> st_make_valid(), file.path(bnduk_path, 's00', 'WPZ'))

# reduce the complexity of the boundaries, saving in "rds" format
for(p in seq(10, 50, 10)){
    message('Simplifying ', as.numeric(p), '%...')
    rbind(
        rmapshaper::ms_simplify(ye, keep = as.numeric(p)/100, keep_shapes = TRUE),
        rmapshaper::ms_simplify(ys, keep = as.numeric(p)/100, keep_shapes = TRUE),
        rmapshaper::ms_simplify(yn, keep = as.numeric(p)/100, keep_shapes = TRUE)
    ) |> 
        st_make_valid() |> 
        dplyr::arrange(WPZ) |>
        saveRDS(file.path(bnduk_path, paste0('s', p), 'WPZ'))
}

message('Cleaning...')
rm(list = ls())
gc()
