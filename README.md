## Digital Vector Boundaries related to UK Geographies

*Last update: 21-11-2021*

The files included in this [*R*](https://cran.r-project.org/) package are now all of class [`sf`](https://cran.r-project.org/package=sf), simplified at 20% (`rmapshaper::ms_simplify`), with the *CRS* transformed to [WGS84, World Geodetic System 1984 (epsg:4326)](https://epsg.io/4326) for easier web interactive mapping using the [leaflet]() package as basis.

All boundaries, but `OA` and `WPZ`, are obtained as the dissolution (`rmapshaper::ms_dissolve`) of the union (`sf::st_union`) of the original national `OA` boundaries (detailed below) using the [OA lookups table](https://github.com/lvalnegri/dmpkg.geouk/blob/main/data-raw/output_areas.csv) built in the [dmpkg.geouk](https://github.com/lvalnegri/dmpkg.geouk) package. This implies that these boundaries, while adequate for statistical purposes, do not comply with ONS geographical specifications.

Besides the geography component, all files contains only the ONS code.

They are related to, and assume the name of, the following UK Geographies, split up by categories.

### CENSUS / ADMIN

- **OA**. UK 2011 (stable). GB: [E00-S00-W00] 2011 Census Output Area (OA); NIE: [N00] 2011 Census Small Area (SA)
- **LSOA**. UK 2011 (stable). ENG, WLS: [E01-W01] 2011 Census Lower Layer Super Output Area (LSOA); SCO: [S01] 2011 Census Data Zone (DZ); NIE: [95] 2011 Census Small Output Area (SOA)
- **MSOA**. GB 2011 (stable). ENG, WLS: [E02-W02] 2011 Census Middle Layer Super Output Area (MSOA); SCO: [S02] 2011 Census Intermediate Zone (IZ)
- **LAD**. UK MAY-21. ENG: [E06] Unitary Authority (UA), [E07] Non-Metropolitan District (MD), [E08] Metropolitan District (MD), [E09] London Borough (LB); WLS: [W06] Unitary Authority (UA); SCO: [S12] Council Area (CA), NIE: [N09] Local Government District (LGD)
- **CTY**. ENG MAY-21. [E10] County (CTY), [E11] Metropolitan County (MCTY), [E13] Inner And Outer London (IOL) (plus [E06] Unitary Authority (UA) are recoded as `[E069]` for completeness in the hierarchy)
- **RGN**. ENG (stable). [E12] Region (RGN)
- **CTRY**. UK (stable). [E92] Country (CTRY)
- **WPZ**. UK 2011 (stable). [E33-N19-S34-W35] 2011 Census Workplace Zone (WPZ)

### POSTCODES

- **PCS**. UK NOV-21. Postcode Sector (built as a *Point in Polygon* operation between *Postcode Units* and *Output Areas*)
- **PCD**. UK NOV-21. Postcode District
- **PCT**. UK NOV-21. Post Town
- **PCA**. UK NOV-21. Postcode Area

### ELECTORAL

- **PCON**. UK DEC-20. [E14-N06-S14-W07] Westminster Parliamentary Constituency
- **WARD**. UK DEC-20. [E05-N08-S13-W05] Electoral Ward
- **CED**. ENG MAY-21. [E58] Electoral County

### URBAN

- **TTWA**. UK 2011 (stable). [E30-N12-S22-W22] Travel to Work Area. There are also six *cross-border* areas [K01]
- **MTC**. EW 2015 (stable). [J01] Major Towns and Cities
- **BUA**. EW 2015 (stable). [E34-W34] Built-up Area Sub-division. There are also six *cross-border* areas [K05]
- **BUAS**. EW 2015 (stable). [E35-W38] Built-up Area. There are also six *cross-border* areas [K06]

### SOCIAL

- **PAR**. UK DEC-20. ENG: [E04] Civil Parish (PAR), [E43] Non-Civil Parished Area (NCP); WLS: [W04] Community; SCO: [ ] Civil Parish 1930
- **PFN**. UK NOV-20. ENW: [ ] Police Force Neighborhood (built as a *best fit* between *Output Areas* and [Police Neighborhood](https://data.police.uk/data/boundaries/)). S: Correspond to **WARD**.
- **PFA**. UK NOV-20. [E23-N23-S23-W15] Police Force Area
- **FRA**. EW DEC-19. ENG: [E31-W25] Fire and Rescue Authorities
- **CSP**. EW DEC-19. [E22-W14] Community Safety Partnership
- **LPA**. UK APR-20. [E60-N13-S44-W43] Local Planning Authorities
- **RGD**. EW APR-19. [E28-W20] Registration Districts
- **LRF**. EW DEC-19. [E48-W41] Local Resilience Forums

### HEALTH

- **CCG**. UK. ENG: [E38] Clinical Commissioning Group (CCG); WLS: [W11] Local Health Board (LHB); SCO: [S03] Community Health Partnership (CHP); NIE: [ZC] Local Commissioning Group (LCG)
- **STP**. ENG. [E54] Sustainability and Transformation Partnership
- **NHSO**. ENG. [E39] NHS Local Office (formerly Local Area Team)
- **NHSR**. ENG. [E40] NHS Region
- **CIS**. ENG DEC-20. [J06] Covid Infection Survey

## Initial Boundaries

### OA Output Areas

- **England and Wales**: browse to [COA Boundaries](http://geoportal.statistics.gov.uk/datasets?q=COA%20Boundaries&sort_by=name) and download the *Generalised Clipped boundaries* shapefile. The Coordinate Reference System (CRS) is [British National Grid, OSGB_1936 (epsg:27700)](https://epsg.io/27700). There has been an update to the files on the 23rd/24th July 2020.
- **Scotland**: open the web page [2011 Census Geography](http://www.nrscotland.gov.uk/statistics-and-data/geography/our-products/census-datasets/2011-census/2011-boundaries) and download the *2011 Output Area Boundaries, Clipped to the coastline* zip file. The CRS is the same [epsg:27700](https://epsg.io/27700) as England and Wales.
- **Northern Ireland** (properly called *small areas*): go to [NISRA Geography](https://www.nisra.gov.uk/publications/small-area-boundaries-gis-format) and download the *ESRI Shapefile format* zip file. The CRS is [Irish Grid, GCS_TM65 (epsg:29902)](https://epsg.io/29902).

### WPZ Workplace Zones

- **England and Wales**: browse to [Workplace Zones Boundaries](https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=name&tags=all(BDY_WZ%2CDEC_2011)) and download the *Generalised Clipped boundaries* shapefile. The CRS is [British National Grid, OSGB_1936 (epsg:27700)](https://epsg.io/27700). There has been an update to the files on the 10th Feb 2021.
- **Scotland**: open the web page [2011 Census Geography](http://www.nrscotland.gov.uk/statistics-and-data/geography/our-products/census-datasets/2011-census/2011-boundaries) and download the *Workplace Zones 2011 Scotland Boundaries* zip file. The CRS is the same [epsg:27700](https://epsg.io/27700) as England and Wales.
- **Northern Ireland**: go to [NISRA Geography](https://www.nisra.gov.uk/support/geography/northern-ireland-workplace-zones) and download the *ESRI Shapefile format* zip file. The CRS is [Irish Grid, GCS_TM65 (epsg:29902)](https://epsg.io/29902).

## Attributions

- Contains OS data © Crown copyright and database rights [2021]
- Contains National Statistics data © Crown copyright and database rights [2021]
- Source: Office for National Statistics licensed under the Open Government Licence v.3.0
- Contains Parliamentary information licensed under the Open Parliament Licence v3.0
- Contains Royal Mail data © Royal Mail copyright and database rights [2021]
- (NI only) Contains or is based upon Land & Property Services (LPS) Intellectual Property subject to Crown copyright [License]
