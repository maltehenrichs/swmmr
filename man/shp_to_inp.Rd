% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shp_to_inp.R
\name{shp_to_inp}
\alias{shp_to_inp}
\title{Convert *.shp files to SWMM's *.inp file}
\usage{
shp_to_inp(path_options = NULL, path_polygon = NULL,
  subcatchment_typologies = NULL, path_point = NULL,
  junction_parameters = NULL, path_outfall = NULL, path_line = NULL,
  conduit_material = NULL, path_timeseries = NULL, infiltration = NULL,
  path_pumps = NULL, path_pump_curve = NULL, path_weirs = NULL,
  path_storage = NULL, path_storage_curve = NULL)
}
\arguments{
\item{path_options}{Name (incl. path) to a .txt file with SWMM sections. Write section name in lower case and in squared brackets. The following sections are allowed: options, report, raingages, evaporation, pollutant, landuse, buildup, washoff, coverages.}

\item{path_polygon}{Name (incl. path) to a .shp file with polygons features. At least the following subcatchment related columns must be specified: Name, Outlet, Area, RouteTo.}

\item{subcatchment_typologies}{R data.frame or tibble with further subcatchment related parameters. If subcatchment_typologies is given, polygon feature has to include a column named Type. Parameters defined in subcatchment_typologies parameters are merged to subcatchments by Type.}

\item{path_point}{Name (incl. path) to a .shp file with point features. At least the following junction related columns must be specified: Name, Bottom and Top or Ymax.}

\item{junction_parameters}{R data.frame or tibble with further junction related parameters (e.g. Surcharge depth).}

\item{path_outfall}{Name (incl. path) to a .shp file with point features. At least the following outfall related columns must be specified: Name, Bottom, Type, Gated.}

\item{path_line}{Name (incl. path) to a .shp file with line features. At least the following conduit related coulumns must be specified: Name, Length, Type, FromNode, ToNode, OutOffset, Geom1.}

\item{conduit_material}{R data.frame or tibble with further conduit related parameters (e.g. roughness). If conduit_material is given, line feature has to include a column named Material. Parameters defined in conduit_material parameters are merged to conduits by Material.}

\item{path_timeseries}{Name (incl. path) to a .dat file with a timeseries in SWMM format.}

\item{infiltration}{R data.frame or tibble with infiltration parameters related to soil properties. If infiltration is given, polygon feature has to include a column named soil. Infiltration parameters are merged to subcatchments by soil name.}

\item{path_pumps}{Name (incl. path) to a .shp file with line features. All parameters must be given: Name, FromNode, ToNode, Pcurve, status, Startup, Shutoff.}

\item{path_pump_curve}{Name (incl. path) to a .txt file with pump curve information. Having the following structure: "Name of pump" "PUMP1-4" "x" "y", without header.}

\item{path_weirs}{Name (incl. path) to a .shp file with line features. All parameters must be given: Name, FromNode, ToNode, Type, CrestHt, Cd, Gated, EC, Cd2, Sur.}

\item{path_storage}{Name (incl. path) to a .txt file with storage curve information. Having the following structure: "Name of storage" "Storage" "x" "y", without header.}

\item{path_storage_curve}{Name (incl. path) to a .txt file with storage curve information. Having the following structure: "Name of storage unit" "Storage" "x" "y", without header.}
}
\value{
A list of class inp.
}
\description{
Reads *.shp files and other information needed for SWMM's *.inp file and returns a list of class inp. If paths are not specified default values are taken.
}
