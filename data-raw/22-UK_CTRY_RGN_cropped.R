##############################################
# UK GEOGRAPHY * 50 - Maps for UK, CTRY, RGN #
##############################################

dmpkg.funs::load_pkgs(dmp = FALSE, 'sf')

in_path <- file.path(ext_path, 'uk', 'geography', 'boundaries')
out_path <- file.path(bnduk_path, 'shp')

# download files
rsrt <- function(x, y, in_path) st_read(in_path, x) |> dplyr::select(y) |> dplyr::rename(!!x := 1) |> st_transform(4326) 
down_unz_ren_shp( dmpkg.geouk::location_types[location_type == 'CTRY', boundaries], file.path(in_path, 'CTRY'), 'CTRY' )
down_unz_ren_shp( dmpkg.geouk::location_types[location_type == 'RGN', boundaries], file.path(in_path, 'RGN'), 'RGN' )

# countries
yc <- rsrt('CTRY', 'ctry19cd', file.path(in_path, 'CTRY'))
saveRDS(yc, file.path(bnduk_path, 's00', 'CTRY'))

# whole UK
uk <- rmapshaper::ms_dissolve(yc) |> dplyr::rename('UK' = 1)
saveRDS(uk, file.path(bnduk_path, 's00', 'UK'))

# regions england plus other countries
yr <- rsrt('RGN', 'rgn19cd', file.path(in_path, 'RGN')) 
saveRDS(yr, file.path(bnduk_path, 's00', 'RGNE'))
ycr <- subset(yc, CTRY != 'E92000001')  |> dplyr::rename('RGN' = 1) |> rbind(yr)
saveRDS(ycr, file.path(bnduk_path, 's00', 'RGN'))

# crop Scotland northern islands from the above
coords <- data.frame(
    x_lon = c(-8.20,  -8.20,  1.77, 1.77, -8.20),
    y_lat = c(49.95, 58.70, 58.70, 49.95, 49.95)
)
ni <- st_as_sf(sp::SpatialPolygons(list( sp::Polygons(list( sp::Polygon(coords) ), 1) )))
st_crs(ni) <- 4326
saveRDS(st_crop(uk, ni), file.path(bnduk_path, 's00', 'UKni'))
saveRDS(st_crop(yc, ni), file.path(bnduk_path, 's00', 'CTRYni'))
saveRDS(st_crop(ycr, ni), file.path(bnduk_path, 's00', 'RGNni'))

rm(list = ls())
gc()
