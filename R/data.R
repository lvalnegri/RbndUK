#' @import sf
NULL

#' OA.
#'
#' Digital Vector Boundaries in \code{sf} format file and \emph{WGS84} CRS (\emph{epsg}) 4326) 
#' for all 232,296 \em{Output Areas} in the UK (\em{Small Areas} in N.Ireland) 
#'
#' @format A \code{sf} dataframe with only one \code{OA} column for the corresponding \em{ONS} codes
#'
#' You can add data easily loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-modified&tags=all(BDY_OA)}
#'
'OA'

#' WPZ.
#'
#' Digital Vector Boundaries in \code{sf} format file and \emph{WGS84} CRS (\emph{epsg}) 4326) for all 60,709 \em{Workplace Zones} in the UK
#'
#' @format A \code{sf} dataframe with only one \code{WPZ} column for the corresponding \em{ONS} codes
#'
#' You can add data easily loading for example the \url{https://github.com/lvalnegri/dmpkg.datauk} package
#'
#' For further details see \url{https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=name&tags=all(BDY_WZ%2CDEC_2011)}
#'
'WPZ'
