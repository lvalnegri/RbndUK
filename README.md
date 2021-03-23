## Boundaries related to UK Geographies

Do not use this package at the moment as it is still a work in progress.

*Last update: 21-01-2021*

The files included in this [*R*](https://cran.r-project.org/) package are of class [`sp`](https://cran.r-project.org/package=sp) and saved in [`RDS`](https://rstudio-education.github.io/hopr/dataio.html#r-files) format

They are related to, and assume the name of, the following UK Geographies:

### CENSUS
   - **OA**.   UK 2011.  GB: [E00-S00-W00] 2011 Census Output Area (OA); NIE: [N00] 2011 Census Small Area (SA)
   - **LSOA**. UK 2011.  ENG, WLS: [E01-W01] 2011 Census Lower Layer Super Output Area (LSOA); SCO: [S01] 2011 Census Data Zone (DZ); NIE: [95] 2011 Census Small Output Area (SOA)
   - **MSOA**. GB 2011.  ENG, WLS: [E02-W02] 2011 Census Middle Layer Super Output Area (MSOA); SCO: [S02] 2011 Census Intermediate Zone (IZ)
   - **LAD**.  UK DEC-20.  ENG: [E06] Unitary Authority (UA), [E07] Non-Metropolitan District (MD), [E08] Metropolitan District (MD), [E09] London Borough (LB); WLS: [W06] Unitary Authority (UA); SCO: [S12] Council Area (CA), NIE: [N09] Local Government District (LGD)
   - **CTY**.  ENG DEC-20. [E10] County (CTY), [E11] Metropolitan County (MCTY), [E13] Inner And Outer London (IOL) (plus [E06] Unitary Authority (UA) are recoded as `[E069]` for completeness in the hierarchy)
   - **RGN**.  ENG 2011. [E12] Region (RGN)
   - **CTRY**. UK.  [E92] Country (CTRY)
   - **WPZ**.  UK 2011.  [E33-N19-S34-W35] 2011 Census Workplace Zone (WPZ)
   
### POSTCODES 
   - **PCS**. UK NOV-20. Postcode Sector (built as a *Point in Polygon* operation between *Postcode Units* and *Output Areas*)
   - **PCD**. UK NOV-20. Postcode District
   - **PCT**. UK NOV-20. Post Town
   - **PCA**. UK NOV-20. Postcode Area
   
### ELECTORAL
   - **PCON**. UK.  [E14-N06-S14-W07] Westminster Parliamentary Constituency
   - **WARD**. UK DEC-20.  [E05-N08-S13-W05] Electoral Ward
   - **CED**.  ENG. [E58] Electoral County
   
### URBAN
   - **TTWA**. UK 2011. [E30-N12-S22-W22] Travel to Work Area. There are also six *cross-border* areas [K01]
   - **MTC**.  EW 2015. [J01] Major Towns and Cities
   - **BUA**.  EW 2015. [E34-W34] Built-up Area Sub-division. There are also six *cross-border* areas [K05]
   - **BUAS**. EW 2015. [E35-W38] Built-up Area. There are also six *cross-border* areas [K06]
   
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
   - **CCG**.  UK.  ENG: [E38] Clinical Commissioning Group (CCG); WLS: [W11] Local Health Board (LHB); SCO: [S03] Community Health Partnership (CHP); NIE: [ZC] Local Commissioning Group (LCG) 
   - **STP**.  ENG. [E54] Sustainability and Transformation Partnership
   - **NHSO**. ENG. [E39] NHS Local Office (formerly Local Area Team)
   - **NHSR**. ENG. [E40] NHS Region
   - **CIS**.  ENG OCT-20. [J06] Covid Infection Survey
   
 
## Attributions

 - Contains OS data © Crown copyright and database rights [2020]
 - Contains National Statistics data © Crown copyright and database rights [2020]
 - Source: Office for National Statistics licensed under the Open Government Licence v.3.0
 - Contains Parliamentary information licensed under the Open Parliament Licence v3.0
 - Contains Royal Mail data © Royal Mail copyright and database rights [2020]
 - (NI only) Contains or is based upon Land & Property Services (LPS) Intellectual Property subject to Crown copyright [License]
 
