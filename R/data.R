#' @import sf
NULL

#' OA
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 232,296 \emph{Output Areas} in the UK (\emph{Small Areas} in N.Ireland).
#'
#' Last update: 2011 (this is a \emph{frozen} entity).
#' 
#' @format A \code{sf} dataframe with only one \code{OA} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_OA)}.
#'
'OA'

#' WPZ
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) for all 60,709 \emph{Workplace Zones} in the UK.
#'
#' Last update: 2011 (this is a \emph{frozen} entity).
#' 
#' @format A \code{sf} dataframe with only one \code{WPZ} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data easily loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=name&tags=all(BDY_WZ%2CDEC_2011)}.
#'
'WPZ'

#' LSOA
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 42,619 \emph{Lower Layer Super Output Areas} in the UK (\emph{Data Zones} in Scotland, \emph{Small Output Areas} in N.Ireland).
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#'
#' Last update: 2011 (this is a \emph{frozen} entity).
#' 
#' @format A \code{sf} dataframe with only one \code{LSOA} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_OA)}.
#'
'LSOA'

#' MSOA
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 9,370 \emph{Middle Layer Super Output Areas} in Great Britain (\emph{Intermediate Zones} in Scotland).
#'
#' Built by dissolving \code{LSOA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: 2011 (this is a \emph{frozen} entity).
#' 
#' @format A \code{sf} dataframe with only one \code{MSOA} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_MSOA)}.
#'
'MSOA'

#' LAD
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 379 \emph{Local Authorities & Districts} in the UK.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: MAY-21.
#' 
#' @format A \code{sf} dataframe with only one \code{LAD} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_LAD)}.
#'
'LAD'

#' CTY
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 90 \emph{Counties} (plus Local Authorities) in England (Scotland, N.Ireland, and Wales are present with a pseudo-code).
#'
#' Built by dissolving \code{LAD} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: MAY-21.
#' 
#' @format A \code{sf} dataframe with only one \code{CTY} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_CTY)}.
#'
'CTY'

#' RGN
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 9 \emph{Regions} in England (Scotland, N.Ireland, and Wales are present with a pseudo-code).
#'
#' Built by dissolving \code{LAD} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: 2011 (this is a \emph{frozen} entity).
#' 
#' @format A \code{sf} dataframe with only one \code{RGN} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_RGN)}.
#'
'RGN'

#' CTRY
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 4 \emph{Countries} in the UK.
#'
#' Built by dissolving \code{LAD} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: 2011 (this is a \emph{frozen} entity).
#' 
#' @format A \code{sf} dataframe with only one \code{CTRY} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_CTRY)}.
#'
'CTRY'

#' PCS
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 9,538 (active and geographical) \emph{Postcode Sectors} in the UK.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: FEB-2022.
#' 
#' @format A \code{sf} dataframe with only one \code{PCS} column for the corresponding \emph{Royal Mail} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
'PCS'

#' PCD
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 2,815 (active and geographical) \emph{Postcode Districts} in the UK.
#'
#' Built by dissolving \code{PCS} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: FEB-2022.
#' 
#' @format A \code{sf} dataframe with only one \code{PCD} column for the corresponding \emph{Royal Mail} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
'PCD'

#' PCT
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 1430 \emph{Post Towns} in the UK.
#'
#' Built by dissolving \code{PCD} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: FEB-2022.
#' 
#' @format A \code{sf} dataframe with only one \code{PCT} column.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
'PCT'

#' PCA
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 121 \emph{Postcode Area} in the UK.
#'
#' Built by dissolving \code{PCD} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: FEB-2022.
#' 
#' @format A \code{sf} dataframe with only one \code{PCA} column for the corresponding \emph{Royal Mail} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
'PCA'

#' PCON
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 650 \emph{Westminster Parliamentary Constituency} in the UK.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: DEC-20.
#' 
#' @format A \code{sf} dataframe with only one \code{PCON} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_PCON)}.
#'
'PCON'

#' WARD
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 8,887 \emph{Electoral Ward} in the UK.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: DEC-20.
#' 
#' @format A \code{sf} dataframe with only one \code{WARD} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_WARD)}.
#'
'WARD'

