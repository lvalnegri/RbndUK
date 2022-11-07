#' @import sf
NULL

# N E W   C E N S U S  2 0 2 1 --------------------------------------
# 
# OA - Output Areas Census 2021 (EW) ---------------------------
#
#' OA21
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 188,880 *Output Areas* in England and Wales.
#'
#' @format A `sf` dataframe with only one `OA21` column for the corresponding *ONS* codes.
#'
'OA21'

# LSOA - Lower Layer Super Output Areas Census 2021 (EW) -------
#
#' LSOA21
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 35,672 *Lower Layer Super Output Areas* in England and Wales.
#'
#' @format A `sf` dataframe with only one `LSOA21` column for the corresponding *ONS* codes.
#'
'LSOA21'

# MSOA - Medium Layer Super Output Areas Census 2021 (EW) -------
#
#' MSOA21
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 7,264 *Medium Layer Super Output Areas* in England and Wales.
#'
#' @format A `sf` dataframe with only one `MSOA21` column for the corresponding *ONS* codes.
#'
'MSOA21'

#####################################################################
 
# o l d   C E N S U S  2 0 1 1 --------------------------------------
# 
# OA - Output Areas Census 2011 (EWSN) --------------------
#
#' OA
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 232,296 *Output Areas* in the UK (*Small Areas* in N.Ireland).
#'
#' Last update: 2011 (this is a *frozen* entity).
#' 
#' @format A `sf` dataframe with only one `OA` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_OA)}.
#'
'OA'

# WPZ - WorkPlace Zones Census 2011 (EWSN) ----------------------------
#
#' WPZ
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) for all 60,709 *Workplace Zones* in the UK.
#'
#' Last update: 2011 (this is a *frozen* entity).
#'
#' @format A `sf` dataframe with only one `WPZ` column for the corresponding *ONS* codes.
#'
#' You can easily add data easily loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see the [ONS Open Geography Portal](https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=name&tags=all(BDY_WZ%2CDEC_2011)].
#'
'WPZ'

# LSOA - Lower Layer Super Output Areas Census 2011 (EWSN) ------------
#
#' LSOA
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 42,619 *Lower Layer Super Output Areas` in the UK (*Data Zones* in Scotland, *Small Output Areas* in N.Ireland).
#'
#' Built by dissolving `OA` boundaries using the *output_areas* lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#'
#' Last update: 2011 (this is a *frozen* entity).
#' 
#' @format A `sf` dataframe with only one `LSOA` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_OA)}.
#'
'LSOA'

# MSOA - Medium Layer Super Output Areas Census 2011 (EWS) ------------
#
#' MSOA
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 9,370 *Middle Layer Super Output Areas* in Great Britain (*Intermediate Zones* in Scotland).
#'
#' Built by dissolving `LSOA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: 2011 (this is a *frozen* entity).
#' 
#' @format A `sf` dataframe with only one `MSOA` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_MSOA)}.
#'
'MSOA'

# LAD - Local Authority Districts (EWSN) ------------------
#
#' LAD
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 379 *Local Authorities & Districts* in the UK.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: MAY-21.
#' 
#' @format A `sf` dataframe with only one `LAD` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_LAD)}.
#'
'LAD'

# CTY - Counties (E) --------------------------------------
#
#' CTY
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 90 *Counties* (plus *Local Authorities*) in England (Scotland, N.Ireland, and Wales are present with a pseudo-code).
#'
#' Built by dissolving `LAD` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: MAY-21.
#' 
#' @format A `sf` dataframe with only one `CTY` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_CTY)}.
#'
'CTY'

# RGN - Regions (E) ---------------------------------------
#
#' RGN
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 9 *Regions* in England (Scotland, N.Ireland, and Wales are present with a pseudo-code).
#'
#' Built by dissolving `LAD` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: 2011 (this is a *frozen* entity).
#' 
#' @format A `sf` dataframe with only one `RGN` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_RGN)}.
#'
'RGN'

# CTRY - Countries (EWSN) ---------------------------------
#
#' CTRY
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 4 *Countries* in the UK.
#'
#' Built by dissolving `LAD` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: 2011 (this is a *frozen* entity).
#' 
#' @format A `sf` dataframe with only one `CTRY` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_CTRY)}.
#'
'CTRY'

# PCS - Postcode Sectors (EWSN) ---------------------------
#
#' PCS
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 9,538 (active and geographical) *Postcode Sectors* in the UK.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: FEB-2022.
#' 
#' @format A `sf` dataframe with only one `PCS` column for the corresponding *Royal Mail* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
'PCS'

# PCD - Postcode Districts (EWSN) -------------------------
#
#' PCD
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 2,815 (active and geographical) *Postcode Districts* in the UK.
#'
#' Built by dissolving `PCS` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: FEB-2022.
#' 
#' @format A `sf` dataframe with only one `PCD` column for the corresponding *Royal Mail* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
'PCD'

# PCT - Postal Towns (EWSN) -------------------------------
#
#' PCT
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) for all 1430 *Post Towns* in the UK.
#'
#' Built by dissolving `PCD` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: FEB-2022.
#' 
#' @format A `sf` dataframe with only one `PCT` column.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
'PCT'

# PCA - Postcode Areas (EWSN) -----------------------------
#
#' PCA
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 121 *Postcode Area* in the UK.
#'
#' Built by dissolving `PCD` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: FEB-2022.
#' 
#' @format A `sf` dataframe with only one `PCA` column for the corresponding *Royal Mail* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
'PCA'

# PCON - Westminster Parliamentary Constituencies (EWSN) -------
#
#' PCON
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 650 *Westminster Parliamentary Constituency* in the UK.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: DEC-20.
#' 
#' @format A `sf` dataframe with only one `PCON` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_PCON)}.
#'
'PCON'

