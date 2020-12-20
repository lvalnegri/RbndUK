## Boundaries related to UK Geographies

The files included here are of class `sp` and saved as `RDS` format

They are related to the following UK Geographies:

- **CENSUS**:
   - **OA**.   UK.  GB: 2011 Census Output Area (OA); NIE: 2011 Census Small Area (SA)
   - **LSOA**. UK.  ENG, WLS: 2011 Census Lower Layer Super Output Area (LSOA); SCO: 2011 Census Data Zone (DZ); NIE: 2011 Census Small Output Area (SOA)
   - **MSOA**. GB.  ENG, WLS: 2011 Census Middle Layer Super Output Area (MSOA); SCO: 2011 Census Intermediate Zone (I Z)
   - **LAD**.  UK.  ENG: Local Authority District (LAD), Unitary Authority (UA), Metropolitan District (MD), London Borough (LB); WLS: Unitary Authority (UA); SCO: Council Area (CA), NIE: District Council Area (DCA) 
   - **CTY**.  ENG. County (only for UA/MD/LB, see LAD)
   - **RGN**.  ENG. Region
   - **CTRY**. UK.  Country
   - **WKZ**.  UK.  2011 Census Workplace Zone (WPZ)
   
 - **POSTCODES**
   - **PCS**. UK: Postcode Sector (built as a *Point in Polygon* operation between *postcode units* and *Output Areas*)
   - **PCD**. UK: Postcode District
   - **PCT**. UK: Post Town
   - **PCA**. UK: Postcode Area
   
 - **ELECTORAL**
   - **PCON**. UK:  Westminster Parliamentary Constituency
   - **WARD**. UK:  Electoral Division
   - **CED**.  ENG: Electoral County
   
 - **URBAN**
   - **TTWA**. UK: Travel to Work Area. There are also six *cross-border* areas (K01000009, ..., K01000014)
   - **MTC**.  EW: Major Towns and Cities
   - **BUAS**. EW: Built-up Area
   - **BUA**.  EW: Built-up Area Sub-division
   
 - **SOCIAL**
   - **PAR**. EW. ENG: Civil Parish or Unparished; WLS: Community
   - **PFN**. EW. Police Force Neighborhood (built as a *best fit* between *Output Areas* and [Police Neighborhood]())
   - **PFA**. EW. Police Force Area
   - **FRA**. EW. Fire Rescue Authorities (Dec-2019)
   - **CSP**. EW. Community Safety Partnership (Dec-2019)
   - **LPA**. EW. Local Planning Authorities (Apr-2020)
   - **RGD**. EW. Registration Districts (Apr-2019)
   - **LRF**. EW. Local Resilience Forums (Dec-2019)
 
 - **HEALTH**
   - **CCG**.  UK.  ENG: Clinical Commissioning Group (CCG); WLS: Local Health Board (LHB); SCO: Community Health Partnership (CHP); NIE: Local Commissioning Group (LCG) 
   - **STP**.  ENG.
   - **NHSO**. ENG. NHS Local Office (formerly Local Area Team)
   - **NHSR**. ENG. NHS Region
   - **CIS**.  ENG. Covid Infection Survey (Oct-2020)
   
 
