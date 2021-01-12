## Boundaries related to UK Geographies

The files included in this [*R*](https://cran.r-project.org/) package are of class [`sp`](https://cran.r-project.org/package=sp) and saved in [`RDS`](https://rstudio-education.github.io/hopr/dataio.html#r-files) format

They are related to, and assume the name of, the following UK Geographies:

### CENSUS
   - **OA**.   UK.  GB: [E00-S00-W00] 2011 Census Output Area (OA); NIE: [N00] 2011 Census Small Area (SA)
   - **LSOA**. UK.  ENG, WLS: [E01-W01] 2011 Census Lower Layer Super Output Area (LSOA); SCO: [S01] 2011 Census Data Zone (DZ); NIE: [95] 2011 Census Small Output Area (SOA)
   - **MSOA**. GB.  ENG, WLS: [E02-W02] 2011 Census Middle Layer Super Output Area (MSOA); SCO: [S02] 2011 Census Intermediate Zone (IZ)
   - **LAD**.  UK.  ENG: [E06] Unitary Authority (UA), [E07] Non-Metropolitan District (MD), [E08] Metropolitan District (MD), [E09] London Borough (LB); WLS: [W06] Unitary Authority (UA); SCO: [S12] Council Area (CA), NIE: [N09] Local Government District (LGD)
   - **CTY**.  ENG. [E10] County (CTY), [E11] Metropolitan County (MCTY), [E13] Inner And Outer London (IOL) (plus [E06] Unitary Authority (UA) are recoded as `[E069]` for completeness in the hierarchy)
   - **RGN**.  ENG. [E12] Region (RGN)
   - **CTRY**. UK.  [E92] Country (CTRY)
   - **WPZ**.  UK.  [E33-N19-S34-W35] 2011 Census Workplace Zone (WPZ)
   
### POSTCODES 
   - **PCS**. UK: Postcode Sector (built as a *Point in Polygon* operation between *postcode units* and *Output Areas*)
   - **PCD**. UK: Postcode District
   - **PCT**. UK: Post Town
   - **PCA**. UK: Postcode Area
   
### ELECTORAL
   - **PCON**. UK:  [] Westminster Parliamentary Constituency
   - **WARD**. UK:  [] Electoral Division
   - **CED**.  ENG: [] Electoral County
   
### URBAN
   - **TTWA**. UK: [] Travel to Work Area. There are also six *cross-border* areas [K01]
   - **MTC**.  EW: [] Major Towns and Cities
   - **BUAS**. EW: [] Built-up Area
   - **BUA**.  EW: [] Built-up Area Sub-division
   
### SOCIAL
   - **PAR**. GB. ENG: [] Civil Parish or Unparished; WLS: [] Community; SCO: [] Civil Parish 1930
   - **PFN**. UK. ENW: Police Force Neighborhood (built as a *best fit* between *Output Areas* and [Police Neighborhood](https://data.police.uk/data/boundaries/)). S: Correspond to **WARD**.
   - **PFA**. UK NOV-20. ENW: [] Police Force Area. S: Correspond to **LAD**.
   - **FRA**. UK. [] Fire Rescue Authorities (Dec-2019)
   - **CSP**. EW. [] Community Safety Partnership (Dec-2019)
   - **LPA**. UK. [] Local Planning Authorities (Apr-2020)
   - **RGD**. EW. [] Registration Districts (Apr-2019)
   - **LRF**. EW. [] Local Resilience Forums (Dec-2019)
 
### HEALTH
   - **CCG**.  UK.  ENG: [] Clinical Commissioning Group (CCG); WLS: [] Local Health Board (LHB); SCO: [] Community Health Partnership (CHP); NIE: [] Local Commissioning Group (LCG) 
   - **STP**.  ENG. [] Sustainability and Transformation Partnership
   - **NHSO**. ENG. [] NHS Local Office (formerly Local Area Team)
   - **NHSR**. ENG. [] NHS Region
   - **CIS**.  ENG. [J06] Covid Infection Survey (Oct-2020)
   
 
## Credits

 - Contains OS data © Crown copyright and database rights [2020]
 - Contains National Statistics data © Crown copyright and database rights [2020]
 - Source: Office for National Statistics licensed under the Open Government Licence v.3.0
 - Contains Parliamentary information licensed under the Open Parliament Licence v3.0
 - Contains Royal Mail data © Royal Mail copyright and database rights [2020]
 - (NI only) Contains or is based upon Land & Property Services (LPS) Intellectual Property subject to Crown copyright [License]
 
