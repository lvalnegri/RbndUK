##############################################################
# UK GEOGRAPHY * 11 - Prepare UK file for OAs (Output Areas) #
##############################################################

Rfuns::load_pkgs('sf')

in_path <- file.path(ext_path, 'uk', 'geography', 'boundaries', 'OA')
out_path <- file.path(bnduk_path, 'shp')

# download files
down_unz_ren_shp(
  'https://opendata.arcgis.com/api/v3/datasets/a76b2f87057b43d989d8f01733104d62_0/downloads/data?format=shp&spatialRefId=27700', 
  in_path, 'EW'  
)
down_unz_ren_shp('https://www.nrscotland.gov.uk/files/geography/output-area-2011-mhw.zip', in_path, 'SC')
down_unz_ren_shp('https://www.nisra.gov.uk/sites/nisra.gov.uk/files/publications/SA2011_Esri_Shapefile_0.zip', in_path, 'NI')

# clean and transform each 
rsrt <- function(x, y) st_read(in_path, x) |> dplyr::select(y) |> dplyr::rename('OA' = 1) |> st_transform(4326) 
ye <- rsrt('EW', 'OA11CD') 
ys <- rsrt('SC', 'code')  
yn <- rsrt('NI', 'SA2011')

# create unique UK boundary spatial object
y <- rbind(ye, ys, yn) |> dplyr::arrange(OA)

# check count by country: E 171,372, W 10,036 (EW: 181,408), S 46,351 (GB: 227,759), N 4,537 (UK: 232,296) 
table(substr(y$OA, 1, 1))

# save polygons in original folder
st_write(y, file.path(in_path, 'UK.shp'), delete_layer = TRUE)

# save polygons in the boundaries/shp+s00 folders for further processing
st_write(y, file.path(out_path, 'OA.shp'), delete_layer = TRUE)
saveRDS(y |> st_make_valid(), file.path(bnduk_path, 's00', 'OA'))
saveRDS(y |> st_transform(27700) |> st_make_valid(), file.path(bnduk_path, 's00', 'OAgb'))

# reduce the complexity of the boundaries, saving in "rds" format
for(p in seq(10, 50, 10)){
    message('Simplifying ', as.numeric(p), '%...')
    rbind(
        rmapshaper::ms_simplify(ye, keep = as.numeric(p)/100, keep_shapes = TRUE),
        rmapshaper::ms_simplify(ys, keep = as.numeric(p)/100, keep_shapes = TRUE),
        rmapshaper::ms_simplify(yn, keep = as.numeric(p)/100, keep_shapes = TRUE)
    ) |> 
        st_make_valid() |> 
        dplyr::arrange(OA) |>
        saveRDS(file.path(bnduk_path, paste0('s', p), 'OA'))
}

message('Cleaning...')
rm(list = ls())
gc()