#' CED
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 1,717 \emph{County Electoral Divisions} in England.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: MAY-21.
#' 
#' @format A \code{sf} dataframe with only one \code{CED} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_CED)}.
#'
'CED'

#' TTWA
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 228 \emph{Travel To Work Areas} in the UK.
#'
#' Built by dissolving \code{LSOA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: 2011 (this is a \emph{frozen} entity).
#' 
#' @format A \code{sf} dataframe with only one \code{TTWA} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_TTWA)}.
#'
'TTWA'

#' MTC
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 113 \emph{Major Towns or Cities} in England And Wales.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: 2015 (this is a \emph{frozen} entity).
#' 
#' @format A \code{sf} dataframe with only one \code{MTC} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_MTC)}.
#'
'MTC'

#' BUA
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 5,830 \emph{Built-up Areas} in the England And Wales.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: 2015 (this is a \emph{frozen} entity).
#' 
#' @format A \code{sf} dataframe with only one \code{BUA} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_BUA)}.
#'
'BUA'

#' BUAS
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 1,826 \emph{Built-up Areas Sub-divisions} in the England And Wales.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: 2015 (this is a \emph{frozen} entity).
#' 
#' @format A \code{sf} dataframe with only one \code{BUAS} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_BUAS)}.
#'
'BUAS'

#' PAR
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 11,561 \emph{Civil Parishes and Unparished Communities} in Great Britain.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: .
#' 
#' @format A \code{sf} dataframe with only one \code{PAR} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_PAR)}.
#'
'PAR'

#' PFN
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all TBD \emph{Police Neighborhoods} in the UK.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: DEC-21.
#' 
#' @format A \code{sf} dataframe with only one \code{PFN} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://data.police.uk/data/boundaries/}.
#'
'PFN'

#' PFA
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 45 \emph{Police Force Areas} in the UK.
#'
#' Built by dissolving \code{PFN} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: DEC-21.
#' 
#' @format A \code{sf} dataframe with only one \code{PFA} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_PFA)}.
#'
'PFA'

#' FRA
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 79 \emph{Fire Rescue Authorities} in the UK.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: DEC-19.
#' 
#' @format A \code{sf} dataframe with only one \code{FRA} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_FRA)}.
#'
'FRA'

#' CSP
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 314 \emph{Community Safety Partnerships} in the England And Wales.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: DEC-19.
#' 
#' @format A \code{sf} dataframe with only one \code{CSP} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_CSP)}.
#'
'CSP'

#' LPA
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 398 \emph{Local Planning Authorities} in the UK.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: APR-20.
#' 
#' @format A \code{sf} dataframe with only one \code{LPA} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_LPA)}.
#'
'LPA'

#' RGD
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 173 \emph{Registration Districts} in the England And Wales.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: APR-19.
#' 
#' @format A \code{sf} dataframe with only one \code{RGD} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_RGD)}.
#'
'RGD'

#' LRF
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 42 \emph{Local Resilience Forums} in England And Wales.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: DEC-19.
#' 
#' @format A \code{sf} dataframe with only one \code{LRF} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_LRF)}.
#'
'LRF'

#' CCG
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 142 \emph{Clinical Commissioning Groups} in the UK.
#'
#' Built by dissolving \code{LSOA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: MAY-21.
#' 
#' @format A \code{sf} dataframe with only one \code{CCG} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_CCG)}.
#'
'CCG'

#' STP
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 42 \emph{Sustainability and Transformation Partnerships} in England.
#'
#' Built by dissolving \code{CCG} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: .
#' 
#' @format A \code{sf} dataframe with only one \code{STP} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_STP)}.
#'
'STP'

#' NHSR
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 7 \emph{NHS England Regions} in England.
#'
#' Built by dissolving \code{NHSO} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: MAY-21.
#' 
#' @format A \code{sf} dataframe with only one \code{NHSR} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_NHSR)}.
#'
'NHSR'

#' CIS
#'
#' Digital Vector Boundaries in \code{sf} format and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 133 \emph{Covid Infection Survey Areas} in England.
#'
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geouk} package.
#' 
#' Last update: DEC-20.
#' 
#' @format A \code{sf} dataframe with only one \code{CIS} column for the corresponding \emph{ONS} codes.
#'
#' You can easily add data loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package.
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_CIS)}.
#'
'CIS'

