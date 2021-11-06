#' @import sf
NULL

#' OA.
#'
#' Digital Vector Boundaries in \code{sf} format file for all \em{Output Areas} in the UK with geographical coordinates and
#'  - England and Wales: Generalised (20m) - clipped to the coastline (Mean High Water mark)
#'  - Scotland
#'  - Northern Ireland:
#'
#' @format A SpatialPolygonsDataFrame with only one \code{id} column for the corresponding \em{ONS} codes
#'
#' You can add data easily loading for example the \url{https://github.com/lvalnegri/dmpkg.geodemouk} package
#'
#' For further details see
#' \url{https://geoportal.statistics.gov.uk/datasets/register-of-geographic-codes-november-2020-for-the-united-kingdom}
#'
'OA'

#' LSOA.
#'
#' Digital Vector Boundaries in \code{rds} format file for \em{Lower Layer Super Output Areas} in UK with geographical coordinates and
#' Built by dissolving \code{OA} boundaries using the \code{output_areas} lookup table from the \url{https://github.com/lvalnegri/dmpkg.geodemouk} package
#'
#' @format A SpatialPolygonsDataFrame with an \code{id} column
#'
#' You can add data easily loading for example the package \url{https://github.com/lvalnegri/dmpkg.geodemouk}
#'
#' More information about ??? boundaries can be found at \url{}
#'
#' For further details on all the available UK Geographies (as of Nov 2020), see
#' \url{https://geoportal.statistics.gov.uk/datasets/register-of-geographic-codes-november-2020-for-the-united-kingdom}
#'
'LSOA'

#' MSOA. Boundaries for Middle Layer Super Output Areas in UK with geographical coordinates and
#'
#' @format A SpatialPolygonsDataFrame with an \code{id} column
#'
#' To add data load either the package \url{} or \url{}
#'
#' More information about ??? boundaries can be found at \url{}
#'
#' For further details on all the available UK Geographies (as of Nov 2020), see
#' \url{https://geoportal.statistics.gov.uk/datasets/register-of-geographic-codes-november-2020-for-the-united-kingdom}
#'
'MSOA'