# WARD - Electoral Wards (EWSN) ---------------------------
#
#' WARD
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 8,887 *Electoral Ward* in the UK.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: DEC-20.
#' 
#' @format A `sf` dataframe with only one `WARD` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_WARD)}.
#'
'WARD'

# CED - Counties Electoral Divisions (E) ------------------
#
#' CED
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 1,717 *County Electoral Divisions* in England.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: MAY-21.
#' 
#' @format A `sf` dataframe with only one `CED` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_CED)}.
#'
'CED'

# TTWA - Travel-To-Work Areas (EWSN) ----------------------
#
#' TTWA
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 228 *Travel To Work Areas* in the UK.
#'
#' Built by dissolving `LSOA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: 2011 (this is a *frozen* entity).
#' 
#' @format A `sf` dataframe with only one `TTWA` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_TTWA)}.
#'
'TTWA'

# MTC - Major Towns and Cities (EW) -----------------------
#
#' MTC
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 113 *Major Towns or Cities* in England And Wales.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: 2015 (this is a *frozen* entity).
#' 
#' @format A `sf` dataframe with only one `MTC` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_MTC)}.
#'
'MTC'

# BUA - Built-up Areas (EW) -------------------------------
#
#' BUA
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 5,830 *Built-up Areas* in the England And Wales.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: 2015 (this is a *frozen* entity).
#' 
#' @format A `sf` dataframe with only one `BUA` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_BUA)}.
#'
'BUA'

# BUAS - Built-up Areas Sub-divisions (EW) ----------------
#
#' BUAS
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 1,826 *Built-up Areas Sub-divisions* in the England And Wales.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: 2015 (this is a *frozen* entity).
#' 
#' @format A `sf` dataframe with only one `BUAS` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_BUAS)}.
#'
'BUAS'

# PAR - Civil Parishes, Unparished Communities (EWS) ------
#
#' PAR
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 11,561 *Civil Parishes and Unparished Communities* in Great Britain.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: .
#' 
#' @format A `sf` dataframe with only one `PAR` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_PAR)}.
#'
'PAR'

# PFN - Police Neighborhoods (EWSN) -----------------------
#
#' PFN
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all TBD *Police Neighbourhoods* in the UK.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: DEC-21.
#' 
#' @format A `sf` dataframe with only one `PFN` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://data.police.uk/data/boundaries/}.
#'
'PFN'

# PFA - Police Force Areas (EWSN) -------------------------
#
#' PFA
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 45 *Police Force Areas* in the UK.
#'
#' Built by dissolving `PFN` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: DEC-21.
#' 
#' @format A `sf` dataframe with only one `PFA` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_PFA)}.
#'
'PFA'

# FRA - Fire Rescue Authorities (EWSN) --------------------
#
#' FRA
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 79 *Fire Rescue Authorities* in the UK.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: DEC-19.
#' 
#' @format A `sf` dataframe with only one `FRA` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_FRA)}.
#'
'FRA'

# CSP - Community Safety Partnerships (EWS) ---------------
#
#' CSP
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 314 *Community Safety Partnerships* in the England And Wales.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: DEC-19.
#' 
#' @format A `sf` dataframe with only one `CSP` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_CSP)}.
#'
'CSP'

# LPA - Local Planning Authorities (EWSN) -----------------
#
#' LPA
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 398 *Local Planning Authorities* in the UK.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: APR-20.
#' 
#' @format A `sf` dataframe with only one `LPA` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_LPA)}.
#'
'LPA'

# RGD - Registration Districts (EW) -----------------------
#
#' RGD
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 173 *Registration Districts* in the England And Wales.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: APR-19.
#' 
#' @format A `sf` dataframe with only one `RGD` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_RGD)}.
#'
'RGD'

# LRF - Local Resilience Forums (EW) ----------------------
#
#' LRF
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 42 *Local Resilience Forums* in England And Wales.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: DEC-19.
#' 
#' @format A `sf` dataframe with only one `LRF` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_LRF)}.
#'
'LRF'

# CCG - Clinical Commissioning Groups (EWSN) --------------
#
#' CCG
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 142 *Clinical Commissioning Groups* in the UK.
#'
#' Built by dissolving `LSOA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: MAY-21.
#' 
#' @format A `sf` dataframe with only one `CCG` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_CCG)}.
#'
'CCG'

# STP - Sustainability and Transformation Partnerships (E) -----
#
#' STP
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for all 42 *Sustainability and Transformation Partnerships* in England.
#'
#' Built by dissolving `CCG` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: .
#' 
#' @format A `sf` dataframe with only one `STP` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_STP)}.
#'
'STP'

# NHSR - NHS England Regions (E) --------------------------
#
#' NHSR
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for the 7 *NHS England Regions* in England.
#'
#' Built by dissolving `NHSO` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: MAY-21.
#' 
#' @format A `sf` dataframe with only one `NHSR` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_NHSR)}.
#'
'NHSR'

# CIS - Covid Infection Survey Areas (EWS) ----------------
#
#' CIS.
#'
#' Digital Vector Boundaries in `sf` format and *WGS84* CRS (*epsg* 4326) 
#' for the 133 *Covid Infection Survey Areas* in England.
#'
#' Built by dissolving `OA` boundaries using the `output_areas` lookup table from the \url{https://github.com/lvalnegri/RgeoUK} package.
#' 
#' Last update: DEC-20.
#' 
#' @format A `sf` dataframe with only one `CIS` column for the corresponding *ONS* codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/RdataUK} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_CIS)}.
#'
'CIS'
