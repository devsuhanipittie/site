<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:exsl="http://exslt.org/common"
 xmlns:math="http://exslt.org/math"
                extension-element-prefixes="math"
                exclude-result-prefixes="exsl">
 <xsl:output omit-xml-declaration="yes" indent="no" method="html"/>


<xsl:variable name="usa_dma">
<state id="ME" full_name="Maine">
    <dma code="500" title="Portland-Auburn, ME">
<c n="Acton" c="ACTON"/>
<c n="Albion" c="ALBION"/>
<c n="Alfred" c="ALFRED"/>
<c n="Andover" c="ANDOVER"/>
<c n="Auburn" c="AUBURN"/>
<c n="Augusta" c="AUGUSTA"/>
<c n="Bar Mills" c="BAR MILLS"/>
<c n="Bath" c="BATH"/>
<c n="Belgrade" c="BELGRADE"/>
<c n="Berwick" c="BERWICK"/>
<c n="Bethel" c="BETHEL"/>
<c n="Biddeford" c="BIDDEFORD"/>
<c n="Boothbay" c="BOOTHBAY"/>
<c n="Boothbay Harbor" c="BOOTHBAY HARBOR"/>
<c n="Bowdoinham" c="BOWDOINHAM"/>
<c n="Bremen" c="BREMEN"/>
<c n="Bridgton" c="BRIDGTON"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Brownfield" c="BROWNFIELD"/>
<c n="Brunswick" c="BRUNSWICK"/>
<c n="Bryant Pond" c="BRYANT POND"/>
<c n="Buckfield" c="BUCKFIELD"/>
<c n="Buxton" c="BUXTON"/>
<c n="Camden" c="CAMDEN"/>
<c n="Canton" c="CANTON"/>
<c n="Cape Elizabeth" c="CAPE ELIZABETH"/>
<c n="Cape Porpoise" c="CAPE PORPOISE"/>
<c n="Casco" c="CASCO"/>
<c n="Chebeague Island" c="CHEBEAGUE ISLAND"/>
<c n="Cliff Island" c="CLIFF ISLAND"/>
<c n="Clinton" c="CLINTON"/>
<c n="Cornish" c="CORNISH"/>
<c n="Cumberland Center" c="CUMBERLAND CENTER"/>
<c n="Cushing" c="CUSHING"/>
<c n="Damariscotta" c="DAMARISCOTTA"/>
<c n="Denmark" c="DENMARK"/>
<c n="Dixfield" c="DIXFIELD"/>
<c n="Dresden" c="DRESDEN"/>
<c n="Durham" c="DURHAM"/>
<c n="East Baldwin" c="EAST BALDWIN"/>
<c n="East Boothbay" c="EAST BOOTHBAY"/>
<c n="East Vassalboro" c="EAST VASSALBORO"/>
<c n="East Waterboro" c="EAST WATERBORO"/>
<c n="Edgecomb" c="EDGECOMB"/>
<c n="Eliot" c="ELIOT"/>
<c n="Falmouth" c="FALMOUTH"/>
<c n="Farmingdale" c="FARMINGDALE"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Freeport" c="FREEPORT"/>
<c n="Friendship" c="FRIENDSHIP"/>
<c n="Fryeburg" c="FRYEBURG"/>
<c n="Gardiner" c="GARDINER"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Glen Cove" c="GLEN COVE"/>
<c n="Gorham" c="GORHAM"/>
<c n="Gray" c="GRAY"/>
<c n="Greene" c="GREENE"/>
<c n="Hallowell" c="HALLOWELL"/>
<c n="Harpswell" c="HARPSWELL"/>
<c n="Harrison" c="HARRISON"/>
<c n="Hebron" c="HEBRON"/>
<c n="Hiram" c="HIRAM"/>
<c n="Hollis Center" c="HOLLIS CENTER"/>
<c n="Hope" c="HOPE"/>
<c n="Isle au Haut" c="ISLE AU HAUT"/>
<c n="Jay" c="JAY"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Kennebunk" c="KENNEBUNK"/>
<c n="Kennebunkport" c="KENNEBUNKPORT"/>
<c n="Kents Hill" c="KENTS HILL"/>
<c n="Kingfield" c="KINGFIELD"/>
<c n="Kittery" c="KITTERY"/>
<c n="Kittery Point" c="KITTERY POINT"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Leeds" c="LEEDS"/>
<c n="Lewiston" c="LEWISTON"/>
<c n="Limerick" c="LIMERICK"/>
<c n="Limington" c="LIMINGTON"/>
<c n="Lisbon" c="LISBON"/>
<c n="Lisbon Falls" c="LISBON FALLS"/>
<c n="Livermore" c="LIVERMORE"/>
<c n="Livermore Falls" c="LIVERMORE FALLS"/>
<c n="Long Island" c="LONG ISLAND"/>
<c n="Lovell" c="LOVELL"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Matinicus Isle" c="MATINICUS ISLE"/>
<c n="Mechanic Falls" c="MECHANIC FALLS"/>
<c n="Mexico" c="MEXICO"/>
<c n="Minot" c="MINOT"/>
<c n="Monhegan" c="MONHEGAN"/>
<c n="Monmouth" c="MONMOUTH"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="Naples" c="NAPLES"/>
<c n="New Gloucester" c="NEW GLOUCESTER"/>
<c n="New Harbor" c="NEW HARBOR"/>
<c n="New Sharon" c="NEW SHARON"/>
<c n="New Vineyard" c="NEW VINEYARD"/>
<c n="Newcastle" c="NEWCASTLE"/>
<c n="Newfield" c="NEWFIELD"/>
<c n="Nobleboro" c="NOBLEBORO"/>
<c n="North Berwick" c="NORTH BERWICK"/>
<c n="North Bridgton" c="NORTH BRIDGTON"/>
<c n="North Haven" c="NORTH HAVEN"/>
<c n="North Jay" c="NORTH JAY"/>
<c n="North Monmouth" c="NORTH MONMOUTH"/>
<c n="North Yarmouth" c="NORTH YARMOUTH"/>
<c n="Norway" c="NORWAY"/>
<c n="Oakland" c="OAKLAND"/>
<c n="Ogunquit" c="OGUNQUIT"/>
<c n="Old Orchard Beach" c="OLD ORCHARD BEACH"/>
<c n="Orrs Island" c="ORRS ISLAND"/>
<c n="Owls Head" c="OWLS HEAD"/>
<c n="Oxford" c="OXFORD"/>
<c n="Paris" c="PARIS"/>
<c n="Parsonsfield" c="PARSONSFIELD"/>
<c n="Peaks Island" c="PEAKS ISLAND"/>
<c n="Pemaquid" c="PEMAQUID"/>
<c n="Peru" c="PERU"/>
<c n="Phillips" c="PHILLIPS"/>
<c n="Phippsburg" c="PHIPPSBURG"/>
<c n="Poland" c="POLAND"/>
<c n="Porter" c="PORTER"/>
<c n="Portland" c="PORTLAND"/>
<c n="Town of Pownal" c="TOWN OF POWNAL"/>
<c n="Randolph" c="RANDOLPH"/>
<c n="Rangeley" c="RANGELEY"/>
<c n="Raymond" c="RAYMOND"/>
<c n="Readfield" c="READFIELD"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Rockland" c="ROCKLAND"/>
<c n="Rockport" c="ROCKPORT"/>
<c n="Rumford" c="RUMFORD"/>
<c n="Sabattus" c="SABATTUS"/>
<c n="Saco" c="SACO"/>
<c n="Sanford" c="SANFORD"/>
<c n="Scarborough" c="SCARBOROUGH"/>
<c n="Sebago" c="SEBAGO"/>
<c n="Shapleigh" c="SHAPLEIGH"/>
<c n="South Berwick" c="SOUTH BERWICK"/>
<c n="South Bristol" c="SOUTH BRISTOL"/>
<c n="South China" c="SOUTH CHINA"/>
<c n="South Gardiner" c="SOUTH GARDINER"/>
<c n="South Paris" c="SOUTH PARIS"/>
<c n="South Portland" c="SOUTH PORTLAND"/>
<c n="South Thomaston" c="SOUTH THOMASTON"/>
<c n="Southport" c="SOUTHPORT"/>
<c n="Springvale" c="SPRINGVALE"/>
<c n="Standish" c="STANDISH"/>
<c n="Stratton" c="STRATTON"/>
<c n="Strong" c="STRONG"/>
<c n="Sumner" c="SUMNER"/>
<c n="Tenants Harbor" c="TENANTS HARBOR"/>
<c n="Thomaston" c="THOMASTON"/>
<c n="Topsham" c="TOPSHAM"/>
<c n="Turner" c="TURNER"/>
<c n="Union" c="UNION"/>
<c n="Vassalboro" c="VASSALBORO"/>
<c n="Vinalhaven" c="VINALHAVEN"/>
<c n="Waldoboro" c="WALDOBORO"/>
<c n="Warren" c="WARREN"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Waterboro" c="WATERBORO"/>
<c n="Waterford" c="WATERFORD"/>
<c n="Waterville" c="WATERVILLE"/>
<c n="Wayne" c="WAYNE"/>
<c n="Weld" c="WELD"/>
<c n="Wells" c="WELLS"/>
<c n="West Baldwin" c="WEST BALDWIN"/>
<c n="West Kennebunk" c="WEST KENNEBUNK"/>
<c n="West Newfield" c="WEST NEWFIELD"/>
<c n="West Paris" c="WEST PARIS"/>
<c n="Westbrook" c="WESTBROOK"/>
<c n="Whitefield" c="WHITEFIELD"/>
<c n="Wilton" c="WILTON"/>
<c n="Windham" c="WINDHAM"/>
<c n="Windsor" c="WINDSOR"/>
<c n="Winthrop" c="WINTHROP"/>
<c n="Wiscasset" c="WISCASSET"/>
<c n="Woolwich" c="WOOLWICH"/>
<c n="Yarmouth" c="YARMOUTH"/>
<c n="York" c="YORK"/>
<c n="Bartlett" c="BARTLETT"/>
<c n="Berlin" c="BERLIN"/>
<c n="Center Conway" c="CENTER CONWAY"/>
<c n="Center Ossipee" c="CENTER OSSIPEE"/>
<c n="Center Sandwich" c="CENTER SANDWICH"/>
<c n="Colebrook" c="COLEBROOK"/>
<c n="Conway" c="CONWAY"/>
<c n="Errol" c="ERROL"/>
<c n="Gorham" c="GORHAM"/>
<c n="Groveton" c="GROVETON"/>
<c n="Jackson" c="JACKSON"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Kearsarge" c="KEARSARGE"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Madison" c="MADISON"/>
<c n="Milan" c="MILAN"/>
<c n="Moultonborough" c="MOULTONBOROUGH"/>
<c n="North Conway" c="NORTH CONWAY"/>
<c n="North Stratford" c="NORTH STRATFORD"/>
<c n="Ossipee" c="OSSIPEE"/>
<c n="Pittsburg" c="PITTSBURG"/>
<c n="Sanbornville" c="SANBORNVILLE"/>
<c n="Tamworth" c="TAMWORTH"/>
<c n="Twin Mountain" c="TWIN MOUNTAIN"/>
<c n="Union" c="UNION"/>
<c n="West Stewartstown" c="WEST STEWARTSTOWN"/>
<c n="Whitefield" c="WHITEFIELD"/>
<c n="Wolfeboro" c="WOLFEBORO"/>
<c n="Wolfeboro Falls" c="WOLFEBORO FALLS"/>
<c n="Boothbay Harbor" c="BOOTHBAY HARBOR"/>
<c n="Brunswick" c="BRUNSWICK"/>
<c n="Camden" c="CAMDEN"/>
<c n="China" c="CHINA"/>
<c n="Conway" c="CONWAY"/>
<c n="Cumberland" c="CUMBERLAND"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Freedom" c="FREEDOM"/>
<c n="Freeport" c="FREEPORT"/>
<c n="Gorham" c="GORHAM"/>
<c n="Kennebunk" c="KENNEBUNK"/>
<c n="Kennebunkport" c="KENNEBUNKPORT"/>
<c n="Kittery" c="KITTERY"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="North Berwick" c="NORTH BERWICK"/>
<c n="Norway" c="NORWAY"/>
<c n="Oakland" c="OAKLAND"/>
<c n="Oxford" c="OXFORD"/>
<c n="Rumford" c="RUMFORD"/>
<c n="Sanford" c="SANFORD"/>
<c n="Scarborough" c="SCARBOROUGH"/>
<c n="Topsham" c="TOPSHAM"/>
<c n="Wakefield" c="WAKEFIELD"/>
<c n="Waldoboro" c="WALDOBORO"/>
<c n="Winslow" c="WINSLOW"/>
<c n="Winthrop" c="WINTHROP"/>
<c n="Yarmouth" c="YARMOUTH"/></dma>
    
    <dma code="537" title="Bangor, ME">
<c n="Addison" c="ADDISON"/>
<c n="Anson" c="ANSON"/>
<c n="Athens" c="ATHENS"/>
<c n="Aurora" c="AURORA"/>
<c n="Baileyville" c="BAILEYVILLE"/>
<c n="Bangor" c="BANGOR"/>
<c n="Bar Harbor" c="BAR HARBOR"/>
<c n="Bass Harbor" c="BASS HARBOR"/>
<c n="Beals" c="BEALS"/>
<c n="Belfast" c="BELFAST"/>
<c n="Bernard" c="BERNARD"/>
<c n="Bingham" c="BINGHAM"/>
<c n="Blue Hill" c="BLUE HILL"/>
<c n="Bradford" c="BRADFORD"/>
<c n="Bradley" c="BRADLEY"/>
<c n="Brewer" c="BREWER"/>
<c n="Brooklin" c="BROOKLIN"/>
<c n="Brooks" c="BROOKS"/>
<c n="Brooksville" c="BROOKSVILLE"/>
<c n="Brownville" c="BROWNVILLE"/>
<c n="Bucksport" c="BUCKSPORT"/>
<c n="Burnham" c="BURNHAM"/>
<c n="Calais" c="CALAIS"/>
<c n="Cambridge" c="CAMBRIDGE"/>
<c n="Canaan" c="CANAAN"/>
<c n="Caratunk" c="CARATUNK"/>
<c n="Carmel" c="CARMEL"/>
<c n="Castine" c="CASTINE"/>
<c n="Charleston" c="CHARLESTON"/>
<c n="Cherryfield" c="CHERRYFIELD"/>
<c n="Columbia Falls" c="COLUMBIA FALLS"/>
<c n="Corinna" c="CORINNA"/>
<c n="Corinth" c="CORINTH"/>
<c n="Cranberry Isles" c="CRANBERRY ISLES"/>
<c n="Cutler" c="CUTLER"/>
<c n="Danforth" c="DANFORTH"/>
<c n="Deer Isle" c="DEER ISLE"/>
<c n="Dennysville" c="DENNYSVILLE"/>
<c n="Detroit" c="DETROIT"/>
<c n="Dexter" c="DEXTER"/>
<c n="Dover-Foxcroft" c="DOVER-FOXCROFT"/>
<c n="East Machias" c="EAST MACHIAS"/>
<c n="East Millinocket" c="EAST MILLINOCKET"/>
<c n="Eastport" c="EASTPORT"/>
<c n="Eddington" c="EDDINGTON"/>
<c n="Ellsworth" c="ELLSWORTH"/>
<c n="Etna" c="ETNA"/>
<c n="Exeter" c="EXETER"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Frankfort" c="FRANKFORT"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Frenchboro" c="FRENCHBORO"/>
<c n="Garland" c="GARLAND"/>
<c n="Gouldsboro" c="GOULDSBORO"/>
<c n="Grand Lake Stream" c="GRAND LAKE STREAM"/>
<c n="Greenbush" c="GREENBUSH"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Guilford" c="GUILFORD"/>
<c n="Hampden" c="HAMPDEN"/>
<c n="Hancock" c="HANCOCK"/>
<c n="Harmony" c="HARMONY"/>
<c n="Harrington" c="HARRINGTON"/>
<c n="Hartland" c="HARTLAND"/>
<c n="Hinckley" c="HINCKLEY"/>
<c n="Holden" c="HOLDEN"/>
<c n="Howland" c="HOWLAND"/>
<c n="Hudson" c="HUDSON"/>
<c n="Islesboro" c="ISLESBORO"/>
<c n="Islesford" c="ISLESFORD"/>
<c n="Jackman" c="JACKMAN"/>
<c n="Jonesboro" c="JONESBORO"/>
<c n="Jonesport" c="JONESPORT"/>
<c n="Kenduskeag" c="KENDUSKEAG"/>
<c n="Kingman" c="KINGMAN"/>
<c n="Lagrange" c="LAGRANGE"/>
<c n="Lee" c="LEE"/>
<c n="Levant" c="LEVANT"/>
<c n="Liberty" c="LIBERTY"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Lincolnville" c="LINCOLNVILLE"/>
<c n="Lubec" c="LUBEC"/>
<c n="Machias" c="MACHIAS"/>
<c n="Machiasport" c="MACHIASPORT"/>
<c n="Madison" c="MADISON"/>
<c n="Mattawamkeag" c="MATTAWAMKEAG"/>
<c n="Medway" c="MEDWAY"/>
<c n="Milbridge" c="MILBRIDGE"/>
<c n="Milford" c="MILFORD"/>
<c n="Millinocket" c="MILLINOCKET"/>
<c n="Milo" c="MILO"/>
<c n="Monroe" c="MONROE"/>
<c n="Monson" c="MONSON"/>
<c n="Morrill" c="MORRILL"/>
<c n="Mount Desert" c="MOUNT DESERT"/>
<c n="New Portland" c="NEW PORTLAND"/>
<c n="Newport" c="NEWPORT"/>
<c n="Norridgewock" c="NORRIDGEWOCK"/>
<c n="North Anson" c="NORTH ANSON"/>
<c n="North New Portland" c="NORTH NEW PORTLAND"/>
<c n="Northeast Harbor" c="NORTHEAST HARBOR"/>
<c n="Olamon" c="OLAMON"/>
<c n="Old Town" c="OLD TOWN"/>
<c n="Orland" c="ORLAND"/>
<c n="Orono" c="ORONO"/>
<c n="Orrington" c="ORRINGTON"/>
<c n="Otter Creek" c="OTTER CREEK"/>
<c n="Palermo" c="PALERMO"/>
<c n="Palmyra" c="PALMYRA"/>
<c n="Patten" c="PATTEN"/>
<c n="Pembroke" c="PEMBROKE"/>
<c n="Penobscot" c="PENOBSCOT"/>
<c n="Perry" c="PERRY"/>
<c n="Pittsfield" c="PITTSFIELD"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Robbinston" c="ROBBINSTON"/>
<c n="Rockwood" c="ROCKWOOD"/>
<c n="Salsbury Cove" c="SALSBURY COVE"/>
<c n="Sandy Point" c="SANDY POINT"/>
<c n="Sangerville" c="SANGERVILLE"/>
<c n="Seal Harbor" c="SEAL HARBOR"/>
<c n="Searsmont" c="SEARSMONT"/>
<c n="Searsport" c="SEARSPORT"/>
<c n="Sebec" c="SEBEC"/>
<c n="Sedgwick" c="SEDGWICK"/>
<c n="Sherman Station" c="SHERMAN STATION"/>
<c n="Shirley Mills" c="SHIRLEY MILLS"/>
<c n="Skowhegan" c="SKOWHEGAN"/>
<c n="Smithfield" c="SMITHFIELD"/>
<c n="Solon" c="SOLON"/>
<c n="Southwest Harbor" c="SOUTHWEST HARBOR"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="St. Albans" c="ST. ALBANS"/>
<c n="Stetson" c="STETSON"/>
<c n="Steuben" c="STEUBEN"/>
<c n="Stockton Springs" c="STOCKTON SPRINGS"/>
<c n="Stonington" c="STONINGTON"/>
<c n="Sullivan" c="SULLIVAN"/>
<c n="Sunset" c="SUNSET"/>
<c n="Surry" c="SURRY"/>
<c n="Swans Island" c="SWANS ISLAND"/>
<c n="Thorndike" c="THORNDIKE"/>
<c n="Topsfield" c="TOPSFIELD"/>
<c n="Troy" c="TROY"/>
<c n="Unity" c="UNITY"/>
<c n="Vanceboro" c="VANCEBORO"/>
<c n="Wesley" c="WESLEY"/>
<c n="West Enfield" c="WEST ENFIELD"/>
<c n="Whiting" c="WHITING"/>
<c n="Winter Harbor" c="WINTER HARBOR"/>
<c n="Winterport" c="WINTERPORT"/>
<c n="Bar Harbor" c="BAR HARBOR"/>
<c n="Dexter" c="DEXTER"/>
<c n="Dover Foxcroft" c="DOVER FOXCROFT"/>
<c n="Hampden" c="HAMPDEN"/>
<c n="Hermon" c="HERMON"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Norridgewock" c="NORRIDGEWOCK"/>
<c n="Orono" c="ORONO"/>
<c n="Pittsfield" c="PITTSFIELD"/>
<c n="Skowhegan" c="SKOWHEGAN"/>
<c n="Unity" c="UNITY"/>
<c n="Winterport" c="WINTERPORT"/></dma>
    
    <dma code="552" title="Presque Isle, ME">
<c n="Ashland" c="ASHLAND"/>
<c n="Benedicta" c="BENEDICTA"/>
<c n="Bridgewater" c="BRIDGEWATER"/>
<c n="Caribou" c="CARIBOU"/>
<c n="Eagle Lake" c="EAGLE LAKE"/>
<c n="Easton" c="EASTON"/>
<c n="Frenchville" c="FRENCHVILLE"/>
<c n="Fort Fairfield" c="FORT FAIRFIELD"/>
<c n="Fort Kent" c="FORT KENT"/>
<c n="Grand Isle" c="GRAND ISLE"/>
<c n="Houlton" c="HOULTON"/>
<c n="Island Falls" c="ISLAND FALLS"/>
<c n="Limestone" c="LIMESTONE"/>
<c n="Madawaska" c="MADAWASKA"/>
<c n="Mapleton" c="MAPLETON"/>
<c n="Mars Hill" c="MARS HILL"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="New Sweden" c="NEW SWEDEN"/>
<c n="Oakfield" c="OAKFIELD"/>
<c n="Presque Isle" c="PRESQUE ISLE"/>
<c n="Sinclair" c="SINCLAIR"/>
<c n="Soldier Pond" c="SOLDIER POND"/>
<c n="St. Agatha" c="ST. AGATHA"/>
<c n="St. Francis" c="ST. FRANCIS"/>
<c n="Stockholm" c="STOCKHOLM"/>
<c n="Van Buren" c="VAN BUREN"/>
<c n="Washburn" c="WASHBURN"/>
<c n="Fort Kent" c="FORT KENT"/>
<c n="Houlton" c="HOULTON"/>
<c n="Madawaska" c="MADAWASKA"/></dma>
    </state>
<state id="NY" full_name="New York">
    <dma code="501" title="New York, NY">
<c n="Bethel" c="BETHEL"/>
<c n="Bridgeport" c="BRIDGEPORT"/>
<c n="Brookfield" c="BROOKFIELD"/>
<c n="Cos Cob" c="COS COB"/>
<c n="Danbury" c="DANBURY"/>
<c n="Darien" c="DARIEN"/>
<c n="Easton" c="EASTON"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Greens Farms" c="GREENS FARMS"/>
<c n="Greenwich" c="GREENWICH"/>
<c n="Hawleyville" c="HAWLEYVILLE"/>
<c n="Monroe" c="MONROE"/>
<c n="New Canaan" c="NEW CANAAN"/>
<c n="New Fairfield" c="NEW FAIRFIELD"/>
<c n="Newtown" c="NEWTOWN"/>
<c n="Norwalk" c="NORWALK"/>
<c n="Old Greenwich" c="OLD GREENWICH"/>
<c n="Redding" c="REDDING"/>
<c n="Ridgefield" c="RIDGEFIELD"/>
<c n="Riverside" c="RIVERSIDE"/>
<c n="Sandy Hook" c="SANDY HOOK"/>
<c n="Shelton" c="SHELTON"/>
<c n="Sherman" c="SHERMAN"/>
<c n="Southport" c="SOUTHPORT"/>
<c n="Stamford" c="STAMFORD"/>
<c n="Stratford" c="STRATFORD"/>
<c n="Trumbull" c="TRUMBULL"/>
<c n="Weston" c="WESTON"/>
<c n="Westport" c="WESTPORT"/>
<c n="Wilton" c="WILTON"/>
<c n="Adelphia" c="ADELPHIA"/>
<c n="Allamuchy Township" c="ALLAMUCHY TOWNSHIP"/>
<c n="Allendale" c="ALLENDALE"/>
<c n="Allenhurst" c="ALLENHURST"/>
<c n="Allentown" c="ALLENTOWN"/>
<c n="Allenwood" c="ALLENWOOD"/>
<c n="Alpine" c="ALPINE"/>
<c n="Andover" c="ANDOVER"/>
<c n="Annandale" c="ANNANDALE"/>
<c n="Asbury" c="ASBURY"/>
<c n="Asbury Park" c="ASBURY PARK"/>
<c n="Atlantic Highlands" c="ATLANTIC HIGHLANDS"/>
<c n="Augusta" c="AUGUSTA"/>
<c n="Avenel" c="AVENEL"/>
<c n="Avon-by-the-Sea" c="AVON-BY-THE-SEA"/>
<c n="Barnegat" c="BARNEGAT"/>
<c n="Basking Ridge" c="BASKING RIDGE"/>
<c n="Bayonne" c="BAYONNE"/>
<c n="Bayville" c="BAYVILLE"/>
<c n="Beach Haven" c="BEACH HAVEN"/>
<c n="Beachwood" c="BEACHWOOD"/>
<c n="Bedminster Township" c="BEDMINSTER TOWNSHIP"/>
<c n="Belford" c="BELFORD"/>
<c n="Belle Mead" c="BELLE MEAD"/>
<c n="Belleville" c="BELLEVILLE"/>
<c n="Belmar" c="BELMAR"/>
<c n="Belvidere" c="BELVIDERE"/>
<c n="Bergenfield" c="BERGENFIELD"/>
<c n="Berkeley Heights" c="BERKELEY HEIGHTS"/>
<c n="Bernardsville" c="BERNARDSVILLE"/>
<c n="Blairstown" c="BLAIRSTOWN"/>
<c n="Bloomfield" c="BLOOMFIELD"/>
<c n="Bloomingdale" c="BLOOMINGDALE"/>
<c n="Bloomsbury" c="BLOOMSBURY"/>
<c n="Bogota" c="BOGOTA"/>
<c n="Boonton" c="BOONTON"/>
<c n="Bound Brook" c="BOUND BROOK"/>
<c n="Bradley Beach" c="BRADLEY BEACH"/>
<c n="Branchville" c="BRANCHVILLE"/>
<c n="Brick" c="BRICK"/>
<c n="Bridgewater" c="BRIDGEWATER"/>
<c n="Brielle" c="BRIELLE"/>
<c n="Broadway" c="BROADWAY"/>
<c n="Budd Lake" c="BUDD LAKE"/>
<c n="Butler" c="BUTLER"/>
<c n="White" c="WHITE"/>
<c n="Caldwell" c="CALDWELL"/>
<c n="Califon" c="CALIFON"/>
<c n="Carlstadt" c="CARLSTADT"/>
<c n="Carteret" c="CARTERET"/>
<c n="Cedar Grove Township" c="CEDAR GROVE TOWNSHIP"/>
<c n="Cedar Knolls" c="CEDAR KNOLLS"/>
<c n="Chatham Borough" c="CHATHAM BOROUGH"/>
<c n="Chester" c="CHESTER"/>
<c n="Clark" c="CLARK"/>
<c n="Clarksburg" c="CLARKSBURG"/>
<c n="Cliffside Park" c="CLIFFSIDE PARK"/>
<c n="Cliffwood" c="CLIFFWOOD"/>
<c n="Clifton" c="CLIFTON"/>
<c n="Clinton" c="CLINTON"/>
<c n="Closter" c="CLOSTER"/>
<c n="Colonia" c="COLONIA"/>
<c n="Colts Neck" c="COLTS NECK"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Cranbury" c="CRANBURY"/>
<c n="Cranford" c="CRANFORD"/>
<c n="Cream Ridge" c="CREAM RIDGE"/>
<c n="Cresskill" c="CRESSKILL"/>
<c n="Dayton" c="DAYTON"/>
<c n="Deal" c="DEAL"/>
<c n="Demarest" c="DEMAREST"/>
<c n="Denville" c="DENVILLE"/>
<c n="Dover" c="DOVER"/>
<c n="Dumont" c="DUMONT"/>
<c n="Dunellen" c="DUNELLEN"/>
<c n="East Brunswick" c="EAST BRUNSWICK"/>
<c n="East Hanover" c="EAST HANOVER"/>
<c n="East Orange" c="EAST ORANGE"/>
<c n="East Rutherford" c="EAST RUTHERFORD"/>
<c n="Eatontown" c="EATONTOWN"/>
<c n="Edgewater" c="EDGEWATER"/>
<c n="Edison Township" c="EDISON TOWNSHIP"/>
<c n="Elizabeth" c="ELIZABETH"/>
<c n="Elmwood Park" c="ELMWOOD PARK"/>
<c n="Emerson" c="EMERSON"/>
<c n="Englewood" c="ENGLEWOOD"/>
<c n="Englewood Cliffs" c="ENGLEWOOD CLIFFS"/>
<c n="Englishtown" c="ENGLISHTOWN"/>
<c n="Essex Fells" c="ESSEX FELLS"/>
<c n="Fair Haven" c="FAIR HAVEN"/>
<c n="Fair Lawn" c="FAIR LAWN"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Fairview" c="FAIRVIEW"/>
<c n="Fanwood" c="FANWOOD"/>
<c n="Far Hills" c="FAR HILLS"/>
<c n="Farmingdale" c="FARMINGDALE"/>
<c n="Flanders" c="FLANDERS"/>
<c n="Flemington" c="FLEMINGTON"/>
<c n="Florham Park" c="FLORHAM PARK"/>
<c n="Forked River" c="FORKED RIVER"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Franklin Lakes" c="FRANKLIN LAKES"/>
<c n="Franklin Park" c="FRANKLIN PARK"/>
<c n="Freehold" c="FREEHOLD"/>
<c n="Frenchtown" c="FRENCHTOWN"/>
<c n="Fort Lee" c="FORT LEE"/>
<c n="Fort Monmouth" c="FORT MONMOUTH"/>
<c n="Garfield" c="GARFIELD"/>
<c n="Garwood" c="GARWOOD"/>
<c n="Gillette" c="GILLETTE"/>
<c n="Peapack and Gladstone" c="PEAPACK AND GLADSTONE"/>
<c n="Glasser" c="GLASSER"/>
<c n="Glen Gardner" c="GLEN GARDNER"/>
<c n="Glen Ridge" c="GLEN RIDGE"/>
<c n="Glen Rock" c="GLEN ROCK"/>
<c n="Glenwood" c="GLENWOOD"/>
<c n="Great Meadows" c="GREAT MEADOWS"/>
<c n="Green Village" c="GREEN VILLAGE"/>
<c n="Hackensack" c="HACKENSACK"/>
<c n="Hackettstown" c="HACKETTSTOWN"/>
<c n="Haledon" c="HALEDON"/>
<c n="Hamburg" c="HAMBURG"/>
<c n="Hampton" c="HAMPTON"/>
<c n="Harrington Park" c="HARRINGTON PARK"/>
<c n="Harrison" c="HARRISON"/>
<c n="Hasbrouck Heights" c="HASBROUCK HEIGHTS"/>
<c n="Haskell" c="HASKELL"/>
<c n="Haworth" c="HAWORTH"/>
<c n="Hawthorne" c="HAWTHORNE"/>
<c n="Hazlet" c="HAZLET"/>
<c n="Helmetta" c="HELMETTA"/>
<c n="Hewitt" c="HEWITT"/>
<c n="High Bridge" c="HIGH BRIDGE"/>
<c n="Highland Park" c="HIGHLAND PARK"/>
<c n="Highlands" c="HIGHLANDS"/>
<c n="Hillsborough Township" c="HILLSBOROUGH TOWNSHIP"/>
<c n="Hillsdale" c="HILLSDALE"/>
<c n="Hillside" c="HILLSIDE"/>
<c n="Ho-Ho-Kus" c="HO-HO-KUS"/>
<c n="Hoboken" c="HOBOKEN"/>
<c n="Holmdel" c="HOLMDEL"/>
<c n="Hopatcong" c="HOPATCONG"/>
<c n="Hope" c="HOPE"/>
<c n="Howell" c="HOWELL"/>
<c n="Irvington" c="IRVINGTON"/>
<c n="Iselin" c="ISELIN"/>
<c n="Island Heights" c="ISLAND HEIGHTS"/>
<c n="Jackson" c="JACKSON"/>
<c n="Jersey City" c="JERSEY CITY"/>
<c n="Johnsonburg" c="JOHNSONBURG"/>
<c n="Keansburg" c="KEANSBURG"/>
<c n="Kearny" c="KEARNY"/>
<c n="Keasbey" c="KEASBEY"/>
<c n="Kendall Park" c="KENDALL PARK"/>
<c n="Kenilworth" c="KENILWORTH"/>
<c n="Kenvil" c="KENVIL"/>
<c n="Keyport" c="KEYPORT"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Lafayette Township" c="LAFAYETTE TOWNSHIP"/>
<c n="Lake Hiawatha" c="LAKE HIAWATHA"/>
<c n="Lake Hopatcong" c="LAKE HOPATCONG"/>
<c n="Lakehurst" c="LAKEHURST"/>
<c n="Lakewood" c="LAKEWOOD"/>
<c n="Lambertville" c="LAMBERTVILLE"/>
<c n="Landing" c="LANDING"/>
<c n="Lanoka Harbor" c="LANOKA HARBOR"/>
<c n="Lavallette" c="LAVALLETTE"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Ledgewood" c="LEDGEWOOD"/>
<c n="Leonia" c="LEONIA"/>
<c n="Liberty Corner" c="LIBERTY CORNER"/>
<c n="Lincoln Park" c="LINCOLN PARK"/>
<c n="Lincroft" c="LINCROFT"/>
<c n="Linden" c="LINDEN"/>
<c n="Little Falls" c="LITTLE FALLS"/>
<c n="Little Ferry" c="LITTLE FERRY"/>
<c n="Little Silver" c="LITTLE SILVER"/>
<c n="Little York" c="LITTLE YORK"/>
<c n="Livingston" c="LIVINGSTON"/>
<c n="Lodi" c="LODI"/>
<c n="Long Branch" c="LONG BRANCH"/>
<c n="Long Valley" c="LONG VALLEY"/>
<c n="Lyndhurst" c="LYNDHURST"/>
<c n="Madison" c="MADISON"/>
<c n="Mahwah" c="MAHWAH"/>
<c n="Manahawkin" c="MANAHAWKIN"/>
<c n="Manasquan" c="MANASQUAN"/>
<c n="Manville" c="MANVILLE"/>
<c n="Maplewood" c="MAPLEWOOD"/>
<c n="Marlboro Township" c="MARLBORO TOWNSHIP"/>
<c n="Martinsville" c="MARTINSVILLE"/>
<c n="Matawan" c="MATAWAN"/>
<c n="Maywood" c="MAYWOOD"/>
<c n="McAfee" c="MCAFEE"/>
<c n="Mendham" c="MENDHAM"/>
<c n="Metuchen" c="METUCHEN"/>
<c n="Middlesex" c="MIDDLESEX"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="Midland Park" c="MIDLAND PARK"/>
<c n="Milford" c="MILFORD"/>
<c n="Millburn" c="MILLBURN"/>
<c n="Millington" c="MILLINGTON"/>
<c n="Milltown" c="MILLTOWN"/>
<c n="Mine Hill Township" c="MINE HILL TOWNSHIP"/>
<c n="Monmouth Junction" c="MONMOUTH JUNCTION"/>
<c n="Monroe Township" c="MONROE TOWNSHIP"/>
<c n="Montague Township" c="MONTAGUE TOWNSHIP"/>
<c n="Montclair" c="MONTCLAIR"/>
<c n="Montvale" c="MONTVALE"/>
<c n="Montville" c="MONTVILLE"/>
<c n="Moonachie" c="MOONACHIE"/>
<c n="Morganville" c="MORGANVILLE"/>
<c n="Morris Plains" c="MORRIS PLAINS"/>
<c n="Morristown" c="MORRISTOWN"/>
<c n="Mount Arlington" c="MOUNT ARLINGTON"/>
<c n="Mount Freedom" c="MOUNT FREEDOM"/>
<c n="Mountain Lakes" c="MOUNTAIN LAKES"/>
<c n="Mountainside" c="MOUNTAINSIDE"/>
<c n="Navesink" c="NAVESINK"/>
<c n="Neptune" c="NEPTUNE"/>
<c n="Neshanic Station" c="NESHANIC STATION"/>
<c n="Netcong" c="NETCONG"/>
<c n="New Brunswick" c="NEW BRUNSWICK"/>
<c n="New Egypt" c="NEW EGYPT"/>
<c n="New Milford" c="NEW MILFORD"/>
<c n="New Providence" c="NEW PROVIDENCE"/>
<c n="New Vernon" c="NEW VERNON"/>
<c n="Newark" c="NEWARK"/>
<c n="Newfoundland" c="NEWFOUNDLAND"/>
<c n="Newton" c="NEWTON"/>
<c n="North Arlington" c="NORTH ARLINGTON"/>
<c n="North Bergen" c="NORTH BERGEN"/>
<c n="North Brunswick Township" c="NORTH BRUNSWICK TOWNSHIP"/>
<c n="Northvale" c="NORTHVALE"/>
<c n="Norwood" c="NORWOOD"/>
<c n="Nutley" c="NUTLEY"/>
<c n="Oak Ridge" c="OAK RIDGE"/>
<c n="Oakhurst" c="OAKHURST"/>
<c n="Oakland" c="OAKLAND"/>
<c n="Ocean Grove" c="OCEAN GROVE"/>
<c n="Oceanport" c="OCEANPORT"/>
<c n="Ogdensburg" c="OGDENSBURG"/>
<c n="Old Bridge" c="OLD BRIDGE"/>
<c n="Oldwick" c="OLDWICK"/>
<c n="Oradell" c="ORADELL"/>
<c n="City of Orange" c="CITY OF ORANGE"/>
<c n="Oxford" c="OXFORD"/>
<c n="Palisades Park" c="PALISADES PARK"/>
<c n="Paramus" c="PARAMUS"/>
<c n="Park Ridge" c="PARK RIDGE"/>
<c n="Parlin" c="PARLIN"/>
<c n="Parsippany-Troy Hills" c="PARSIPPANY-TROY HILLS"/>
<c n="Passaic" c="PASSAIC"/>
<c n="Paterson" c="PATERSON"/>
<c n="Peapack" c="PEAPACK"/>
<c n="Pequannock Township" c="PEQUANNOCK TOWNSHIP"/>
<c n="Perth Amboy" c="PERTH AMBOY"/>
<c n="Phillipsburg" c="PHILLIPSBURG"/>
<c n="Picatinny Arsenal" c="PICATINNY ARSENAL"/>
<c n="Pine Brook" c="PINE BROOK"/>
<c n="Piscataway Township" c="PISCATAWAY TOWNSHIP"/>
<c n="Pittstown" c="PITTSTOWN"/>
<c n="Plainfield" c="PLAINFIELD"/>
<c n="Plainsboro Township" c="PLAINSBORO TOWNSHIP"/>
<c n="Pluckemin" c="PLUCKEMIN"/>
<c n="Point Pleasant Beach" c="POINT PLEASANT BEACH"/>
<c n="Pompton Lakes" c="POMPTON LAKES"/>
<c n="Pompton Plains" c="POMPTON PLAINS"/>
<c n="Port Murray" c="PORT MURRAY"/>
<c n="Port Reading" c="PORT READING"/>
<c n="Pottersville" c="POTTERSVILLE"/>
<c n="Rahway" c="RAHWAY"/>
<c n="Ramsey" c="RAMSEY"/>
<c n="Randolph" c="RANDOLPH"/>
<c n="Raritan" c="RARITAN"/>
<c n="Readington Township" c="READINGTON TOWNSHIP"/>
<c n="Red Bank" c="RED BANK"/>
<c n="Ridgefield" c="RIDGEFIELD"/>
<c n="Ridgefield Park" c="RIDGEFIELD PARK"/>
<c n="Ridgewood" c="RIDGEWOOD"/>
<c n="Ringoes" c="RINGOES"/>
<c n="Ringwood" c="RINGWOOD"/>
<c n="River Edge" c="RIVER EDGE"/>
<c n="Riverdale" c="RIVERDALE"/>
<c n="Rochelle Park" c="ROCHELLE PARK"/>
<c n="Rockaway" c="ROCKAWAY"/>
<c n="Rocky Hill" c="ROCKY HILL"/>
<c n="Roosevelt" c="ROOSEVELT"/>
<c n="Roseland" c="ROSELAND"/>
<c n="Roselle" c="ROSELLE"/>
<c n="Roselle Park" c="ROSELLE PARK"/>
<c n="Rumson" c="RUMSON"/>
<c n="Rutherford" c="RUTHERFORD"/>
<c n="Saddle Brook" c="SADDLE BROOK"/>
<c n="Saddle River" c="SADDLE RIVER"/>
<c n="Sayreville" c="SAYREVILLE"/>
<c n="Scotch Plains" c="SCOTCH PLAINS"/>
<c n="Sea Girt" c="SEA GIRT"/>
<c n="Seaside Heights" c="SEASIDE HEIGHTS"/>
<c n="Seaside Park" c="SEASIDE PARK"/>
<c n="Secaucus" c="SECAUCUS"/>
<c n="Sewaren" c="SEWAREN"/>
<c n="Short Hills" c="SHORT HILLS"/>
<c n="Shrewsbury" c="SHREWSBURY"/>
<c n="Skillman" c="SKILLMAN"/>
<c n="Somerset" c="SOMERSET"/>
<c n="Somerville" c="SOMERVILLE"/>
<c n="South Amboy" c="SOUTH AMBOY"/>
<c n="South Bound Brook" c="SOUTH BOUND BROOK"/>
<c n="South Hackensack" c="SOUTH HACKENSACK"/>
<c n="South Orange" c="SOUTH ORANGE"/>
<c n="South Plainfield" c="SOUTH PLAINFIELD"/>
<c n="South River" c="SOUTH RIVER"/>
<c n="Sparta Township" c="SPARTA TOWNSHIP"/>
<c n="Spotswood" c="SPOTSWOOD"/>
<c n="Spring Lake" c="SPRING LAKE"/>
<c n="Township of Springfield" c="TOWNSHIP OF SPRINGFIELD"/>
<c n="Stanhope" c="STANHOPE"/>
<c n="Stewartsville" c="STEWARTSVILLE"/>
<c n="Stillwater Township" c="STILLWATER TOWNSHIP"/>
<c n="Stirling" c="STIRLING"/>
<c n="Stockholm" c="STOCKHOLM"/>
<c n="Stockton" c="STOCKTON"/>
<c n="Succasunna" c="SUCCASUNNA"/>
<c n="Summit" c="SUMMIT"/>
<c n="Sussex" c="SUSSEX"/>
<c n="Teaneck" c="TEANECK"/>
<c n="Tenafly" c="TENAFLY"/>
<c n="Teterboro" c="TETERBORO"/>
<c n="Three Bridges" c="THREE BRIDGES"/>
<c n="Toms River" c="TOMS RIVER"/>
<c n="Totowa" c="TOTOWA"/>
<c n="Towaco" c="TOWACO"/>
<c n="Tuckerton" c="TUCKERTON"/>
<c n="Union" c="UNION"/>
<c n="Union City" c="UNION CITY"/>
<c n="Vauxhall" c="VAUXHALL"/>
<c n="Vernon Township" c="VERNON TOWNSHIP"/>
<c n="Verona" c="VERONA"/>
<c n="Vienna" c="VIENNA"/>
<c n="Waldwick" c="WALDWICK"/>
<c n="Wallington" c="WALLINGTON"/>
<c n="Walpack Township" c="WALPACK TOWNSHIP"/>
<c n="Wanaque" c="WANAQUE"/>
<c n="Waretown" c="WARETOWN"/>
<c n="Warren" c="WARREN"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Watchung" c="WATCHUNG"/>
<c n="Wayne" c="WAYNE"/>
<c n="Weehawken" c="WEEHAWKEN"/>
<c n="West Long Branch" c="WEST LONG BRANCH"/>
<c n="West Milford" c="WEST MILFORD"/>
<c n="West New York" c="WEST NEW YORK"/>
<c n="West Orange" c="WEST ORANGE"/>
<c n="Westfield" c="WESTFIELD"/>
<c n="Westwood" c="WESTWOOD"/>
<c n="Wharton" c="WHARTON"/>
<c n="Whippany" c="WHIPPANY"/>
<c n="Whitehouse" c="WHITEHOUSE"/>
<c n="Whitehouse Station" c="WHITEHOUSE STATION"/>
<c n="Whiting" c="WHITING"/>
<c n="Wood-Ridge" c="WOOD-RIDGE"/>
<c n="Woodbridge" c="WOODBRIDGE"/>
<c n="Woodcliff Lake" c="WOODCLIFF LAKE"/>
<c n="Wyckoff" c="WYCKOFF"/>
<c n="Zarephath" c="ZAREPHATH"/>
<c n="Accord" c="ACCORD"/>
<c n="Albertson" c="ALBERTSON"/>
<c n="Amagansett" c="AMAGANSETT"/>
<c n="Amawalk" c="AMAWALK"/>
<c n="Amenia" c="AMENIA"/>
<c n="Amityville" c="AMITYVILLE"/>
<c n="Annandale-on-Hudson" c="ANNANDALE-ON-HUDSON"/>
<c n="Ardsley" c="ARDSLEY"/>
<c n="Armonk" c="ARMONK"/>
<c n="Astoria" c="ASTORIA"/>
<c n="Atlantic Beach" c="ATLANTIC BEACH"/>
<c n="Babylon" c="BABYLON"/>
<c n="Baldwin" c="BALDWIN"/>
<c n="Bangall" c="BANGALL"/>
<c n="Barrytown" c="BARRYTOWN"/>
<c n="Bay Shore" c="BAY SHORE"/>
<c n="Bayport" c="BAYPORT"/>
<c n="Bayside" c="BAYSIDE"/>
<c n="Bayville" c="BAYVILLE"/>
<c n="Beacon" c="BEACON"/>
<c n="Bear Mountain" c="BEAR MOUNTAIN"/>
<c n="Bearsville" c="BEARSVILLE"/>
<c n="Bedford" c="BEDFORD"/>
<c n="Bedford Hills" c="BEDFORD HILLS"/>
<c n="Bellerose Village" c="BELLEROSE VILLAGE"/>
<c n="Bellmore" c="BELLMORE"/>
<c n="Bellport" c="BELLPORT"/>
<c n="Bethel" c="BETHEL"/>
<c n="Bethpage" c="BETHPAGE"/>
<c n="Blauvelt" c="BLAUVELT"/>
<c n="Blue Point" c="BLUE POINT"/>
<c n="Bohemia" c="BOHEMIA"/>
<c n="Brentwood" c="BRENTWOOD"/>
<c n="Brewster" c="BREWSTER"/>
<c n="Briarcliff Manor" c="BRIARCLIFF MANOR"/>
<c n="Bridgehampton" c="BRIDGEHAMPTON"/>
<c n="Brightwaters" c="BRIGHTWATERS"/>
<c n="Bronx" c="BRONX"/>
<c n="Bronxville" c="BRONXVILLE"/>
<c n="Brookhaven" c="BROOKHAVEN"/>
<c n="Brooklyn" c="BROOKLYN"/>
<c n="Buchanan" c="BUCHANAN"/>
<c n="Callicoon" c="CALLICOON"/>
<c n="Calverton" c="CALVERTON"/>
<c n="Cambria Heights" c="CAMBRIA HEIGHTS"/>
<c n="Campbell Hall" c="CAMPBELL HALL"/>
<c n="Carle Place" c="CARLE PLACE"/>
<c n="Carmel" c="CARMEL"/>
<c n="Cedarhurst" c="CEDARHURST"/>
<c n="Center Moriches" c="CENTER MORICHES"/>
<c n="Centereach" c="CENTEREACH"/>
<c n="Centerport" c="CENTERPORT"/>
<c n="Central Islip" c="CENTRAL ISLIP"/>
<c n="Central Valley" c="CENTRAL VALLEY"/>
<c n="Chappaqua" c="CHAPPAQUA"/>
<c n="Chester" c="CHESTER"/>
<c n="Clinton Corners" c="CLINTON CORNERS"/>
<c n="Cold Spring" c="COLD SPRING"/>
<c n="Cold Spring Harbor" c="COLD SPRING HARBOR"/>
<c n="College Point" c="COLLEGE POINT"/>
<c n="Commack" c="COMMACK"/>
<c n="Congers" c="CONGERS"/>
<c n="Copiague" c="COPIAGUE"/>
<c n="Coram" c="CORAM"/>
<c n="Cornwall" c="CORNWALL"/>
<c n="Cornwall-on-Hudson" c="CORNWALL-ON-HUDSON"/>
<c n="Corona" c="CORONA"/>
<c n="Cross River" c="CROSS RIVER"/>
<c n="Croton Falls" c="CROTON FALLS"/>
<c n="Croton-on-Hudson" c="CROTON-ON-HUDSON"/>
<c n="Cutchogue" c="CUTCHOGUE"/>
<c n="Deer Park" c="DEER PARK"/>
<c n="Dobbs Ferry" c="DOBBS FERRY"/>
<c n="Dover Plains" c="DOVER PLAINS"/>
<c n="East Elmhurst" c="EAST ELMHURST"/>
<c n="East Hampton" c="EAST HAMPTON"/>
<c n="East Islip" c="EAST ISLIP"/>
<c n="East Marion" c="EAST MARION"/>
<c n="East Meadow" c="EAST MEADOW"/>
<c n="East Moriches" c="EAST MORICHES"/>
<c n="East Northport" c="EAST NORTHPORT"/>
<c n="East Norwich" c="EAST NORWICH"/>
<c n="East Quogue" c="EAST QUOGUE"/>
<c n="East Rockaway" c="EAST ROCKAWAY"/>
<c n="Setauket- East Setauket" c="SETAUKET- EAST SETAUKET"/>
<c n="Eastchester" c="EASTCHESTER"/>
<c n="Eastport" c="EASTPORT"/>
<c n="Eldred" c="ELDRED"/>
<c n="Ellenville" c="ELLENVILLE"/>
<c n="Elmhurst" c="ELMHURST"/>
<c n="Elmont" c="ELMONT"/>
<c n="Elmsford" c="ELMSFORD"/>
<c n="Fallsburg" c="FALLSBURG"/>
<c n="Far Rockaway" c="FAR ROCKAWAY"/>
<c n="Farmingdale" c="FARMINGDALE"/>
<c n="Farmingville" c="FARMINGVILLE"/>
<c n="Ferndale" c="FERNDALE"/>
<c n="Fishkill" c="FISHKILL"/>
<c n="Floral Park" c="FLORAL PARK"/>
<c n="Florida" c="FLORIDA"/>
<c n="Flushing" c="FLUSHING"/>
<c n="Forest Hills" c="FOREST HILLS"/>
<c n="Franklin Square" c="FRANKLIN SQUARE"/>
<c n="Freeport" c="FREEPORT"/>
<c n="Fresh Meadows" c="FRESH MEADOWS"/>
<c n="Fort Montgomery" c="FORT MONTGOMERY"/>
<c n="Garden City" c="GARDEN CITY"/>
<c n="Gardiner" c="GARDINER"/>
<c n="Garnerville" c="GARNERVILLE"/>
<c n="Garrison" c="GARRISON"/>
<c n="Glen Cove" c="GLEN COVE"/>
<c n="Glen Head" c="GLEN HEAD"/>
<c n="Glen Oaks" c="GLEN OAKS"/>
<c n="Glenwood Landing" c="GLENWOOD LANDING"/>
<c n="Goshen" c="GOSHEN"/>
<c n="Great Neck" c="GREAT NECK"/>
<c n="Great River" c="GREAT RIVER"/>
<c n="Greenlawn" c="GREENLAWN"/>
<c n="Greenport" c="GREENPORT"/>
<c n="Greenvale" c="GREENVALE"/>
<c n="Hampton Bays" c="HAMPTON BAYS"/>
<c n="Harriman" c="HARRIMAN"/>
<c n="Harris" c="HARRIS"/>
<c n="Harrison" c="HARRISON"/>
<c n="Hartsdale" c="HARTSDALE"/>
<c n="Hastings-on-Hudson" c="HASTINGS-ON-HUDSON"/>
<c n="Hauppauge" c="HAUPPAUGE"/>
<c n="Haverstraw" c="HAVERSTRAW"/>
<c n="Hawthorne" c="HAWTHORNE"/>
<c n="Hempstead" c="HEMPSTEAD"/>
<c n="Hewlett" c="HEWLETT"/>
<c n="Hicksville" c="HICKSVILLE"/>
<c n="High Falls" c="HIGH FALLS"/>
<c n="Highland" c="HIGHLAND"/>
<c n="Highland Falls" c="HIGHLAND FALLS"/>
<c n="Highland Mills" c="HIGHLAND MILLS"/>
<c n="Hillburn" c="HILLBURN"/>
<c n="Holbrook" c="HOLBROOK"/>
<c n="Hollis" c="HOLLIS"/>
<c n="Holtsville" c="HOLTSVILLE"/>
<c n="Hopewell Junction" c="HOPEWELL JUNCTION"/>
<c n="Howard Beach" c="HOWARD BEACH"/>
<c n="Huntington" c="HUNTINGTON"/>
<c n="Huntington Station" c="HUNTINGTON STATION"/>
<c n="Hurley" c="HURLEY"/>
<c n="Hurleyville" c="HURLEYVILLE"/>
<c n="Hyde Park" c="HYDE PARK"/>
<c n="Inwood" c="INWOOD"/>
<c n="Irvington" c="IRVINGTON"/>
<c n="Island Park" c="ISLAND PARK"/>
<c n="Islandia" c="ISLANDIA"/>
<c n="Islip" c="ISLIP"/>
<c n="Islip Terrace" c="ISLIP TERRACE"/>
<c n="Jackson Heights" c="JACKSON HEIGHTS"/>
<c n="Jamaica" c="JAMAICA"/>
<c n="Jamesport" c="JAMESPORT"/>
<c n="Jefferson Valley-Yorktown" c="JEFFERSON VALLEY-YORKTOWN"/>
<c n="Jeffersonville" c="JEFFERSONVILLE"/>
<c n="Jericho" c="JERICHO"/>
<c n="Johnson" c="JOHNSON"/>
<c n="Katonah" c="KATONAH"/>
<c n="Kauneonga Lake" c="KAUNEONGA LAKE"/>
<c n="Kew Gardens" c="KEW GARDENS"/>
<c n="Kings Park" c="KINGS PARK"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Lagrangeville" c="LAGRANGEVILLE"/>
<c n="Lake Grove" c="LAKE GROVE"/>
<c n="Lake Katrine" c="LAKE KATRINE"/>
<c n="Lake Peekskill" c="LAKE PEEKSKILL"/>
<c n="Larchmont" c="LARCHMONT"/>
<c n="Laurel" c="LAUREL"/>
<c n="Lawrence" c="LAWRENCE"/>
<c n="Levittown" c="LEVITTOWN"/>
<c n="Liberty" c="LIBERTY"/>
<c n="Lincolndale" c="LINCOLNDALE"/>
<c n="Lindenhurst" c="LINDENHURST"/>
<c n="Little Neck" c="LITTLE NECK"/>
<c n="Livingston Manor" c="LIVINGSTON MANOR"/>
<c n="Loch Sheldrake" c="LOCH SHELDRAKE"/>
<c n="Locust Valley" c="LOCUST VALLEY"/>
<c n="Long Beach" c="LONG BEACH"/>
<c n="Long Island City" c="LONG ISLAND CITY"/>
<c n="Lynbrook" c="LYNBROOK"/>
<c n="Mahopac" c="MAHOPAC"/>
<c n="Mahopac Falls" c="MAHOPAC FALLS"/>
<c n="Malverne" c="MALVERNE"/>
<c n="Mamaroneck" c="MAMARONECK"/>
<c n="Manhasset" c="MANHASSET"/>
<c n="Manorville" c="MANORVILLE"/>
<c n="Marlboro" c="MARLBORO"/>
<c n="Maspeth" c="MASPETH"/>
<c n="Massapequa" c="MASSAPEQUA"/>
<c n="Massapequa Park" c="MASSAPEQUA PARK"/>
<c n="Mastic" c="MASTIC"/>
<c n="Mastic Beach" c="MASTIC BEACH"/>
<c n="Mattituck" c="MATTITUCK"/>
<c n="Maybrook" c="MAYBROOK"/>
<c n="Medford" c="MEDFORD"/>
<c n="Melville" c="MELVILLE"/>
<c n="Merrick" c="MERRICK"/>
<c n="Middle Island" c="MIDDLE ISLAND"/>
<c n="Middle Village" c="MIDDLE VILLAGE"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="Mill Neck" c="MILL NECK"/>
<c n="Millbrook" c="MILLBROOK"/>
<c n="Miller Place" c="MILLER PLACE"/>
<c n="Millerton" c="MILLERTON"/>
<c n="Millwood" c="MILLWOOD"/>
<c n="Milton" c="MILTON"/>
<c n="Mineola" c="MINEOLA"/>
<c n="Modena" c="MODENA"/>
<c n="Mohegan Lake" c="MOHEGAN LAKE"/>
<c n="Monroe" c="MONROE"/>
<c n="Monsey" c="MONSEY"/>
<c n="Montauk" c="MONTAUK"/>
<c n="Montgomery" c="MONTGOMERY"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="Montrose" c="MONTROSE"/>
<c n="Moriches" c="MORICHES"/>
<c n="Mount Kisco" c="MOUNT KISCO"/>
<c n="Mount Sinai" c="MOUNT SINAI"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="Mountainville" c="MOUNTAINVILLE"/>
<c n="Nanuet" c="NANUET"/>
<c n="Narrowsburg" c="NARROWSBURG"/>
<c n="Nesconset" c="NESCONSET"/>
<c n="New City" c="NEW CITY"/>
<c n="New Hyde Park" c="NEW HYDE PARK"/>
<c n="New Paltz" c="NEW PALTZ"/>
<c n="New Rochelle" c="NEW ROCHELLE"/>
<c n="New Windsor" c="NEW WINDSOR"/>
<c n="New York" c="NEW YORK"/>
<c n="Newburgh" c="NEWBURGH"/>
<c n="North Babylon" c="NORTH BABYLON"/>
<c n="North Salem" c="NORTH SALEM"/>
<c n="Northport" c="NORTHPORT"/>
<c n="Nyack" c="NYACK"/>
<c n="Oakdale" c="OAKDALE"/>
<c n="Oakland Gardens" c="OAKLAND GARDENS"/>
<c n="Ocean Beach" c="OCEAN BEACH"/>
<c n="Oceanside" c="OCEANSIDE"/>
<c n="Old Bethpage" c="OLD BETHPAGE"/>
<c n="Old Westbury" c="OLD WESTBURY"/>
<c n="Orangeburg" c="ORANGEBURG"/>
<c n="Orient" c="ORIENT"/>
<c n="Ossining" c="OSSINING"/>
<c n="Otisville" c="OTISVILLE"/>
<c n="Oyster Bay" c="OYSTER BAY"/>
<c n="Ozone Park" c="OZONE PARK"/>
<c n="Palisades" c="PALISADES"/>
<c n="Patchogue" c="PATCHOGUE"/>
<c n="Patterson" c="PATTERSON"/>
<c n="Pawling" c="PAWLING"/>
<c n="Pearl River" c="PEARL RIVER"/>
<c n="Peconic" c="PECONIC"/>
<c n="Peekskill" c="PEEKSKILL"/>
<c n="Village of Pelham" c="VILLAGE OF PELHAM"/>
<c n="Phoenicia" c="PHOENICIA"/>
<c n="Piermont" c="PIERMONT"/>
<c n="Pine Bush" c="PINE BUSH"/>
<c n="Pine Hill" c="PINE HILL"/>
<c n="Pine Plains" c="PINE PLAINS"/>
<c n="Plainview" c="PLAINVIEW"/>
<c n="Pleasant Valley" c="PLEASANT VALLEY"/>
<c n="Pleasantville" c="PLEASANTVILLE"/>
<c n="Pomona" c="POMONA"/>
<c n="Port Chester" c="PORT CHESTER"/>
<c n="Port Jefferson" c="PORT JEFFERSON"/>
<c n="Port Jefferson Station" c="PORT JEFFERSON STATION"/>
<c n="Port Jervis" c="PORT JERVIS"/>
<c n="Port Washington" c="PORT WASHINGTON"/>
<c n="Poughkeepsie" c="POUGHKEEPSIE"/>
<c n="Pound Ridge" c="POUND RIDGE"/>
<c n="Purchase" c="PURCHASE"/>
<c n="Purdys" c="PURDYS"/>
<c n="Putnam Valley" c="PUTNAM VALLEY"/>
<c n="Queens Village" c="QUEENS VILLAGE"/>
<c n="Quogue" c="QUOGUE"/>
<c n="Red Hook" c="RED HOOK"/>
<c n="Rego Park" c="REGO PARK"/>
<c n="Rhinebeck" c="RHINEBECK"/>
<c n="Rhinecliff" c="RHINECLIFF"/>
<c n="Richmond Hill" c="RICHMOND HILL"/>
<c n="Ridge" c="RIDGE"/>
<c n="Ridgewood" c="RIDGEWOOD"/>
<c n="Rifton" c="RIFTON"/>
<c n="Riverhead" c="RIVERHEAD"/>
<c n="Rock Hill" c="ROCK HILL"/>
<c n="Rockaway Park" c="ROCKAWAY PARK"/>
<c n="Rockville Centre" c="ROCKVILLE CENTRE"/>
<c n="Rocky Point" c="ROCKY POINT"/>
<c n="Ronkonkoma" c="RONKONKOMA"/>
<c n="Roosevelt" c="ROOSEVELT"/>
<c n="Roscoe" c="ROSCOE"/>
<c n="Rosedale" c="ROSEDALE"/>
<c n="Rosendale" c="ROSENDALE"/>
<c n="Roslyn" c="ROSLYN"/>
<c n="Roslyn Heights" c="ROSLYN HEIGHTS"/>
<c n="Rye" c="RYE"/>
<c n="Sag Harbor" c="SAG HARBOR"/>
<c n="Salt Point" c="SALT POINT"/>
<c n="Saugerties" c="SAUGERTIES"/>
<c n="Sayville" c="SAYVILLE"/>
<c n="Scarsdale" c="SCARSDALE"/>
<c n="Sea Cliff" c="SEA CLIFF"/>
<c n="Seaford" c="SEAFORD"/>
<c n="Selden" c="SELDEN"/>
<c n="Shelter Island" c="SHELTER ISLAND"/>
<c n="Shenorock" c="SHENOROCK"/>
<c n="East Setauket" c="EAST SETAUKET"/>
<c n="Shokan" c="SHOKAN"/>
<c n="Shoreham" c="SHOREHAM"/>
<c n="Shrub Oak" c="SHRUB OAK"/>
<c n="Sloatsburg" c="SLOATSBURG"/>
<c n="Smithtown" c="SMITHTOWN"/>
<c n="Somers" c="SOMERS"/>
<c n="Sound Beach" c="SOUND BEACH"/>
<c n="South Fallsburg" c="SOUTH FALLSBURG"/>
<c n="South Ozone Park" c="SOUTH OZONE PARK"/>
<c n="South Richmond Hill" c="SOUTH RICHMOND HILL"/>
<c n="South Salem" c="SOUTH SALEM"/>
<c n="Southampton" c="SOUTHAMPTON"/>
<c n="Southold" c="SOUTHOLD"/>
<c n="Sparkill" c="SPARKILL"/>
<c n="Spring Valley" c="SPRING VALLEY"/>
<c n="Springfield Gardens" c="SPRINGFIELD GARDENS"/>
<c n="St. James" c="ST. JAMES"/>
<c n="Staatsburg" c="STAATSBURG"/>
<c n="Stanfordville" c="STANFORDVILLE"/>
<c n="Staten Island" c="STATEN ISLAND"/>
<c n="Sterling Forest" c="STERLING FOREST"/>
<c n="Stone Ridge" c="STONE RIDGE"/>
<c n="Stony Brook" c="STONY BROOK"/>
<c n="Stony Point" c="STONY POINT"/>
<c n="Suffern" c="SUFFERN"/>
<c n="Sunnyside" c="SUNNYSIDE"/>
<c n="Syosset" c="SYOSSET"/>
<c n="Tallman" c="TALLMAN"/>
<c n="Tappan" c="TAPPAN"/>
<c n="Tarrytown" c="TARRYTOWN"/>
<c n="Thiells" c="THIELLS"/>
<c n="Thornwood" c="THORNWOOD"/>
<c n="Tivoli" c="TIVOLI"/>
<c n="Tomkins Cove" c="TOMKINS COVE"/>
<c n="Tuckahoe" c="TUCKAHOE"/>
<c n="Tuxedo Park" c="TUXEDO PARK"/>
<c n="Ulster Park" c="ULSTER PARK"/>
<c n="Uniondale" c="UNIONDALE"/>
<c n="Unionville" c="UNIONVILLE"/>
<c n="Upton" c="UPTON"/>
<c n="Valhalla" c="VALHALLA"/>
<c n="Valley Cottage" c="VALLEY COTTAGE"/>
<c n="Valley Stream" c="VALLEY STREAM"/>
<c n="Waccabuc" c="WACCABUC"/>
<c n="Wading River" c="WADING RIVER"/>
<c n="Walden" c="WALDEN"/>
<c n="Wallkill" c="WALLKILL"/>
<c n="Wantagh" c="WANTAGH"/>
<c n="Wappingers Falls" c="WAPPINGERS FALLS"/>
<c n="Warwick" c="WARWICK"/>
<c n="Washingtonville" c="WASHINGTONVILLE"/>
<c n="Water Mill" c="WATER MILL"/>
<c n="West Babylon" c="WEST BABYLON"/>
<c n="West Harrison" c="WEST HARRISON"/>
<c n="West Haverstraw" c="WEST HAVERSTRAW"/>
<c n="West Hempstead" c="WEST HEMPSTEAD"/>
<c n="West Hurley" c="WEST HURLEY"/>
<c n="West Islip" c="WEST ISLIP"/>
<c n="West Nyack" c="WEST NYACK"/>
<c n="West Point" c="WEST POINT"/>
<c n="West Sayville" c="WEST SAYVILLE"/>
<c n="West Shokan" c="WEST SHOKAN"/>
<c n="Westbury" c="WESTBURY"/>
<c n="Westhampton" c="WESTHAMPTON"/>
<c n="Westhampton Beach" c="WESTHAMPTON BEACH"/>
<c n="White Lake" c="WHITE LAKE"/>
<c n="White Plains" c="WHITE PLAINS"/>
<c n="Whitestone" c="WHITESTONE"/>
<c n="Williston Park" c="WILLISTON PARK"/>
<c n="Wingdale" c="WINGDALE"/>
<c n="Woodbury" c="WOODBURY"/>
<c n="Woodhaven" c="WOODHAVEN"/>
<c n="Woodmere" c="WOODMERE"/>
<c n="Woodside" c="WOODSIDE"/>
<c n="Woodstock" c="WOODSTOCK"/>
<c n="Wyandanch" c="WYANDANCH"/>
<c n="Yaphank" c="YAPHANK"/>
<c n="Yonkers" c="YONKERS"/>
<c n="Yorktown Heights" c="YORKTOWN HEIGHTS"/>
<c n="Matamoras" c="MATAMORAS"/>
<c n="Milford" c="MILFORD"/>
<c n="Rowland" c="ROWLAND"/>
<c n="Aberdeen Township" c="ABERDEEN TOWNSHIP"/>
<c n="Airmont" c="AIRMONT"/>
<c n="Alexandria" c="ALEXANDRIA"/>
<c n="Andover Township" c="ANDOVER TOWNSHIP"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Barnegat Township" c="BARNEGAT TOWNSHIP"/>
<c n="Bay Park" c="BAY PARK"/>
<c n="Beaverdam Lake-Salisbury Mills" c="BEAVERDAM LAKE-SALISBURY MILLS"/>
<c n="Berkeley Township" c="BERKELEY TOWNSHIP"/>
<c n="Bethel" c="BETHEL"/>
<c n="Boonton Township" c="BOONTON TOWNSHIP"/>
<c n="Branchburg" c="BRANCHBURG"/>
<c n="Brinckerhoff" c="BRINCKERHOFF"/>
<c n="Brookville" c="BROOKVILLE"/>
<c n="Byram Township" c="BYRAM TOWNSHIP"/>
<c n="Carmel" c="CARMEL"/>
<c n="Chatham Township" c="CHATHAM TOWNSHIP"/>
<c n="Chester Township" c="CHESTER TOWNSHIP"/>
<c n="Chestnut Ridge" c="CHESTNUT RIDGE"/>
<c n="Clinton Township" c="CLINTON TOWNSHIP"/>
<c n="Clintondale" c="CLINTONDALE"/>
<c n="Cranbury Township" c="CRANBURY TOWNSHIP"/>
<c n="Dix Hills" c="DIX HILLS"/>
<c n="East Amwell Township" c="EAST AMWELL TOWNSHIP"/>
<c n="East Farmingdale" c="EAST FARMINGDALE"/>
<c n="East Garden City" c="EAST GARDEN CITY"/>
<c n="East Hampton North" c="EAST HAMPTON NORTH"/>
<c n="East Hills" c="EAST HILLS"/>
<c n="East Massapequa" c="EAST MASSAPEQUA"/>
<c n="East Patchogue" c="EAST PATCHOGUE"/>
<c n="East Shoreham" c="EAST SHOREHAM"/>
<c n="Fairview" c="FAIRVIEW"/>
<c n="Fairview" c="FAIRVIEW"/>
<c n="Frankford" c="FRANKFORD"/>
<c n="Franklin Township" c="FRANKLIN TOWNSHIP"/>
<c n="Fredon Township" c="FREDON TOWNSHIP"/>
<c n="Freehold Township" c="FREEHOLD TOWNSHIP"/>
<c n="Gardnertown" c="GARDNERTOWN"/>
<c n="Goldens Bridge" c="GOLDENS BRIDGE"/>
<c n="Great Neck Plaza" c="GREAT NECK PLAZA"/>
<c n="Green Brook Township" c="GREEN BROOK TOWNSHIP"/>
<c n="Green Township" c="GREEN TOWNSHIP"/>
<c n="Greenwood Lake" c="GREENWOOD LAKE"/>
<c n="Hampton Township" c="HAMPTON TOWNSHIP"/>
<c n="Hanover" c="HANOVER"/>
<c n="Hardwick" c="HARDWICK"/>
<c n="Hardyston Township" c="HARDYSTON TOWNSHIP"/>
<c n="Heritage Hills" c="HERITAGE HILLS"/>
<c n="Hillside Lake" c="HILLSIDE LAKE"/>
<c n="Holland" c="HOLLAND"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Kerhonkson" c="KERHONKSON"/>
<c n="Kings Point" c="KINGS POINT"/>
<c n="Kingwood" c="KINGWOOD"/>
<c n="Kinnelon" c="KINNELON"/>
<c n="Lacey Township" c="LACEY TOWNSHIP"/>
<c n="Lake Carmel" c="LAKE CARMEL"/>
<c n="Lake Ronkonkoma" c="LAKE RONKONKOMA"/>
<c n="Lakewood Township" c="LAKEWOOD TOWNSHIP"/>
<c n="Laurel Hollow" c="LAUREL HOLLOW"/>
<c n="Lebanon Township" c="LEBANON TOWNSHIP"/>
<c n="Little Egg Harbor Township" c="LITTLE EGG HARBOR TOWNSHIP"/>
<c n="Long Beach Township" c="LONG BEACH TOWNSHIP"/>
<c n="Long Hill" c="LONG HILL"/>
<c n="Manchester Township" c="MANCHESTER TOWNSHIP"/>
<c n="Millstone" c="MILLSTONE"/>
<c n="Montebello" c="MONTEBELLO"/>
<c n="Montgomery" c="MONTGOMERY"/>
<c n="Morris Township" c="MORRIS TOWNSHIP"/>
<c n="Mount Olive Township" c="MOUNT OLIVE TOWNSHIP"/>
<c n="Myers Corner" c="MYERS CORNER"/>
<c n="Neptune Township" c="NEPTUNE TOWNSHIP"/>
<c n="New Cassel" c="NEW CASSEL"/>
<c n="Newtown" c="NEWTOWN"/>
<c n="North Bay Shore" c="NORTH BAY SHORE"/>
<c n="North Bellmore" c="NORTH BELLMORE"/>
<c n="North Haledon" c="NORTH HALEDON"/>
<c n="North Massapequa" c="NORTH MASSAPEQUA"/>
<c n="North New Hyde Park" c="NORTH NEW HYDE PARK"/>
<c n="North Plainfield" c="NORTH PLAINFIELD"/>
<c n="North Sea" c="NORTH SEA"/>
<c n="Ocean Township" c="OCEAN TOWNSHIP"/>
<c n="Old Bridge Township" c="OLD BRIDGE TOWNSHIP"/>
<c n="Old Tappan" c="OLD TAPPAN"/>
<c n="Orange Lake" c="ORANGE LAKE"/>
<c n="Peach Lake" c="PEACH LAKE"/>
<c n="Plattekill" c="PLATTEKILL"/>
<c n="Plumsted Township" c="PLUMSTED TOWNSHIP"/>
<c n="Point Pleasant" c="POINT PLEASANT"/>
<c n="Putnam Lake" c="PUTNAM LAKE"/>
<c n="Red Oaks Mill" c="RED OAKS MILL"/>
<c n="River Vale" c="RIVER VALE"/>
<c n="Rockaway Township" c="ROCKAWAY TOWNSHIP"/>
<c n="Roxbury Township" c="ROXBURY TOWNSHIP"/>
<c n="Salisbury" c="SALISBURY"/>
<c n="Sandyston" c="SANDYSTON"/>
<c n="Scotchtown" c="SCOTCHTOWN"/>
<c n="Searingtown" c="SEARINGTOWN"/>
<c n="Sleepy Hollow" c="SLEEPY HOLLOW"/>
<c n="South Brunswick Township" c="SOUTH BRUNSWICK TOWNSHIP"/>
<c n="South Farmingdale" c="SOUTH FARMINGDALE"/>
<c n="South Huntington" c="SOUTH HUNTINGTON"/>
<c n="South Valley Stream" c="SOUTH VALLEY STREAM"/>
<c n="Spackenkill" c="SPACKENKILL"/>
<c n="Stafford Township" c="STAFFORD TOWNSHIP"/>
<c n="Terryville" c="TERRYVILLE"/>
<c n="Tewksbury" c="TEWKSBURY"/>
<c n="Tinton Falls" c="TINTON FALLS"/>
<c n="Township of Washington" c="TOWNSHIP OF WASHINGTON"/>
<c n="Tuckahoe" c="TUCKAHOE"/>
<c n="Upper Freehold" c="UPPER FREEHOLD"/>
<c n="Upper Saddle River" c="UPPER SADDLE RIVER"/>
<c n="Wall Township" c="WALL TOWNSHIP"/>
<c n="Wantage" c="WANTAGE"/>
<c n="Washington Township" c="WASHINGTON TOWNSHIP"/>
<c n="Washington Township" c="WASHINGTON TOWNSHIP"/>
<c n="Wesley Hills" c="WESLEY HILLS"/>
<c n="West Caldwell" c="WEST CALDWELL"/>
<c n="Woodbridge Township" c="WOODBRIDGE TOWNSHIP"/>
<c n="Woodbury" c="WOODBURY"/>
<c n="Woodland Park" c="WOODLAND PARK"/>
<c n="Wurtsboro" c="WURTSBORO"/></dma>
    
    <dma code="502" title="Binghamton, NY">
<c n="Afton" c="AFTON"/>
<c n="Andes" c="ANDES"/>
<c n="Apalachin" c="APALACHIN"/>
<c n="Bainbridge" c="BAINBRIDGE"/>
<c n="Binghamton" c="BINGHAMTON"/>
<c n="Candor" c="CANDOR"/>
<c n="Conklin" c="CONKLIN"/>
<c n="Delhi" c="DELHI"/>
<c n="Deposit" c="DEPOSIT"/>
<c n="Endicott" c="ENDICOTT"/>
<c n="Endwell" c="ENDWELL"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Hancock" c="HANCOCK"/>
<c n="Johnson City" c="JOHNSON CITY"/>
<c n="Kirkwood" c="KIRKWOOD"/>
<c n="Maine" c="MAINE"/>
<c n="Margaretville" c="MARGARETVILLE"/>
<c n="New Berlin" c="NEW BERLIN"/>
<c n="Nichols" c="NICHOLS"/>
<c n="Norwich" c="NORWICH"/>
<c n="Owego" c="OWEGO"/>
<c n="Sidney" c="SIDNEY"/>
<c n="Smyrna" c="SMYRNA"/>
<c n="Spencer" c="SPENCER"/>
<c n="Stamford" c="STAMFORD"/>
<c n="Tioga Center" c="TIOGA CENTER"/>
<c n="Vestal" c="VESTAL"/>
<c n="Walton" c="WALTON"/>
<c n="Waverly" c="WAVERLY"/>
<c n="Windsor" c="WINDSOR"/>
<c n="Greene" c="GREENE"/>
<c n="Oxford" c="OXFORD"/>
<c n="Port Dickinson" c="PORT DICKINSON"/></dma>
    
    <dma code="514" title="Buffalo, NY">
<c n="Akron" c="AKRON"/>
<c n="Albion" c="ALBION"/>
<c n="Alden" c="ALDEN"/>
<c n="Alexander" c="ALEXANDER"/>
<c n="Alfred" c="ALFRED"/>
<c n="Allegany" c="ALLEGANY"/>
<c n="Alma" c="ALMA"/>
<c n="Andover" c="ANDOVER"/>
<c n="Angola" c="ANGOLA"/>
<c n="Arcade" c="ARCADE"/>
<c n="Attica" c="ATTICA"/>
<c n="Batavia" c="BATAVIA"/>
<c n="Belmont" c="BELMONT"/>
<c n="Bergen" c="BERGEN"/>
<c n="Bowmansville" c="BOWMANSVILLE"/>
<c n="Brant" c="BRANT"/>
<c n="Buffalo" c="BUFFALO"/>
<c n="Byron" c="BYRON"/>
<c n="Chautauqua" c="CHAUTAUQUA"/>
<c n="Clarence" c="CLARENCE"/>
<c n="Clarence Center" c="CLARENCE CENTER"/>
<c n="Collins" c="COLLINS"/>
<c n="Corfu" c="CORFU"/>
<c n="Cuba" c="CUBA"/>
<c n="Depew" c="DEPEW"/>
<c n="Derby" c="DERBY"/>
<c n="Dunkirk" c="DUNKIRK"/>
<c n="East Amherst" c="EAST AMHERST"/>
<c n="East Aurora" c="EAST AURORA"/>
<c n="Elba" c="ELBA"/>
<c n="Ellicottville" c="ELLICOTTVILLE"/>
<c n="Elma" c="ELMA"/>
<c n="Franklinville" c="FRANKLINVILLE"/>
<c n="Fredonia" c="FREDONIA"/>
<c n="Freedom" c="FREEDOM"/>
<c n="Gainesville" c="GAINESVILLE"/>
<c n="Getzville" c="GETZVILLE"/>
<c n="Gowanda" c="GOWANDA"/>
<c n="Grand Island" c="GRAND ISLAND"/>
<c n="Hamburg" c="HAMBURG"/>
<c n="Holland" c="HOLLAND"/>
<c n="Holley" c="HOLLEY"/>
<c n="Houghton" c="HOUGHTON"/>
<c n="Irving" c="IRVING"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Kent" c="KENT"/>
<c n="Lakewood" c="LAKEWOOD"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Le Roy" c="LE ROY"/>
<c n="Lewiston" c="LEWISTON"/>
<c n="Limestone" c="LIMESTONE"/>
<c n="Little Valley" c="LITTLE VALLEY"/>
<c n="Lockport" c="LOCKPORT"/>
<c n="Mayville" c="MAYVILLE"/>
<c n="Medina" c="MEDINA"/>
<c n="Middleport" c="MIDDLEPORT"/>
<c n="Model City" c="MODEL CITY"/>
<c n="Niagara Falls" c="NIAGARA FALLS"/>
<c n="Niagara University" c="NIAGARA UNIVERSITY"/>
<c n="North Tonawanda" c="NORTH TONAWANDA"/>
<c n="Oakfield" c="OAKFIELD"/>
<c n="Olean" c="OLEAN"/>
<c n="Orchard Park" c="ORCHARD PARK"/>
<c n="Pavilion" c="PAVILION"/>
<c n="Perry" c="PERRY"/>
<c n="Portageville" c="PORTAGEVILLE"/>
<c n="Portland" c="PORTLAND"/>
<c n="Ransomville" c="RANSOMVILLE"/>
<c n="Salamanca" c="SALAMANCA"/>
<c n="Sanborn" c="SANBORN"/>
<c n="Silver Creek" c="SILVER CREEK"/>
<c n="Silver Springs" c="SILVER SPRINGS"/>
<c n="South Dayton" c="SOUTH DAYTON"/>
<c n="South Wales" c="SOUTH WALES"/>
<c n="Springville" c="SPRINGVILLE"/>
<c n="St. Bonaventure" c="ST. BONAVENTURE"/>
<c n="Stafford" c="STAFFORD"/>
<c n="Tonawanda" c="TONAWANDA"/>
<c n="Warsaw" c="WARSAW"/>
<c n="Wellsville" c="WELLSVILLE"/>
<c n="West Falls" c="WEST FALLS"/>
<c n="West Valley" c="WEST VALLEY"/>
<c n="Westfield" c="WESTFIELD"/>
<c n="Wyoming" c="WYOMING"/>
<c n="Bradford" c="BRADFORD"/>
<c n="Coudersport" c="COUDERSPORT"/>
<c n="Custer City" c="CUSTER CITY"/>
<c n="Duke Center" c="DUKE CENTER"/>
<c n="Eldred" c="ELDRED"/>
<c n="Galeton" c="GALETON"/>
<c n="Harrison Valley" c="HARRISON VALLEY"/>
<c n="Kane" c="KANE"/>
<c n="Lewis Run" c="LEWIS RUN"/>
<c n="Port Allegany" c="PORT ALLEGANY"/>
<c n="Shinglehouse" c="SHINGLEHOUSE"/>
<c n="Smethport" c="SMETHPORT"/>
<c n="Blasdell" c="BLASDELL"/>
<c n="Bolivar" c="BOLIVAR"/>
<c n="Cheektowaga" c="CHEEKTOWAGA"/>
<c n="Elma Center" c="ELMA CENTER"/>
<c n="Harris Hill" c="HARRIS HILL"/>
<c n="Kenmore" c="KENMORE"/>
<c n="Lackawanna" c="LACKAWANNA"/>
<c n="Tonawanda" c="TONAWANDA"/>
<c n="West Seneca" c="WEST SENECA"/>
<c n="Williamsville" c="WILLIAMSVILLE"/></dma>
    
    <dma code="523" title="Burlington, VT-Plattsburgh, NY">
<c n="Ashland" c="ASHLAND"/>
<c n="Bethlehem" c="BETHLEHEM"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Campton" c="CAMPTON"/>
<c n="Canaan" c="CANAAN"/>
<c n="Charlestown" c="CHARLESTOWN"/>
<c n="Claremont" c="CLAREMONT"/>
<c n="Cornish" c="CORNISH"/>
<c n="Enfield" c="ENFIELD"/>
<c n="Franconia" c="FRANCONIA"/>
<c n="Georges Mills" c="GEORGES MILLS"/>
<c n="Grafton" c="GRAFTON"/>
<c n="Grantham" c="GRANTHAM"/>
<c n="Hanover" c="HANOVER"/>
<c n="Haverhill" c="HAVERHILL"/>
<c n="Holderness" c="HOLDERNESS"/>
<c n="City of Lebanon" c="CITY OF LEBANON"/>
<c n="Lempster" c="LEMPSTER"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Lisbon" c="LISBON"/>
<c n="Littleton" c="LITTLETON"/>
<c n="Lyme" c="LYME"/>
<c n="Meriden" c="MERIDEN"/>
<c n="Monroe" c="MONROE"/>
<c n="Newport" c="NEWPORT"/>
<c n="North Haverhill" c="NORTH HAVERHILL"/>
<c n="North Woodstock" c="NORTH WOODSTOCK"/>
<c n="Orford" c="ORFORD"/>
<c n="Piermont" c="PIERMONT"/>
<c n="Pike" c="PIKE"/>
<c n="Plainfield" c="PLAINFIELD"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Rumney" c="RUMNEY"/>
<c n="Sunapee" c="SUNAPEE"/>
<c n="Warren" c="WARREN"/>
<c n="Waterville Valley" c="WATERVILLE VALLEY"/>
<c n="West Lebanon" c="WEST LEBANON"/>
<c n="Woodstock" c="WOODSTOCK"/>
<c n="Woodsville" c="WOODSVILLE"/>
<c n="Bombay" c="BOMBAY"/>
<c n="Champlain" c="CHAMPLAIN"/>
<c n="Chazy" c="CHAZY"/>
<c n="Elizabethtown" c="ELIZABETHTOWN"/>
<c n="Gabriels" c="GABRIELS"/>
<c n="Hogansburg" c="HOGANSBURG"/>
<c n="Keene Valley" c="KEENE VALLEY"/>
<c n="Keeseville" c="KEESEVILLE"/>
<c n="Lake Placid" c="LAKE PLACID"/>
<c n="Lewis" c="LEWIS"/>
<c n="Malone" c="MALONE"/>
<c n="Morrisonville" c="MORRISONVILLE"/>
<c n="Paul Smiths" c="PAUL SMITHS"/>
<c n="Plattsburgh" c="PLATTSBURGH"/>
<c n="Port Henry" c="PORT HENRY"/>
<c n="Rainbow Lake" c="RAINBOW LAKE"/>
<c n="Ray Brook" c="RAY BROOK"/>
<c n="Rouses Point" c="ROUSES POINT"/>
<c n="Saranac Lake" c="SARANAC LAKE"/>
<c n="Ticonderoga" c="TICONDEROGA"/>
<c n="Tupper Lake" c="TUPPER LAKE"/>
<c n="Westport" c="WESTPORT"/>
<c n="Willsboro" c="WILLSBORO"/>
<c n="Wilmington" c="WILMINGTON"/>
<c n="Albany" c="ALBANY"/>
<c n="Ascutney" c="ASCUTNEY"/>
<c n="Bakersfield" c="BAKERSFIELD"/>
<c n="City of Barre" c="CITY OF BARRE"/>
<c n="Bethel" c="BETHEL"/>
<c n="Bomoseen" c="BOMOSEEN"/>
<c n="Bradford" c="BRADFORD"/>
<c n="Brandon" c="BRANDON"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Brookfield" c="BROOKFIELD"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Cabot" c="CABOT"/>
<c n="Cambridge" c="CAMBRIDGE"/>
<c n="Castleton" c="CASTLETON"/>
<c n="Cavendish" c="CAVENDISH"/>
<c n="Charlotte" c="CHARLOTTE"/>
<c n="Chelsea" c="CHELSEA"/>
<c n="Chester" c="CHESTER"/>
<c n="Chittenden" c="CHITTENDEN"/>
<c n="Colchester" c="COLCHESTER"/>
<c n="Craftsbury" c="CRAFTSBURY"/>
<c n="Craftsbury Common" c="CRAFTSBURY COMMON"/>
<c n="Danby" c="DANBY"/>
<c n="Danville" c="DANVILLE"/>
<c n="Derby Line" c="DERBY LINE"/>
<c n="East Burke" c="EAST BURKE"/>
<c n="East Corinth" c="EAST CORINTH"/>
<c n="East Hardwick" c="EAST HARDWICK"/>
<c n="East Montpelier" c="EAST MONTPELIER"/>
<c n="East Ryegate" c="EAST RYEGATE"/>
<c n="Enosburg Falls" c="ENOSBURG FALLS"/>
<c n="Essex" c="ESSEX"/>
<c n="Essex Junction" c="ESSEX JUNCTION"/>
<c n="Fair Haven" c="FAIR HAVEN"/>
<c n="Fairlee" c="FAIRLEE"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Grand Isle" c="GRAND ISLE"/>
<c n="Hartford" c="HARTFORD"/>
<c n="Hartland" c="HARTLAND"/>
<c n="Highgate Center" c="HIGHGATE CENTER"/>
<c n="Hinesburg" c="HINESBURG"/>
<c n="Hyde Park" c="HYDE PARK"/>
<c n="Island Pond" c="ISLAND POND"/>
<c n="Jeffersonville" c="JEFFERSONVILLE"/>
<c n="Jericho" c="JERICHO"/>
<c n="Johnson" c="JOHNSON"/>
<c n="Jonesville" c="JONESVILLE"/>
<c n="Killington" c="KILLINGTON"/>
<c n="Ludlow" c="LUDLOW"/>
<c n="Lunenburg" c="LUNENBURG"/>
<c n="Lyndonville" c="LYNDONVILLE"/>
<c n="Middlebury" c="MIDDLEBURY"/>
<c n="Middletown Springs" c="MIDDLETOWN SPRINGS"/>
<c n="Milton" c="MILTON"/>
<c n="Montpelier" c="MONTPELIER"/>
<c n="Moretown" c="MORETOWN"/>
<c n="Morgan" c="MORGAN"/>
<c n="Morrisville" c="MORRISVILLE"/>
<c n="Mount Holly" c="MOUNT HOLLY"/>
<c n="Newbury" c="NEWBURY"/>
<c n="City of Newport" c="CITY OF NEWPORT"/>
<c n="North Clarendon" c="NORTH CLARENDON"/>
<c n="North Hero" c="NORTH HERO"/>
<c n="North Pomfret" c="NORTH POMFRET"/>
<c n="North Troy" c="NORTH TROY"/>
<c n="Northfield" c="NORTHFIELD"/>
<c n="Northfield Falls" c="NORTHFIELD FALLS"/>
<c n="Norton" c="NORTON"/>
<c n="Norwich" c="NORWICH"/>
<c n="Orleans" c="ORLEANS"/>
<c n="Pittsfield" c="PITTSFIELD"/>
<c n="Pittsford" c="PITTSFORD"/>
<c n="Plainfield" c="PLAINFIELD"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Poultney" c="POULTNEY"/>
<c n="Proctor" c="PROCTOR"/>
<c n="Quechee" c="QUECHEE"/>
<c n="Randolph" c="RANDOLPH"/>
<c n="Randolph Center" c="RANDOLPH CENTER"/>
<c n="Reading" c="READING"/>
<c n="Richford" c="RICHFORD"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Rochester" c="ROCHESTER"/>
<c n="City of Rutland" c="CITY OF RUTLAND"/>
<c n="Shelburne" c="SHELBURNE"/>
<c n="Shoreham" c="SHOREHAM"/>
<c n="South Burlington" c="SOUTH BURLINGTON"/>
<c n="South Royalton" c="SOUTH ROYALTON"/>
<c n="South Strafford" c="SOUTH STRAFFORD"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="St. Albans" c="ST. ALBANS"/>
<c n="St. Johnsbury Center" c="ST. JOHNSBURY CENTER"/>
<c n="Stockbridge" c="STOCKBRIDGE"/>
<c n="Stowe" c="STOWE"/>
<c n="Swanton" c="SWANTON"/>
<c n="Troy" c="TROY"/>
<c n="Tunbridge" c="TUNBRIDGE"/>
<c n="Underhill" c="UNDERHILL"/>
<c n="Vergennes" c="VERGENNES"/>
<c n="Waitsfield" c="WAITSFIELD"/>
<c n="Wallingford" c="WALLINGFORD"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Waterbury" c="WATERBURY"/>
<c n="Waterbury Center" c="WATERBURY CENTER"/>
<c n="Websterville" c="WEBSTERVILLE"/>
<c n="Wells River" c="WELLS RIVER"/>
<c n="West Rutland" c="WEST RUTLAND"/>
<c n="Westford" c="WESTFORD"/>
<c n="Weston" c="WESTON"/>
<c n="White River Junction" c="WHITE RIVER JUNCTION"/>
<c n="Wilder" c="WILDER"/>
<c n="Williamstown" c="WILLIAMSTOWN"/>
<c n="Williston" c="WILLISTON"/>
<c n="Windsor" c="WINDSOR"/>
<c n="Winooski" c="WINOOSKI"/>
<c n="Wolcott" c="WOLCOTT"/>
<c n="Woodstock" c="WOODSTOCK"/>
<c n="Alburgh" c="ALBURGH"/>
<c n="Bradford" c="BRADFORD"/>
<c n="Brandon" c="BRANDON"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Cabot" c="CABOT"/>
<c n="Town of Charlestown" c="TOWN OF CHARLESTOWN"/>
<c n="Cornwall" c="CORNWALL"/>
<c n="Hanover" c="HANOVER"/>
<c n="Jay" c="JAY"/>
<c n="Jericho" c="JERICHO"/>
<c n="Johnson" c="JOHNSON"/>
<c n="Littleton" c="LITTLETON"/>
<c n="Ludlow" c="LUDLOW"/>
<c n="Lyndon" c="LYNDON"/>
<c n="Middlebury" c="MIDDLEBURY"/>
<c n="Milton" c="MILTON"/>
<c n="Morristown" c="MORRISTOWN"/>
<c n="Newport" c="NEWPORT"/>
<c n="Northfield" c="NORTHFIELD"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Royalton" c="ROYALTON"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="St. Johnsbury" c="ST. JOHNSBURY"/>
<c n="Swanton" c="SWANTON"/>
<c n="Warren" c="WARREN"/>
<c n="Waterbury" c="WATERBURY"/></dma>
    
    <dma code="526" title="Utica, NY">
<c n="Barneveld" c="BARNEVELD"/>
<c n="Boonville" c="BOONVILLE"/>
<c n="Chadwicks" c="CHADWICKS"/>
<c n="Cherry Valley" c="CHERRY VALLEY"/>
<c n="Clinton" c="CLINTON"/>
<c n="Cooperstown" c="COOPERSTOWN"/>
<c n="Edmeston" c="EDMESTON"/>
<c n="Frankfort" c="FRANKFORT"/>
<c n="Herkimer" c="HERKIMER"/>
<c n="Ilion" c="ILION"/>
<c n="Laurens" c="LAURENS"/>
<c n="Little Falls" c="LITTLE FALLS"/>
<c n="Marcy" c="MARCY"/>
<c n="Milford" c="MILFORD"/>
<c n="New Hartford" c="NEW HARTFORD"/>
<c n="Newport" c="NEWPORT"/>
<c n="Old Forge" c="OLD FORGE"/>
<c n="Oneonta" c="ONEONTA"/>
<c n="Oriskany" c="ORISKANY"/>
<c n="Remsen" c="REMSEN"/>
<c n="Richfield Springs" c="RICHFIELD SPRINGS"/>
<c n="Sauquoit" c="SAUQUOIT"/>
<c n="Utica" c="UTICA"/>
<c n="Worcester" c="WORCESTER"/>
<c n="Yorkville" c="YORKVILLE"/>
<c n="Otego" c="OTEGO"/>
<c n="Whitesboro" c="WHITESBORO"/></dma>
    
    <dma code="532" title="Albany-Schenectady-Troy, NY">
<c n="Adams" c="ADAMS"/>
<c n="Ashley Falls" c="ASHLEY FALLS"/>
<c n="Becket" c="BECKET"/>
<c n="Berkshire" c="BERKSHIRE"/>
<c n="Cheshire" c="CHESHIRE"/>
<c n="Dalton" c="DALTON"/>
<c n="Great Barrington" c="GREAT BARRINGTON"/>
<c n="Hinsdale" c="HINSDALE"/>
<c n="Housatonic" c="HOUSATONIC"/>
<c n="Lanesborough" c="LANESBOROUGH"/>
<c n="Lee" c="LEE"/>
<c n="Lenox" c="LENOX"/>
<c n="Monterey" c="MONTEREY"/>
<c n="North Adams" c="NORTH ADAMS"/>
<c n="Otis" c="OTIS"/>
<c n="Pittsfield" c="PITTSFIELD"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Sandisfield" c="SANDISFIELD"/>
<c n="Savoy" c="SAVOY"/>
<c n="Sheffield" c="SHEFFIELD"/>
<c n="South Egremont" c="SOUTH EGREMONT"/>
<c n="Stockbridge" c="STOCKBRIDGE"/>
<c n="Tyringham" c="TYRINGHAM"/>
<c n="West Stockbridge" c="WEST STOCKBRIDGE"/>
<c n="Williamstown" c="WILLIAMSTOWN"/>
<c n="Windsor" c="WINDSOR"/>
<c n="Adirondack" c="ADIRONDACK"/>
<c n="Albany" c="ALBANY"/>
<c n="Altamont" c="ALTAMONT"/>
<c n="Amsterdam" c="AMSTERDAM"/>
<c n="Ancram" c="ANCRAM"/>
<c n="Ancramdale" c="ANCRAMDALE"/>
<c n="Argyle" c="ARGYLE"/>
<c n="Athens" c="ATHENS"/>
<c n="Austerlitz" c="AUSTERLITZ"/>
<c n="Averill Park" c="AVERILL PARK"/>
<c n="Ballston Lake" c="BALLSTON LAKE"/>
<c n="Ballston Spa" c="BALLSTON SPA"/>
<c n="Bolton Landing" c="BOLTON LANDING"/>
<c n="Brainard" c="BRAINARD"/>
<c n="Broadalbin" c="BROADALBIN"/>
<c n="Burnt Hills" c="BURNT HILLS"/>
<c n="Buskirk" c="BUSKIRK"/>
<c n="Cairo" c="CAIRO"/>
<c n="Cambridge" c="CAMBRIDGE"/>
<c n="Canaan" c="CANAAN"/>
<c n="Canajoharie" c="CANAJOHARIE"/>
<c n="Castleton-on-Hudson" c="CASTLETON-ON-HUDSON"/>
<c n="Catskill" c="CATSKILL"/>
<c n="Chatham" c="CHATHAM"/>
<c n="Claverack" c="CLAVERACK"/>
<c n="Clemons" c="CLEMONS"/>
<c n="Clifton Park" c="CLIFTON PARK"/>
<c n="Cobleskill" c="COBLESKILL"/>
<c n="Cohoes" c="COHOES"/>
<c n="Columbiaville" c="COLUMBIAVILLE"/>
<c n="Comstock" c="COMSTOCK"/>
<c n="Copake" c="COPAKE"/>
<c n="Corinth" c="CORINTH"/>
<c n="Cossayuna" c="COSSAYUNA"/>
<c n="Coxsackie" c="COXSACKIE"/>
<c n="Craryville" c="CRARYVILLE"/>
<c n="Cropseyville" c="CROPSEYVILLE"/>
<c n="Delmar" c="DELMAR"/>
<c n="Duanesburg" c="DUANESBURG"/>
<c n="East Chatham" c="EAST CHATHAM"/>
<c n="East Greenbush" c="EAST GREENBUSH"/>
<c n="Elizaville" c="ELIZAVILLE"/>
<c n="Fort Ann" c="FORT ANN"/>
<c n="Fort Edward" c="FORT EDWARD"/>
<c n="Fort Plain" c="FORT PLAIN"/>
<c n="Fultonville" c="FULTONVILLE"/>
<c n="Germantown" c="GERMANTOWN"/>
<c n="Ghent" c="GHENT"/>
<c n="Gilboa" c="GILBOA"/>
<c n="Glenmont" c="GLENMONT"/>
<c n="Glens Falls" c="GLENS FALLS"/>
<c n="Gloversville" c="GLOVERSVILLE"/>
<c n="Granville" c="GRANVILLE"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Greenwich" c="GREENWICH"/>
<c n="Guilderland" c="GUILDERLAND"/>
<c n="Guilderland Center" c="GUILDERLAND CENTER"/>
<c n="Haines Falls" c="HAINES FALLS"/>
<c n="Hampton" c="HAMPTON"/>
<c n="Hartford" c="HARTFORD"/>
<c n="Hillsdale" c="HILLSDALE"/>
<c n="Hollowville" c="HOLLOWVILLE"/>
<c n="Hoosick" c="HOOSICK"/>
<c n="Hoosick Falls" c="HOOSICK FALLS"/>
<c n="Hudson" c="HUDSON"/>
<c n="Hudson Falls" c="HUDSON FALLS"/>
<c n="Huletts Landing" c="HULETTS LANDING"/>
<c n="Hunter" c="HUNTER"/>
<c n="Indian Lake" c="INDIAN LAKE"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Johnsonville" c="JOHNSONVILLE"/>
<c n="Johnstown" c="JOHNSTOWN"/>
<c n="Kattskill Bay" c="KATTSKILL BAY"/>
<c n="Kinderhook" c="KINDERHOOK"/>
<c n="Lake George" c="LAKE GEORGE"/>
<c n="Latham" c="LATHAM"/>
<c n="Livingston" c="LIVINGSTON"/>
<c n="Malden Bridge" c="MALDEN BRIDGE"/>
<c n="Mechanicville" c="MECHANICVILLE"/>
<c n="Mellenville" c="MELLENVILLE"/>
<c n="Melrose" c="MELROSE"/>
<c n="Middle Granville" c="MIDDLE GRANVILLE"/>
<c n="Middleburg" c="MIDDLEBURG"/>
<c n="Nassau" c="NASSAU"/>
<c n="New Lebanon" c="NEW LEBANON"/>
<c n="Newtonville" c="NEWTONVILLE"/>
<c n="Niverville" c="NIVERVILLE"/>
<c n="North Chatham" c="NORTH CHATHAM"/>
<c n="North Granville" c="NORTH GRANVILLE"/>
<c n="Oak Hill" c="OAK HILL"/>
<c n="Old Chatham" c="OLD CHATHAM"/>
<c n="Petersburg" c="PETERSBURG"/>
<c n="Philmont" c="PHILMONT"/>
<c n="Pottersville" c="POTTERSVILLE"/>
<c n="Putnam Station" c="PUTNAM STATION"/>
<c n="Queensbury" c="QUEENSBURY"/>
<c n="Rensselaer" c="RENSSELAER"/>
<c n="Rensselaerville" c="RENSSELAERVILLE"/>
<c n="Rexford" c="REXFORD"/>
<c n="Rotterdam Junction" c="ROTTERDAM JUNCTION"/>
<c n="Salem" c="SALEM"/>
<c n="Saratoga Springs" c="SARATOGA SPRINGS"/>
<c n="Schenectady" c="SCHENECTADY"/>
<c n="Schoharie" c="SCHOHARIE"/>
<c n="Selkirk" c="SELKIRK"/>
<c n="Shushan" c="SHUSHAN"/>
<c n="South Bethlehem" c="SOUTH BETHLEHEM"/>
<c n="South Glens Falls" c="SOUTH GLENS FALLS"/>
<c n="Spencertown" c="SPENCERTOWN"/>
<c n="Sprakers" c="SPRAKERS"/>
<c n="Stillwater" c="STILLWATER"/>
<c n="Stottville" c="STOTTVILLE"/>
<c n="Stuyvesant" c="STUYVESANT"/>
<c n="Stuyvesant Falls" c="STUYVESANT FALLS"/>
<c n="Troy" c="TROY"/>
<c n="Valatie" c="VALATIE"/>
<c n="Voorheesville" c="VOORHEESVILLE"/>
<c n="Waterford" c="WATERFORD"/>
<c n="Watervliet" c="WATERVLIET"/>
<c n="West Copake" c="WEST COPAKE"/>
<c n="West Lebanon" c="WEST LEBANON"/>
<c n="Whitehall" c="WHITEHALL"/>
<c n="Windham" c="WINDHAM"/>
<c n="Wynantskill" c="WYNANTSKILL"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Bennington" c="BENNINGTON"/>
<c n="Dorset" c="DORSET"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Manchester Center" c="MANCHESTER CENTER"/>
<c n="North Bennington" c="NORTH BENNINGTON"/>
<c n="Pownal" c="POWNAL"/>
<c n="Stamford" c="STAMFORD"/>
<c n="Adams" c="ADAMS"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Ballston" c="BALLSTON"/>
<c n="Bennington" c="BENNINGTON"/>
<c n="Bolton" c="BOLTON"/>
<c n="Colonie" c="COLONIE"/>
<c n="Country Knolls" c="COUNTRY KNOLLS"/>
<c n="East Glenville" c="EAST GLENVILLE"/>
<c n="Hampton Manor" c="HAMPTON MANOR"/>
<c n="Hancock" c="HANCOCK"/>
<c n="Lee" c="LEE"/>
<c n="Lenox" c="LENOX"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Menands" c="MENANDS"/>
<c n="Niskayuna" c="NISKAYUNA"/>
<c n="Northville" c="NORTHVILLE"/>
<c n="Queensbury" c="QUEENSBURY"/>
<c n="Ravena" c="RAVENA"/>
<c n="Rotterdam" c="ROTTERDAM"/>
<c n="Round Lake" c="ROUND LAKE"/>
<c n="Scotia" c="SCOTIA"/>
<c n="Warrensburg" c="WARRENSBURG"/>
<c n="Westmere" c="WESTMERE"/>
<c n="Williamstown" c="WILLIAMSTOWN"/></dma>
    
    <dma code="538" title="Rochester, NY">
<c n="Avon" c="AVON"/>
<c n="Bloomfield" c="BLOOMFIELD"/>
<c n="Brockport" c="BROCKPORT"/>
<c n="Caledonia" c="CALEDONIA"/>
<c n="Canandaigua" c="CANANDAIGUA"/>
<c n="Churchville" c="CHURCHVILLE"/>
<c n="Clarkson" c="CLARKSON"/>
<c n="Clifton Springs" c="CLIFTON SPRINGS"/>
<c n="Dansville" c="DANSVILLE"/>
<c n="Dundee" c="DUNDEE"/>
<c n="East Bloomfield" c="EAST BLOOMFIELD"/>
<c n="East Rochester" c="EAST ROCHESTER"/>
<c n="Fairport" c="FAIRPORT"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Fishers" c="FISHERS"/>
<c n="Geneseo" c="GENESEO"/>
<c n="Hamlin" c="HAMLIN"/>
<c n="Hemlock" c="HEMLOCK"/>
<c n="Henrietta" c="HENRIETTA"/>
<c n="Hilton" c="HILTON"/>
<c n="Honeoye" c="HONEOYE"/>
<c n="Honeoye Falls" c="HONEOYE FALLS"/>
<c n="Keuka Park" c="KEUKA PARK"/>
<c n="Lakemont" c="LAKEMONT"/>
<c n="Leicester" c="LEICESTER"/>
<c n="Lima" c="LIMA"/>
<c n="Livonia" c="LIVONIA"/>
<c n="Lyons" c="LYONS"/>
<c n="Macedon" c="MACEDON"/>
<c n="Mendon" c="MENDON"/>
<c n="Mount Morris" c="MOUNT MORRIS"/>
<c n="Naples" c="NAPLES"/>
<c n="Newark" c="NEWARK"/>
<c n="North Greece" c="NORTH GREECE"/>
<c n="Nunda" c="NUNDA"/>
<c n="Ontario" c="ONTARIO"/>
<c n="Ontario Center" c="ONTARIO CENTER"/>
<c n="Palmyra" c="PALMYRA"/>
<c n="Penfield" c="PENFIELD"/>
<c n="Penn Yan" c="PENN YAN"/>
<c n="Phelps" c="PHELPS"/>
<c n="Pittsford" c="PITTSFORD"/>
<c n="Red Creek" c="RED CREEK"/>
<c n="Retsof" c="RETSOF"/>
<c n="Rochester" c="ROCHESTER"/>
<c n="Rush" c="RUSH"/>
<c n="Rushville" c="RUSHVILLE"/>
<c n="Savannah" c="SAVANNAH"/>
<c n="Scottsville" c="SCOTTSVILLE"/>
<c n="Sodus" c="SODUS"/>
<c n="Sodus Point" c="SODUS POINT"/>
<c n="Spencerport" c="SPENCERPORT"/>
<c n="Springwater" c="SPRINGWATER"/>
<c n="Victor" c="VICTOR"/>
<c n="Walworth" c="WALWORTH"/>
<c n="Webster" c="WEBSTER"/>
<c n="West Henrietta" c="WEST HENRIETTA"/>
<c n="Williamson" c="WILLIAMSON"/>
<c n="Wolcott" c="WOLCOTT"/>
<c n="York" c="YORK"/>
<c n="Brighton" c="BRIGHTON"/>
<c n="Gates-North Gates" c="GATES-NORTH GATES"/>
<c n="Greece" c="GREECE"/>
<c n="Irondequoit" c="IRONDEQUOIT"/>
<c n="Marion" c="MARION"/></dma>
    
    <dma code="549" title="Watertown, NY">
<c n="Alexandria Bay" c="ALEXANDRIA BAY"/>
<c n="Brasher Falls" c="BRASHER FALLS"/>
<c n="Brier Hill" c="BRIER HILL"/>
<c n="Canton" c="CANTON"/>
<c n="Cape Vincent" c="CAPE VINCENT"/>
<c n="Chaumont" c="CHAUMONT"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Colton" c="COLTON"/>
<c n="Cranberry Lake" c="CRANBERRY LAKE"/>
<c n="Fine" c="FINE"/>
<c n="Fort Drum" c="FORT DRUM"/>
<c n="Gouverneur" c="GOUVERNEUR"/>
<c n="Hammond" c="HAMMOND"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Hermon" c="HERMON"/>
<c n="Lowville" c="LOWVILLE"/>
<c n="Madrid" c="MADRID"/>
<c n="Massena" c="MASSENA"/>
<c n="Morristown" c="MORRISTOWN"/>
<c n="Nicholville" c="NICHOLVILLE"/>
<c n="Norwood" c="NORWOOD"/>
<c n="Ogdensburg" c="OGDENSBURG"/>
<c n="Parishville" c="PARISHVILLE"/>
<c n="Potsdam" c="POTSDAM"/>
<c n="Sackets Harbor" c="SACKETS HARBOR"/>
<c n="Waddington" c="WADDINGTON"/>
<c n="Watertown" c="WATERTOWN"/>
<c n="Wellesley Island" c="WELLESLEY ISLAND"/>
<c n="Carthage" c="CARTHAGE"/></dma>
    
    <dma code="555" title="Syracuse, NY">
<c n="Auburn" c="AUBURN"/>
<c n="Aurora" c="AURORA"/>
<c n="Ava" c="AVA"/>
<c n="Baldwinsville" c="BALDWINSVILLE"/>
<c n="Brewerton" c="BREWERTON"/>
<c n="Bridgeport" c="BRIDGEPORT"/>
<c n="Camden" c="CAMDEN"/>
<c n="Camillus" c="CAMILLUS"/>
<c n="Cazenovia" c="CAZENOVIA"/>
<c n="Chittenango" c="CHITTENANGO"/>
<c n="Cicero" c="CICERO"/>
<c n="Clay" c="CLAY"/>
<c n="Cortland" c="CORTLAND"/>
<c n="DeRuyter" c="DERUYTER"/>
<c n="Dryden" c="DRYDEN"/>
<c n="East Syracuse" c="EAST SYRACUSE"/>
<c n="Elbridge" c="ELBRIDGE"/>
<c n="Fair Haven" c="FAIR HAVEN"/>
<c n="Fayetteville" c="FAYETTEVILLE"/>
<c n="Fulton" c="FULTON"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Hastings" c="HASTINGS"/>
<c n="Homer" c="HOMER"/>
<c n="Interlaken" c="INTERLAKEN"/>
<c n="Ithaca" c="ITHACA"/>
<c n="Jamesville" c="JAMESVILLE"/>
<c n="Jordan" c="JORDAN"/>
<c n="LaFayette" c="LAFAYETTE"/>
<c n="Lacona" c="LACONA"/>
<c n="Lansing" c="LANSING"/>
<c n="Liverpool" c="LIVERPOOL"/>
<c n="Lodi" c="LODI"/>
<c n="Madison" c="MADISON"/>
<c n="Manlius" c="MANLIUS"/>
<c n="Marathon" c="MARATHON"/>
<c n="Marcellus" c="MARCELLUS"/>
<c n="McConnellsville" c="MCCONNELLSVILLE"/>
<c n="Mexico" c="MEXICO"/>
<c n="Moravia" c="MORAVIA"/>
<c n="Morrisville" c="MORRISVILLE"/>
<c n="Newfield" c="NEWFIELD"/>
<c n="Oneida" c="ONEIDA"/>
<c n="Oswego" c="OSWEGO"/>
<c n="Ovid" c="OVID"/>
<c n="Parish" c="PARISH"/>
<c n="Phoenix" c="PHOENIX"/>
<c n="Plainville" c="PLAINVILLE"/>
<c n="Port Byron" c="PORT BYRON"/>
<c n="Pulaski" c="PULASKI"/>
<c n="Roma" c="ROMA"/>
<c n="Romulus" c="ROMULUS"/>
<c n="Sandy Creek" c="SANDY CREEK"/>
<c n="Scipio Center" c="SCIPIO CENTER"/>
<c n="Seneca Falls" c="SENECA FALLS"/>
<c n="Skaneateles" c="SKANEATELES"/>
<c n="Skaneateles Falls" c="SKANEATELES FALLS"/>
<c n="Syracuse" c="SYRACUSE"/>
<c n="Trumansburg" c="TRUMANSBURG"/>
<c n="Tully" c="TULLY"/>
<c n="Union Springs" c="UNION SPRINGS"/>
<c n="Vernon" c="VERNON"/>
<c n="Verona" c="VERONA"/>
<c n="Waterloo" c="WATERLOO"/>
<c n="Waterville" c="WATERVILLE"/>
<c n="Weedsport" c="WEEDSPORT"/>
<c n="Canastota" c="CANASTOTA"/>
<c n="Central Square" c="CENTRAL SQUARE"/>
<c n="Constantia" c="CONSTANTIA"/>
<c n="Fairmount" c="FAIRMOUNT"/>
<c n="Galeville" c="GALEVILLE"/>
<c n="Holland Patent" c="HOLLAND PATENT"/>
<c n="Mattydale" c="MATTYDALE"/>
<c n="Minoa" c="MINOA"/>
<c n="Nedrow" c="NEDROW"/>
<c n="North Syracuse" c="NORTH SYRACUSE"/>
<c n="Sherrill" c="SHERRILL"/>
<c n="Solvay" c="SOLVAY"/>
<c n="South Hill" c="SOUTH HILL"/></dma>
    
    <dma code="565" title="Elmira, NY">
<c n="Addison" c="ADDISON"/>
<c n="Bath" c="BATH"/>
<c n="Big Flats" c="BIG FLATS"/>
<c n="Burdett" c="BURDETT"/>
<c n="Campbell" c="CAMPBELL"/>
<c n="Chemung" c="CHEMUNG"/>
<c n="Corning" c="CORNING"/>
<c n="Elmira" c="ELMIRA"/>
<c n="Hector" c="HECTOR"/>
<c n="Hornell" c="HORNELL"/>
<c n="Horseheads" c="HORSEHEADS"/>
<c n="Mecklenburg" c="MECKLENBURG"/>
<c n="Painted Post" c="PAINTED POST"/>
<c n="Prattsburgh" c="PRATTSBURGH"/>
<c n="Watkins Glen" c="WATKINS GLEN"/>
<c n="Wayland" c="WAYLAND"/>
<c n="Elkland" c="ELKLAND"/>
<c n="Gaines" c="GAINES"/>
<c n="Mainesburg" c="MAINESBURG"/>
<c n="Mansfield" c="MANSFIELD"/>
<c n="Morris" c="MORRIS"/>
<c n="Sabinsville" c="SABINSVILLE"/>
<c n="Tioga" c="TIOGA"/>
<c n="Wellsboro" c="WELLSBORO"/>
<c n="Westfield" c="WESTFIELD"/>
<c n="Millerton" c="MILLERTON"/></dma>
    </state>
<state id="GA" full_name="Georgia">
    <dma code="503" title="Macon, GA">
<c n="Abbeville" c="ABBEVILLE"/>
<c n="Alamo" c="ALAMO"/>
<c n="Bolingbroke" c="BOLINGBROKE"/>
<c n="Butler" c="BUTLER"/>
<c n="Byron" c="BYRON"/>
<c n="Cochran" c="COCHRAN"/>
<c n="Dexter" c="DEXTER"/>
<c n="Dublin" c="DUBLIN"/>
<c n="Eastman" c="EASTMAN"/>
<c n="Forsyth" c="FORSYTH"/>
<c n="Fort Valley" c="FORT VALLEY"/>
<c n="Glenwood" c="GLENWOOD"/>
<c n="Gordon" c="GORDON"/>
<c n="Gray" c="GRAY"/>
<c n="Hardwick" c="HARDWICK"/>
<c n="Hawkinsville" c="HAWKINSVILLE"/>
<c n="Irwinton" c="IRWINTON"/>
<c n="Jeffersonville" c="JEFFERSONVILLE"/>
<c n="Lizella" c="LIZELLA"/>
<c n="Macon" c="MACON"/>
<c n="McRae" c="MCRAE"/>
<c n="Milledgeville" c="MILLEDGEVILLE"/>
<c n="Montezuma" c="MONTEZUMA"/>
<c n="Oconee" c="OCONEE"/>
<c n="Oglethorpe" c="OGLETHORPE"/>
<c n="Perry" c="PERRY"/>
<c n="Rentz" c="RENTZ"/>
<c n="Reynolds" c="REYNOLDS"/>
<c n="Roberta" c="ROBERTA"/>
<c n="Rochelle" c="ROCHELLE"/>
<c n="Sandersville" c="SANDERSVILLE"/>
<c n="Soperton" c="SOPERTON"/>
<c n="Sparta" c="SPARTA"/>
<c n="Tennille" c="TENNILLE"/>
<c n="Vienna" c="VIENNA"/>
<c n="Warner Robins" c="WARNER ROBINS"/>
<c n="Wrightsville" c="WRIGHTSVILLE"/></dma>
    
    <dma code="507" title="Savannah, GA">
<c n="Alma" c="ALMA"/>
<c n="Baxley" c="BAXLEY"/>
<c n="Brooklet" c="BROOKLET"/>
<c n="Crescent" c="CRESCENT"/>
<c n="Darien" c="DARIEN"/>
<c n="Fort Stewart" c="FORT STEWART"/>
<c n="Glennville" c="GLENNVILLE"/>
<c n="Guyton" c="GUYTON"/>
<c n="Hazlehurst" c="HAZLEHURST"/>
<c n="Hinesville" c="HINESVILLE"/>
<c n="Jesup" c="JESUP"/>
<c n="Ludowici" c="LUDOWICI"/>
<c n="Lyons" c="LYONS"/>
<c n="Metter" c="METTER"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="Newington" c="NEWINGTON"/>
<c n="Pembroke" c="PEMBROKE"/>
<c n="Pooler" c="POOLER"/>
<c n="Reidsville" c="REIDSVILLE"/>
<c n="Riceboro" c="RICEBORO"/>
<c n="Richmond Hill" c="RICHMOND HILL"/>
<c n="Rincon" c="RINCON"/>
<c n="Savannah" c="SAVANNAH"/>
<c n="Screven" c="SCREVEN"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="Statesboro" c="STATESBORO"/>
<c n="Sylvania" c="SYLVANIA"/>
<c n="Tybee Island" c="TYBEE ISLAND"/>
<c n="Vidalia" c="VIDALIA"/>
<c n="Beaufort" c="BEAUFORT"/>
<c n="Bluffton" c="BLUFFTON"/>
<c n="Early Branch" c="EARLY BRANCH"/>
<c n="Estill" c="ESTILL"/>
<c n="Hampton" c="HAMPTON"/>
<c n="Hardeeville" c="HARDEEVILLE"/>
<c n="Hilton Head Island" c="HILTON HEAD ISLAND"/>
<c n="Pineland" c="PINELAND"/>
<c n="Port Royal" c="PORT ROYAL"/>
<c n="Ridgeland" c="RIDGELAND"/>
<c n="Saint Helena Island" c="SAINT HELENA ISLAND"/>
<c n="Varnville" c="VARNVILLE"/>
<c n="Garden City" c="GARDEN CITY"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Midway" c="MIDWAY"/>
<c n="Port Wentworth" c="PORT WENTWORTH"/>
<c n="Skidaway Island" c="SKIDAWAY ISLAND"/>
<c n="Wilmington Island" c="WILMINGTON ISLAND"/></dma>
    
    <dma code="520" title="Augusta, GA">
<c n="Appling" c="APPLING"/>
<c n="Augusta" c="AUGUSTA"/>
<c n="Bartow" c="BARTOW"/>
<c n="Blythe" c="BLYTHE"/>
<c n="Camak" c="CAMAK"/>
<c n="Crawfordville" c="CRAWFORDVILLE"/>
<c n="Dearing" c="DEARING"/>
<c n="Evans" c="EVANS"/>
<c n="Grovetown" c="GROVETOWN"/>
<c n="Harlem" c="HARLEM"/>
<c n="Hephzibah" c="HEPHZIBAH"/>
<c n="Jewell" c="JEWELL"/>
<c n="Lincolnton" c="LINCOLNTON"/>
<c n="Louisville" c="LOUISVILLE"/>
<c n="Millen" c="MILLEN"/>
<c n="Perkins" c="PERKINS"/>
<c n="Sardis" c="SARDIS"/>
<c n="Sharon" c="SHARON"/>
<c n="Swainsboro" c="SWAINSBORO"/>
<c n="Thomson" c="THOMSON"/>
<c n="Warrenton" c="WARRENTON"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Waynesboro" c="WAYNESBORO"/>
<c n="Wrens" c="WRENS"/>
<c n="Aiken" c="AIKEN"/>
<c n="Allendale" c="ALLENDALE"/>
<c n="Bamberg" c="BAMBERG"/>
<c n="Barnwell" c="BARNWELL"/>
<c n="Bath" c="BATH"/>
<c n="Blackville" c="BLACKVILLE"/>
<c n="Denmark" c="DENMARK"/>
<c n="Edgefield" c="EDGEFIELD"/>
<c n="Fairfax" c="FAIRFAX"/>
<c n="Graniteville" c="GRANITEVILLE"/>
<c n="Jackson" c="JACKSON"/>
<c n="Johnston" c="JOHNSTON"/>
<c n="McCormick" c="MCCORMICK"/>
<c n="New Ellenton" c="NEW ELLENTON"/>
<c n="North Augusta" c="NORTH AUGUSTA"/>
<c n="Trenton" c="TRENTON"/>
<c n="Williston" c="WILLISTON"/>
<c n="Martinez" c="MARTINEZ"/>
<c n="Wagener" c="WAGENER"/></dma>
    
    <dma code="522" title="Columbus, GA">
<c n="Auburn" c="AUBURN"/>
<c n="Auburn University" c="AUBURN UNIVERSITY"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Clio" c="CLIO"/>
<c n="Eufaula" c="EUFAULA"/>
<c n="Hatchechubbee" c="HATCHECHUBBEE"/>
<c n="La Fayette" c="LA FAYETTE"/>
<c n="Lanett" c="LANETT"/>
<c n="Loachapoka" c="LOACHAPOKA"/>
<c n="Opelika" c="OPELIKA"/>
<c n="Phenix City" c="PHENIX CITY"/>
<c n="Valley" c="VALLEY"/>
<c n="Americus" c="AMERICUS"/>
<c n="Buena Vista" c="BUENA VISTA"/>
<c n="Cobb" c="COBB"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Cusseta-Chattahoochee County" c="CUSSETA-CHATTAHOOCHEE COUNTY"/>
<c n="Cuthbert" c="CUTHBERT"/>
<c n="Ellaville" c="ELLAVILLE"/>
<c n="Fort Benning" c="FORT BENNING"/>
<c n="Fort Gaines" c="FORT GAINES"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Leslie" c="LESLIE"/>
<c n="Midland" c="MIDLAND"/>
<c n="Pine Mountain" c="PINE MOUNTAIN"/>
<c n="Preston" c="PRESTON"/>
<c n="Shellman" c="SHELLMAN"/>
<c n="Talbotton" c="TALBOTTON"/>
<c n="Upatoi" c="UPATOI"/>
<c n="Smiths Station" c="SMITHS STATION"/></dma>
    
    <dma code="524" title="Atlanta, GA">
<c n="Heflin" c="HEFLIN"/>
<c n="Roanoke" c="ROANOKE"/>
<c n="Wadley" c="WADLEY"/>
<c n="Wedowee" c="WEDOWEE"/>
<c n="Acworth" c="ACWORTH"/>
<c n="Adairsville" c="ADAIRSVILLE"/>
<c n="Alpharetta" c="ALPHARETTA"/>
<c n="Athens" c="ATHENS"/>
<c n="Atlanta" c="ATLANTA"/>
<c n="Auburn" c="AUBURN"/>
<c n="Austell" c="AUSTELL"/>
<c n="Avondale Estates" c="AVONDALE ESTATES"/>
<c n="Ball Ground" c="BALL GROUND"/>
<c n="Barnesville" c="BARNESVILLE"/>
<c n="Blairsville" c="BLAIRSVILLE"/>
<c n="Blue Ridge" c="BLUE RIDGE"/>
<c n="Bogart" c="BOGART"/>
<c n="Bowdon" c="BOWDON"/>
<c n="Braselton" c="BRASELTON"/>
<c n="Bremen" c="BREMEN"/>
<c n="Buchanan" c="BUCHANAN"/>
<c n="Buckhead" c="BUCKHEAD"/>
<c n="Buford" c="BUFORD"/>
<c n="Calhoun" c="CALHOUN"/>
<c n="Canton" c="CANTON"/>
<c n="Carrollton" c="CARROLLTON"/>
<c n="Cartersville" c="CARTERSVILLE"/>
<c n="Cave Spring" c="CAVE SPRING"/>
<c n="Cedartown" c="CEDARTOWN"/>
<c n="Clarkesville" c="CLARKESVILLE"/>
<c n="Clarkston" c="CLARKSTON"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Clermont" c="CLERMONT"/>
<c n="Cleveland" c="CLEVELAND"/>
<c n="Commerce" c="COMMERCE"/>
<c n="Concord" c="CONCORD"/>
<c n="Conley" c="CONLEY"/>
<c n="Conyers" c="CONYERS"/>
<c n="Cornelia" c="CORNELIA"/>
<c n="Covington" c="COVINGTON"/>
<c n="Cumming" c="CUMMING"/>
<c n="Dacula" c="DACULA"/>
<c n="Dahlonega" c="DAHLONEGA"/>
<c n="Dallas" c="DALLAS"/>
<c n="Danielsville" c="DANIELSVILLE"/>
<c n="Dawsonville" c="DAWSONVILLE"/>
<c n="Decatur" c="DECATUR"/>
<c n="Demorest" c="DEMOREST"/>
<c n="Dillard" c="DILLARD"/>
<c n="Douglasville" c="DOUGLASVILLE"/>
<c n="Duluth" c="DULUTH"/>
<c n="East Ellijay" c="EAST ELLIJAY"/>
<c n="Eatonton" c="EATONTON"/>
<c n="Ellenwood" c="ELLENWOOD"/>
<c n="Ellijay" c="ELLIJAY"/>
<c n="Experiment" c="EXPERIMENT"/>
<c n="Fairburn" c="FAIRBURN"/>
<c n="Fairmount" c="FAIRMOUNT"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Fayetteville" c="FAYETTEVILLE"/>
<c n="Flowery Branch" c="FLOWERY BRANCH"/>
<c n="Forest Park" c="FOREST PARK"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Gainesville" c="GAINESVILLE"/>
<c n="Grantville" c="GRANTVILLE"/>
<c n="Grayson" c="GRAYSON"/>
<c n="Greensboro" c="GREENSBORO"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Griffin" c="GRIFFIN"/>
<c n="Hampton" c="HAMPTON"/>
<c n="Helen" c="HELEN"/>
<c n="Hiawassee" c="HIAWASSEE"/>
<c n="Hiram" c="HIRAM"/>
<c n="Homer" c="HOMER"/>
<c n="Hoschton" c="HOSCHTON"/>
<c n="Jackson" c="JACKSON"/>
<c n="Jasper" c="JASPER"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Jenkinsburg" c="JENKINSBURG"/>
<c n="Jonesboro" c="JONESBORO"/>
<c n="Kennesaw" c="KENNESAW"/>
<c n="Kingston" c="KINGSTON"/>
<c n="LaGrange" c="LAGRANGE"/>
<c n="Lawrenceville" c="LAWRENCEVILLE"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Lilburn" c="LILBURN"/>
<c n="Lithia Springs" c="LITHIA SPRINGS"/>
<c n="Lithonia" c="LITHONIA"/>
<c n="Locust Grove" c="LOCUST GROVE"/>
<c n="Loganville" c="LOGANVILLE"/>
<c n="Lula" c="LULA"/>
<c n="Luthersville" c="LUTHERSVILLE"/>
<c n="Mableton" c="MABLETON"/>
<c n="Madison" c="MADISON"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Marble Hill" c="MARBLE HILL"/>
<c n="Marietta" c="MARIETTA"/>
<c n="McDonough" c="MCDONOUGH"/>
<c n="Meansville" c="MEANSVILLE"/>
<c n="Monroe" c="MONROE"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="Morrow" c="MORROW"/>
<c n="Mountain City" c="MOUNTAIN CITY"/>
<c n="Nelson" c="NELSON"/>
<c n="Newnan" c="NEWNAN"/>
<c n="Norcross" c="NORCROSS"/>
<c n="North Metro" c="NORTH METRO"/>
<c n="Oakwood" c="OAKWOOD"/>
<c n="Oxford" c="OXFORD"/>
<c n="Palmetto" c="PALMETTO"/>
<c n="Peachtree City" c="PEACHTREE CITY"/>
<c n="Pendergrass" c="PENDERGRASS"/>
<c n="Pine Lake" c="PINE LAKE"/>
<c n="Powder Springs" c="POWDER SPRINGS"/>
<c n="Rabun Gap" c="RABUN GAP"/>
<c n="Ranger" c="RANGER"/>
<c n="Redan" c="REDAN"/>
<c n="Rex" c="REX"/>
<c n="Riverdale" c="RIVERDALE"/>
<c n="Rockmart" c="ROCKMART"/>
<c n="Rome" c="ROME"/>
<c n="Roopville" c="ROOPVILLE"/>
<c n="Roswell" c="ROSWELL"/>
<c n="Rutledge" c="RUTLEDGE"/>
<c n="Sautee Nacoochee" c="SAUTEE NACOOCHEE"/>
<c n="Scottdale" c="SCOTTDALE"/>
<c n="Senoia" c="SENOIA"/>
<c n="Smyrna" c="SMYRNA"/>
<c n="Snellville" c="SNELLVILLE"/>
<c n="Social Circle" c="SOCIAL CIRCLE"/>
<c n="Statham" c="STATHAM"/>
<c n="Stockbridge" c="STOCKBRIDGE"/>
<c n="Stone Mountain" c="STONE MOUNTAIN"/>
<c n="Suwanee" c="SUWANEE"/>
<c n="Tallapoosa" c="TALLAPOOSA"/>
<c n="Temple" c="TEMPLE"/>
<c n="Thomaston" c="THOMASTON"/>
<c n="Tucker" c="TUCKER"/>
<c n="Tyrone" c="TYRONE"/>
<c n="Union City" c="UNION CITY"/>
<c n="Union Point" c="UNION POINT"/>
<c n="Villa Rica" c="VILLA RICA"/>
<c n="Waleska" c="WALESKA"/>
<c n="Warm Springs" c="WARM SPRINGS"/>
<c n="Watkinsville" c="WATKINSVILLE"/>
<c n="Whitesburg" c="WHITESBURG"/>
<c n="Winder" c="WINDER"/>
<c n="Winston" c="WINSTON"/>
<c n="Winterville" c="WINTERVILLE"/>
<c n="Woodstock" c="WOODSTOCK"/>
<c n="Young Harris" c="YOUNG HARRIS"/>
<c n="Zebulon" c="ZEBULON"/>
<c n="Brasstown" c="BRASSTOWN"/>
<c n="Hayesville" c="HAYESVILLE"/>
<c n="Brookhaven" c="BROOKHAVEN"/>
<c n="Candler-McAfee" c="CANDLER-MCAFEE"/>
<c n="Chamblee" c="CHAMBLEE"/>
<c n="College Park" c="COLLEGE PARK"/>
<c n="Doraville" c="DORAVILLE"/>
<c n="Druid Hills" c="DRUID HILLS"/>
<c n="Dunwoody" c="DUNWOODY"/>
<c n="East Point" c="EAST POINT"/>
<c n="Hapeville" c="HAPEVILLE"/>
<c n="Holly Springs" c="HOLLY SPRINGS"/>
<c n="Johns Creek" c="JOHNS CREEK"/>
<c n="Milton" c="MILTON"/>
<c n="Mountain Park" c="MOUNTAIN PARK"/>
<c n="North Decatur" c="NORTH DECATUR"/>
<c n="North Druid Hills" c="NORTH DRUID HILLS"/>
<c n="Panthersville" c="PANTHERSVILLE"/>
<c n="Porterdale" c="PORTERDALE"/>
<c n="Sandy Springs" c="SANDY SPRINGS"/>
<c n="Sugar Hill" c="SUGAR HILL"/>
<c n="Vinings" c="VININGS"/></dma>
    
    <dma code="525" title="Albany, GA">
<c n="Adel" c="ADEL"/>
<c n="Albany" c="ALBANY"/>
<c n="Ashburn" c="ASHBURN"/>
<c n="Camilla" c="CAMILLA"/>
<c n="Cordele" c="CORDELE"/>
<c n="Dawson" c="DAWSON"/>
<c n="Douglas" c="DOUGLAS"/>
<c n="Edison" c="EDISON"/>
<c n="Enigma" c="ENIGMA"/>
<c n="Fitzgerald" c="FITZGERALD"/>
<c n="Leesburg" c="LEESBURG"/>
<c n="Lenox" c="LENOX"/>
<c n="Morgan" c="MORGAN"/>
<c n="Moultrie" c="MOULTRIE"/>
<c n="Nashville" c="NASHVILLE"/>
<c n="Newton" c="NEWTON"/>
<c n="Nicholls" c="NICHOLLS"/>
<c n="Ocilla" c="OCILLA"/>
<c n="Pearson" c="PEARSON"/>
<c n="Pelham" c="PELHAM"/>
<c n="Sylvester" c="SYLVESTER"/>
<c n="Tifton" c="TIFTON"/>
<c n="Warwick" c="WARWICK"/></dma>
    
    <dma code="530" title="Tallahassee, FL-Thomasville, GA">
<c n="Branford" c="BRANFORD"/>
<c n="Chattahoochee" c="CHATTAHOOCHEE"/>
<c n="Crawfordville" c="CRAWFORDVILLE"/>
<c n="Havana" c="HAVANA"/>
<c n="Jasper" c="JASPER"/>
<c n="Lee" c="LEE"/>
<c n="Live Oak" c="LIVE OAK"/>
<c n="Madison" c="MADISON"/>
<c n="Mayo" c="MAYO"/>
<c n="Miccosukee Land Cooperative" c="MICCOSUKEE LAND COOPERATIVE"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="Mount Pleasant" c="MOUNT PLEASANT"/>
<c n="Perry" c="PERRY"/>
<c n="Quincy" c="QUINCY"/>
<c n="Tallahassee" c="TALLAHASSEE"/>
<c n="Wellborn" c="WELLBORN"/>
<c n="Bainbridge" c="BAINBRIDGE"/>
<c n="Cairo" c="CAIRO"/>
<c n="Colquitt" c="COLQUITT"/>
<c n="Donalsonville" c="DONALSONVILLE"/>
<c n="Hahira" c="HAHIRA"/>
<c n="Homerville" c="HOMERVILLE"/>
<c n="Lake Park" c="LAKE PARK"/>
<c n="Lakeland" c="LAKELAND"/>
<c n="Ochlocknee" c="OCHLOCKNEE"/>
<c n="Quitman" c="QUITMAN"/>
<c n="Statenville" c="STATENVILLE"/>
<c n="Thomasville" c="THOMASVILLE"/>
<c n="Valdosta" c="VALDOSTA"/></dma>
    </state>
<state id="PA" full_name="Pennsylvania">
    <dma code="504" title="Philadelphia, PA">
<c n="Bear" c="BEAR"/>
<c n="Camden Wyoming" c="CAMDEN WYOMING"/>
<c n="Cheswold" c="CHESWOLD"/>
<c n="Claymont" c="CLAYMONT"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Delaware City" c="DELAWARE CITY"/>
<c n="Dover" c="DOVER"/>
<c n="Dover Air Force Base" c="DOVER AIR FORCE BASE"/>
<c n="Felton" c="FELTON"/>
<c n="Frederica" c="FREDERICA"/>
<c n="Harrington" c="HARRINGTON"/>
<c n="Hartly" c="HARTLY"/>
<c n="Hockessin" c="HOCKESSIN"/>
<c n="Houston" c="HOUSTON"/>
<c n="Kenton" c="KENTON"/>
<c n="Little Creek" c="LITTLE CREEK"/>
<c n="Magnolia" c="MAGNOLIA"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="New Castle" c="NEW CASTLE"/>
<c n="Newark" c="NEWARK"/>
<c n="Odessa" c="ODESSA"/>
<c n="Rockland" c="ROCKLAND"/>
<c n="Smyrna" c="SMYRNA"/>
<c n="Saint Georges" c="SAINT GEORGES"/>
<c n="Townsend" c="TOWNSEND"/>
<c n="Viola" c="VIOLA"/>
<c n="Wilmington" c="WILMINGTON"/>
<c n="Winterthur" c="WINTERTHUR"/>
<c n="Woodside" c="WOODSIDE"/>
<c n="Yorklyn" c="YORKLYN"/>
<c n="Absecon" c="ABSECON"/>
<c n="Alloway" c="ALLOWAY"/>
<c n="Atco" c="ATCO"/>
<c n="Atlantic City" c="ATLANTIC CITY"/>
<c n="Audubon" c="AUDUBON"/>
<c n="Avalon" c="AVALON"/>
<c n="Barrington" c="BARRINGTON"/>
<c n="Bellmawr" c="BELLMAWR"/>
<c n="Berlin" c="BERLIN"/>
<c n="Beverly" c="BEVERLY"/>
<c n="Birmingham" c="BIRMINGHAM"/>
<c n="Blackwood" c="BLACKWOOD"/>
<c n="Bordentown City" c="BORDENTOWN CITY"/>
<c n="Bridgeport" c="BRIDGEPORT"/>
<c n="Bridgeton" c="BRIDGETON"/>
<c n="Brigantine" c="BRIGANTINE"/>
<c n="Browns Mills" c="BROWNS MILLS"/>
<c n="Buena" c="BUENA"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Camden" c="CAMDEN"/>
<c n="Cape May" c="CAPE MAY"/>
<c n="Cape May Court House" c="CAPE MAY COURT HOUSE"/>
<c n="Cedarville" c="CEDARVILLE"/>
<c n="Cherry Hill" c="CHERRY HILL"/>
<c n="Clarksboro" c="CLARKSBORO"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Clementon" c="CLEMENTON"/>
<c n="Collingswood" c="COLLINGSWOOD"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Crosswicks" c="CROSSWICKS"/>
<c n="Egg Harbor City" c="EGG HARBOR CITY"/>
<c n="Egg Harbor Township" c="EGG HARBOR TOWNSHIP"/>
<c n="Elmer" c="ELMER"/>
<c n="Elwood" c="ELWOOD"/>
<c n="Estell Manor" c="ESTELL MANOR"/>
<c n="Florence Township" c="FLORENCE TOWNSHIP"/>
<c n="Franklinville" c="FRANKLINVILLE"/>
<c n="Gibbsboro" c="GIBBSBORO"/>
<c n="Gibbstown" c="GIBBSTOWN"/>
<c n="Glassboro" c="GLASSBORO"/>
<c n="Glendora" c="GLENDORA"/>
<c n="Gloucester City" c="GLOUCESTER CITY"/>
<c n="Greenwich" c="GREENWICH"/>
<c n="Haddon Heights" c="HADDON HEIGHTS"/>
<c n="Haddonfield" c="HADDONFIELD"/>
<c n="Hainesport" c="HAINESPORT"/>
<c n="Hammonton" c="HAMMONTON"/>
<c n="Harrisonville" c="HARRISONVILLE"/>
<c n="Heislerville" c="HEISLERVILLE"/>
<c n="Hightstown" c="HIGHTSTOWN"/>
<c n="Hopewell" c="HOPEWELL"/>
<c n="Landisville" c="LANDISVILLE"/>
<c n="Lawnside" c="LAWNSIDE"/>
<c n="Leesburg" c="LEESBURG"/>
<c n="Linwood" c="LINWOOD"/>
<c n="Longport" c="LONGPORT"/>
<c n="Lumberton" c="LUMBERTON"/>
<c n="Magnolia" c="MAGNOLIA"/>
<c n="Malaga" c="MALAGA"/>
<c n="Mantua Township" c="MANTUA TOWNSHIP"/>
<c n="Maple Shade Township" c="MAPLE SHADE TOWNSHIP"/>
<c n="Margate City" c="MARGATE CITY"/>
<c n="Marlton" c="MARLTON"/>
<c n="Marmora" c="MARMORA"/>
<c n="Mays Landing" c="MAYS LANDING"/>
<c n="Medford" c="MEDFORD"/>
<c n="Merchantville" c="MERCHANTVILLE"/>
<c n="Mickleton" c="MICKLETON"/>
<c n="Millville" c="MILLVILLE"/>
<c n="Milmay" c="MILMAY"/>
<c n="Monroeville" c="MONROEVILLE"/>
<c n="Moorestown" c="MOORESTOWN"/>
<c n="Mount Ephraim" c="MOUNT EPHRAIM"/>
<c n="Mount Holly" c="MOUNT HOLLY"/>
<c n="Mount Laurel" c="MOUNT LAUREL"/>
<c n="Mullica Hill" c="MULLICA HILL"/>
<c n="National Park" c="NATIONAL PARK"/>
<c n="New Gretna" c="NEW GRETNA"/>
<c n="Newfield" c="NEWFIELD"/>
<c n="Northfield" c="NORTHFIELD"/>
<c n="Oaklyn" c="OAKLYN"/>
<c n="Ocean City" c="OCEAN CITY"/>
<c n="Palmyra" c="PALMYRA"/>
<c n="Paulsboro" c="PAULSBORO"/>
<c n="Pedricktown" c="PEDRICKTOWN"/>
<c n="Pemberton" c="PEMBERTON"/>
<c n="Pennington" c="PENNINGTON"/>
<c n="Penns Grove" c="PENNS GROVE"/>
<c n="Pennsauken Township" c="PENNSAUKEN TOWNSHIP"/>
<c n="Pennsville" c="PENNSVILLE"/>
<c n="Pitman" c="PITMAN"/>
<c n="Pleasantville" c="PLEASANTVILLE"/>
<c n="Pomona" c="POMONA"/>
<c n="Port Norris" c="PORT NORRIS"/>
<c n="Port Republic" c="PORT REPUBLIC"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Princeton Junction" c="PRINCETON JUNCTION"/>
<c n="Quinton" c="QUINTON"/>
<c n="Rancocas" c="RANCOCAS"/>
<c n="Richland" c="RICHLAND"/>
<c n="Rio Grande" c="RIO GRANDE"/>
<c n="Riverside" c="RIVERSIDE"/>
<c n="Riverton" c="RIVERTON"/>
<c n="Roebling" c="ROEBLING"/>
<c n="Rosenhayn" c="ROSENHAYN"/>
<c n="Runnemede" c="RUNNEMEDE"/>
<c n="Salem" c="SALEM"/>
<c n="Sea Isle City" c="SEA ISLE CITY"/>
<c n="Sewell" c="SEWELL"/>
<c n="Sicklerville" c="SICKLERVILLE"/>
<c n="Somerdale" c="SOMERDALE"/>
<c n="Somers Point" c="SOMERS POINT"/>
<c n="Stone Harbor" c="STONE HARBOR"/>
<c n="Stratford" c="STRATFORD"/>
<c n="Swedesboro" c="SWEDESBORO"/>
<c n="Thorofare" c="THOROFARE"/>
<c n="Trenton" c="TRENTON"/>
<c n="Ventnor City" c="VENTNOR CITY"/>
<c n="Vincentown" c="VINCENTOWN"/>
<c n="Vineland" c="VINELAND"/>
<c n="Voorhees Township" c="VOORHEES TOWNSHIP"/>
<c n="West Berlin" c="WEST BERLIN"/>
<c n="Westville" c="WESTVILLE"/>
<c n="Wildwood" c="WILDWOOD"/>
<c n="Williamstown" c="WILLIAMSTOWN"/>
<c n="Willingboro Township" c="WILLINGBORO TOWNSHIP"/>
<c n="Windsor" c="WINDSOR"/>
<c n="Woodbine" c="WOODBINE"/>
<c n="Woodbury" c="WOODBURY"/>
<c n="Woodbury Heights" c="WOODBURY HEIGHTS"/>
<c n="Woodstown" c="WOODSTOWN"/>
<c n="Wrightstown" c="WRIGHTSTOWN"/>
<c n="Abington" c="ABINGTON"/>
<c n="Allentown" c="ALLENTOWN"/>
<c n="Ambler" c="AMBLER"/>
<c n="Arcola" c="ARCOLA"/>
<c n="Ardmore" c="ARDMORE"/>
<c n="Aston" c="ASTON"/>
<c n="Atglen" c="ATGLEN"/>
<c n="Audubon" c="AUDUBON"/>
<c n="Avondale" c="AVONDALE"/>
<c n="Bala Cynwyd" c="BALA CYNWYD"/>
<c n="Bangor" c="BANGOR"/>
<c n="Barto" c="BARTO"/>
<c n="Bath" c="BATH"/>
<c n="Bechtelsville" c="BECHTELSVILLE"/>
<c n="Bedminster" c="BEDMINSTER"/>
<c n="Bensalem" c="BENSALEM"/>
<c n="Bernville" c="BERNVILLE"/>
<c n="Berwyn" c="BERWYN"/>
<c n="Bethel" c="BETHEL"/>
<c n="Bethlehem" c="BETHLEHEM"/>
<c n="Birdsboro" c="BIRDSBORO"/>
<c n="Blandon" c="BLANDON"/>
<c n="Blooming Glen" c="BLOOMING GLEN"/>
<c n="Blue Bell" c="BLUE BELL"/>
<c n="Boyertown" c="BOYERTOWN"/>
<c n="Breinigsville" c="BREINIGSVILLE"/>
<c n="Bridgeport" c="BRIDGEPORT"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Brookhaven" c="BROOKHAVEN"/>
<c n="Broomall" c="BROOMALL"/>
<c n="Bryn Athyn" c="BRYN ATHYN"/>
<c n="Bryn Mawr" c="BRYN MAWR"/>
<c n="Carversville" c="CARVERSVILLE"/>
<c n="Catasauqua" c="CATASAUQUA"/>
<c n="Center Valley" c="CENTER VALLEY"/>
<c n="Chadds Ford" c="CHADDS FORD"/>
<c n="Chalfont" c="CHALFONT"/>
<c n="Cheltenham" c="CHELTENHAM"/>
<c n="Chester" c="CHESTER"/>
<c n="Chester Heights" c="CHESTER HEIGHTS"/>
<c n="Chester Springs" c="CHESTER SPRINGS"/>
<c n="Cheyney" c="CHEYNEY"/>
<c n="Clifton Heights" c="CLIFTON HEIGHTS"/>
<c n="Coatesville" c="COATESVILLE"/>
<c n="Collegeville" c="COLLEGEVILLE"/>
<c n="Colmar" c="COLMAR"/>
<c n="Concordville" c="CONCORDVILLE"/>
<c n="Conshohocken" c="CONSHOHOCKEN"/>
<c n="Coopersburg" c="COOPERSBURG"/>
<c n="Coplay" c="COPLAY"/>
<c n="Croydon" c="CROYDON"/>
<c n="Crum Lynne" c="CRUM LYNNE"/>
<c n="Danboro" c="DANBORO"/>
<c n="Danielsville" c="DANIELSVILLE"/>
<c n="Darby" c="DARBY"/>
<c n="Devault" c="DEVAULT"/>
<c n="Devon" c="DEVON"/>
<c n="Douglassville" c="DOUGLASSVILLE"/>
<c n="Downingtown" c="DOWNINGTOWN"/>
<c n="Doylestown" c="DOYLESTOWN"/>
<c n="Dresher" c="DRESHER"/>
<c n="Drexel Hill" c="DREXEL HILL"/>
<c n="Dublin" c="DUBLIN"/>
<c n="Eagleville" c="EAGLEVILLE"/>
<c n="East Greenville" c="EAST GREENVILLE"/>
<c n="Easton" c="EASTON"/>
<c n="Elkins Park" c="ELKINS PARK"/>
<c n="Elverson" c="ELVERSON"/>
<c n="Emmaus" c="EMMAUS"/>
<c n="Erwinna" c="ERWINNA"/>
<c n="Essington" c="ESSINGTON"/>
<c n="Exton" c="EXTON"/>
<c n="Fairless Hills" c="FAIRLESS HILLS"/>
<c n="Fairview Village" c="FAIRVIEW VILLAGE"/>
<c n="Feasterville-Trevose" c="FEASTERVILLE-TREVOSE"/>
<c n="Fleetwood" c="FLEETWOOD"/>
<c n="Flourtown" c="FLOURTOWN"/>
<c n="Fogelsville" c="FOGELSVILLE"/>
<c n="Folcroft" c="FOLCROFT"/>
<c n="Folsom" c="FOLSOM"/>
<c n="Fountainville" c="FOUNTAINVILLE"/>
<c n="Franconia" c="FRANCONIA"/>
<c n="Frederick" c="FREDERICK"/>
<c n="Fort Washington" c="FORT WASHINGTON"/>
<c n="Germansville" c="GERMANSVILLE"/>
<c n="Gilbertsville" c="GILBERTSVILLE"/>
<c n="Gladwyne" c="GLADWYNE"/>
<c n="Glen Mills" c="GLEN MILLS"/>
<c n="Glen Riddle Lima" c="GLEN RIDDLE LIMA"/>
<c n="Glenmoore" c="GLENMOORE"/>
<c n="Glenolden" c="GLENOLDEN"/>
<c n="Glenside" c="GLENSIDE"/>
<c n="Gradyville" c="GRADYVILLE"/>
<c n="Gwynedd" c="GWYNEDD"/>
<c n="Gwynedd Valley" c="GWYNEDD VALLEY"/>
<c n="Hamburg" c="HAMBURG"/>
<c n="Harleysville" c="HARLEYSVILLE"/>
<c n="Hatboro" c="HATBORO"/>
<c n="Hatfield" c="HATFIELD"/>
<c n="Haverford" c="HAVERFORD"/>
<c n="Havertown" c="HAVERTOWN"/>
<c n="Hellertown" c="HELLERTOWN"/>
<c n="Holicong" c="HOLICONG"/>
<c n="Holmes" c="HOLMES"/>
<c n="Horsham" c="HORSHAM"/>
<c n="Huntingdon Valley" c="HUNTINGDON VALLEY"/>
<c n="Jamison" c="JAMISON"/>
<c n="Jenkintown" c="JENKINTOWN"/>
<c n="Kemblesville" c="KEMBLESVILLE"/>
<c n="Kennett Square" c="KENNETT SQUARE"/>
<c n="Kimberton" c="KIMBERTON"/>
<c n="King of Prussia" c="KING OF PRUSSIA"/>
<c n="Kintnersville" c="KINTNERSVILLE"/>
<c n="Kulpsville" c="KULPSVILLE"/>
<c n="Kutztown" c="KUTZTOWN"/>
<c n="Lafayette Hill" c="LAFAYETTE HILL"/>
<c n="Landenberg" c="LANDENBERG"/>
<c n="Langhorne" c="LANGHORNE"/>
<c n="Lansdale" c="LANSDALE"/>
<c n="Lansdowne" c="LANSDOWNE"/>
<c n="Leesport" c="LEESPORT"/>
<c n="Stiles" c="STILES"/>
<c n="Lenni" c="LENNI"/>
<c n="Levittown" c="LEVITTOWN"/>
<c n="Lincoln University" c="LINCOLN UNIVERSITY"/>
<c n="Line Lexington" c="LINE LEXINGTON"/>
<c n="Lionville" c="LIONVILLE"/>
<c n="Lyndell" c="LYNDELL"/>
<c n="Macungie" c="MACUNGIE"/>
<c n="Mainland" c="MAINLAND"/>
<c n="Malvern" c="MALVERN"/>
<c n="Marcus Hook" c="MARCUS HOOK"/>
<c n="Media" c="MEDIA"/>
<c n="Mendenhall" c="MENDENHALL"/>
<c n="Merion Station" c="MERION STATION"/>
<c n="Mertztown" c="MERTZTOWN"/>
<c n="Mohnton" c="MOHNTON"/>
<c n="Montgomeryville" c="MONTGOMERYVILLE"/>
<c n="Morgantown" c="MORGANTOWN"/>
<c n="Morrisville" c="MORRISVILLE"/>
<c n="Narberth" c="NARBERTH"/>
<c n="Nazareth" c="NAZARETH"/>
<c n="New Hope" c="NEW HOPE"/>
<c n="New Tripoli" c="NEW TRIPOLI"/>
<c n="Newtown" c="NEWTOWN"/>
<c n="Newtown Square" c="NEWTOWN SQUARE"/>
<c n="Norristown" c="NORRISTOWN"/>
<c n="North Wales" c="NORTH WALES"/>
<c n="Northampton" c="NORTHAMPTON"/>
<c n="Norwood" c="NORWOOD"/>
<c n="Nottingham" c="NOTTINGHAM"/>
<c n="Oaks" c="OAKS"/>
<c n="Oley" c="OLEY"/>
<c n="Orefield" c="OREFIELD"/>
<c n="Oreland" c="ORELAND"/>
<c n="Oxford" c="OXFORD"/>
<c n="Palm" c="PALM"/>
<c n="Paoli" c="PAOLI"/>
<c n="Parkesburg" c="PARKESBURG"/>
<c n="Pen Argyl" c="PEN ARGYL"/>
<c n="Penns Park" c="PENNS PARK"/>
<c n="Pennsburg" c="PENNSBURG"/>
<c n="Perkasie" c="PERKASIE"/>
<c n="Philadelphia" c="PHILADELPHIA"/>
<c n="Phoenixville" c="PHOENIXVILLE"/>
<c n="Pipersville" c="PIPERSVILLE"/>
<c n="Plumsteadville" c="PLUMSTEADVILLE"/>
<c n="Plymouth Meeting" c="PLYMOUTH MEETING"/>
<c n="Pocopson" c="POCOPSON"/>
<c n="Pottstown" c="POTTSTOWN"/>
<c n="Prospect Park" c="PROSPECT PARK"/>
<c n="Quakertown" c="QUAKERTOWN"/>
<c n="Reading" c="READING"/>
<c n="Red Hill" c="RED HILL"/>
<c n="Richboro" c="RICHBORO"/>
<c n="Ridley Park" c="RIDLEY PARK"/>
<c n="Riegelsville" c="RIEGELSVILLE"/>
<c n="Robesonia" c="ROBESONIA"/>
<c n="Royersford" c="ROYERSFORD"/>
<c n="Salford" c="SALFORD"/>
<c n="Sassamansville" c="SASSAMANSVILLE"/>
<c n="Schnecksville" c="SCHNECKSVILLE"/>
<c n="Schwenksville" c="SCHWENKSVILLE"/>
<c n="Sellersville" c="SELLERSVILLE"/>
<c n="Sharon Hill" c="SHARON HILL"/>
<c n="Skippack" c="SKIPPACK"/>
<c n="Slatington" c="SLATINGTON"/>
<c n="Souderton" c="SOUDERTON"/>
<c n="Southampton" c="SOUTHAMPTON"/>
<c n="Southeastern" c="SOUTHEASTERN"/>
<c n="Spring City" c="SPRING CITY"/>
<c n="Spring House" c="SPRING HOUSE"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="Springtown" c="SPRINGTOWN"/>
<c n="Stony Run" c="STONY RUN"/>
<c n="Swarthmore" c="SWARTHMORE"/>
<c n="Telford" c="TELFORD"/>
<c n="Temple" c="TEMPLE"/>
<c n="Thorndale" c="THORNDALE"/>
<c n="Thornton" c="THORNTON"/>
<c n="Topton" c="TOPTON"/>
<c n="Trexlertown" c="TREXLERTOWN"/>
<c n="Unionville" c="UNIONVILLE"/>
<c n="Upper Black Eddy" c="UPPER BLACK EDDY"/>
<c n="Upper Darby Township" c="UPPER DARBY TOWNSHIP"/>
<c n="Uwchlan Township" c="UWCHLAN TOWNSHIP"/>
<c n="Valley Forge" c="VALLEY FORGE"/>
<c n="Villanova" c="VILLANOVA"/>
<c n="Wagontown" c="WAGONTOWN"/>
<c n="Wallingford" c="WALLINGFORD"/>
<c n="Warminster" c="WARMINSTER"/>
<c n="Warrington" c="WARRINGTON"/>
<c n="Washington Crossing" c="WASHINGTON CROSSING"/>
<c n="Wayne" c="WAYNE"/>
<c n="Wernersville" c="WERNERSVILLE"/>
<c n="West Chester" c="WEST CHESTER"/>
<c n="West Grove" c="WEST GROVE"/>
<c n="West Point" c="WEST POINT"/>
<c n="Westtown" c="WESTTOWN"/>
<c n="Willow Grove" c="WILLOW GROVE"/>
<c n="Wind Gap" c="WIND GAP"/>
<c n="Womelsdorf" c="WOMELSDORF"/>
<c n="Worcester" c="WORCESTER"/>
<c n="Wycombe" c="WYCOMBE"/>
<c n="Wyncote" c="WYNCOTE"/>
<c n="Wynnewood" c="WYNNEWOOD"/>
<c n="Zieglerville" c="ZIEGLERVILLE"/>
<c n="Aldan" c="ALDAN"/>
<c n="Amity Gardens" c="AMITY GARDENS"/>
<c n="Aston" c="ASTON"/>
<c n="Bellefonte" c="BELLEFONTE"/>
<c n="Berlin Township" c="BERLIN TOWNSHIP"/>
<c n="Boothwyn" c="BOOTHWYN"/>
<c n="Bordentown Township" c="BORDENTOWN TOWNSHIP"/>
<c n="Brittany Farms-Highlands" c="BRITTANY FARMS-HIGHLANDS"/>
<c n="Brookside" c="BROOKSIDE"/>
<c n="Burlington Township" c="BURLINGTON TOWNSHIP"/>
<c n="Carneys Point Township" c="CARNEYS POINT TOWNSHIP"/>
<c n="Chesterbrook" c="CHESTERBROOK"/>
<c n="Chesterfield Township" c="CHESTERFIELD TOWNSHIP"/>
<c n="Churchville" c="CHURCHVILLE"/>
<c n="Cinnaminson" c="CINNAMINSON"/>
<c n="Cornwells Heights-Eddington" c="CORNWELLS HEIGHTS-EDDINGTON"/>
<c n="Delran" c="DELRAN"/>
<c n="Dennis" c="DENNIS"/>
<c n="Deptford Township" c="DEPTFORD TOWNSHIP"/>
<c n="East Fallowfield Township" c="EAST FALLOWFIELD TOWNSHIP"/>
<c n="East Norriton" c="EAST NORRITON"/>
<c n="East Windsor" c="EAST WINDSOR"/>
<c n="Eastampton Township" c="EASTAMPTON TOWNSHIP"/>
<c n="Edgemoor" c="EDGEMOOR"/>
<c n="Edgewater Park" c="EDGEWATER PARK"/>
<c n="Elsmere" c="ELSMERE"/>
<c n="Evesham Township" c="EVESHAM TOWNSHIP"/>
<c n="Ewing Township" c="EWING TOWNSHIP"/>
<c n="Flying Hills" c="FLYING HILLS"/>
<c n="Fountain Hill" c="FOUNTAIN HILL"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Fullerton" c="FULLERTON"/>
<c n="Galloway" c="GALLOWAY"/>
<c n="Glasgow" c="GLASGOW"/>
<c n="Gloucester Township" c="GLOUCESTER TOWNSHIP"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Greenwich Township" c="GREENWICH TOWNSHIP"/>
<c n="Haddon township" c="HADDON TOWNSHIP"/>
<c n="Hamilton Township" c="HAMILTON TOWNSHIP"/>
<c n="Hamilton Township" c="HAMILTON TOWNSHIP"/>
<c n="Harrison Township" c="HARRISON TOWNSHIP"/>
<c n="Haverford" c="HAVERFORD"/>
<c n="Hokendauqua" c="HOKENDAUQUA"/>
<c n="Honey Brook" c="HONEY BROOK"/>
<c n="Hopewell Township" c="HOPEWELL TOWNSHIP"/>
<c n="Kenilworth" c="KENILWORTH"/>
<c n="Laureldale" c="LAURELDALE"/>
<c n="Lawrence Township" c="LAWRENCE TOWNSHIP"/>
<c n="Lima" c="LIMA"/>
<c n="Lindenwold" c="LINDENWOLD"/>
<c n="Lionville-Marchwood" c="LIONVILLE-MARCHWOOD"/>
<c n="Logan Township" c="LOGAN TOWNSHIP"/>
<c n="Lower Township" c="LOWER TOWNSHIP"/>
<c n="Mansfield" c="MANSFIELD"/>
<c n="Maple Glen" c="MAPLE GLEN"/>
<c n="Middle Township" c="MIDDLE TOWNSHIP"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="Monroe Township" c="MONROE TOWNSHIP"/>
<c n="Nether Providence Township" c="NETHER PROVIDENCE TOWNSHIP"/>
<c n="New Britain" c="NEW BRITAIN"/>
<c n="New Hanover Township" c="NEW HANOVER TOWNSHIP"/>
<c n="Newport" c="NEWPORT"/>
<c n="Newtown Grant" c="NEWTOWN GRANT"/>
<c n="North Hanover Township" c="NORTH HANOVER TOWNSHIP"/>
<c n="North Star" c="NORTH STAR"/>
<c n="Palmer Heights" c="PALMER HEIGHTS"/>
<c n="Pemberton Township" c="PEMBERTON TOWNSHIP"/>
<c n="Penn Wynne" c="PENN WYNNE"/>
<c n="Penndel" c="PENNDEL"/>
<c n="Pennsville Township" c="PENNSVILLE TOWNSHIP"/>
<c n="Pike Creek" c="PIKE CREEK"/>
<c n="Pilesgrove" c="PILESGROVE"/>
<c n="Pittsgrove Township" c="PITTSGROVE TOWNSHIP"/>
<c n="Pottsgrove" c="POTTSGROVE"/>
<c n="Robbinsville" c="ROBBINSVILLE"/>
<c n="Sanatoga" c="SANATOGA"/>
<c n="Shillington" c="SHILLINGTON"/>
<c n="Sinking Spring" c="SINKING SPRING"/>
<c n="Southampton Township" c="SOUTHAMPTON TOWNSHIP"/>
<c n="St. Lawrence" c="ST. LAWRENCE"/>
<c n="Stockertown" c="STOCKERTOWN"/>
<c n="Tabernacle" c="TABERNACLE"/>
<c n="Tinicum Township" c="TINICUM TOWNSHIP"/>
<c n="Trappe" c="TRAPPE"/>
<c n="Trooper" c="TROOPER"/>
<c n="Trumbauersville" c="TRUMBAUERSVILLE"/>
<c n="Upper Deerfield Township" c="UPPER DEERFIELD TOWNSHIP"/>
<c n="Upper Providence Township" c="UPPER PROVIDENCE TOWNSHIP"/>
<c n="Washington Township" c="WASHINGTON TOWNSHIP"/>
<c n="Waterford" c="WATERFORD"/>
<c n="West Conshohocken" c="WEST CONSHOHOCKEN"/>
<c n="West Deptford" c="WEST DEPTFORD"/>
<c n="West Goshen" c="WEST GOSHEN"/>
<c n="West Norriton" c="WEST NORRITON"/>
<c n="West Windsor Township" c="WEST WINDSOR TOWNSHIP"/>
<c n="Westampton" c="WESTAMPTON"/>
<c n="Wilmington Manor" c="WILMINGTON MANOR"/>
<c n="Woodbourne" c="WOODBOURNE"/>
<c n="Woodside" c="WOODSIDE"/>
<c n="Woolwich Township" c="WOOLWICH TOWNSHIP"/>
<c n="Wyndmoor" c="WYNDMOOR"/>
<c n="Wyomissing" c="WYOMISSING"/>
<c n="Yardley" c="YARDLEY"/></dma>
    
    <dma code="508" title="Pittsburgh, PA">
<c n="McHenry" c="MCHENRY"/>
<c n="Oakland" c="OAKLAND"/>
<c n="Acme" c="ACME"/>
<c n="Adamsburg" c="ADAMSBURG"/>
<c n="Aleppo" c="ALEPPO"/>
<c n="Aliquippa" c="ALIQUIPPA"/>
<c n="Allison Park" c="ALLISON PARK"/>
<c n="Ambridge" c="AMBRIDGE"/>
<c n="Apollo" c="APOLLO"/>
<c n="Aultman" c="AULTMAN"/>
<c n="Baden" c="BADEN"/>
<c n="Beaver" c="BEAVER"/>
<c n="Beaver Falls" c="BEAVER FALLS"/>
<c n="North Belle Vernon" c="NORTH BELLE VERNON"/>
<c n="Bentleyville" c="BENTLEYVILLE"/>
<c n="Bessemer" c="BESSEMER"/>
<c n="Bethel Park" c="BETHEL PARK"/>
<c n="Blairsville" c="BLAIRSVILLE"/>
<c n="Bobtown" c="BOBTOWN"/>
<c n="Bovard" c="BOVARD"/>
<c n="Brackenridge" c="BRACKENRIDGE"/>
<c n="Braddock" c="BRADDOCK"/>
<c n="Branchton" c="BRANCHTON"/>
<c n="Bridgeville" c="BRIDGEVILLE"/>
<c n="Brownsville" c="BROWNSVILLE"/>
<c n="Burgettstown" c="BURGETTSTOWN"/>
<c n="Butler" c="BUTLER"/>
<c n="California" c="CALIFORNIA"/>
<c n="Canonsburg" c="CANONSBURG"/>
<c n="Carmichaels" c="CARMICHAELS"/>
<c n="Carnegie" c="CARNEGIE"/>
<c n="Champion" c="CHAMPION"/>
<c n="Cheswick" c="CHESWICK"/>
<c n="Clairton" c="CLAIRTON"/>
<c n="Clarion" c="CLARION"/>
<c n="Claysville" c="CLAYSVILLE"/>
<c n="Clinton" c="CLINTON"/>
<c n="Clymer" c="CLYMER"/>
<c n="Coal Center" c="COAL CENTER"/>
<c n="Commodore" c="COMMODORE"/>
<c n="Connellsville" c="CONNELLSVILLE"/>
<c n="Connoquenessing" c="CONNOQUENESSING"/>
<c n="Cooperstown" c="COOPERSTOWN"/>
<c n="Coraopolis" c="CORAOPOLIS"/>
<c n="Cranberry" c="CRANBERRY"/>
<c n="Cranberry Township" c="CRANBERRY TOWNSHIP"/>
<c n="Crown" c="CROWN"/>
<c n="Crucible" c="CRUCIBLE"/>
<c n="Curllsville" c="CURLLSVILLE"/>
<c n="Curtisville" c="CURTISVILLE"/>
<c n="Darlington" c="DARLINGTON"/>
<c n="Derry" c="DERRY"/>
<c n="Donora" c="DONORA"/>
<c n="Dravosburg" c="DRAVOSBURG"/>
<c n="Duquesne" c="DUQUESNE"/>
<c n="East Pittsburgh" c="EAST PITTSBURGH"/>
<c n="Eighty Four" c="EIGHTY FOUR"/>
<c n="Elizabeth" c="ELIZABETH"/>
<c n="Ellsworth" c="ELLSWORTH"/>
<c n="Ellwood City" c="ELLWOOD CITY"/>
<c n="Export" c="EXPORT"/>
<c n="Fayette City" c="FAYETTE CITY"/>
<c n="Fombell" c="FOMBELL"/>
<c n="Ford City" c="FORD CITY"/>
<c n="Foxburg" c="FOXBURG"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Fredericktown" c="FREDERICKTOWN"/>
<c n="Freedom" c="FREEDOM"/>
<c n="Freeport" c="FREEPORT"/>
<c n="Gastonville" c="GASTONVILLE"/>
<c n="Gibsonia" c="GIBSONIA"/>
<c n="Glassport" c="GLASSPORT"/>
<c n="Glenshaw" c="GLENSHAW"/>
<c n="Greensboro" c="GREENSBORO"/>
<c n="Greensburg" c="GREENSBURG"/>
<c n="Grindstone" c="GRINDSTONE"/>
<c n="Harmony" c="HARMONY"/>
<c n="Herminie" c="HERMINIE"/>
<c n="Hickory" c="HICKORY"/>
<c n="Homer City" c="HOMER CITY"/>
<c n="Homestead" c="HOMESTEAD"/>
<c n="Hookstown" c="HOOKSTOWN"/>
<c n="Houston" c="HOUSTON"/>
<c n="Hunker" c="HUNKER"/>
<c n="Hyde Park" c="HYDE PARK"/>
<c n="Imperial" c="IMPERIAL"/>
<c n="Indiana" c="INDIANA"/>
<c n="Indianola" c="INDIANOLA"/>
<c n="Industry" c="INDUSTRY"/>
<c n="Irwin" c="IRWIN"/>
<c n="Jeannette" c="JEANNETTE"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Jones Mills" c="JONES MILLS"/>
<c n="Karns City" c="KARNS CITY"/>
<c n="Kittanning" c="KITTANNING"/>
<c n="Knox" c="KNOX"/>
<c n="Latrobe" c="LATROBE"/>
<c n="Lawrence" c="LAWRENCE"/>
<c n="Leechburg" c="LEECHBURG"/>
<c n="Leetsdale" c="LEETSDALE"/>
<c n="Lemont Furnace" c="LEMONT FURNACE"/>
<c n="Ligonier" c="LIGONIER"/>
<c n="Mammoth" c="MAMMOTH"/>
<c n="Marianna" c="MARIANNA"/>
<c n="Marienville" c="MARIENVILLE"/>
<c n="Markleysburg" c="MARKLEYSBURG"/>
<c n="Mars" c="MARS"/>
<c n="Masontown" c="MASONTOWN"/>
<c n="McDonald" c="MCDONALD"/>
<c n="McKees Rocks" c="MCKEES ROCKS"/>
<c n="McKeesport" c="MCKEESPORT"/>
<c n="Meadow Lands" c="MEADOW LANDS"/>
<c n="Midland" c="MIDLAND"/>
<c n="Monaca" c="MONACA"/>
<c n="Monessen" c="MONESSEN"/>
<c n="Monongahela" c="MONONGAHELA"/>
<c n="Monroeville" c="MONROEVILLE"/>
<c n="Morgan" c="MORGAN"/>
<c n="Mount Pleasant" c="MOUNT PLEASANT"/>
<c n="Murrysville" c="MURRYSVILLE"/>
<c n="Natrona Heights" c="NATRONA HEIGHTS"/>
<c n="New Bedford" c="NEW BEDFORD"/>
<c n="New Bethlehem" c="NEW BETHLEHEM"/>
<c n="New Brighton" c="NEW BRIGHTON"/>
<c n="New Castle" c="NEW CASTLE"/>
<c n="New Kensington" c="NEW KENSINGTON"/>
<c n="New Wilmington" c="NEW WILMINGTON"/>
<c n="North Versailles" c="NORTH VERSAILLES"/>
<c n="Oak Ridge" c="OAK RIDGE"/>
<c n="Oakdale" c="OAKDALE"/>
<c n="Oakmont" c="OAKMONT"/>
<c n="Oil City" c="OIL CITY"/>
<c n="Parker" c="PARKER"/>
<c n="Penn Run" c="PENN RUN"/>
<c n="Perryopolis" c="PERRYOPOLIS"/>
<c n="Pittsburgh" c="PITTSBURGH"/>
<c n="Pleasantville" c="PLEASANTVILLE"/>
<c n="Portersville" c="PORTERSVILLE"/>
<c n="Rector" c="RECTOR"/>
<c n="Reno" c="RENO"/>
<c n="Rimersburg" c="RIMERSBURG"/>
<c n="Robinson Township" c="ROBINSON TOWNSHIP"/>
<c n="Rochester" c="ROCHESTER"/>
<c n="Russellton" c="RUSSELLTON"/>
<c n="Sarver" c="SARVER"/>
<c n="Saxonburg" c="SAXONBURG"/>
<c n="Scottdale" c="SCOTTDALE"/>
<c n="Seneca" c="SENECA"/>
<c n="Sewickley" c="SEWICKLEY"/>
<c n="Shippenville" c="SHIPPENVILLE"/>
<c n="Slickville" c="SLICKVILLE"/>
<c n="Sligo" c="SLIGO"/>
<c n="Slippery Rock" c="SLIPPERY ROCK"/>
<c n="Slovan" c="SLOVAN"/>
<c n="Spring Church" c="SPRING CHURCH"/>
<c n="Springdale Borough" c="SPRINGDALE BOROUGH"/>
<c n="Stahlstown" c="STAHLSTOWN"/>
<c n="Strattanville" c="STRATTANVILLE"/>
<c n="Tarentum" c="TARENTUM"/>
<c n="Tionesta" c="TIONESTA"/>
<c n="Trafford" c="TRAFFORD"/>
<c n="Turtle Creek" c="TURTLE CREEK"/>
<c n="Uniontown" c="UNIONTOWN"/>
<c n="Valencia" c="VALENCIA"/>
<c n="Vandergrift" c="VANDERGRIFT"/>
<c n="Venetia" c="VENETIA"/>
<c n="Venus" c="VENUS"/>
<c n="Verona" c="VERONA"/>
<c n="Warrendale" c="WARRENDALE"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Waynesburg" c="WAYNESBURG"/>
<c n="Webster" c="WEBSTER"/>
<c n="West Mifflin" c="WEST MIFFLIN"/>
<c n="West Newton" c="WEST NEWTON"/>
<c n="West Sunbury" c="WEST SUNBURY"/>
<c n="Wexford" c="WEXFORD"/>
<c n="Borough of Whitehall" c="BOROUGH OF WHITEHALL"/>
<c n="Whitney" c="WHITNEY"/>
<c n="Wilmerding" c="WILMERDING"/>
<c n="Wind Ridge" c="WIND RIDGE"/>
<c n="Youngstown" c="YOUNGSTOWN"/>
<c n="Youngwood" c="YOUNGWOOD"/>
<c n="Yukon" c="YUKON"/>
<c n="Zelienople" c="ZELIENOPLE"/>
<c n="Bruceton Mills" c="BRUCETON MILLS"/>
<c n="Granville" c="GRANVILLE"/>
<c n="Kingwood" c="KINGWOOD"/>
<c n="Morgantown" c="MORGANTOWN"/>
<c n="Tunnelton" c="TUNNELTON"/>
<c n="Baidland" c="BAIDLAND"/>
<c n="Baldwin" c="BALDWIN"/>
<c n="Bellevue" c="BELLEVUE"/>
<c n="Big Beaver" c="BIG BEAVER"/>
<c n="Brentwood" c="BRENTWOOD"/>
<c n="Cecil-Bishop" c="CECIL-BISHOP"/>
<c n="Charleroi" c="CHARLEROI"/>
<c n="Chicora" c="CHICORA"/>
<c n="Crafton" c="CRAFTON"/>
<c n="Delmont" c="DELMONT"/>
<c n="Economy" c="ECONOMY"/>
<c n="Forest Hills" c="FOREST HILLS"/>
<c n="Fox Chapel" c="FOX CHAPEL"/>
<c n="Franklin Park" c="FRANKLIN PARK"/>
<c n="Hampton Township" c="HAMPTON TOWNSHIP"/>
<c n="Homeacre-Lyndora" c="HOMEACRE-LYNDORA"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Lawson Heights" c="LAWSON HEIGHTS"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Lower Burrell" c="LOWER BURRELL"/>
<c n="Manor" c="MANOR"/>
<c n="McCandless Township" c="MCCANDLESS TOWNSHIP"/>
<c n="McGovern" c="MCGOVERN"/>
<c n="Peters Township" c="PETERS TOWNSHIP"/>
<c n="Meridian" c="MERIDIAN"/>
<c n="Moon Township" c="MOON TOWNSHIP"/>
<c n="Mount Lebanon" c="MOUNT LEBANON"/>
<c n="Munhall" c="MUNHALL"/>
<c n="Nixon" c="NIXON"/>
<c n="O Hara Township" c="O HARA TOWNSHIP"/>
<c n="Penn Hills" c="PENN HILLS"/>
<c n="Pleasant Hills" c="PLEASANT HILLS"/>
<c n="Plum" c="PLUM"/>
<c n="Reedsville" c="REEDSVILLE"/>
<c n="Ross Township" c="ROSS TOWNSHIP"/>
<c n="Scott Township" c="SCOTT TOWNSHIP"/>
<c n="Shanor-Northvue" c="SHANOR-NORTHVUE"/>
<c n="South Park Township" c="SOUTH PARK TOWNSHIP"/>
<c n="Swissvale" c="SWISSVALE"/>
<c n="Thompsonville" c="THOMPSONVILLE"/>
<c n="Upper St. Clair" c="UPPER ST. CLAIR"/>
<c n="White Oak" c="WHITE OAK"/>
<c n="Wilkinsburg" c="WILKINSBURG"/></dma>
    
    <dma code="516" title="Erie, PA">
<c n="Albion" c="ALBION"/>
<c n="Cambridge Springs" c="CAMBRIDGE SPRINGS"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Corry" c="CORRY"/>
<c n="Cranesville" c="CRANESVILLE"/>
<c n="Edinboro" c="EDINBORO"/>
<c n="Erie" c="ERIE"/>
<c n="Fairview" c="FAIRVIEW"/>
<c n="Girard" c="GIRARD"/>
<c n="Grand Valley" c="GRAND VALLEY"/>
<c n="Irvine" c="IRVINE"/>
<c n="Lake City" c="LAKE CITY"/>
<c n="McKean" c="MCKEAN"/>
<c n="Meadville" c="MEADVILLE"/>
<c n="North East" c="NORTH EAST"/>
<c n="Saegertown" c="SAEGERTOWN"/>
<c n="Spartansburg" c="SPARTANSBURG"/>
<c n="Titusville" c="TITUSVILLE"/>
<c n="Union City" c="UNION CITY"/>
<c n="Venango" c="VENANGO"/>
<c n="Warren" c="WARREN"/>
<c n="Waterford" c="WATERFORD"/>
<c n="Youngsville" c="YOUNGSVILLE"/>
<c n="Conneaut Lakeshore" c="CONNEAUT LAKESHORE"/>
<c n="Northwest Harborcreek" c="NORTHWEST HARBORCREEK"/></dma>
    
    <dma code="566" title="Harrisburg-Lancaster-York, PA">
<c n="Adamstown" c="ADAMSTOWN"/>
<c n="Akron" c="AKRON"/>
<c n="Annville" c="ANNVILLE"/>
<c n="Belleville" c="BELLEVILLE"/>
<c n="Bendersville" c="BENDERSVILLE"/>
<c n="Biglerville" c="BIGLERVILLE"/>
<c n="Blain" c="BLAIN"/>
<c n="Blue Ball" c="BLUE BALL"/>
<c n="Boiling Springs" c="BOILING SPRINGS"/>
<c n="Burnham" c="BURNHAM"/>
<c n="Camp Hill" c="CAMP HILL"/>
<c n="Campbelltown" c="CAMPBELLTOWN"/>
<c n="Carlisle" c="CARLISLE"/>
<c n="Chambersburg" c="CHAMBERSBURG"/>
<c n="Christiana" c="CHRISTIANA"/>
<c n="Cocolamus" c="COCOLAMUS"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Conestoga" c="CONESTOGA"/>
<c n="Cornwall" c="CORNWALL"/>
<c n="Dallastown" c="DALLASTOWN"/>
<c n="Dauphin" c="DAUPHIN"/>
<c n="Denver" c="DENVER"/>
<c n="Dillsburg" c="DILLSBURG"/>
<c n="Dover" c="DOVER"/>
<c n="Duncannon" c="DUNCANNON"/>
<c n="East Petersburg" c="EAST PETERSBURG"/>
<c n="Elizabethtown" c="ELIZABETHTOWN"/>
<c n="Elizabethville" c="ELIZABETHVILLE"/>
<c n="Emigsville" c="EMIGSVILLE"/>
<c n="Enola" c="ENOLA"/>
<c n="Ephrata" c="EPHRATA"/>
<c n="Etters" c="ETTERS"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Fawn Grove" c="FAWN GROVE"/>
<c n="Fredericksburg" c="FREDERICKSBURG"/>
<c n="Fort Loudon" c="FORT LOUDON"/>
<c n="Gap" c="GAP"/>
<c n="Gardners" c="GARDNERS"/>
<c n="Gettysburg" c="GETTYSBURG"/>
<c n="Glen Rock" c="GLEN ROCK"/>
<c n="Goodville" c="GOODVILLE"/>
<c n="Grantham" c="GRANTHAM"/>
<c n="Grantville" c="GRANTVILLE"/>
<c n="Gratz" c="GRATZ"/>
<c n="Greencastle" c="GREENCASTLE"/>
<c n="Halifax" c="HALIFAX"/>
<c n="Hanover" c="HANOVER"/>
<c n="Harrisburg" c="HARRISBURG"/>
<c n="Hershey" c="HERSHEY"/>
<c n="Hummelstown" c="HUMMELSTOWN"/>
<c n="Intercourse" c="INTERCOURSE"/>
<c n="Jonestown" c="JONESTOWN"/>
<c n="Kinzers" c="KINZERS"/>
<c n="Lampeter" c="LAMPETER"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Landisville" c="LANDISVILLE"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Lemoyne" c="LEMOYNE"/>
<c n="Leola" c="LEOLA"/>
<c n="Lewisberry" c="LEWISBERRY"/>
<c n="Lewistown" c="LEWISTOWN"/>
<c n="Lititz" c="LITITZ"/>
<c n="Littlestown" c="LITTLESTOWN"/>
<c n="Loysville" c="LOYSVILLE"/>
<c n="Lykens" c="LYKENS"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Manheim" c="MANHEIM"/>
<c n="Marietta" c="MARIETTA"/>
<c n="Marysville" c="MARYSVILLE"/>
<c n="McSherrystown" c="MCSHERRYSTOWN"/>
<c n="McVeytown" c="MCVEYTOWN"/>
<c n="Mechanicsburg" c="MECHANICSBURG"/>
<c n="Mercersburg" c="MERCERSBURG"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="Mifflin" c="MIFFLIN"/>
<c n="Mifflintown" c="MIFFLINTOWN"/>
<c n="Millersburg" c="MILLERSBURG"/>
<c n="Millersville" c="MILLERSVILLE"/>
<c n="Milroy" c="MILROY"/>
<c n="Mont Alto" c="MONT ALTO"/>
<c n="Mount Holly Springs" c="MOUNT HOLLY SPRINGS"/>
<c n="Mount Joy" c="MOUNT JOY"/>
<c n="Mountville" c="MOUNTVILLE"/>
<c n="Myerstown" c="MYERSTOWN"/>
<c n="Bloomfield" c="BLOOMFIELD"/>
<c n="New Cumberland" c="NEW CUMBERLAND"/>
<c n="New Freedom" c="NEW FREEDOM"/>
<c n="New Holland" c="NEW HOLLAND"/>
<c n="New Kingstown" c="NEW KINGSTOWN"/>
<c n="New Oxford" c="NEW OXFORD"/>
<c n="Newmanstown" c="NEWMANSTOWN"/>
<c n="Newport" c="NEWPORT"/>
<c n="Newville" c="NEWVILLE"/>
<c n="Orrstown" c="ORRSTOWN"/>
<c n="Orrtanna" c="ORRTANNA"/>
<c n="Palmyra" c="PALMYRA"/>
<c n="Paradise" c="PARADISE"/>
<c n="Peach Bottom" c="PEACH BOTTOM"/>
<c n="Peach Glen" c="PEACH GLEN"/>
<c n="Quarryville" c="QUARRYVILLE"/>
<c n="Railroad" c="RAILROAD"/>
<c n="Red Lion" c="RED LION"/>
<c n="Reinholds" c="REINHOLDS"/>
<c n="Rheems" c="RHEEMS"/>
<c n="Richfield" c="RICHFIELD"/>
<c n="Richland" c="RICHLAND"/>
<c n="Scotland" c="SCOTLAND"/>
<c n="Seven Valleys" c="SEVEN VALLEYS"/>
<c n="Shady Grove" c="SHADY GROVE"/>
<c n="Shippensburg" c="SHIPPENSBURG"/>
<c n="Shrewsbury" c="SHREWSBURY"/>
<c n="Smoketown" c="SMOKETOWN"/>
<c n="South Mountain" c="SOUTH MOUNTAIN"/>
<c n="Spring Grove" c="SPRING GROVE"/>
<c n="Stewartstown" c="STEWARTSTOWN"/>
<c n="Strasburg" c="STRASBURG"/>
<c n="Summerdale" c="SUMMERDALE"/>
<c n="Walnut Bottom" c="WALNUT BOTTOM"/>
<c n="Waynesboro" c="WAYNESBORO"/>
<c n="Williamstown" c="WILLIAMSTOWN"/>
<c n="Willow Hill" c="WILLOW HILL"/>
<c n="Willow Street" c="WILLOW STREET"/>
<c n="Wrightsville" c="WRIGHTSVILLE"/>
<c n="York" c="YORK"/>
<c n="York Haven" c="YORK HAVEN"/>
<c n="York Springs" c="YORK SPRINGS"/>
<c n="Bressler-Enhaut-Oberlin" c="BRESSLER-ENHAUT-OBERLIN"/>
<c n="Colonial Park" c="COLONIAL PARK"/>
<c n="East Berlin" c="EAST BERLIN"/>
<c n="East York" c="EAST YORK"/>
<c n="Ephrata Township" c="EPHRATA TOWNSHIP"/>
<c n="Fort Indiantown Gap" c="FORT INDIANTOWN GAP"/>
<c n="Grantley" c="GRANTLEY"/>
<c n="Hallam" c="HALLAM"/>
<c n="Highspire" c="HIGHSPIRE"/>
<c n="Lake Meade" c="LAKE MEADE"/>
<c n="Lawnton" c="LAWNTON"/>
<c n="Leacock-Leola-Bareville" c="LEACOCK-LEOLA-BAREVILLE"/>
<c n="Linglestown" c="LINGLESTOWN"/>
<c n="Lower Allen" c="LOWER ALLEN"/>
<c n="Mount Wolf" c="MOUNT WOLF"/>
<c n="New Salem Borough" c="NEW SALEM BOROUGH"/>
<c n="Parkville" c="PARKVILLE"/>
<c n="Paxtonia" c="PAXTONIA"/>
<c n="Port Royal" c="PORT ROYAL"/>
<c n="Progress" c="PROGRESS"/>
<c n="Rutherford" c="RUTHERFORD"/>
<c n="Salunga-Landisville" c="SALUNGA-LANDISVILLE"/>
<c n="Schlusser" c="SCHLUSSER"/>
<c n="Shiloh" c="SHILOH"/>
<c n="Shiremanstown" c="SHIREMANSTOWN"/>
<c n="Skyline View" c="SKYLINE VIEW"/>
<c n="Spry" c="SPRY"/>
<c n="Stonybrook" c="STONYBROOK"/>
<c n="Susquehanna Trails" c="SUSQUEHANNA TRAILS"/>
<c n="Valley Green" c="VALLEY GREEN"/>
<c n="Weigelstown" c="WEIGELSTOWN"/>
<c n="Wormleysburg" c="WORMLEYSBURG"/>
<c n="Yorklyn" c="YORKLYN"/></dma>
    
    <dma code="574" title="Johnstown-Altoona, PA">
<c n="Aaronsburg" c="AARONSBURG"/>
<c n="Addison" c="ADDISON"/>
<c n="Altoona" c="ALTOONA"/>
<c n="Anita" c="ANITA"/>
<c n="Bedford" c="BEDFORD"/>
<c n="Bellefonte" c="BELLEFONTE"/>
<c n="Bellwood" c="BELLWOOD"/>
<c n="Berlin" c="BERLIN"/>
<c n="Bigler" c="BIGLER"/>
<c n="Boalsburg" c="BOALSBURG"/>
<c n="Boswell" c="BOSWELL"/>
<c n="Breezewood" c="BREEZEWOOD"/>
<c n="Broad Top City" c="BROAD TOP CITY"/>
<c n="Brockport" c="BROCKPORT"/>
<c n="Brockway" c="BROCKWAY"/>
<c n="Brookville" c="BROOKVILLE"/>
<c n="Buffalo Mills" c="BUFFALO MILLS"/>
<c n="Byrnedale" c="BYRNEDALE"/>
<c n="Cairnbrook" c="CAIRNBROOK"/>
<c n="Carrolltown" c="CARROLLTOWN"/>
<c n="Central City" c="CENTRAL CITY"/>
<c n="Centre Hall" c="CENTRE HALL"/>
<c n="Claysburg" c="CLAYSBURG"/>
<c n="Clearfield" c="CLEARFIELD"/>
<c n="Confluence" c="CONFLUENCE"/>
<c n="Curwensville" c="CURWENSVILLE"/>
<c n="Davidsville" c="DAVIDSVILLE"/>
<c n="Du Bois" c="DU BOIS"/>
<c n="Duncansville" c="DUNCANSVILLE"/>
<c n="East Freedom" c="EAST FREEDOM"/>
<c n="Ebensburg" c="EBENSBURG"/>
<c n="Emporium" c="EMPORIUM"/>
<c n="Everett" c="EVERETT"/>
<c n="Ferndale" c="FERNDALE"/>
<c n="Fishertown" c="FISHERTOWN"/>
<c n="Friedens" c="FRIEDENS"/>
<c n="Hastings" c="HASTINGS"/>
<c n="Hollidaysburg" c="HOLLIDAYSBURG"/>
<c n="Hollsopple" c="HOLLSOPPLE"/>
<c n="Houtzdale" c="HOUTZDALE"/>
<c n="Howard" c="HOWARD"/>
<c n="Huntingdon" c="HUNTINGDON"/>
<c n="James City" c="JAMES CITY"/>
<c n="Jerome" c="JEROME"/>
<c n="Johnstown" c="JOHNSTOWN"/>
<c n="Lemont" c="LEMONT"/>
<c n="Loretto" c="LORETTO"/>
<c n="Loysburg" c="LOYSBURG"/>
<c n="Mahaffey" c="MAHAFFEY"/>
<c n="Meyersdale" c="MEYERSDALE"/>
<c n="Milesburg" c="MILESBURG"/>
<c n="Millheim" c="MILLHEIM"/>
<c n="Mount Union" c="MOUNT UNION"/>
<c n="Nanty Glo" c="NANTY GLO"/>
<c n="New Enterprise" c="NEW ENTERPRISE"/>
<c n="Northern Cambria" c="NORTHERN CAMBRIA"/>
<c n="Orbisonia" c="ORBISONIA"/>
<c n="Osceola Mills" c="OSCEOLA MILLS"/>
<c n="Patton" c="PATTON"/>
<c n="Petersburg" c="PETERSBURG"/>
<c n="Philipsburg" c="PHILIPSBURG"/>
<c n="Punxsutawney" c="PUNXSUTAWNEY"/>
<c n="Reynoldsville" c="REYNOLDSVILLE"/>
<c n="Ridgway" c="RIDGWAY"/>
<c n="Ringgold" c="RINGGOLD"/>
<c n="Roaring Spring" c="ROARING SPRING"/>
<c n="Rockhill" c="ROCKHILL"/>
<c n="Rockwood" c="ROCKWOOD"/>
<c n="Saxton" c="SAXTON"/>
<c n="Shanksville" c="SHANKSVILLE"/>
<c n="Sidman" c="SIDMAN"/>
<c n="Snow Shoe" c="SNOW SHOE"/>
<c n="Somerset" c="SOMERSET"/>
<c n="Spangler" c="SPANGLER"/>
<c n="Spring Mills" c="SPRING MILLS"/>
<c n="St. Marys" c="ST. MARYS"/>
<c n="Saint Michael" c="SAINT MICHAEL"/>
<c n="State College" c="STATE COLLEGE"/>
<c n="Tipton" c="TIPTON"/>
<c n="Tyrone" c="TYRONE"/>
<c n="University Park" c="UNIVERSITY PARK"/>
<c n="Vintondale" c="VINTONDALE"/>
<c n="Wallaceton" c="WALLACETON"/>
<c n="Warriors Mark" c="WARRIORS MARK"/>
<c n="West Decatur" c="WEST DECATUR"/>
<c n="Westover" c="WESTOVER"/>
<c n="Williamsburg" c="WILLIAMSBURG"/>
<c n="Wilmore" c="WILMORE"/>
<c n="Park Forest Village" c="PARK FOREST VILLAGE"/>
<c n="Portage" c="PORTAGE"/>
<c n="Westmont" c="WESTMONT"/>
<c n="Windber" c="WINDBER"/>
<c n="Zion" c="ZION"/></dma>
    
    <dma code="577" title="Wilkes Barre-Scranton, PA">
<c n="Archbald" c="ARCHBALD"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Athens" c="ATHENS"/>
<c n="Auburn" c="AUBURN"/>
<c n="Barnesville" c="BARNESVILLE"/>
<c n="Bartonsville" c="BARTONSVILLE"/>
<c n="Beavertown" c="BEAVERTOWN"/>
<c n="Benton" c="BENTON"/>
<c n="Berwick" c="BERWICK"/>
<c n="Bloomsburg" c="BLOOMSBURG"/>
<c n="Brodheadsville" c="BRODHEADSVILLE"/>
<c n="Canadensis" c="CANADENSIS"/>
<c n="Canton" c="CANTON"/>
<c n="Carbondale" c="CARBONDALE"/>
<c n="Catawissa" c="CATAWISSA"/>
<c n="Clarks Summit" c="CLARKS SUMMIT"/>
<c n="Coal Township" c="COAL TOWNSHIP"/>
<c n="Conyngham" c="CONYNGHAM"/>
<c n="Cresco" c="CRESCO"/>
<c n="Cressona" c="CRESSONA"/>
<c n="Dallas" c="DALLAS"/>
<c n="Danville" c="DANVILLE"/>
<c n="Delaware Water Gap" c="DELAWARE WATER GAP"/>
<c n="Dickson City" c="DICKSON CITY"/>
<c n="Dimock" c="DIMOCK"/>
<c n="Duryea" c="DURYEA"/>
<c n="Dushore" c="DUSHORE"/>
<c n="East Stroudsburg" c="EAST STROUDSBURG"/>
<c n="Elysburg" c="ELYSBURG"/>
<c n="Factoryville" c="FACTORYVILLE"/>
<c n="Forest City" c="FOREST CITY"/>
<c n="Frackville" c="FRACKVILLE"/>
<c n="Freeland" c="FREELAND"/>
<c n="Gillett" c="GILLETT"/>
<c n="Gowen City" c="GOWEN CITY"/>
<c n="Harveys Lake" c="HARVEYS LAKE"/>
<c n="Hawley" c="HAWLEY"/>
<c n="Hazleton" c="HAZLETON"/>
<c n="Hegins" c="HEGINS"/>
<c n="Herndon" c="HERNDON"/>
<c n="Honesdale" c="HONESDALE"/>
<c n="Hop Bottom" c="HOP BOTTOM"/>
<c n="Huntington Mills" c="HUNTINGTON MILLS"/>
<c n="Jermyn" c="JERMYN"/>
<c n="Jersey Shore" c="JERSEY SHORE"/>
<c n="Jessup" c="JESSUP"/>
<c n="Jim Thorpe" c="JIM THORPE"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Klingerstown" c="KLINGERSTOWN"/>
<c n="Kresgeville" c="KRESGEVILLE"/>
<c n="La Plume" c="LA PLUME"/>
<c n="Lairdsville" c="LAIRDSVILLE"/>
<c n="Lake Ariel" c="LAKE ARIEL"/>
<c n="Lansford" c="LANSFORD"/>
<c n="Laporte" c="LAPORTE"/>
<c n="Lehighton" c="LEHIGHTON"/>
<c n="Lehman" c="LEHMAN"/>
<c n="Lewisburg" c="LEWISBURG"/>
<c n="Lock Haven" c="LOCK HAVEN"/>
<c n="Mahanoy City" c="MAHANOY CITY"/>
<c n="Marlin" c="MARLIN"/>
<c n="Meshoppen" c="MESHOPPEN"/>
<c n="Middleburg" c="MIDDLEBURG"/>
<c n="Mifflinburg" c="MIFFLINBURG"/>
<c n="Milanville" c="MILANVILLE"/>
<c n="Mill Hall" c="MILL HALL"/>
<c n="Millville" c="MILLVILLE"/>
<c n="Milton" c="MILTON"/>
<c n="Minisink Hills" c="MINISINK HILLS"/>
<c n="Monroe" c="MONROE"/>
<c n="Montgomery" c="MONTGOMERY"/>
<c n="Montoursville" c="MONTOURSVILLE"/>
<c n="Montrose" c="MONTROSE"/>
<c n="Moosic" c="MOOSIC"/>
<c n="Moscow" c="MOSCOW"/>
<c n="Mount Carmel" c="MOUNT CARMEL"/>
<c n="Mount Pocono" c="MOUNT POCONO"/>
<c n="Mountain Top" c="MOUNTAIN TOP"/>
<c n="Mountainhome" c="MOUNTAINHOME"/>
<c n="Muncy" c="MUNCY"/>
<c n="Nanticoke" c="NANTICOKE"/>
<c n="Nesquehoning" c="NESQUEHONING"/>
<c n="New Berlin" c="NEW BERLIN"/>
<c n="New Philadelphia" c="NEW PHILADELPHIA"/>
<c n="Nicholson" c="NICHOLSON"/>
<c n="Northumberland" c="NORTHUMBERLAND"/>
<c n="Olyphant" c="OLYPHANT"/>
<c n="Orangeville" c="ORANGEVILLE"/>
<c n="Orwigsburg" c="ORWIGSBURG"/>
<c n="Palmerton" c="PALMERTON"/>
<c n="Paxinos" c="PAXINOS"/>
<c n="Peckville" c="PECKVILLE"/>
<c n="Pine Grove" c="PINE GROVE"/>
<c n="Pittston" c="PITTSTON"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Pocono Lake" c="POCONO LAKE"/>
<c n="Pocono Manor" c="POCONO MANOR"/>
<c n="Pottsville" c="POTTSVILLE"/>
<c n="Ralston" c="RALSTON"/>
<c n="Rebuck" c="REBUCK"/>
<c n="Rome" c="ROME"/>
<c n="Sacramento" c="SACRAMENTO"/>
<c n="Sayre" c="SAYRE"/>
<c n="Schuylkill Haven" c="SCHUYLKILL HAVEN"/>
<c n="Scotrun" c="SCOTRUN"/>
<c n="Scranton" c="SCRANTON"/>
<c n="Selinsgrove" c="SELINSGROVE"/>
<c n="Shamokin" c="SHAMOKIN"/>
<c n="Shamokin Dam" c="SHAMOKIN DAM"/>
<c n="Shavertown" c="SHAVERTOWN"/>
<c n="Shenandoah" c="SHENANDOAH"/>
<c n="Shickshinny" c="SHICKSHINNY"/>
<c n="South Canaan" c="SOUTH CANAAN"/>
<c n="Saint Clair" c="SAINT CLAIR"/>
<c n="Stroudsburg" c="STROUDSBURG"/>
<c n="Summit Hill" c="SUMMIT HILL"/>
<c n="Sunbury" c="SUNBURY"/>
<c n="Susquehanna" c="SUSQUEHANNA"/>
<c n="Swiftwater" c="SWIFTWATER"/>
<c n="Tamaqua" c="TAMAQUA"/>
<c n="Tannersville" c="TANNERSVILLE"/>
<c n="Tobyhanna" c="TOBYHANNA"/>
<c n="Towanda" c="TOWANDA"/>
<c n="Tower City" c="TOWER CITY"/>
<c n="Trevorton" c="TREVORTON"/>
<c n="Trout Run" c="TROUT RUN"/>
<c n="Troy" c="TROY"/>
<c n="Tunkhannock" c="TUNKHANNOCK"/>
<c n="Valley View" c="VALLEY VIEW"/>
<c n="Wapwallopen" c="WAPWALLOPEN"/>
<c n="Watsontown" c="WATSONTOWN"/>
<c n="Waymart" c="WAYMART"/>
<c n="Weatherly" c="WEATHERLY"/>
<c n="Wilkes-Barre" c="WILKES-BARRE"/>
<c n="Williamsport" c="WILLIAMSPORT"/>
<c n="Wyalusing" c="WYALUSING"/>
<c n="Wyoming" c="WYOMING"/>
<c n="Wysox" c="WYSOX"/>
<c n="Arlington Heights" c="ARLINGTON HEIGHTS"/>
<c n="Dunmore" c="DUNMORE"/>
<c n="Exeter" c="EXETER"/>
<c n="Mount Cobb" c="MOUNT COBB"/>
<c n="New Milford" c="NEW MILFORD"/>
<c n="Pocono Pines" c="POCONO PINES"/>
<c n="Renovo" c="RENOVO"/>
<c n="White Haven" c="WHITE HAVEN"/></dma>
    </state>
<state id="MI" full_name="Michigan">
    <dma code="505" title="Detroit, MI">
<c n="Algonac" c="ALGONAC"/>
<c n="Allen Park" c="ALLEN PARK"/>
<c n="Almont" c="ALMONT"/>
<c n="Ann Arbor" c="ANN ARBOR"/>
<c n="Applegate" c="APPLEGATE"/>
<c n="Armada" c="ARMADA"/>
<c n="Auburn Hills" c="AUBURN HILLS"/>
<c n="Avoca" c="AVOCA"/>
<c n="Azalia" c="AZALIA"/>
<c n="Belleville" c="BELLEVILLE"/>
<c n="Berkley" c="BERKLEY"/>
<c n="Birmingham" c="BIRMINGHAM"/>
<c n="Bloomfield Hills" c="BLOOMFIELD HILLS"/>
<c n="Bridgewater" c="BRIDGEWATER"/>
<c n="Brighton" c="BRIGHTON"/>
<c n="Brown City" c="BROWN CITY"/>
<c n="Canton Charter Township" c="CANTON CHARTER TOWNSHIP"/>
<c n="Capac" c="CAPAC"/>
<c n="Carleton" c="CARLETON"/>
<c n="Carsonville" c="CARSONVILLE"/>
<c n="Center Line" c="CENTER LINE"/>
<c n="Chelsea" c="CHELSEA"/>
<c n="Clarkston" c="CLARKSTON"/>
<c n="Clawson" c="CLAWSON"/>
<c n="Clifford" c="CLIFFORD"/>
<c n="Charter Township of Clinton" c="CHARTER TOWNSHIP OF CLINTON"/>
<c n="Columbiaville" c="COLUMBIAVILLE"/>
<c n="Commerce Township" c="COMMERCE TOWNSHIP"/>
<c n="Croswell" c="CROSWELL"/>
<c n="Davisburg" c="DAVISBURG"/>
<c n="Dearborn" c="DEARBORN"/>
<c n="Dearborn Heights" c="DEARBORN HEIGHTS"/>
<c n="Deckerville" c="DECKERVILLE"/>
<c n="Detroit" c="DETROIT"/>
<c n="Dexter" c="DEXTER"/>
<c n="Drayton Plains" c="DRAYTON PLAINS"/>
<c n="Dryden" c="DRYDEN"/>
<c n="Dundee" c="DUNDEE"/>
<c n="Charter Township of East China" c="CHARTER TOWNSHIP OF EAST CHINA"/>
<c n="Eastpointe" c="EASTPOINTE"/>
<c n="Ecorse" c="ECORSE"/>
<c n="Emmett" c="EMMETT"/>
<c n="Erie" c="ERIE"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Ferndale" c="FERNDALE"/>
<c n="Flat Rock" c="FLAT ROCK"/>
<c n="Fowlerville" c="FOWLERVILLE"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Fraser" c="FRASER"/>
<c n="Garden City" c="GARDEN CITY"/>
<c n="Goodells" c="GOODELLS"/>
<c n="Grosse Ile Township" c="GROSSE ILE TOWNSHIP"/>
<c n="Grosse Pointe" c="GROSSE POINTE"/>
<c n="Hamburg" c="HAMBURG"/>
<c n="Hamtramck" c="HAMTRAMCK"/>
<c n="Harper Woods" c="HARPER WOODS"/>
<c n="Harrison Charter Township" c="HARRISON CHARTER TOWNSHIP"/>
<c n="Harsens Island" c="HARSENS ISLAND"/>
<c n="Hartland" c="HARTLAND"/>
<c n="Hazel Park" c="HAZEL PARK"/>
<c n="Highland Township" c="HIGHLAND TOWNSHIP"/>
<c n="Highland Park" c="HIGHLAND PARK"/>
<c n="Holly" c="HOLLY"/>
<c n="Howell" c="HOWELL"/>
<c n="Huntington Woods" c="HUNTINGTON WOODS"/>
<c n="Ida" c="IDA"/>
<c n="Imlay City" c="IMLAY CITY"/>
<c n="Inkster" c="INKSTER"/>
<c n="Jeddo" c="JEDDO"/>
<c n="Keego Harbor" c="KEEGO HARBOR"/>
<c n="Lake Orion" c="LAKE ORION"/>
<c n="Lakeville" c="LAKEVILLE"/>
<c n="Lambertville" c="LAMBERTVILLE"/>
<c n="Lapeer" c="LAPEER"/>
<c n="Leonard" c="LEONARD"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Lincoln Park" c="LINCOLN PARK"/>
<c n="Livonia" c="LIVONIA"/>
<c n="Luna Pier" c="LUNA PIER"/>
<c n="Macomb" c="MACOMB"/>
<c n="Madison Heights" c="MADISON HEIGHTS"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Marine City" c="MARINE CITY"/>
<c n="Marlette" c="MARLETTE"/>
<c n="Marysville" c="MARYSVILLE"/>
<c n="Maybee" c="MAYBEE"/>
<c n="Melvindale" c="MELVINDALE"/>
<c n="Memphis" c="MEMPHIS"/>
<c n="Metamora" c="METAMORA"/>
<c n="Milan" c="MILAN"/>
<c n="Milford" c="MILFORD"/>
<c n="Minden City" c="MINDEN CITY"/>
<c n="Monroe" c="MONROE"/>
<c n="Mount Clemens" c="MOUNT CLEMENS"/>
<c n="New Baltimore" c="NEW BALTIMORE"/>
<c n="New Boston" c="NEW BOSTON"/>
<c n="New Haven" c="NEW HAVEN"/>
<c n="New Hudson" c="NEW HUDSON"/>
<c n="Newport" c="NEWPORT"/>
<c n="North Branch" c="NORTH BRANCH"/>
<c n="Northville" c="NORTHVILLE"/>
<c n="Novi" c="NOVI"/>
<c n="Oak Park" c="OAK PARK"/>
<c n="Ortonville" c="ORTONVILLE"/>
<c n="Whiteford" c="WHITEFORD"/>
<c n="Oxford" c="OXFORD"/>
<c n="Peck" c="PECK"/>
<c n="Petersburg" c="PETERSBURG"/>
<c n="Pinckney" c="PINCKNEY"/>
<c n="Pleasant Ridge" c="PLEASANT RIDGE"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Pontiac" c="PONTIAC"/>
<c n="Port Huron" c="PORT HURON"/>
<c n="Port Sanilac" c="PORT SANILAC"/>
<c n="Redford Charter Township" c="REDFORD CHARTER TOWNSHIP"/>
<c n="Richmond" c="RICHMOND"/>
<c n="River Rouge" c="RIVER ROUGE"/>
<c n="Rochester" c="ROCHESTER"/>
<c n="Rockwood" c="ROCKWOOD"/>
<c n="Romeo" c="ROMEO"/>
<c n="Romulus" c="ROMULUS"/>
<c n="Roseville" c="ROSEVILLE"/>
<c n="Royal Oak" c="ROYAL OAK"/>
<c n="Saline" c="SALINE"/>
<c n="Sandusky" c="SANDUSKY"/>
<c n="Smiths Creek" c="SMITHS CREEK"/>
<c n="South Lyon" c="SOUTH LYON"/>
<c n="Southfield" c="SOUTHFIELD"/>
<c n="Southgate" c="SOUTHGATE"/>
<c n="St. Clair" c="ST. CLAIR"/>
<c n="Saint Clair Shores" c="SAINT CLAIR SHORES"/>
<c n="Sterling Heights" c="STERLING HEIGHTS"/>
<c n="Taylor" c="TAYLOR"/>
<c n="Temperance" c="TEMPERANCE"/>
<c n="Trenton" c="TRENTON"/>
<c n="Troy" c="TROY"/>
<c n="Utica" c="UTICA"/>
<c n="Walled Lake" c="WALLED LAKE"/>
<c n="Warren" c="WARREN"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Waterford Township" c="WATERFORD TOWNSHIP"/>
<c n="Wayne" c="WAYNE"/>
<c n="West Bloomfield Township" c="WEST BLOOMFIELD TOWNSHIP"/>
<c n="Westland" c="WESTLAND"/>
<c n="White Lake Township" c="WHITE LAKE TOWNSHIP"/>
<c n="Whitmore Lake" c="WHITMORE LAKE"/>
<c n="Willis" c="WILLIS"/>
<c n="Wixom" c="WIXOM"/>
<c n="Wyandotte" c="WYANDOTTE"/>
<c n="Yale" c="YALE"/>
<c n="Ypsilanti" c="YPSILANTI"/>
<c n="Ann Arbor Charter Township" c="ANN ARBOR CHARTER TOWNSHIP"/>
<c n="Augusta Charter township" c="AUGUSTA CHARTER TOWNSHIP"/>
<c n="Beverly Hills" c="BEVERLY HILLS"/>
<c n="Bloomfield Township" c="BLOOMFIELD TOWNSHIP"/>
<c n="Brandon Township" c="BRANDON TOWNSHIP"/>
<c n="Brownstown Charter Township" c="BROWNSTOWN CHARTER TOWNSHIP"/>
<c n="Farmington Hills" c="FARMINGTON HILLS"/>
<c n="Fort Gratiot Township" c="FORT GRATIOT TOWNSHIP"/>
<c n="Frenchtown Charter Township" c="FRENCHTOWN CHARTER TOWNSHIP"/>
<c n="Grosse Pointe Farms" c="GROSSE POINTE FARMS"/>
<c n="Grosse Pointe Park" c="GROSSE POINTE PARK"/>
<c n="Grosse Pointe Woods" c="GROSSE POINTE WOODS"/>
<c n="Huron Charter Township" c="HURON CHARTER TOWNSHIP"/>
<c n="Independence Township" c="INDEPENDENCE TOWNSHIP"/>
<c n="Lyon Township" c="LYON TOWNSHIP"/>
<c n="Milford Township" c="MILFORD TOWNSHIP"/>
<c n="Monroe Charter Township" c="MONROE CHARTER TOWNSHIP"/>
<c n="Oakland Charter Township" c="OAKLAND CHARTER TOWNSHIP"/>
<c n="Orion Township" c="ORION TOWNSHIP"/>
<c n="Oxford Charter Township" c="OXFORD CHARTER TOWNSHIP"/>
<c n="Pittsfield Charter Township" c="PITTSFIELD CHARTER TOWNSHIP"/>
<c n="Plymouth Charter Township" c="PLYMOUTH CHARTER TOWNSHIP"/>
<c n="Riverview" c="RIVERVIEW"/>
<c n="Rochester Hills" c="ROCHESTER HILLS"/>
<c n="Shelby Township" c="SHELBY TOWNSHIP"/>
<c n="Springfield Township" c="SPRINGFIELD TOWNSHIP"/>
<c n="Van Buren Charter Township" c="VAN BUREN CHARTER TOWNSHIP"/>
<c n="Woodhaven" c="WOODHAVEN"/>
<c n="York Charter Township" c="YORK CHARTER TOWNSHIP"/>
<c n="Ypsilanti Township" c="YPSILANTI TOWNSHIP"/></dma>
    
    <dma code="513" title="Flint-Saginaw-Bay City, MI">
<c n="Alger" c="ALGER"/>
<c n="Alma" c="ALMA"/>
<c n="Ashley" c="ASHLEY"/>
<c n="Au Gres" c="AU GRES"/>
<c n="Auburn" c="AUBURN"/>
<c n="Bad Axe" c="BAD AXE"/>
<c n="Bay City" c="BAY CITY"/>
<c n="Beaverton" c="BEAVERTON"/>
<c n="Bentley" c="BENTLEY"/>
<c n="Birch Run" c="BIRCH RUN"/>
<c n="Blanchard" c="BLANCHARD"/>
<c n="Breckenridge" c="BRECKENRIDGE"/>
<c n="Bridgeport" c="BRIDGEPORT"/>
<c n="Burton" c="BURTON"/>
<c n="Byron" c="BYRON"/>
<c n="Caro" c="CARO"/>
<c n="Caseville" c="CASEVILLE"/>
<c n="Cass City" c="CASS CITY"/>
<c n="Chesaning" c="CHESANING"/>
<c n="City of Clio" c="CITY OF CLIO"/>
<c n="Coleman" c="COLEMAN"/>
<c n="Corunna" c="CORUNNA"/>
<c n="Davison" c="DAVISON"/>
<c n="Durand" c="DURAND"/>
<c n="East Tawas" c="EAST TAWAS"/>
<c n="Essexville" c="ESSEXVILLE"/>
<c n="Fenton" c="FENTON"/>
<c n="Flint" c="FLINT"/>
<c n="Flushing" c="FLUSHING"/>
<c n="Frankenmuth" c="FRANKENMUTH"/>
<c n="Freeland" c="FREELAND"/>
<c n="Genesee Township" c="GENESEE TOWNSHIP"/>
<c n="Gladwin" c="GLADWIN"/>
<c n="Goodrich" c="GOODRICH"/>
<c n="Grand Blanc" c="GRAND BLANC"/>
<c n="Hale" c="HALE"/>
<c n="Harbor Beach" c="HARBOR BEACH"/>
<c n="Hemlock" c="HEMLOCK"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Ithaca" c="ITHACA"/>
<c n="Kawkawlin" c="KAWKAWLIN"/>
<c n="Kinde" c="KINDE"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Laingsburg" c="LAINGSBURG"/>
<c n="Linden" c="LINDEN"/>
<c n="Linwood" c="LINWOOD"/>
<c n="Mayville" c="MAYVILLE"/>
<c n="Merrill" c="MERRILL"/>
<c n="Middleton" c="MIDDLETON"/>
<c n="Midland" c="MIDLAND"/>
<c n="Millington" c="MILLINGTON"/>
<c n="City of Montrose" c="CITY OF MONTROSE"/>
<c n="Morrice" c="MORRICE"/>
<c n="Mount Morris" c="MOUNT MORRIS"/>
<c n="Mount Pleasant" c="MOUNT PLEASANT"/>
<c n="New Lothrop" c="NEW LOTHROP"/>
<c n="Oscoda" c="OSCODA"/>
<c n="Otisville" c="OTISVILLE"/>
<c n="Owendale" c="OWENDALE"/>
<c n="Owosso" c="OWOSSO"/>
<c n="Perry" c="PERRY"/>
<c n="Pigeon" c="PIGEON"/>
<c n="Pinconning" c="PINCONNING"/>
<c n="Port Hope" c="PORT HOPE"/>
<c n="Prescott" c="PRESCOTT"/>
<c n="Reese" c="REESE"/>
<c n="Rose City" c="ROSE CITY"/>
<c n="Rosebush" c="ROSEBUSH"/>
<c n="Saginaw" c="SAGINAW"/>
<c n="Sanford" c="SANFORD"/>
<c n="Sebewaing" c="SEBEWAING"/>
<c n="Shepherd" c="SHEPHERD"/>
<c n="St. Charles" c="ST. CHARLES"/>
<c n="St. Louis" c="ST. LOUIS"/>
<c n="Standish" c="STANDISH"/>
<c n="Sterling" c="STERLING"/>
<c n="Swartz Creek" c="SWARTZ CREEK"/>
<c n="Tawas City" c="TAWAS CITY"/>
<c n="Twining" c="TWINING"/>
<c n="Ubly" c="UBLY"/>
<c n="University Center" c="UNIVERSITY CENTER"/>
<c n="Vassar" c="VASSAR"/>
<c n="Vernon" c="VERNON"/>
<c n="Weidman" c="WEIDMAN"/>
<c n="West Branch" c="WEST BRANCH"/>
<c n="Whittemore" c="WHITTEMORE"/>
<c n="Bridgeport Charter Township" c="BRIDGEPORT CHARTER TOWNSHIP"/>
<c n="Buena Vista Charter Township" c="BUENA VISTA CHARTER TOWNSHIP"/>
<c n="Fenton Township" c="FENTON TOWNSHIP"/>
<c n="Flint Township" c="FLINT TOWNSHIP"/>
<c n="Flushing Township" c="FLUSHING TOWNSHIP"/>
<c n="Grand Blanc Township" c="GRAND BLANC TOWNSHIP"/>
<c n="Monitor Township" c="MONITOR TOWNSHIP"/>
<c n="Mount Morris Township" c="MOUNT MORRIS TOWNSHIP"/>
<c n="Oscoda" c="OSCODA"/>
<c n="Saginaw Charter Township" c="SAGINAW CHARTER TOWNSHIP"/>
<c n="Thomas Township" c="THOMAS TOWNSHIP"/>
<c n="Tittabawassee Township" c="TITTABAWASSEE TOWNSHIP"/>
<c n="Union Charter Township" c="UNION CHARTER TOWNSHIP"/>
<c n="Vienna Charter Township" c="VIENNA CHARTER TOWNSHIP"/></dma>
    
    <dma code="540" title="Traverse City-Cadillac, MI">
<c n="Alanson" c="ALANSON"/>
<c n="Alba" c="ALBA"/>
<c n="Atlanta" c="ATLANTA"/>
<c n="Baldwin" c="BALDWIN"/>
<c n="Bay Shore" c="BAY SHORE"/>
<c n="Bear Lake" c="BEAR LAKE"/>
<c n="Beaver Island" c="BEAVER ISLAND"/>
<c n="Bellaire" c="BELLAIRE"/>
<c n="Benzonia" c="BENZONIA"/>
<c n="Beulah" c="BEULAH"/>
<c n="Big Rapids" c="BIG RAPIDS"/>
<c n="Boyne City" c="BOYNE CITY"/>
<c n="Boyne Falls" c="BOYNE FALLS"/>
<c n="Brethren" c="BRETHREN"/>
<c n="Brimley" c="BRIMLEY"/>
<c n="Cadillac" c="CADILLAC"/>
<c n="Cedarville" c="CEDARVILLE"/>
<c n="Central Lake" c="CENTRAL LAKE"/>
<c n="Charlevoix" c="CHARLEVOIX"/>
<c n="Cheboygan" c="CHEBOYGAN"/>
<c n="Custer" c="CUSTER"/>
<c n="East Jordan" c="EAST JORDAN"/>
<c n="Elk Rapids" c="ELK RAPIDS"/>
<c n="Ellsworth" c="ELLSWORTH"/>
<c n="Evart" c="EVART"/>
<c n="Fairview" c="FAIRVIEW"/>
<c n="Fife Lake" c="FIFE LAKE"/>
<c n="Frankfort" c="FRANKFORT"/>
<c n="Gaylord" c="GAYLORD"/>
<c n="Glen Arbor" c="GLEN ARBOR"/>
<c n="Grawn" c="GRAWN"/>
<c n="Grayling" c="GRAYLING"/>
<c n="Harbor Springs" c="HARBOR SPRINGS"/>
<c n="Harrison" c="HARRISON"/>
<c n="Houghton Lake" c="HOUGHTON LAKE"/>
<c n="Indian River" c="INDIAN RIVER"/>
<c n="Interlochen" c="INTERLOCHEN"/>
<c n="Johannesburg" c="JOHANNESBURG"/>
<c n="Kalkaska" c="KALKASKA"/>
<c n="Kingsley" c="KINGSLEY"/>
<c n="Lake City" c="LAKE CITY"/>
<c n="Leland" c="LELAND"/>
<c n="Le Roy" c="LE ROY"/>
<c n="Lewiston" c="LEWISTON"/>
<c n="Ludington" c="LUDINGTON"/>
<c n="Mackinac Island" c="MACKINAC ISLAND"/>
<c n="Mackinaw City" c="MACKINAW CITY"/>
<c n="Mancelona" c="MANCELONA"/>
<c n="Manistee" c="MANISTEE"/>
<c n="Manton" c="MANTON"/>
<c n="Maple City" c="MAPLE CITY"/>
<c n="Marion" c="MARION"/>
<c n="McBain" c="MCBAIN"/>
<c n="Mesick" c="MESICK"/>
<c n="Mio" c="MIO"/>
<c n="Morley" c="MORLEY"/>
<c n="Northport" c="NORTHPORT"/>
<c n="Onaway" c="ONAWAY"/>
<c n="Paradise" c="PARADISE"/>
<c n="Paris" c="PARIS"/>
<c n="Pellston" c="PELLSTON"/>
<c n="Petoskey" c="PETOSKEY"/>
<c n="Pickford" c="PICKFORD"/>
<c n="Pointe Aux Pins" c="POINTE AUX PINS"/>
<c n="Rapid City" c="RAPID CITY"/>
<c n="Reed City" c="REED CITY"/>
<c n="Remus" c="REMUS"/>
<c n="Rogers City" c="ROGERS CITY"/>
<c n="Roscommon" c="ROSCOMMON"/>
<c n="Rudyard" c="RUDYARD"/>
<c n="Sault Ste. Marie" c="SAULT STE. MARIE"/>
<c n="Scottville" c="SCOTTVILLE"/>
<c n="Sears" c="SEARS"/>
<c n="Suttons Bay" c="SUTTONS BAY"/>
<c n="Traverse City" c="TRAVERSE CITY"/>
<c n="Tustin" c="TUSTIN"/>
<c n="Vanderbilt" c="VANDERBILT"/>
<c n="Walloon Lake" c="WALLOON LAKE"/>
<c n="Wolverine" c="WOLVERINE"/>
<c n="Briley" c="BRILEY"/>
<c n="Denton Township" c="DENTON TOWNSHIP"/>
<c n="Garfield Township" c="GARFIELD TOWNSHIP"/>
<c n="Roscommon Township" c="ROSCOMMON TOWNSHIP"/></dma>
    
    <dma code="551" title="Lansing, MI">
<c n="Bath Township" c="BATH TOWNSHIP"/>
<c n="Brooklyn" c="BROOKLYN"/>
<c n="Camden" c="CAMDEN"/>
<c n="Charlotte" c="CHARLOTTE"/>
<c n="Concord" c="CONCORD"/>
<c n="Dansville" c="DANSVILLE"/>
<c n="DeWitt" c="DEWITT"/>
<c n="Dimondale" c="DIMONDALE"/>
<c n="East Lansing" c="EAST LANSING"/>
<c n="Eaton Rapids" c="EATON RAPIDS"/>
<c n="Elsie" c="ELSIE"/>
<c n="Fowler" c="FOWLER"/>
<c n="Grand Ledge" c="GRAND LEDGE"/>
<c n="Grass Lake" c="GRASS LAKE"/>
<c n="Hanover" c="HANOVER"/>
<c n="Haslett" c="HASLETT"/>
<c n="Hillsdale" c="HILLSDALE"/>
<c n="Holt" c="HOLT"/>
<c n="Horton" c="HORTON"/>
<c n="Jackson" c="JACKSON"/>
<c n="Jonesville" c="JONESVILLE"/>
<c n="Lansing" c="LANSING"/>
<c n="Leslie" c="LESLIE"/>
<c n="Litchfield" c="LITCHFIELD"/>
<c n="Mason" c="MASON"/>
<c n="Michigan Center" c="MICHIGAN CENTER"/>
<c n="Napoleon" c="NAPOLEON"/>
<c n="North Adams" c="NORTH ADAMS"/>
<c n="Okemos" c="OKEMOS"/>
<c n="Olivet" c="OLIVET"/>
<c n="Onondaga" c="ONONDAGA"/>
<c n="Osseo" c="OSSEO"/>
<c n="Ovid" c="OVID"/>
<c n="Parma" c="PARMA"/>
<c n="Pittsford" c="PITTSFORD"/>
<c n="Potterville" c="POTTERVILLE"/>
<c n="Reading" c="READING"/>
<c n="Spring Arbor" c="SPRING ARBOR"/>
<c n="Springport" c="SPRINGPORT"/>
<c n="St. Johns" c="ST. JOHNS"/>
<c n="Stockbridge" c="STOCKBRIDGE"/>
<c n="Vermontville" c="VERMONTVILLE"/>
<c n="Waldron" c="WALDRON"/>
<c n="Webberville" c="WEBBERVILLE"/>
<c n="Williamston" c="WILLIAMSTON"/>
<c n="Blackman" c="BLACKMAN"/>
<c n="Delhi Charter Township" c="DELHI CHARTER TOWNSHIP"/>
<c n="Delta Township" c="DELTA TOWNSHIP"/>
<c n="DeWitt" c="DEWITT"/>
<c n="Grass Lake Charter Township" c="GRASS LAKE CHARTER TOWNSHIP"/>
<c n="Leoni Township" c="LEONI TOWNSHIP"/>
<c n="Meridian Charter Township" c="MERIDIAN CHARTER TOWNSHIP"/>
<c n="Spring Arbor Township" c="SPRING ARBOR TOWNSHIP"/>
<c n="Summit Township" c="SUMMIT TOWNSHIP"/>
<c n="Westphalia" c="WESTPHALIA"/>
<c n="Windsor Charter Township" c="WINDSOR CHARTER TOWNSHIP"/></dma>
    
    <dma code="553" title="Marquette, MI">
<c n="Baraga" c="BARAGA"/>
<c n="Bergland" c="BERGLAND"/>
<c n="Calumet" c="CALUMET"/>
<c n="Chatham" c="CHATHAM"/>
<c n="Copper Harbor" c="COPPER HARBOR"/>
<c n="Cornell" c="CORNELL"/>
<c n="Crystal Falls" c="CRYSTAL FALLS"/>
<c n="Dollar Bay" c="DOLLAR BAY"/>
<c n="Escanaba" c="ESCANABA"/>
<c n="Foster City" c="FOSTER CITY"/>
<c n="Gladstone" c="GLADSTONE"/>
<c n="Gwinn" c="GWINN"/>
<c n="Hancock" c="HANCOCK"/>
<c n="Houghton" c="HOUGHTON"/>
<c n="Iron Mountain" c="IRON MOUNTAIN"/>
<c n="Iron River" c="IRON RIVER"/>
<c n="Ishpeming" c="ISHPEMING"/>
<c n="Kingsford" c="KINGSFORD"/>
<c n="Lake Linden" c="LAKE LINDEN"/>
<c n="L Anse" c="L ANSE"/>
<c n="Manistique" c="MANISTIQUE"/>
<c n="Marquette Township" c="MARQUETTE TOWNSHIP"/>
<c n="Munising" c="MUNISING"/>
<c n="Negaunee" c="NEGAUNEE"/>
<c n="Norway" c="NORWAY"/>
<c n="Ontonagon" c="ONTONAGON"/>
<c n="Pelkie" c="PELKIE"/>
<c n="Quinnesec" c="QUINNESEC"/>
<c n="Rapid River" c="RAPID RIVER"/>
<c n="Sagola" c="SAGOLA"/>
<c n="Skandia" c="SKANDIA"/>
<c n="Stambaugh" c="STAMBAUGH"/>
<c n="Portage Township" c="PORTAGE TOWNSHIP"/></dma>
    
    <dma code="563" title="Grand Rapids-Kalamazoo, MI">
<c n="Ada Township" c="ADA TOWNSHIP"/>
<c n="Albion" c="ALBION"/>
<c n="Allegan" c="ALLEGAN"/>
<c n="Allendale" c="ALLENDALE"/>
<c n="Alto" c="ALTO"/>
<c n="Augusta" c="AUGUSTA"/>
<c n="Bangor" c="BANGOR"/>
<c n="Battle Creek" c="BATTLE CREEK"/>
<c n="Belding" c="BELDING"/>
<c n="Belmont" c="BELMONT"/>
<c n="Bloomingdale" c="BLOOMINGDALE"/>
<c n="Bronson" c="BRONSON"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Burnips" c="BURNIPS"/>
<c n="Burr Oak" c="BURR OAK"/>
<c n="Byron Center" c="BYRON CENTER"/>
<c n="Caledonia" c="CALEDONIA"/>
<c n="Carson City" c="CARSON CITY"/>
<c n="Cedar Springs" c="CEDAR SPRINGS"/>
<c n="Centreville" c="CENTREVILLE"/>
<c n="Clarksville" c="CLARKSVILLE"/>
<c n="Climax" c="CLIMAX"/>
<c n="Coldwater" c="COLDWATER"/>
<c n="Colon" c="COLON"/>
<c n="Comstock Park" c="COMSTOCK PARK"/>
<c n="Conklin" c="CONKLIN"/>
<c n="Constantine" c="CONSTANTINE"/>
<c n="Coopersville" c="COOPERSVILLE"/>
<c n="Covert" c="COVERT"/>
<c n="Crystal" c="CRYSTAL"/>
<c n="Decatur" c="DECATUR"/>
<c n="Delton" c="DELTON"/>
<c n="Dorr" c="DORR"/>
<c n="Douglas" c="DOUGLAS"/>
<c n="Edmore" c="EDMORE"/>
<c n="Fennville" c="FENNVILLE"/>
<c n="Ferrysburg" c="FERRYSBURG"/>
<c n="Freeport" c="FREEPORT"/>
<c n="Fremont" c="FREMONT"/>
<c n="Fruitport" c="FRUITPORT"/>
<c n="Galesburg" c="GALESBURG"/>
<c n="Gobles" c="GOBLES"/>
<c n="Grand Haven" c="GRAND HAVEN"/>
<c n="Grand Junction" c="GRAND JUNCTION"/>
<c n="Grand Rapids" c="GRAND RAPIDS"/>
<c n="Grandville" c="GRANDVILLE"/>
<c n="Grant" c="GRANT"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Hart" c="HART"/>
<c n="Hartford" c="HARTFORD"/>
<c n="Hastings" c="HASTINGS"/>
<c n="Hesperia" c="HESPERIA"/>
<c n="Hickory Corners" c="HICKORY CORNERS"/>
<c n="Holland" c="HOLLAND"/>
<c n="Holton" c="HOLTON"/>
<c n="Homer" c="HOMER"/>
<c n="Hopkins" c="HOPKINS"/>
<c n="Howard City" c="HOWARD CITY"/>
<c n="Hudsonville" c="HUDSONVILLE"/>
<c n="Ionia" c="IONIA"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Jenison" c="JENISON"/>
<c n="Kalamazoo" c="KALAMAZOO"/>
<c n="Kent City" c="KENT CITY"/>
<c n="Lake Odessa" c="LAKE ODESSA"/>
<c n="Lakeview" c="LAKEVIEW"/>
<c n="Lawrence" c="LAWRENCE"/>
<c n="Leonidas" c="LEONIDAS"/>
<c n="Lowell" c="LOWELL"/>
<c n="Marne" c="MARNE"/>
<c n="Marshall" c="MARSHALL"/>
<c n="Martin" c="MARTIN"/>
<c n="Mattawan" c="MATTAWAN"/>
<c n="Mendon" c="MENDON"/>
<c n="Middleville" c="MIDDLEVILLE"/>
<c n="Moline" c="MOLINE"/>
<c n="Montague" c="MONTAGUE"/>
<c n="Muskegon" c="MUSKEGON"/>
<c n="Nashville" c="NASHVILLE"/>
<c n="New Era" c="NEW ERA"/>
<c n="Newaygo" c="NEWAYGO"/>
<c n="Nottawa" c="NOTTAWA"/>
<c n="Nunica" c="NUNICA"/>
<c n="Otsego" c="OTSEGO"/>
<c n="Paw Paw" c="PAW PAW"/>
<c n="Pentwater" c="PENTWATER"/>
<c n="Pewamo" c="PEWAMO"/>
<c n="Plainwell" c="PLAINWELL"/>
<c n="Portage" c="PORTAGE"/>
<c n="Portland" c="PORTLAND"/>
<c n="Pullman" c="PULLMAN"/>
<c n="Quincy" c="QUINCY"/>
<c n="Ravenna" c="RAVENNA"/>
<c n="Richland" c="RICHLAND"/>
<c n="Rockford" c="ROCKFORD"/>
<c n="Sand Lake" c="SAND LAKE"/>
<c n="Saranac" c="SARANAC"/>
<c n="Saugatuck" c="SAUGATUCK"/>
<c n="Schoolcraft" c="SCHOOLCRAFT"/>
<c n="Shelby" c="SHELBY"/>
<c n="Sidney" c="SIDNEY"/>
<c n="Six Lakes" c="SIX LAKES"/>
<c n="South Haven" c="SOUTH HAVEN"/>
<c n="Sparta" c="SPARTA"/>
<c n="Spring Lake" c="SPRING LAKE"/>
<c n="Stanton" c="STANTON"/>
<c n="Sturgis" c="STURGIS"/>
<c n="Tekonsha" c="TEKONSHA"/>
<c n="Three Rivers" c="THREE RIVERS"/>
<c n="Twin Lake" c="TWIN LAKE"/>
<c n="Union City" c="UNION CITY"/>
<c n="Vicksburg" c="VICKSBURG"/>
<c n="Walkerville" c="WALKERVILLE"/>
<c n="Wayland" c="WAYLAND"/>
<c n="White Cloud" c="WHITE CLOUD"/>
<c n="White Pigeon" c="WHITE PIGEON"/>
<c n="Whitehall" c="WHITEHALL"/>
<c n="Zeeland" c="ZEELAND"/>
<c n="Allendale Charter Township" c="ALLENDALE CHARTER TOWNSHIP"/>
<c n="Beechwood" c="BEECHWOOD"/>
<c n="Comstock Township" c="COMSTOCK TOWNSHIP"/>
<c n="East Grand Rapids" c="EAST GRAND RAPIDS"/>
<c n="Egelston Township" c="EGELSTON TOWNSHIP"/>
<c n="Emmett Charter Township" c="EMMETT CHARTER TOWNSHIP"/>
<c n="Forest Hills" c="FOREST HILLS"/>
<c n="Fruitport Charter township" c="FRUITPORT CHARTER TOWNSHIP"/>
<c n="Gaines Township" c="GAINES TOWNSHIP"/>
<c n="Georgetown Township" c="GEORGETOWN TOWNSHIP"/>
<c n="Grand Rapids Charter Township" c="GRAND RAPIDS CHARTER TOWNSHIP"/>
<c n="Kalamazoo" c="KALAMAZOO"/>
<c n="Kentwood" c="KENTWOOD"/>
<c n="Lawton" c="LAWTON"/>
<c n="Lowell Township" c="LOWELL TOWNSHIP"/>
<c n="Muskegon Township" c="MUSKEGON TOWNSHIP"/>
<c n="Norton Shores" c="NORTON SHORES"/>
<c n="Plainfield Township" c="PLAINFIELD TOWNSHIP"/>
<c n="Texas Charter Township" c="TEXAS CHARTER TOWNSHIP"/>
<c n="Walker" c="WALKER"/>
<c n="Wyoming" c="WYOMING"/>
<c n="Zeeland Charter Township" c="ZEELAND CHARTER TOWNSHIP"/></dma>
    
    <dma code="583" title="Alpena, MI">
<c n="Alpena" c="ALPENA"/>
<c n="Barton City" c="BARTON CITY"/>
<c n="Greenbush" c="GREENBUSH"/>
<c n="Harrisville" c="HARRISVILLE"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Mikado" c="MIKADO"/>
<c n="Spruce" c="SPRUCE"/></dma>
    </state>
<state id="NH" full_name="New Hampshire">
    <dma code="506" title="Boston, MA-Manchester, NH">
<c n="Abington" c="ABINGTON"/>
<c n="Acton" c="ACTON"/>
<c n="Allston" c="ALLSTON"/>
<c n="Amesbury" c="AMESBURY"/>
<c n="Andover" c="ANDOVER"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Arlington Heights" c="ARLINGTON HEIGHTS"/>
<c n="Ashburnham" c="ASHBURNHAM"/>
<c n="Ashby" c="ASHBY"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Athol" c="ATHOL"/>
<c n="Auburn" c="AUBURN"/>
<c n="Auburndale" c="AUBURNDALE"/>
<c n="Avon" c="AVON"/>
<c n="Ayer" c="AYER"/>
<c n="Babson Park" c="BABSON PARK"/>
<c n="Baldwinville" c="BALDWINVILLE"/>
<c n="Barnstable" c="BARNSTABLE"/>
<c n="Barre" c="BARRE"/>
<c n="Bedford" c="BEDFORD"/>
<c n="Bellingham" c="BELLINGHAM"/>
<c n="Belmont" c="BELMONT"/>
<c n="Berlin" c="BERLIN"/>
<c n="Beverly" c="BEVERLY"/>
<c n="Billerica" c="BILLERICA"/>
<c n="Blackstone" c="BLACKSTONE"/>
<c n="Bolton" c="BOLTON"/>
<c n="Boston" c="BOSTON"/>
<c n="Boxborough" c="BOXBOROUGH"/>
<c n="Boxford" c="BOXFORD"/>
<c n="Boylston" c="BOYLSTON"/>
<c n="Braintree" c="BRAINTREE"/>
<c n="Brewster" c="BREWSTER"/>
<c n="Bridgewater" c="BRIDGEWATER"/>
<c n="Brighton" c="BRIGHTON"/>
<c n="Brockton" c="BROCKTON"/>
<c n="Brookfield" c="BROOKFIELD"/>
<c n="Brookline" c="BROOKLINE"/>
<c n="Brookline Village" c="BROOKLINE VILLAGE"/>
<c n="Bryantville" c="BRYANTVILLE"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Buzzards Bay" c="BUZZARDS BAY"/>
<c n="Byfield" c="BYFIELD"/>
<c n="Cambridge" c="CAMBRIDGE"/>
<c n="Canton" c="CANTON"/>
<c n="Carlisle" c="CARLISLE"/>
<c n="Carver" c="CARVER"/>
<c n="Cataumet" c="CATAUMET"/>
<c n="Centerville" c="CENTERVILLE"/>
<c n="Charlestown" c="CHARLESTOWN"/>
<c n="Charlton" c="CHARLTON"/>
<c n="Charlton City" c="CHARLTON CITY"/>
<c n="Chatham" c="CHATHAM"/>
<c n="Chelmsford" c="CHELMSFORD"/>
<c n="Chelsea" c="CHELSEA"/>
<c n="Cherry Valley" c="CHERRY VALLEY"/>
<c n="Chestnut Hill" c="CHESTNUT HILL"/>
<c n="Chilmark" c="CHILMARK"/>
<c n="Clinton" c="CLINTON"/>
<c n="Cohasset" c="COHASSET"/>
<c n="Concord" c="CONCORD"/>
<c n="Cotuit" c="COTUIT"/>
<c n="Cummaquid" c="CUMMAQUID"/>
<c n="Danvers" c="DANVERS"/>
<c n="Dedham" c="DEDHAM"/>
<c n="Dennis" c="DENNIS"/>
<c n="Douglas" c="DOUGLAS"/>
<c n="Dover" c="DOVER"/>
<c n="Dracut" c="DRACUT"/>
<c n="Dudley" c="DUDLEY"/>
<c n="Dunstable" c="DUNSTABLE"/>
<c n="Duxbury" c="DUXBURY"/>
<c n="East Boston" c="EAST BOSTON"/>
<c n="East Bridgewater" c="EAST BRIDGEWATER"/>
<c n="East Dennis" c="EAST DENNIS"/>
<c n="East Falmouth" c="EAST FALMOUTH"/>
<c n="East Orleans" c="EAST ORLEANS"/>
<c n="East Templeton" c="EAST TEMPLETON"/>
<c n="East Walpole" c="EAST WALPOLE"/>
<c n="Eastham" c="EASTHAM"/>
<c n="Edgartown" c="EDGARTOWN"/>
<c n="Essex" c="ESSEX"/>
<c n="Everett" c="EVERETT"/>
<c n="Falmouth" c="FALMOUTH"/>
<c n="Fayville" c="FAYVILLE"/>
<c n="Fitchburg" c="FITCHBURG"/>
<c n="Foxborough" c="FOXBOROUGH"/>
<c n="Framingham" c="FRAMINGHAM"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Gardner" c="GARDNER"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Gilbertville" c="GILBERTVILLE"/>
<c n="Gloucester" c="GLOUCESTER"/>
<c n="Grafton" c="GRAFTON"/>
<c n="Green Harbor-Cedar Crest" c="GREEN HARBOR-CEDAR CREST"/>
<c n="Greenbush" c="GREENBUSH"/>
<c n="Groton" c="GROTON"/>
<c n="Groveland" c="GROVELAND"/>
<c n="Halifax" c="HALIFAX"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Hanover" c="HANOVER"/>
<c n="Hanscom Air Force Base" c="HANSCOM AIR FORCE BASE"/>
<c n="Hanson" c="HANSON"/>
<c n="Hardwick" c="HARDWICK"/>
<c n="Harvard" c="HARVARD"/>
<c n="Harwich" c="HARWICH"/>
<c n="Harwich Port" c="HARWICH PORT"/>
<c n="Haverhill" c="HAVERHILL"/>
<c n="Hingham" c="HINGHAM"/>
<c n="Holbrook" c="HOLBROOK"/>
<c n="Holden" c="HOLDEN"/>
<c n="Holliston" c="HOLLISTON"/>
<c n="Hopedale" c="HOPEDALE"/>
<c n="Hopkinton" c="HOPKINTON"/>
<c n="Hubbardston" c="HUBBARDSTON"/>
<c n="Hudson" c="HUDSON"/>
<c n="Hull" c="HULL"/>
<c n="Hyannis" c="HYANNIS"/>
<c n="Hyde Park" c="HYDE PARK"/>
<c n="Ipswich" c="IPSWICH"/>
<c n="Jamaica Plain" c="JAMAICA PLAIN"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Lakeville" c="LAKEVILLE"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Lawrence" c="LAWRENCE"/>
<c n="Leicester" c="LEICESTER"/>
<c n="Leominster" c="LEOMINSTER"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Linwood" c="LINWOOD"/>
<c n="Littleton" c="LITTLETON"/>
<c n="Lowell" c="LOWELL"/>
<c n="Lunenburg" c="LUNENBURG"/>
<c n="Lynn" c="LYNN"/>
<c n="Lynnfield" c="LYNNFIELD"/>
<c n="Malden" c="MALDEN"/>
<c n="Manchaug" c="MANCHAUG"/>
<c n="Manchester-by-the-Sea" c="MANCHESTER-BY-THE-SEA"/>
<c n="Manomet" c="MANOMET"/>
<c n="Marblehead" c="MARBLEHEAD"/>
<c n="Marion" c="MARION"/>
<c n="Marlborough" c="MARLBOROUGH"/>
<c n="Marshfield" c="MARSHFIELD"/>
<c n="Marstons Mills" c="MARSTONS MILLS"/>
<c n="Mashpee" c="MASHPEE"/>
<c n="Mattapan" c="MATTAPAN"/>
<c n="Mattapoisett" c="MATTAPOISETT"/>
<c n="Maynard" c="MAYNARD"/>
<c n="Medfield" c="MEDFIELD"/>
<c n="Medford" c="MEDFORD"/>
<c n="Medway" c="MEDWAY"/>
<c n="Melrose" c="MELROSE"/>
<c n="Mendon" c="MENDON"/>
<c n="Merrimac" c="MERRIMAC"/>
<c n="Methuen" c="METHUEN"/>
<c n="Middleborough" c="MIDDLEBOROUGH"/>
<c n="Middleton" c="MIDDLETON"/>
<c n="Milford" c="MILFORD"/>
<c n="Millbury" c="MILLBURY"/>
<c n="Millis" c="MILLIS"/>
<c n="Millville" c="MILLVILLE"/>
<c n="Milton" c="MILTON"/>
<c n="Nahant" c="NAHANT"/>
<c n="Nantucket" c="NANTUCKET"/>
<c n="Natick" c="NATICK"/>
<c n="Needham" c="NEEDHAM"/>
<c n="Needham Heights" c="NEEDHAM HEIGHTS"/>
<c n="Newbury" c="NEWBURY"/>
<c n="Newburyport" c="NEWBURYPORT"/>
<c n="Newton" c="NEWTON"/>
<c n="Newton Centre" c="NEWTON CENTRE"/>
<c n="Newton Highlands" c="NEWTON HIGHLANDS"/>
<c n="Newton Lower Falls" c="NEWTON LOWER FALLS"/>
<c n="Newton Upper Falls" c="NEWTON UPPER FALLS"/>
<c n="Newtonville" c="NEWTONVILLE"/>
<c n="Norfolk" c="NORFOLK"/>
<c n="North Andover" c="NORTH ANDOVER"/>
<c n="North Billerica" c="NORTH BILLERICA"/>
<c n="North Brookfield" c="NORTH BROOKFIELD"/>
<c n="North Chelmsford" c="NORTH CHELMSFORD"/>
<c n="North Grafton" c="NORTH GRAFTON"/>
<c n="North Oxford" c="NORTH OXFORD"/>
<c n="North Reading" c="NORTH READING"/>
<c n="North Scituate" c="NORTH SCITUATE"/>
<c n="North Truro" c="NORTH TRURO"/>
<c n="Northborough" c="NORTHBOROUGH"/>
<c n="Northbridge" c="NORTHBRIDGE"/>
<c n="Norwell" c="NORWELL"/>
<c n="Norwood" c="NORWOOD"/>
<c n="Oak Bluffs" c="OAK BLUFFS"/>
<c n="Oakham" c="OAKHAM"/>
<c n="Orleans" c="ORLEANS"/>
<c n="Osterville" c="OSTERVILLE"/>
<c n="Oxford" c="OXFORD"/>
<c n="Paxton" c="PAXTON"/>
<c n="Peabody" c="PEABODY"/>
<c n="Pembroke" c="PEMBROKE"/>
<c n="Pepperell" c="PEPPERELL"/>
<c n="Petersham" c="PETERSHAM"/>
<c n="Pinehurst" c="PINEHURST"/>
<c n="Plainville" c="PLAINVILLE"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Pocasset" c="POCASSET"/>
<c n="Prides Crossing" c="PRIDES CROSSING"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Provincetown" c="PROVINCETOWN"/>
<c n="Quincy" c="QUINCY"/>
<c n="Randolph" c="RANDOLPH"/>
<c n="Reading" c="READING"/>
<c n="Revere" c="REVERE"/>
<c n="Rochester" c="ROCHESTER"/>
<c n="Rockland" c="ROCKLAND"/>
<c n="Rockport" c="ROCKPORT"/>
<c n="Roslindale" c="ROSLINDALE"/>
<c n="Rowley" c="ROWLEY"/>
<c n="Rutland" c="RUTLAND"/>
<c n="Sagamore" c="SAGAMORE"/>
<c n="Sagamore Beach" c="SAGAMORE BEACH"/>
<c n="Salem" c="SALEM"/>
<c n="Salisbury" c="SALISBURY"/>
<c n="Sandwich" c="SANDWICH"/>
<c n="Saugus" c="SAUGUS"/>
<c n="Scituate" c="SCITUATE"/>
<c n="Sharon" c="SHARON"/>
<c n="Sherborn" c="SHERBORN"/>
<c n="Shirley" c="SHIRLEY"/>
<c n="Shrewsbury" c="SHREWSBURY"/>
<c n="Siasconset" c="SIASCONSET"/>
<c n="Somerville" c="SOMERVILLE"/>
<c n="South Hamilton" c="SOUTH HAMILTON"/>
<c n="South Lancaster" c="SOUTH LANCASTER"/>
<c n="South Walpole" c="SOUTH WALPOLE"/>
<c n="South Yarmouth" c="SOUTH YARMOUTH"/>
<c n="Southborough" c="SOUTHBOROUGH"/>
<c n="Southbridge" c="SOUTHBRIDGE"/>
<c n="Spencer" c="SPENCER"/>
<c n="Sterling" c="STERLING"/>
<c n="Stoneham" c="STONEHAM"/>
<c n="Stoughton" c="STOUGHTON"/>
<c n="Stow" c="STOW"/>
<c n="Sturbridge" c="STURBRIDGE"/>
<c n="Sudbury" c="SUDBURY"/>
<c n="Sutton" c="SUTTON"/>
<c n="Swampscott" c="SWAMPSCOTT"/>
<c n="Templeton" c="TEMPLETON"/>
<c n="Tewksbury" c="TEWKSBURY"/>
<c n="Topsfield" c="TOPSFIELD"/>
<c n="Townsend" c="TOWNSEND"/>
<c n="Truro" c="TRURO"/>
<c n="Tyngsboro" c="TYNGSBORO"/>
<c n="Upton" c="UPTON"/>
<c n="Uxbridge" c="UXBRIDGE"/>
<c n="Village of Nagog Woods" c="VILLAGE OF NAGOG WOODS"/>
<c n="Vineyard Haven" c="VINEYARD HAVEN"/>
<c n="Waban" c="WABAN"/>
<c n="Wakefield" c="WAKEFIELD"/>
<c n="Walpole" c="WALPOLE"/>
<c n="Waltham" c="WALTHAM"/>
<c n="Wareham" c="WAREHAM"/>
<c n="Warren" c="WARREN"/>
<c n="Watertown" c="WATERTOWN"/>
<c n="Wayland" c="WAYLAND"/>
<c n="Webster" c="WEBSTER"/>
<c n="Wellesley" c="WELLESLEY"/>
<c n="Wellfleet" c="WELLFLEET"/>
<c n="Wenham" c="WENHAM"/>
<c n="West Barnstable" c="WEST BARNSTABLE"/>
<c n="West Boylston" c="WEST BOYLSTON"/>
<c n="West Bridgewater" c="WEST BRIDGEWATER"/>
<c n="West Dennis" c="WEST DENNIS"/>
<c n="West Falmouth" c="WEST FALMOUTH"/>
<c n="West Medford" c="WEST MEDFORD"/>
<c n="West Newbury" c="WEST NEWBURY"/>
<c n="West Newton" c="WEST NEWTON"/>
<c n="West Roxbury" c="WEST ROXBURY"/>
<c n="West Tisbury" c="WEST TISBURY"/>
<c n="West Townsend" c="WEST TOWNSEND"/>
<c n="West Wareham" c="WEST WAREHAM"/>
<c n="West Warren" c="WEST WARREN"/>
<c n="West Yarmouth" c="WEST YARMOUTH"/>
<c n="Westborough" c="WESTBOROUGH"/>
<c n="Westford" c="WESTFORD"/>
<c n="Westminster" c="WESTMINSTER"/>
<c n="Weston" c="WESTON"/>
<c n="Westwood" c="WESTWOOD"/>
<c n="Weymouth" c="WEYMOUTH"/>
<c n="Whitinsville" c="WHITINSVILLE"/>
<c n="Whitman" c="WHITMAN"/>
<c n="Wilmington" c="WILMINGTON"/>
<c n="Winchendon" c="WINCHENDON"/>
<c n="Winchester" c="WINCHESTER"/>
<c n="Winthrop" c="WINTHROP"/>
<c n="Woburn" c="WOBURN"/>
<c n="Woods Hole" c="WOODS HOLE"/>
<c n="Worcester" c="WORCESTER"/>
<c n="Wrentham" c="WRENTHAM"/>
<c n="Yarmouth Port" c="YARMOUTH PORT"/>
<c n="Alstead" c="ALSTEAD"/>
<c n="Alton" c="ALTON"/>
<c n="Alton Bay" c="ALTON BAY"/>
<c n="Amherst" c="AMHERST"/>
<c n="Andover" c="ANDOVER"/>
<c n="Antrim" c="ANTRIM"/>
<c n="Atkinson" c="ATKINSON"/>
<c n="Auburn" c="AUBURN"/>
<c n="Barnstead" c="BARNSTEAD"/>
<c n="Barrington" c="BARRINGTON"/>
<c n="Bedford" c="BEDFORD"/>
<c n="Belmont" c="BELMONT"/>
<c n="Bennington" c="BENNINGTON"/>
<c n="Bow" c="BOW"/>
<c n="Bradford" c="BRADFORD"/>
<c n="Brookline" c="BROOKLINE"/>
<c n="Candia" c="CANDIA"/>
<c n="Canterbury" c="CANTERBURY"/>
<c n="Center Barnstead" c="CENTER BARNSTEAD"/>
<c n="Center Harbor" c="CENTER HARBOR"/>
<c n="Center Strafford" c="CENTER STRAFFORD"/>
<c n="Chester" c="CHESTER"/>
<c n="Chesterfield" c="CHESTERFIELD"/>
<c n="Chichester" c="CHICHESTER"/>
<c n="Concord" c="CONCORD"/>
<c n="Contoocook" c="CONTOOCOOK"/>
<c n="Danbury" c="DANBURY"/>
<c n="Danville" c="DANVILLE"/>
<c n="Deerfield" c="DEERFIELD"/>
<c n="Derry" c="DERRY"/>
<c n="Dover" c="DOVER"/>
<c n="Dublin" c="DUBLIN"/>
<c n="Dunbarton" c="DUNBARTON"/>
<c n="Town of Durham" c="TOWN OF DURHAM"/>
<c n="East Derry" c="EAST DERRY"/>
<c n="East Hampstead" c="EAST HAMPSTEAD"/>
<c n="East Kingston" c="EAST KINGSTON"/>
<c n="Epping" c="EPPING"/>
<c n="Epsom" c="EPSOM"/>
<c n="Exeter" c="EXETER"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Fitzwilliam" c="FITZWILLIAM"/>
<c n="Francestown" c="FRANCESTOWN"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Fremont" c="FREMONT"/>
<c n="Gilford" c="GILFORD"/>
<c n="Gilsum" c="GILSUM"/>
<c n="Goffstown" c="GOFFSTOWN"/>
<c n="Greenfield" c="GREENFIELD"/>
<c n="Town of Greenland" c="TOWN OF GREENLAND"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Hampstead" c="HAMPSTEAD"/>
<c n="Town of Hampton" c="TOWN OF HAMPTON"/>
<c n="Hampton Falls" c="HAMPTON FALLS"/>
<c n="Hancock" c="HANCOCK"/>
<c n="Harrisville" c="HARRISVILLE"/>
<c n="Henniker" c="HENNIKER"/>
<c n="Hill" c="HILL"/>
<c n="Hillsboro" c="HILLSBORO"/>
<c n="Hinsdale" c="HINSDALE"/>
<c n="Hollis" c="HOLLIS"/>
<c n="Hooksett" c="HOOKSETT"/>
<c n="Hudson" c="HUDSON"/>
<c n="Jaffrey" c="JAFFREY"/>
<c n="Keene" c="KEENE"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Laconia" c="LACONIA"/>
<c n="Litchfield" c="LITCHFIELD"/>
<c n="Londonderry" c="LONDONDERRY"/>
<c n="Loudon" c="LOUDON"/>
<c n="Lyndeborough" c="LYNDEBOROUGH"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Marlborough" c="MARLBOROUGH"/>
<c n="Marlow" c="MARLOW"/>
<c n="Meredith" c="MEREDITH"/>
<c n="Merrimack" c="MERRIMACK"/>
<c n="Milford" c="MILFORD"/>
<c n="Milton" c="MILTON"/>
<c n="Milton Mills" c="MILTON MILLS"/>
<c n="Mont Vernon" c="MONT VERNON"/>
<c n="Nashua" c="NASHUA"/>
<c n="New Boston" c="NEW BOSTON"/>
<c n="New Castle" c="NEW CASTLE"/>
<c n="New Durham" c="NEW DURHAM"/>
<c n="New Hampton" c="NEW HAMPTON"/>
<c n="New Ipswich" c="NEW IPSWICH"/>
<c n="New London" c="NEW LONDON"/>
<c n="Newbury" c="NEWBURY"/>
<c n="Newfields" c="NEWFIELDS"/>
<c n="Newmarket" c="NEWMARKET"/>
<c n="North Hampton" c="NORTH HAMPTON"/>
<c n="North Salem" c="NORTH SALEM"/>
<c n="North Walpole" c="NORTH WALPOLE"/>
<c n="Northwood" c="NORTHWOOD"/>
<c n="Nottingham" c="NOTTINGHAM"/>
<c n="Pelham" c="PELHAM"/>
<c n="Peterborough" c="PETERBOROUGH"/>
<c n="Pittsfield" c="PITTSFIELD"/>
<c n="Plaistow" c="PLAISTOW"/>
<c n="Portsmouth" c="PORTSMOUTH"/>
<c n="Raymond" c="RAYMOND"/>
<c n="Rindge" c="RINDGE"/>
<c n="Rochester" c="ROCHESTER"/>
<c n="Rollinsford" c="ROLLINSFORD"/>
<c n="Rye" c="RYE"/>
<c n="Rye Beach" c="RYE BEACH"/>
<c n="Salem" c="SALEM"/>
<c n="Sanbornton" c="SANBORNTON"/>
<c n="Seabrook" c="SEABROOK"/>
<c n="Somersworth" c="SOMERSWORTH"/>
<c n="Spofford" c="SPOFFORD"/>
<c n="Stoddard" c="STODDARD"/>
<c n="Strafford" c="STRAFFORD"/>
<c n="Stratham" c="STRATHAM"/>
<c n="Sullivan" c="SULLIVAN"/>
<c n="Suncook" c="SUNCOOK"/>
<c n="Swanzey" c="SWANZEY"/>
<c n="Temple" c="TEMPLE"/>
<c n="Tilton" c="TILTON"/>
<c n="Troy" c="TROY"/>
<c n="Walpole" c="WALPOLE"/>
<c n="Warner" c="WARNER"/>
<c n="Weare" c="WEARE"/>
<c n="West Chesterfield" c="WEST CHESTERFIELD"/>
<c n="West Swanzey" c="WEST SWANZEY"/>
<c n="Westmoreland" c="WESTMORELAND"/>
<c n="Wilmot" c="WILMOT"/>
<c n="Wilton" c="WILTON"/>
<c n="Winchester" c="WINCHESTER"/>
<c n="Windham" c="WINDHAM"/>
<c n="Winnisquam" c="WINNISQUAM"/>
<c n="Bellows Falls" c="BELLOWS FALLS"/>
<c n="Brattleboro" c="BRATTLEBORO"/>
<c n="Grafton" c="GRAFTON"/>
<c n="Jacksonville" c="JACKSONVILLE"/>
<c n="Londonderry" c="LONDONDERRY"/>
<c n="Marlboro" c="MARLBORO"/>
<c n="Newfane" c="NEWFANE"/>
<c n="Putney" c="PUTNEY"/>
<c n="Saxtons River" c="SAXTONS RIVER"/>
<c n="South Londonderry" c="SOUTH LONDONDERRY"/>
<c n="Townshend" c="TOWNSHEND"/>
<c n="Vernon" c="VERNON"/>
<c n="Wardsboro" c="WARDSBORO"/>
<c n="West Dover" c="WEST DOVER"/>
<c n="West Halifax" c="WEST HALIFAX"/>
<c n="West Townshend" c="WEST TOWNSHEND"/>
<c n="Westminster" c="WESTMINSTER"/>
<c n="Westminster Station" c="WESTMINSTER STATION"/>
<c n="Wilmington" c="WILMINGTON"/>
<c n="Andover" c="ANDOVER"/>
<c n="Ayer" c="AYER"/>
<c n="Barre" c="BARRE"/>
<c n="Bellingham" c="BELLINGHAM"/>
<c n="Bourne" c="BOURNE"/>
<c n="Boxford" c="BOXFORD"/>
<c n="Brattleboro" c="BRATTLEBORO"/>
<c n="Brentwood" c="BRENTWOOD"/>
<c n="Brewster" c="BREWSTER"/>
<c n="Bridgewater" c="BRIDGEWATER"/>
<c n="Chatham" c="CHATHAM"/>
<c n="Clinton" c="CLINTON"/>
<c n="Dennis" c="DENNIS"/>
<c n="Derry" c="DERRY"/>
<c n="Fort Devens" c="FORT DEVENS"/>
<c n="Dover" c="DOVER"/>
<c n="Duxbury" c="DUXBURY"/>
<c n="Exeter" c="EXETER"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Foxborough" c="FOXBOROUGH"/>
<c n="Groton" c="GROTON"/>
<c n="Hanson" c="HANSON"/>
<c n="Henniker" c="HENNIKER"/>
<c n="Hingham" c="HINGHAM"/>
<c n="Hooksett" c="HOOKSETT"/>
<c n="Hopedale" c="HOPEDALE"/>
<c n="Hopkinton" c="HOPKINTON"/>
<c n="Hopkinton" c="HOPKINTON"/>
<c n="Hudson" c="HUDSON"/>
<c n="Hudson" c="HUDSON"/>
<c n="Ipswich" c="IPSWICH"/>
<c n="Jaffrey" c="JAFFREY"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Londonderry" c="LONDONDERRY"/>
<c n="Lunenburg" c="LUNENBURG"/>
<c n="Marshfield" c="MARSHFIELD"/>
<c n="Medfield" c="MEDFIELD"/>
<c n="Meredith" c="MEREDITH"/>
<c n="Milford" c="MILFORD"/>
<c n="Newmarket" c="NEWMARKET"/>
<c n="Newton" c="NEWTON"/>
<c n="North Brookfield" c="NORTH BROOKFIELD"/>
<c n="Northborough" c="NORTHBOROUGH"/>
<c n="Orleans" c="ORLEANS"/>
<c n="Oxford" c="OXFORD"/>
<c n="Pepperell" c="PEPPERELL"/>
<c n="Peterborough" c="PETERBOROUGH"/>
<c n="Rockingham" c="ROCKINGHAM"/>
<c n="Rowley" c="ROWLEY"/>
<c n="Rutland" c="RUTLAND"/>
<c n="Salisbury" c="SALISBURY"/>
<c n="Sandwich" c="SANDWICH"/>
<c n="Sharon" c="SHARON"/>
<c n="Shirley" c="SHIRLEY"/>
<c n="Southbridge" c="SOUTHBRIDGE"/>
<c n="Spencer" c="SPENCER"/>
<c n="Sturbridge" c="STURBRIDGE"/>
<c n="Tisbury" c="TISBURY"/>
<c n="Topsfield" c="TOPSFIELD"/>
<c n="Townsend" c="TOWNSEND"/>
<c n="Tyngsborough" c="TYNGSBOROUGH"/>
<c n="Walpole" c="WALPOLE"/>
<c n="Westborough" c="WESTBOROUGH"/>
<c n="Wilton" c="WILTON"/>
<c n="Winchendon" c="WINCHENDON"/>
<c n="Yarmouth" c="YARMOUTH"/></dma>
    </state>
<state id="IN" full_name="Indiana">
    <dma code="509" title="Ft. Wayne, IN">
<c n="Albion" c="ALBION"/>
<c n="Angola" c="ANGOLA"/>
<c n="Auburn" c="AUBURN"/>
<c n="Avilla" c="AVILLA"/>
<c n="Berne" c="BERNE"/>
<c n="Bippus" c="BIPPUS"/>
<c n="Bluffton" c="BLUFFTON"/>
<c n="Butler" c="BUTLER"/>
<c n="Churubusco" c="CHURUBUSCO"/>
<c n="Columbia City" c="COLUMBIA CITY"/>
<c n="Craigville" c="CRAIGVILLE"/>
<c n="Decatur" c="DECATUR"/>
<c n="Dunkirk" c="DUNKIRK"/>
<c n="Fremont" c="FREMONT"/>
<c n="Fort Wayne" c="FORT WAYNE"/>
<c n="Garrett" c="GARRETT"/>
<c n="Geneva" c="GENEVA"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Huntington" c="HUNTINGTON"/>
<c n="Kendallville" c="KENDALLVILLE"/>
<c n="Laotto" c="LAOTTO"/>
<c n="Leo-Cedarville" c="LEO-CEDARVILLE"/>
<c n="Ligonier" c="LIGONIER"/>
<c n="Markle" c="MARKLE"/>
<c n="Monroe" c="MONROE"/>
<c n="New Haven" c="NEW HAVEN"/>
<c n="North Manchester" c="NORTH MANCHESTER"/>
<c n="Ossian" c="OSSIAN"/>
<c n="Poneto" c="PONETO"/>
<c n="Portland" c="PORTLAND"/>
<c n="Roanoke" c="ROANOKE"/>
<c n="South Whitley" c="SOUTH WHITLEY"/>
<c n="St. Joe" c="ST. JOE"/>
<c n="Wabash" c="WABASH"/>
<c n="Warren" c="WARREN"/>
<c n="Waterloo" c="WATERLOO"/>
<c n="Wawaka" c="WAWAKA"/>
<c n="Woodburn" c="WOODBURN"/>
<c n="Oakwood" c="OAKWOOD"/>
<c n="Paulding" c="PAULDING"/>
<c n="Scott" c="SCOTT"/>
<c n="Van Wert" c="VAN WERT"/>
<c n="Huntertown" c="HUNTERTOWN"/></dma>
    
    <dma code="527" title="Indianapolis, IN">
<c n="Albany" c="ALBANY"/>
<c n="Alexandria" c="ALEXANDRIA"/>
<c n="Anderson" c="ANDERSON"/>
<c n="Arcadia" c="ARCADIA"/>
<c n="Atlanta" c="ATLANTA"/>
<c n="Attica" c="ATTICA"/>
<c n="Avon" c="AVON"/>
<c n="Bainbridge" c="BAINBRIDGE"/>
<c n="Bedford" c="BEDFORD"/>
<c n="Beech Grove" c="BEECH GROVE"/>
<c n="Bloomington" c="BLOOMINGTON"/>
<c n="Brookston" c="BROOKSTON"/>
<c n="Brownsburg" c="BROWNSBURG"/>
<c n="Bunker Hill" c="BUNKER HILL"/>
<c n="Cambridge City" c="CAMBRIDGE CITY"/>
<c n="Camden" c="CAMDEN"/>
<c n="Carmel" c="CARMEL"/>
<c n="Centerville" c="CENTERVILLE"/>
<c n="Chalmers" c="CHALMERS"/>
<c n="Charlottesville" c="CHARLOTTESVILLE"/>
<c n="Cicero" c="CICERO"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Clifford" c="CLIFFORD"/>
<c n="Cloverdale" c="CLOVERDALE"/>
<c n="Colfax" c="COLFAX"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Connersville" c="CONNERSVILLE"/>
<c n="Converse" c="CONVERSE"/>
<c n="Covington" c="COVINGTON"/>
<c n="Crawfordsville" c="CRAWFORDSVILLE"/>
<c n="Daleville" c="DALEVILLE"/>
<c n="Danville" c="DANVILLE"/>
<c n="Delphi" c="DELPHI"/>
<c n="Denver" c="DENVER"/>
<c n="Dublin" c="DUBLIN"/>
<c n="Edinburg" c="EDINBURG"/>
<c n="Ellettsville" c="ELLETTSVILLE"/>
<c n="Elwood" c="ELWOOD"/>
<c n="Eminence" c="EMINENCE"/>
<c n="Fairland" c="FAIRLAND"/>
<c n="Fairmount" c="FAIRMOUNT"/>
<c n="Farmland" c="FARMLAND"/>
<c n="Fishers" c="FISHERS"/>
<c n="Flora" c="FLORA"/>
<c n="Fortville" c="FORTVILLE"/>
<c n="Fountain City" c="FOUNTAIN CITY"/>
<c n="Fountaintown" c="FOUNTAINTOWN"/>
<c n="Frankfort" c="FRANKFORT"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Frankton" c="FRANKTON"/>
<c n="Galveston" c="GALVESTON"/>
<c n="Gas City" c="GAS CITY"/>
<c n="Gaston" c="GASTON"/>
<c n="Greencastle" c="GREENCASTLE"/>
<c n="Greenfield" c="GREENFIELD"/>
<c n="Greensburg" c="GREENSBURG"/>
<c n="Greentown" c="GREENTOWN"/>
<c n="Greenwood" c="GREENWOOD"/>
<c n="Grissom Joint Air Reserve Base" c="GRISSOM JOINT AIR RESERVE BASE"/>
<c n="Hagerstown" c="HAGERSTOWN"/>
<c n="Hartford City" c="HARTFORD CITY"/>
<c n="Hillsboro" c="HILLSBORO"/>
<c n="Hope" c="HOPE"/>
<c n="Indianapolis" c="INDIANAPOLIS"/>
<c n="Knightstown" c="KNIGHTSTOWN"/>
<c n="Kokomo" c="KOKOMO"/>
<c n="Ladoga" c="LADOGA"/>
<c n="Lapel" c="LAPEL"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Linden" c="LINDEN"/>
<c n="Lizton" c="LIZTON"/>
<c n="Logansport" c="LOGANSPORT"/>
<c n="Losantville" c="LOSANTVILLE"/>
<c n="Lucerne" c="LUCERNE"/>
<c n="Lynn" c="LYNN"/>
<c n="Marion" c="MARION"/>
<c n="Martinsville" c="MARTINSVILLE"/>
<c n="Maxwell" c="MAXWELL"/>
<c n="McCordsville" c="MCCORDSVILLE"/>
<c n="Mexico" c="MEXICO"/>
<c n="Miami" c="MIAMI"/>
<c n="Michigantown" c="MICHIGANTOWN"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="Milroy" c="MILROY"/>
<c n="Mitchell" c="MITCHELL"/>
<c n="Monon" c="MONON"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="Montpelier" c="MONTPELIER"/>
<c n="Mooresville" c="MOORESVILLE"/>
<c n="Morgantown" c="MORGANTOWN"/>
<c n="Morristown" c="MORRISTOWN"/>
<c n="Mount Summit" c="MOUNT SUMMIT"/>
<c n="Mulberry" c="MULBERRY"/>
<c n="Muncie" c="MUNCIE"/>
<c n="Nashville" c="NASHVILLE"/>
<c n="New Castle" c="NEW CASTLE"/>
<c n="New Lisbon" c="NEW LISBON"/>
<c n="New Market" c="NEW MARKET"/>
<c n="New Palestine" c="NEW PALESTINE"/>
<c n="New Richmond" c="NEW RICHMOND"/>
<c n="Noblesville" c="NOBLESVILLE"/>
<c n="Orestes" c="ORESTES"/>
<c n="Parker City" c="PARKER CITY"/>
<c n="Pendleton" c="PENDLETON"/>
<c n="Peru" c="PERU"/>
<c n="Pittsboro" c="PITTSBORO"/>
<c n="Plainfield" c="PLAINFIELD"/>
<c n="Reynolds" c="REYNOLDS"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Ridgeville" c="RIDGEVILLE"/>
<c n="Roachdale" c="ROACHDALE"/>
<c n="Rossville" c="ROSSVILLE"/>
<c n="Royal Center" c="ROYAL CENTER"/>
<c n="Rushville" c="RUSHVILLE"/>
<c n="Russiaville" c="RUSSIAVILLE"/>
<c n="Selma" c="SELMA"/>
<c n="Sharpsville" c="SHARPSVILLE"/>
<c n="Shelbyville" c="SHELBYVILLE"/>
<c n="Sheridan" c="SHERIDAN"/>
<c n="Shirley" c="SHIRLEY"/>
<c n="Smithville" c="SMITHVILLE"/>
<c n="Spencer" c="SPENCER"/>
<c n="Spiceland" c="SPICELAND"/>
<c n="Springport" c="SPRINGPORT"/>
<c n="Stanford" c="STANFORD"/>
<c n="Straughn" c="STRAUGHN"/>
<c n="Sweetser" c="SWEETSER"/>
<c n="Taylorsville" c="TAYLORSVILLE"/>
<c n="Thorntown" c="THORNTOWN"/>
<c n="Tipton" c="TIPTON"/>
<c n="Trafalgar" c="TRAFALGAR"/>
<c n="Union City" c="UNION CITY"/>
<c n="Unionville" c="UNIONVILLE"/>
<c n="Upland" c="UPLAND"/>
<c n="Van Buren" c="VAN BUREN"/>
<c n="Veedersburg" c="VEEDERSBURG"/>
<c n="Waldron" c="WALDRON"/>
<c n="Walton" c="WALTON"/>
<c n="Waveland" c="WAVELAND"/>
<c n="Westfield" c="WESTFIELD"/>
<c n="Whiteland" c="WHITELAND"/>
<c n="Whitestown" c="WHITESTOWN"/>
<c n="Winchester" c="WINCHESTER"/>
<c n="Wolcott" c="WOLCOTT"/>
<c n="Yeoman" c="YEOMAN"/>
<c n="Yorktown" c="YORKTOWN"/>
<c n="Zionsville" c="ZIONSVILLE"/>
<c n="Coatesville" c="COATESVILLE"/>
<c n="Lawrence" c="LAWRENCE"/>
<c n="Monrovia" c="MONROVIA"/>
<c n="Speedway" c="SPEEDWAY"/></dma>
    
    <dma code="581" title="Terre Haute, IN">
<c n="Annapolis" c="ANNAPOLIS"/>
<c n="Bridgeport" c="BRIDGEPORT"/>
<c n="Berryville" c="BERRYVILLE"/>
<c n="Casey" c="CASEY"/>
<c n="Flat Rock" c="FLAT ROCK"/>
<c n="Hutsonville" c="HUTSONVILLE"/>
<c n="Lawrenceville" c="LAWRENCEVILLE"/>
<c n="Marshall" c="MARSHALL"/>
<c n="Martinsville" c="MARTINSVILLE"/>
<c n="Newton" c="NEWTON"/>
<c n="Oblong" c="OBLONG"/>
<c n="Olney" c="OLNEY"/>
<c n="Robinson" c="ROBINSON"/>
<c n="Sumner" c="SUMNER"/>
<c n="Bicknell" c="BICKNELL"/>
<c n="Bloomfield" c="BLOOMFIELD"/>
<c n="Bloomingdale" c="BLOOMINGDALE"/>
<c n="Brazil" c="BRAZIL"/>
<c n="Carlisle" c="CARLISLE"/>
<c n="Cayuga" c="CAYUGA"/>
<c n="Clay City" c="CLAY CITY"/>
<c n="Clinton" c="CLINTON"/>
<c n="Crane" c="CRANE"/>
<c n="Elnora" c="ELNORA"/>
<c n="Fairbanks" c="FAIRBANKS"/>
<c n="Farmersburg" c="FARMERSBURG"/>
<c n="Freelandville" c="FREELANDVILLE"/>
<c n="Hymera" c="HYMERA"/>
<c n="Jasonville" c="JASONVILLE"/>
<c n="Knightsville" c="KNIGHTSVILLE"/>
<c n="Linton" c="LINTON"/>
<c n="Loogootee" c="LOOGOOTEE"/>
<c n="Marshall" c="MARSHALL"/>
<c n="Montezuma" c="MONTEZUMA"/>
<c n="Montgomery" c="MONTGOMERY"/>
<c n="New Goshen" c="NEW GOSHEN"/>
<c n="Newport" c="NEWPORT"/>
<c n="Oaktown" c="OAKTOWN"/>
<c n="Rockville" c="ROCKVILLE"/>
<c n="Sandborn" c="SANDBORN"/>
<c n="Shoals" c="SHOALS"/>
<c n="Saint Mary-of-the-Woods" c="SAINT MARY-OF-THE-WOODS"/>
<c n="Sullivan" c="SULLIVAN"/>
<c n="Switz City" c="SWITZ CITY"/>
<c n="Terre Haute" c="TERRE HAUTE"/>
<c n="Vincennes" c="VINCENNES"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Wheatland" c="WHEATLAND"/>
<c n="Worthington" c="WORTHINGTON"/></dma>
    
    <dma code="582" title="Lafayette, IN">
<c n="Battle Ground" c="BATTLE GROUND"/>
<c n="Boswell" c="BOSWELL"/>
<c n="Dayton" c="DAYTON"/>
<c n="Earl Park" c="EARL PARK"/>
<c n="Fowler" c="FOWLER"/>
<c n="Lafayette" c="LAFAYETTE"/>
<c n="Otterbein" c="OTTERBEIN"/>
<c n="Oxford" c="OXFORD"/>
<c n="Stockwell" c="STOCKWELL"/>
<c n="West Lafayette" c="WEST LAFAYETTE"/>
<c n="West Point" c="WEST POINT"/></dma>
    
    <dma code="588" title="South Bend-Elkhart, IN">
<c n="Akron" c="AKRON"/>
<c n="Argos" c="ARGOS"/>
<c n="Bourbon" c="BOURBON"/>
<c n="Bremen" c="BREMEN"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Culver" c="CULVER"/>
<c n="Donaldson" c="DONALDSON"/>
<c n="Elkhart" c="ELKHART"/>
<c n="Francesville" c="FRANCESVILLE"/>
<c n="Fulton" c="FULTON"/>
<c n="Goshen" c="GOSHEN"/>
<c n="Granger" c="GRANGER"/>
<c n="Hamlet" c="HAMLET"/>
<c n="Howe" c="HOWE"/>
<c n="Kewanna" c="KEWANNA"/>
<c n="Knox" c="KNOX"/>
<c n="LaGrange" c="LAGRANGE"/>
<c n="Lakeville" c="LAKEVILLE"/>
<c n="Leiters Ford" c="LEITERS FORD"/>
<c n="Mentone" c="MENTONE"/>
<c n="Middlebury" c="MIDDLEBURY"/>
<c n="Milford" c="MILFORD"/>
<c n="Millersburg" c="MILLERSBURG"/>
<c n="Mishawaka" c="MISHAWAKA"/>
<c n="Monterey" c="MONTEREY"/>
<c n="Nappanee" c="NAPPANEE"/>
<c n="New Carlisle" c="NEW CARLISLE"/>
<c n="New Paris" c="NEW PARIS"/>
<c n="North Judson" c="NORTH JUDSON"/>
<c n="Notre Dame" c="NOTRE DAME"/>
<c n="Osceola" c="OSCEOLA"/>
<c n="Pershing" c="PERSHING"/>
<c n="Pierceton" c="PIERCETON"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Rochester" c="ROCHESTER"/>
<c n="San Pierre" c="SAN PIERRE"/>
<c n="Shipshewana" c="SHIPSHEWANA"/>
<c n="South Bend" c="SOUTH BEND"/>
<c n="South Milford" c="SOUTH MILFORD"/>
<c n="Star City" c="STAR CITY"/>
<c n="Syracuse" c="SYRACUSE"/>
<c n="Tippecanoe" c="TIPPECANOE"/>
<c n="Topeka" c="TOPEKA"/>
<c n="Wakarusa" c="WAKARUSA"/>
<c n="Walkerton" c="WALKERTON"/>
<c n="Warsaw" c="WARSAW"/>
<c n="Winamac" c="WINAMAC"/>
<c n="Winona Lake" c="WINONA LAKE"/>
<c n="Wyatt" c="WYATT"/>
<c n="Baroda" c="BARODA"/>
<c n="Benton Harbor" c="BENTON HARBOR"/>
<c n="Berrien Springs" c="BERRIEN SPRINGS"/>
<c n="Bridgman" c="BRIDGMAN"/>
<c n="Buchanan" c="BUCHANAN"/>
<c n="Cassopolis" c="CASSOPOLIS"/>
<c n="Coloma" c="COLOMA"/>
<c n="Dowagiac" c="DOWAGIAC"/>
<c n="Eau Claire" c="EAU CLAIRE"/>
<c n="Edwardsburg" c="EDWARDSBURG"/>
<c n="Jones" c="JONES"/>
<c n="Marcellus" c="MARCELLUS"/>
<c n="New Buffalo" c="NEW BUFFALO"/>
<c n="Niles" c="NILES"/>
<c n="Riverside" c="RIVERSIDE"/>
<c n="Sawyer" c="SAWYER"/>
<c n="St. Joseph" c="ST. JOSEPH"/>
<c n="Stevensville" c="STEVENSVILLE"/>
<c n="Three Oaks" c="THREE OAKS"/>
<c n="Watervliet" c="WATERVLIET"/>
<c n="Coloma Charter Township" c="COLOMA CHARTER TOWNSHIP"/>
<c n="Fair Plain" c="FAIR PLAIN"/>
<c n="Oronoko Charter Township" c="ORONOKO CHARTER TOWNSHIP"/></dma>
    
    <dma code="649" title="Evansville, IN">
<c n="Albion" c="ALBION"/>
<c n="Barnhill" c="BARNHILL"/>
<c n="Burnt Prairie" c="BURNT PRAIRIE"/>
<c n="Carmi" c="CARMI"/>
<c n="Crossville" c="CROSSVILLE"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Mount Carmel" c="MOUNT CARMEL"/>
<c n="Norris City" c="NORRIS CITY"/>
<c n="Wayne City" c="WAYNE CITY"/>
<c n="West Salem" c="WEST SALEM"/>
<c n="Birdseye" c="BIRDSEYE"/>
<c n="Boonville" c="BOONVILLE"/>
<c n="Cannelton" c="CANNELTON"/>
<c n="Celestine" c="CELESTINE"/>
<c n="Chandler" c="CHANDLER"/>
<c n="Dale" c="DALE"/>
<c n="Dubois" c="DUBOIS"/>
<c n="Elberfeld" c="ELBERFELD"/>
<c n="Evansville" c="EVANSVILLE"/>
<c n="Ferdinand" c="FERDINAND"/>
<c n="Fort Branch" c="FORT BRANCH"/>
<c n="Grandview" c="GRANDVIEW"/>
<c n="Hazleton" c="HAZLETON"/>
<c n="Huntingburg" c="HUNTINGBURG"/>
<c n="Jasper" c="JASPER"/>
<c n="Leopold" c="LEOPOLD"/>
<c n="Lincoln City" c="LINCOLN CITY"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="New Harmony" c="NEW HARMONY"/>
<c n="Newburgh" c="NEWBURGH"/>
<c n="Oakland City" c="OAKLAND CITY"/>
<c n="Petersburg" c="PETERSBURG"/>
<c n="Poseyville" c="POSEYVILLE"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Rockport" c="ROCKPORT"/>
<c n="Santa Claus" c="SANTA CLAUS"/>
<c n="Spurgeon" c="SPURGEON"/>
<c n="Saint Meinrad" c="SAINT MEINRAD"/>
<c n="Tell City" c="TELL CITY"/>
<c n="Troy" c="TROY"/>
<c n="Beaver Dam" c="BEAVER DAM"/>
<c n="Calhoun" c="CALHOUN"/>
<c n="Central City" c="CENTRAL CITY"/>
<c n="Dawson Springs" c="DAWSON SPRINGS"/>
<c n="Dixon" c="DIXON"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Hartford" c="HARTFORD"/>
<c n="Hawesville" c="HAWESVILLE"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Horse Branch" c="HORSE BRANCH"/>
<c n="Lewisport" c="LEWISPORT"/>
<c n="Madisonville" c="MADISONVILLE"/>
<c n="Morganfield" c="MORGANFIELD"/>
<c n="Owensboro" c="OWENSBORO"/>
<c n="Providence" c="PROVIDENCE"/>
<c n="Sturgis" c="STURGIS"/></dma>
    </state>
<state id="OH" full_name="Ohio">
    <dma code="510" title="Cleveland-Akron (Canton), OH">
<c n="Akron" c="AKRON"/>
<c n="Alliance" c="ALLIANCE"/>
<c n="Amherst" c="AMHERST"/>
<c n="Andover" c="ANDOVER"/>
<c n="Apple Creek" c="APPLE CREEK"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Ashtabula" c="ASHTABULA"/>
<c n="Aurora" c="AURORA"/>
<c n="Austinburg" c="AUSTINBURG"/>
<c n="Avon" c="AVON"/>
<c n="Avon Lake" c="AVON LAKE"/>
<c n="Barberton" c="BARBERTON"/>
<c n="Bath" c="BATH"/>
<c n="Bay" c="BAY"/>
<c n="Beach City" c="BEACH CITY"/>
<c n="Beachwood" c="BEACHWOOD"/>
<c n="Bedford" c="BEDFORD"/>
<c n="Bellville" c="BELLVILLE"/>
<c n="Berea" c="BEREA"/>
<c n="Berlin" c="BERLIN"/>
<c n="Berlin Heights" c="BERLIN HEIGHTS"/>
<c n="Bolivar" c="BOLIVAR"/>
<c n="Brecksville" c="BRECKSVILLE"/>
<c n="Broadview Heights" c="BROADVIEW HEIGHTS"/>
<c n="Brookpark" c="BROOKPARK"/>
<c n="Brunswick" c="BRUNSWICK"/>
<c n="Burbank" c="BURBANK"/>
<c n="Burton" c="BURTON"/>
<c n="Canal Fulton" c="CANAL FULTON"/>
<c n="Canton" c="CANTON"/>
<c n="Carrollton" c="CARROLLTON"/>
<c n="Castalia" c="CASTALIA"/>
<c n="Chagrin Falls" c="CHAGRIN FALLS"/>
<c n="Chardon" c="CHARDON"/>
<c n="Chesterland" c="CHESTERLAND"/>
<c n="Cleveland" c="CLEVELAND"/>
<c n="Clinton" c="CLINTON"/>
<c n="Columbia Station" c="COLUMBIA STATION"/>
<c n="Conneaut" c="CONNEAUT"/>
<c n="Creston" c="CRESTON"/>
<c n="Cuyahoga Falls" c="CUYAHOGA FALLS"/>
<c n="Dalton" c="DALTON"/>
<c n="Dennison" c="DENNISON"/>
<c n="Diamond" c="DIAMOND"/>
<c n="Dover" c="DOVER"/>
<c n="Doylestown" c="DOYLESTOWN"/>
<c n="Dundee" c="DUNDEE"/>
<c n="East Sparta" c="EAST SPARTA"/>
<c n="Eastlake" c="EASTLAKE"/>
<c n="Elyria" c="ELYRIA"/>
<c n="Euclid" c="EUCLID"/>
<c n="Garrettsville" c="GARRETTSVILLE"/>
<c n="Gates Mills" c="GATES MILLS"/>
<c n="Geneva" c="GENEVA"/>
<c n="Gnadenhutten" c="GNADENHUTTEN"/>
<c n="Grafton" c="GRAFTON"/>
<c n="Green" c="GREEN"/>
<c n="Greenwich" c="GREENWICH"/>
<c n="Hartville" c="HARTVILLE"/>
<c n="Hayesville" c="HAYESVILLE"/>
<c n="Hiram" c="HIRAM"/>
<c n="Homerville" c="HOMERVILLE"/>
<c n="Hudson" c="HUDSON"/>
<c n="Huron" c="HURON"/>
<c n="Independence" c="INDEPENDENCE"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Jeromesville" c="JEROMESVILLE"/>
<c n="Kent" c="KENT"/>
<c n="Kidron" c="KIDRON"/>
<c n="Killbuck" c="KILLBUCK"/>
<c n="Kingsville" c="KINGSVILLE"/>
<c n="LaGrange" c="LAGRANGE"/>
<c n="Lakewood" c="LAKEWOOD"/>
<c n="Lodi" c="LODI"/>
<c n="Lorain" c="LORAIN"/>
<c n="Loudonville" c="LOUDONVILLE"/>
<c n="Louisville" c="LOUISVILLE"/>
<c n="Lucas" c="LUCAS"/>
<c n="Macedonia" c="MACEDONIA"/>
<c n="Madison" c="MADISON"/>
<c n="Mansfield" c="MANSFIELD"/>
<c n="Mantua" c="MANTUA"/>
<c n="Maple Heights" c="MAPLE HEIGHTS"/>
<c n="Massillon" c="MASSILLON"/>
<c n="Maximo" c="MAXIMO"/>
<c n="Medina" c="MEDINA"/>
<c n="Mentor" c="MENTOR"/>
<c n="Middlefield" c="MIDDLEFIELD"/>
<c n="Milan" c="MILAN"/>
<c n="Millersburg" c="MILLERSBURG"/>
<c n="Mineral City" c="MINERAL CITY"/>
<c n="Minerva" c="MINERVA"/>
<c n="Monroeville" c="MONROEVILLE"/>
<c n="Mount Hope" c="MOUNT HOPE"/>
<c n="Munroe Falls" c="MUNROE FALLS"/>
<c n="New London" c="NEW LONDON"/>
<c n="New Philadelphia" c="NEW PHILADELPHIA"/>
<c n="Newbury" c="NEWBURY"/>
<c n="Newcomerstown" c="NEWCOMERSTOWN"/>
<c n="North Fairfield" c="NORTH FAIRFIELD"/>
<c n="North Kingsville" c="NORTH KINGSVILLE"/>
<c n="North Olmsted" c="NORTH OLMSTED"/>
<c n="North Ridgeville" c="NORTH RIDGEVILLE"/>
<c n="North Royalton" c="NORTH ROYALTON"/>
<c n="Northfield" c="NORTHFIELD"/>
<c n="Norwalk" c="NORWALK"/>
<c n="Nova" c="NOVA"/>
<c n="Novelty" c="NOVELTY"/>
<c n="Oberlin" c="OBERLIN"/>
<c n="Olmsted Falls" c="OLMSTED FALLS"/>
<c n="Orrville" c="ORRVILLE"/>
<c n="Orwell" c="ORWELL"/>
<c n="Painesville" c="PAINESVILLE"/>
<c n="Peninsula" c="PENINSULA"/>
<c n="Perry" c="PERRY"/>
<c n="Perrysville" c="PERRYSVILLE"/>
<c n="Pierpont" c="PIERPONT"/>
<c n="Ravenna" c="RAVENNA"/>
<c n="Richfield" c="RICHFIELD"/>
<c n="Rittman" c="RITTMAN"/>
<c n="Rock Creek" c="ROCK CREEK"/>
<c n="Rocky River" c="ROCKY RIVER"/>
<c n="Rome" c="ROME"/>
<c n="Rootstown" c="ROOTSTOWN"/>
<c n="Sandusky" c="SANDUSKY"/>
<c n="Sharon Center" c="SHARON CENTER"/>
<c n="Sheffield Lake" c="SHEFFIELD LAKE"/>
<c n="Shelby" c="SHELBY"/>
<c n="Smithville" c="SMITHVILLE"/>
<c n="Solon" c="SOLON"/>
<c n="Spencer" c="SPENCER"/>
<c n="Stow" c="STOW"/>
<c n="Streetsboro" c="STREETSBORO"/>
<c n="Strongsville" c="STRONGSVILLE"/>
<c n="Sugarcreek" c="SUGARCREEK"/>
<c n="Tallmadge" c="TALLMADGE"/>
<c n="Thompson" c="THOMPSON"/>
<c n="Twinsburg" c="TWINSBURG"/>
<c n="Uhrichsville" c="UHRICHSVILLE"/>
<c n="Uniontown" c="UNIONTOWN"/>
<c n="Valley City" c="VALLEY CITY"/>
<c n="Vermilion" c="VERMILION"/>
<c n="Wadsworth" c="WADSWORTH"/>
<c n="Wakeman" c="WAKEMAN"/>
<c n="Wayland" c="WAYLAND"/>
<c n="Wellington" c="WELLINGTON"/>
<c n="West Salem" c="WEST SALEM"/>
<c n="Westfield Center" c="WESTFIELD CENTER"/>
<c n="Westlake" c="WESTLAKE"/>
<c n="Wickliffe" c="WICKLIFFE"/>
<c n="Willard" c="WILLARD"/>
<c n="Willoughby" c="WILLOUGHBY"/>
<c n="Windham" c="WINDHAM"/>
<c n="Wooster" c="WOOSTER"/>
<c n="Zoar" c="ZOAR"/>
<c n="Bainbridge" c="BAINBRIDGE"/>
<c n="Brooklyn" c="BROOKLYN"/>
<c n="Brooklyn Heights" c="BROOKLYN HEIGHTS"/>
<c n="Cleveland Heights" c="CLEVELAND HEIGHTS"/>
<c n="Cuyahoga Heights" c="CUYAHOGA HEIGHTS"/>
<c n="East Cleveland" c="EAST CLEVELAND"/>
<c n="Fairlawn" c="FAIRLAWN"/>
<c n="Fairview Park" c="FAIRVIEW PARK"/>
<c n="Garfield Heights" c="GARFIELD HEIGHTS"/>
<c n="Highland Heights" c="HIGHLAND HEIGHTS"/>
<c n="Kirtland" c="KIRTLAND"/>
<c n="Lakemore" c="LAKEMORE"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Lyndhurst" c="LYNDHURST"/>
<c n="Malvern" c="MALVERN"/>
<c n="Mayfield" c="MAYFIELD"/>
<c n="Mayfield Heights" c="MAYFIELD HEIGHTS"/>
<c n="Middleburg Heights" c="MIDDLEBURG HEIGHTS"/>
<c n="Montrose-Ghent" c="MONTROSE-GHENT"/>
<c n="Moreland Hills" c="MORELAND HILLS"/>
<c n="New Franklin" c="NEW FRANKLIN"/>
<c n="North Canton" c="NORTH CANTON"/>
<c n="Norton" c="NORTON"/>
<c n="Ontario" c="ONTARIO"/>
<c n="Parma" c="PARMA"/>
<c n="Parma Heights" c="PARMA HEIGHTS"/>
<c n="Pepper Pike" c="PEPPER PIKE"/>
<c n="Perry Heights" c="PERRY HEIGHTS"/>
<c n="Portage Lakes" c="PORTAGE LAKES"/>
<c n="Richmond Heights" c="RICHMOND HEIGHTS"/>
<c n="Sandusky South" c="SANDUSKY SOUTH"/>
<c n="Seven Hills" c="SEVEN HILLS"/>
<c n="Seville" c="SEVILLE"/>
<c n="Shaker Heights" c="SHAKER HEIGHTS"/>
<c n="South Euclid" c="SOUTH EUCLID"/>
<c n="South Russell" c="SOUTH RUSSELL"/>
<c n="University Heights" c="UNIVERSITY HEIGHTS"/>
<c n="Valley View" c="VALLEY VIEW"/>
<c n="Warrensville Heights" c="WARRENSVILLE HEIGHTS"/>
<c n="Willowick" c="WILLOWICK"/></dma>
    
    <dma code="515" title="Cincinnati, OH">
<c n="Aurora" c="AURORA"/>
<c n="Batesville" c="BATESVILLE"/>
<c n="Brookville" c="BROOKVILLE"/>
<c n="Dillsboro" c="DILLSBORO"/>
<c n="East Enterprise" c="EAST ENTERPRISE"/>
<c n="Guilford" c="GUILFORD"/>
<c n="Laurel" c="LAUREL"/>
<c n="Lawrenceburg" c="LAWRENCEBURG"/>
<c n="Liberty" c="LIBERTY"/>
<c n="Milan" c="MILAN"/>
<c n="Osgood" c="OSGOOD"/>
<c n="Patriot" c="PATRIOT"/>
<c n="Rising Sun" c="RISING SUN"/>
<c n="Sunman" c="SUNMAN"/>
<c n="Versailles" c="VERSAILLES"/>
<c n="Vevay" c="VEVAY"/>
<c n="West Harrison" c="WEST HARRISON"/>
<c n="Alexandria" c="ALEXANDRIA"/>
<c n="Augusta" c="AUGUSTA"/>
<c n="Bellevue" c="BELLEVUE"/>
<c n="Brooksville" c="BROOKSVILLE"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Butler" c="BUTLER"/>
<c n="Covington" c="COVINGTON"/>
<c n="Dayton" c="DAYTON"/>
<c n="Erlanger" c="ERLANGER"/>
<c n="Falmouth" c="FALMOUTH"/>
<c n="Florence" c="FLORENCE"/>
<c n="Fort Mitchell" c="FORT MITCHELL"/>
<c n="Fort Thomas" c="FORT THOMAS"/>
<c n="Glencoe" c="GLENCOE"/>
<c n="Hebron" c="HEBRON"/>
<c n="Independence" c="INDEPENDENCE"/>
<c n="Latonia" c="LATONIA"/>
<c n="Maysville" c="MAYSVILLE"/>
<c n="Newport" c="NEWPORT"/>
<c n="Owenton" c="OWENTON"/>
<c n="Silver Grove" c="SILVER GROVE"/>
<c n="Walton" c="WALTON"/>
<c n="Warsaw" c="WARSAW"/>
<c n="Old Washington" c="OLD WASHINGTON"/>
<c n="Williamstown" c="WILLIAMSTOWN"/>
<c n="Amelia" c="AMELIA"/>
<c n="Batavia" c="BATAVIA"/>
<c n="Bentonville" c="BENTONVILLE"/>
<c n="Bethel" c="BETHEL"/>
<c n="Blanchester" c="BLANCHESTER"/>
<c n="Cincinnati" c="CINCINNATI"/>
<c n="Clarksville" c="CLARKSVILLE"/>
<c n="Cleves" c="CLEVES"/>
<c n="Collinsville" c="COLLINSVILLE"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Fayetteville" c="FAYETTEVILLE"/>
<c n="Felicity" c="FELICITY"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Goshen" c="GOSHEN"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Harrison" c="HARRISON"/>
<c n="Hillsboro" c="HILLSBORO"/>
<c n="Kings Mills" c="KINGS MILLS"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Lees Creek" c="LEES CREEK"/>
<c n="Leesburg" c="LEESBURG"/>
<c n="Loveland" c="LOVELAND"/>
<c n="Lynchburg" c="LYNCHBURG"/>
<c n="Maineville" c="MAINEVILLE"/>
<c n="Marathon" c="MARATHON"/>
<c n="Mason" c="MASON"/>
<c n="Miamitown" c="MIAMITOWN"/>
<c n="Miamiville" c="MIAMIVILLE"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="Milford" c="MILFORD"/>
<c n="Monroe" c="MONROE"/>
<c n="Morrow" c="MORROW"/>
<c n="Mount Orab" c="MOUNT ORAB"/>
<c n="New Richmond" c="NEW RICHMOND"/>
<c n="New Vienna" c="NEW VIENNA"/>
<c n="Newtonsville" c="NEWTONSVILLE"/>
<c n="Owensville" c="OWENSVILLE"/>
<c n="Oxford" c="OXFORD"/>
<c n="Pleasant Plain" c="PLEASANT PLAIN"/>
<c n="Ripley" c="RIPLEY"/>
<c n="Ross" c="ROSS"/>
<c n="Sabina" c="SABINA"/>
<c n="Sardinia" c="SARDINIA"/>
<c n="Seven Mile" c="SEVEN MILE"/>
<c n="Shandon" c="SHANDON"/>
<c n="Somerville" c="SOMERVILLE"/>
<c n="South Lebanon" c="SOUTH LEBANON"/>
<c n="Terrace Park" c="TERRACE PARK"/>
<c n="Trenton" c="TRENTON"/>
<c n="Waynesville" c="WAYNESVILLE"/>
<c n="West Chester" c="WEST CHESTER"/>
<c n="West Union" c="WEST UNION"/>
<c n="Williamsburg" c="WILLIAMSBURG"/>
<c n="Wilmington" c="WILMINGTON"/>
<c n="Beckett Ridge" c="BECKETT RIDGE"/>
<c n="Blue Ash" c="BLUE ASH"/>
<c n="Bridgetown North" c="BRIDGETOWN NORTH"/>
<c n="Cold Spring" c="COLD SPRING"/>
<c n="Delhi" c="DELHI"/>
<c n="Dent" c="DENT"/>
<c n="Dry Ridge" c="DRY RIDGE"/>
<c n="Dry Run" c="DRY RUN"/>
<c n="Edgewood" c="EDGEWOOD"/>
<c n="Evendale" c="EVENDALE"/>
<c n="Finneytown" c="FINNEYTOWN"/>
<c n="Forest Park" c="FOREST PARK"/>
<c n="Fort Wright" c="FORT WRIGHT"/>
<c n="Grandview" c="GRANDVIEW"/>
<c n="Highland Heights" c="HIGHLAND HEIGHTS"/>
<c n="Indian Hill" c="INDIAN HILL"/>
<c n="Kenwood" c="KENWOOD"/>
<c n="Landen" c="LANDEN"/>
<c n="Madeira" c="MADEIRA"/>
<c n="Mariemont" c="MARIEMONT"/>
<c n="Montgomery" c="MONTGOMERY"/>
<c n="Mount Carmel" c="MOUNT CARMEL"/>
<c n="Mount Healthy" c="MOUNT HEALTHY"/>
<c n="Mount Repose" c="MOUNT REPOSE"/>
<c n="Northgate" c="NORTHGATE"/>
<c n="Norwood" c="NORWOOD"/>
<c n="Reading" c="READING"/>
<c n="Sharonville" c="SHARONVILLE"/>
<c n="Springdale" c="SPRINGDALE"/>
<c n="Taylor Mill" c="TAYLOR MILL"/>
<c n="Union" c="UNION"/>
<c n="Villa Hills" c="VILLA HILLS"/>
<c n="Wetherington" c="WETHERINGTON"/>
<c n="White Oak" c="WHITE OAK"/>
<c n="Withamsville" c="WITHAMSVILLE"/>
<c n="Wyoming" c="WYOMING"/></dma>
    
    <dma code="535" title="Columbus, OH">
<c n="Ada" c="ADA"/>
<c n="Albany" c="ALBANY"/>
<c n="Alexandria" c="ALEXANDRIA"/>
<c n="Alger" c="ALGER"/>
<c n="Amanda" c="AMANDA"/>
<c n="Ashley" c="ASHLEY"/>
<c n="Ashville" c="ASHVILLE"/>
<c n="Athens" c="ATHENS"/>
<c n="Bainbridge" c="BAINBRIDGE"/>
<c n="Baltimore" c="BALTIMORE"/>
<c n="Beaver" c="BEAVER"/>
<c n="Blacklick" c="BLACKLICK"/>
<c n="Bremen" c="BREMEN"/>
<c n="Buckeye Lake" c="BUCKEYE LAKE"/>
<c n="Bucyrus" c="BUCYRUS"/>
<c n="Byesville" c="BYESVILLE"/>
<c n="Caldwell" c="CALDWELL"/>
<c n="Cambridge" c="CAMBRIDGE"/>
<c n="Canal Winchester" c="CANAL WINCHESTER"/>
<c n="Cardington" c="CARDINGTON"/>
<c n="Carroll" c="CARROLL"/>
<c n="Centerburg" c="CENTERBURG"/>
<c n="Chesterville" c="CHESTERVILLE"/>
<c n="Chillicothe" c="CHILLICOTHE"/>
<c n="Circleville" c="CIRCLEVILLE"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Conesville" c="CONESVILLE"/>
<c n="Corning" c="CORNING"/>
<c n="Coshocton" c="COSHOCTON"/>
<c n="Crestline" c="CRESTLINE"/>
<c n="Crooksville" c="CROOKSVILLE"/>
<c n="Danville" c="DANVILLE"/>
<c n="Delaware" c="DELAWARE"/>
<c n="Derwent" c="DERWENT"/>
<c n="Dexter City" c="DEXTER CITY"/>
<c n="Dola" c="DOLA"/>
<c n="Dublin" c="DUBLIN"/>
<c n="Dunkirk" c="DUNKIRK"/>
<c n="Etna" c="ETNA"/>
<c n="Forest" c="FOREST"/>
<c n="Frankfort" c="FRANKFORT"/>
<c n="Fredericktown" c="FREDERICKTOWN"/>
<c n="Galena" c="GALENA"/>
<c n="Galion" c="GALION"/>
<c n="Galloway" c="GALLOWAY"/>
<c n="Gambier" c="GAMBIER"/>
<c n="Granville" c="GRANVILLE"/>
<c n="Grove City" c="GROVE CITY"/>
<c n="Groveport" c="GROVEPORT"/>
<c n="Heath" c="HEATH"/>
<c n="Hebron" c="HEBRON"/>
<c n="Hilliard" c="HILLIARD"/>
<c n="Homer" c="HOMER"/>
<c n="Howard" c="HOWARD"/>
<c n="Irwin" c="IRWIN"/>
<c n="Johnstown" c="JOHNSTOWN"/>
<c n="Kenton" c="KENTON"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Laurelville" c="LAURELVILLE"/>
<c n="Lewis Center" c="LEWIS CENTER"/>
<c n="Lithopolis" c="LITHOPOLIS"/>
<c n="Lockbourne" c="LOCKBOURNE"/>
<c n="Logan" c="LOGAN"/>
<c n="London" c="LONDON"/>
<c n="Marion" c="MARION"/>
<c n="Marysville" c="MARYSVILLE"/>
<c n="McConnelsville" c="MCCONNELSVILLE"/>
<c n="McGuffey" c="MCGUFFEY"/>
<c n="Milford Center" c="MILFORD CENTER"/>
<c n="Millersport" c="MILLERSPORT"/>
<c n="Mount Gilead" c="MOUNT GILEAD"/>
<c n="Mount Perry" c="MOUNT PERRY"/>
<c n="Mount Sterling" c="MOUNT STERLING"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="Mount Victory" c="MOUNT VICTORY"/>
<c n="Nelsonville" c="NELSONVILLE"/>
<c n="New Albany" c="NEW ALBANY"/>
<c n="New Lexington" c="NEW LEXINGTON"/>
<c n="New Straitsville" c="NEW STRAITSVILLE"/>
<c n="New Washington" c="NEW WASHINGTON"/>
<c n="Newark" c="NEWARK"/>
<c n="North Robinson" c="NORTH ROBINSON"/>
<c n="Old Washington" c="OLD WASHINGTON"/>
<c n="Orient" c="ORIENT"/>
<c n="Ostrander" c="OSTRANDER"/>
<c n="Pataskala" c="PATASKALA"/>
<c n="Pickerington" c="PICKERINGTON"/>
<c n="Piketon" c="PIKETON"/>
<c n="Plain City" c="PLAIN CITY"/>
<c n="Powell" c="POWELL"/>
<c n="Prospect" c="PROSPECT"/>
<c n="Raymond" c="RAYMOND"/>
<c n="Reynoldsburg" c="REYNOLDSBURG"/>
<c n="Richwood" c="RICHWOOD"/>
<c n="Rockbridge" c="ROCKBRIDGE"/>
<c n="Sarahsville" c="SARAHSVILLE"/>
<c n="Senecaville" c="SENECAVILLE"/>
<c n="Somerset" c="SOMERSET"/>
<c n="Sparta" c="SPARTA"/>
<c n="Stewart" c="STEWART"/>
<c n="Stockdale" c="STOCKDALE"/>
<c n="Sugar Grove" c="SUGAR GROVE"/>
<c n="Summit Station" c="SUMMIT STATION"/>
<c n="Sunbury" c="SUNBURY"/>
<c n="The Plains" c="THE PLAINS"/>
<c n="Thornville" c="THORNVILLE"/>
<c n="Tiro" c="TIRO"/>
<c n="Warsaw" c="WARSAW"/>
<c n="Washington Court House" c="WASHINGTON COURT HOUSE"/>
<c n="Waverly" c="WAVERLY"/>
<c n="West Jefferson" c="WEST JEFFERSON"/>
<c n="West Lafayette" c="WEST LAFAYETTE"/>
<c n="West Rushville" c="WEST RUSHVILLE"/>
<c n="Westerville" c="WESTERVILLE"/>
<c n="Williamsport" c="WILLIAMSPORT"/>
<c n="Bexley" c="BEXLEY"/>
<c n="Gahanna" c="GAHANNA"/>
<c n="Lincoln Village" c="LINCOLN VILLAGE"/>
<c n="Upper Arlington" c="UPPER ARLINGTON"/>
<c n="Whitehall" c="WHITEHALL"/>
<c n="Worthington" c="WORTHINGTON"/></dma>
    
    <dma code="536" title="Youngstown, OH">
<c n="Beloit" c="BELOIT"/>
<c n="Berlin Center" c="BERLIN CENTER"/>
<c n="Bristolville" c="BRISTOLVILLE"/>
<c n="Brookfield Township" c="BROOKFIELD TOWNSHIP"/>
<c n="Campbell" c="CAMPBELL"/>
<c n="Canfield" c="CANFIELD"/>
<c n="Columbiana" c="COLUMBIANA"/>
<c n="Cortland" c="CORTLAND"/>
<c n="East Liverpool" c="EAST LIVERPOOL"/>
<c n="East Palestine" c="EAST PALESTINE"/>
<c n="Girard" c="GIRARD"/>
<c n="Hanoverton" c="HANOVERTON"/>
<c n="Hubbard" c="HUBBARD"/>
<c n="Kinsman" c="KINSMAN"/>
<c n="Leavittsburg" c="LEAVITTSBURG"/>
<c n="Leetonia" c="LEETONIA"/>
<c n="Lisbon" c="LISBON"/>
<c n="Lowellville" c="LOWELLVILLE"/>
<c n="McDonald" c="MCDONALD"/>
<c n="Mineral Ridge" c="MINERAL RIDGE"/>
<c n="New Middletown" c="NEW MIDDLETOWN"/>
<c n="New Springfield" c="NEW SPRINGFIELD"/>
<c n="New Waterford" c="NEW WATERFORD"/>
<c n="Newton Falls" c="NEWTON FALLS"/>
<c n="Niles" c="NILES"/>
<c n="North Bloomfield" c="NORTH BLOOMFIELD"/>
<c n="North Jackson" c="NORTH JACKSON"/>
<c n="North Lima" c="NORTH LIMA"/>
<c n="Rogers" c="ROGERS"/>
<c n="Salem" c="SALEM"/>
<c n="Salineville" c="SALINEVILLE"/>
<c n="Sebring" c="SEBRING"/>
<c n="Southington" c="SOUTHINGTON"/>
<c n="Struthers" c="STRUTHERS"/>
<c n="Summitville" c="SUMMITVILLE"/>
<c n="Vienna" c="VIENNA"/>
<c n="Warren" c="WARREN"/>
<c n="Washingtonville" c="WASHINGTONVILLE"/>
<c n="Wellsville" c="WELLSVILLE"/>
<c n="Youngstown" c="YOUNGSTOWN"/>
<c n="Farrell" c="FARRELL"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Grove City" c="GROVE CITY"/>
<c n="Hadley" c="HADLEY"/>
<c n="Hermitage" c="HERMITAGE"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Mercer" c="MERCER"/>
<c n="Sharon" c="SHARON"/>
<c n="Sharpsville" c="SHARPSVILLE"/>
<c n="Stoneboro" c="STONEBORO"/>
<c n="Transfer" c="TRANSFER"/>
<c n="West Middlesex" c="WEST MIDDLESEX"/>
<c n="Austintown" c="AUSTINTOWN"/>
<c n="Boardman" c="BOARDMAN"/>
<c n="Calcutta" c="CALCUTTA"/>
<c n="Howland Center" c="HOWLAND CENTER"/>
<c n="Lordstown" c="LORDSTOWN"/>
<c n="Poland" c="POLAND"/></dma>
    
    <dma code="542" title="Dayton, OH">
<c n="Anna" c="ANNA"/>
<c n="Ansonia" c="ANSONIA"/>
<c n="Arcanum" c="ARCANUM"/>
<c n="Bellbrook" c="BELLBROOK"/>
<c n="Bellefontaine" c="BELLEFONTAINE"/>
<c n="Botkins" c="BOTKINS"/>
<c n="Bradford" c="BRADFORD"/>
<c n="Brookville" c="BROOKVILLE"/>
<c n="Camden" c="CAMDEN"/>
<c n="Casstown" c="CASSTOWN"/>
<c n="Cedarville" c="CEDARVILLE"/>
<c n="Celina" c="CELINA"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Coldwater" c="COLDWATER"/>
<c n="Conover" c="CONOVER"/>
<c n="Covington" c="COVINGTON"/>
<c n="Dayton" c="DAYTON"/>
<c n="De Graff" c="DE GRAFF"/>
<c n="East Liberty" c="EAST LIBERTY"/>
<c n="Eaton" c="EATON"/>
<c n="Englewood" c="ENGLEWOOD"/>
<c n="Enon" c="ENON"/>
<c n="Fairborn" c="FAIRBORN"/>
<c n="Fletcher" c="FLETCHER"/>
<c n="Fort Loramie" c="FORT LORAMIE"/>
<c n="Germantown" c="GERMANTOWN"/>
<c n="Gettysburg" c="GETTYSBURG"/>
<c n="Gratis" c="GRATIS"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Hollansburg" c="HOLLANSBURG"/>
<c n="Houston" c="HOUSTON"/>
<c n="Jackson Center" c="JACKSON CENTER"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Lewisburg" c="LEWISBURG"/>
<c n="Lewistown" c="LEWISTOWN"/>
<c n="Mechanicsburg" c="MECHANICSBURG"/>
<c n="Mendon" c="MENDON"/>
<c n="Miamisburg" c="MIAMISBURG"/>
<c n="Middleburg" c="MIDDLEBURG"/>
<c n="Minster" c="MINSTER"/>
<c n="New Bremen" c="NEW BREMEN"/>
<c n="New Carlisle" c="NEW CARLISLE"/>
<c n="New Knoxville" c="NEW KNOXVILLE"/>
<c n="New Lebanon" c="NEW LEBANON"/>
<c n="New Madison" c="NEW MADISON"/>
<c n="North Lewisburg" c="NORTH LEWISBURG"/>
<c n="Piqua" c="PIQUA"/>
<c n="Pitsburg" c="PITSBURG"/>
<c n="Pleasant Hill" c="PLEASANT HILL"/>
<c n="Rockford" c="ROCKFORD"/>
<c n="Russia" c="RUSSIA"/>
<c n="Sidney" c="SIDNEY"/>
<c n="South Charleston" c="SOUTH CHARLESTON"/>
<c n="Spring Valley" c="SPRING VALLEY"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="St. Marys" c="ST. MARYS"/>
<c n="St. Paris" c="ST. PARIS"/>
<c n="Tipp City" c="TIPP CITY"/>
<c n="Troy" c="TROY"/>
<c n="Union City" c="UNION CITY"/>
<c n="Urbana" c="URBANA"/>
<c n="Vandalia" c="VANDALIA"/>
<c n="Versailles" c="VERSAILLES"/>
<c n="Wapakoneta" c="WAPAKONETA"/>
<c n="Waynesfield" c="WAYNESFIELD"/>
<c n="West Alexandria" c="WEST ALEXANDRIA"/>
<c n="West Liberty" c="WEST LIBERTY"/>
<c n="West Manchester" c="WEST MANCHESTER"/>
<c n="West Milton" c="WEST MILTON"/>
<c n="Westville" c="WESTVILLE"/>
<c n="Wilberforce" c="WILBERFORCE"/>
<c n="Xenia" c="XENIA"/>
<c n="Yellow Springs" c="YELLOW SPRINGS"/>
<c n="Beavercreek" c="BEAVERCREEK"/>
<c n="Centerville" c="CENTERVILLE"/>
<c n="Huber Heights" c="HUBER HEIGHTS"/>
<c n="Kettering" c="KETTERING"/>
<c n="Moraine" c="MORAINE"/>
<c n="Oakwood" c="OAKWOOD"/>
<c n="Riverside" c="RIVERSIDE"/>
<c n="St. Henry" c="ST. HENRY"/>
<c n="Trotwood" c="TROTWOOD"/>
<c n="West Carrollton" c="WEST CARROLLTON"/>
<c n="Woodbourne-Hyde Park" c="WOODBOURNE-HYDE PARK"/></dma>
    
    <dma code="547" title="Toledo, OH">
<c n="Addison" c="ADDISON"/>
<c n="Adrian" c="ADRIAN"/>
<c n="Blissfield" c="BLISSFIELD"/>
<c n="Britton" c="BRITTON"/>
<c n="Clinton" c="CLINTON"/>
<c n="Deerfield" c="DEERFIELD"/>
<c n="Hudson" c="HUDSON"/>
<c n="Morenci" c="MORENCI"/>
<c n="Onsted" c="ONSTED"/>
<c n="Sand Creek" c="SAND CREEK"/>
<c n="Tecumseh" c="TECUMSEH"/>
<c n="Tipton" c="TIPTON"/>
<c n="Arcadia" c="ARCADIA"/>
<c n="Archbold" c="ARCHBOLD"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Attica" c="ATTICA"/>
<c n="Bascom" c="BASCOM"/>
<c n="Bettsville" c="BETTSVILLE"/>
<c n="Bloomdale" c="BLOOMDALE"/>
<c n="Bowling Green" c="BOWLING GREEN"/>
<c n="Bryan" c="BRYAN"/>
<c n="Carey" c="CAREY"/>
<c n="Clay Center" c="CLAY CENTER"/>
<c n="Clyde" c="CLYDE"/>
<c n="Columbus Grove" c="COLUMBUS GROVE"/>
<c n="Continental" c="CONTINENTAL"/>
<c n="Defiance" c="DEFIANCE"/>
<c n="Delta" c="DELTA"/>
<c n="Edgerton" c="EDGERTON"/>
<c n="Edon" c="EDON"/>
<c n="Elmore" c="ELMORE"/>
<c n="Evansport" c="EVANSPORT"/>
<c n="Fayette" c="FAYETTE"/>
<c n="Findlay" c="FINDLAY"/>
<c n="Fostoria" c="FOSTORIA"/>
<c n="Fremont" c="FREMONT"/>
<c n="Fort Jennings" c="FORT JENNINGS"/>
<c n="Gibsonburg" c="GIBSONBURG"/>
<c n="Glandorf" c="GLANDORF"/>
<c n="Grand Rapids" c="GRAND RAPIDS"/>
<c n="Hamler" c="HAMLER"/>
<c n="Helena" c="HELENA"/>
<c n="Hicksville" c="HICKSVILLE"/>
<c n="Holgate" c="HOLGATE"/>
<c n="Holland" c="HOLLAND"/>
<c n="Kalida" c="KALIDA"/>
<c n="Lakeside Marblehead" c="LAKESIDE MARBLEHEAD"/>
<c n="Liberty Center" c="LIBERTY CENTER"/>
<c n="Malinta" c="MALINTA"/>
<c n="Maumee" c="MAUMEE"/>
<c n="McComb" c="MCCOMB"/>
<c n="Metamora" c="METAMORA"/>
<c n="Millbury" c="MILLBURY"/>
<c n="Montpelier" c="MONTPELIER"/>
<c n="Mount Blanchard" c="MOUNT BLANCHARD"/>
<c n="Napoleon" c="NAPOLEON"/>
<c n="New Riegel" c="NEW RIEGEL"/>
<c n="North Baltimore" c="NORTH BALTIMORE"/>
<c n="Northwood" c="NORTHWOOD"/>
<c n="Oak Harbor" c="OAK HARBOR"/>
<c n="Old Fort" c="OLD FORT"/>
<c n="Oregon" c="OREGON"/>
<c n="Ottawa" c="OTTAWA"/>
<c n="Pemberville" c="PEMBERVILLE"/>
<c n="Perrysburg" c="PERRYSBURG"/>
<c n="Pettisville" c="PETTISVILLE"/>
<c n="Pioneer" c="PIONEER"/>
<c n="Port Clinton" c="PORT CLINTON"/>
<c n="Portage" c="PORTAGE"/>
<c n="Put-in-Bay" c="PUT-IN-BAY"/>
<c n="Rawson" c="RAWSON"/>
<c n="Ridgeville Corners" c="RIDGEVILLE CORNERS"/>
<c n="Risingsun" c="RISINGSUN"/>
<c n="Rossford" c="ROSSFORD"/>
<c n="Sherwood" c="SHERWOOD"/>
<c n="Stony Ridge" c="STONY RIDGE"/>
<c n="Swanton" c="SWANTON"/>
<c n="Sycamore" c="SYCAMORE"/>
<c n="Sylvania" c="SYLVANIA"/>
<c n="Tiffin" c="TIFFIN"/>
<c n="Toledo" c="TOLEDO"/>
<c n="Tontogany" c="TONTOGANY"/>
<c n="Upper Sandusky" c="UPPER SANDUSKY"/>
<c n="Van Buren" c="VAN BUREN"/>
<c n="Vaughnsville" c="VAUGHNSVILLE"/>
<c n="Walbridge" c="WALBRIDGE"/>
<c n="Waterville" c="WATERVILLE"/>
<c n="Wauseon" c="WAUSEON"/>
<c n="Wayne" c="WAYNE"/>
<c n="West Unity" c="WEST UNITY"/>
<c n="Weston" c="WESTON"/>
<c n="Whitehouse" c="WHITEHOUSE"/>
<c n="Woodville" c="WOODVILLE"/>
<c n="Leipsic" c="LEIPSIC"/></dma>
    
    <dma code="554" title="Wheeling, WV-Steubenville, OH">
<c n="Barnesville" c="BARNESVILLE"/>
<c n="Bellaire" c="BELLAIRE"/>
<c n="Blaine" c="BLAINE"/>
<c n="Bowerston" c="BOWERSTON"/>
<c n="Bridgeport" c="BRIDGEPORT"/>
<c n="Cadiz" c="CADIZ"/>
<c n="Hammondsville" c="HAMMONDSVILLE"/>
<c n="Hannibal" c="HANNIBAL"/>
<c n="Hopedale" c="HOPEDALE"/>
<c n="Irondale" c="IRONDALE"/>
<c n="Martins Ferry" c="MARTINS FERRY"/>
<c n="Morristown" c="MORRISTOWN"/>
<c n="New Rumley" c="NEW RUMLEY"/>
<c n="Powhatan Point" c="POWHATAN POINT"/>
<c n="Shadyside" c="SHADYSIDE"/>
<c n="St. Clairsville" c="ST. CLAIRSVILLE"/>
<c n="Stafford" c="STAFFORD"/>
<c n="Steubenville" c="STEUBENVILLE"/>
<c n="Toronto" c="TORONTO"/>
<c n="Warnock" c="WARNOCK"/>
<c n="Woodsfield" c="WOODSFIELD"/>
<c n="Chester" c="CHESTER"/>
<c n="Colliers" c="COLLIERS"/>
<c n="Middlebourne" c="MIDDLEBOURNE"/>
<c n="Moundsville" c="MOUNDSVILLE"/>
<c n="New Cumberland" c="NEW CUMBERLAND"/>
<c n="New Martinsville" c="NEW MARTINSVILLE"/>
<c n="Newell" c="NEWELL"/>
<c n="Triadelphia" c="TRIADELPHIA"/>
<c n="Valley Grove" c="VALLEY GROVE"/>
<c n="Weirton" c="WEIRTON"/>
<c n="Wellsburg" c="WELLSBURG"/>
<c n="Wheeling" c="WHEELING"/>
<c n="Cameron" c="CAMERON"/>
<c n="Wintersville" c="WINTERSVILLE"/></dma>
    
    <dma code="558" title="Lima, OH">
<c n="Lima" c="LIMA"/></dma>
    
    <dma code="596" title="Zanesville, OH">
<c n="Dresden" c="DRESDEN"/>
<c n="Duncan Falls" c="DUNCAN FALLS"/>
<c n="New Concord" c="NEW CONCORD"/>
<c n="Philo" c="PHILO"/>
<c n="Zanesville" c="ZANESVILLE"/></dma>
    </state>
<state id="DC" full_name="District of Columbia">
    <dma code="511" title="Washington, DC (Hagerstown, MD)">
<c n="Washington" c="WASHINGTON"/>
<c n="Accokeek" c="ACCOKEEK"/>
<c n="Adamstown" c="ADAMSTOWN"/>
<c n="Joint Base Andrews Naval Air Facility" c="JOINT BASE ANDREWS NAVAL AIR FACILITY"/>
<c n="Ashton" c="ASHTON"/>
<c n="Beltsville" c="BELTSVILLE"/>
<c n="Bethesda" c="BETHESDA"/>
<c n="Bladensburg" c="BLADENSBURG"/>
<c n="Bowie" c="BOWIE"/>
<c n="Boyds" c="BOYDS"/>
<c n="Brandywine" c="BRANDYWINE"/>
<c n="Brentwood" c="BRENTWOOD"/>
<c n="Brookeville" c="BROOKEVILLE"/>
<c n="Brownsville" c="BROWNSVILLE"/>
<c n="Brunswick" c="BRUNSWICK"/>
<c n="Burtonsville" c="BURTONSVILLE"/>
<c n="Cabin John" c="CABIN JOHN"/>
<c n="California" c="CALIFORNIA"/>
<c n="Capitol Heights" c="CAPITOL HEIGHTS"/>
<c n="Highfield-Cascade" c="HIGHFIELD-CASCADE"/>
<c n="Charlotte Hall" c="CHARLOTTE HALL"/>
<c n="Cheltenham" c="CHELTENHAM"/>
<c n="Chesapeake Beach" c="CHESAPEAKE BEACH"/>
<c n="Chevy Chase" c="CHEVY CHASE"/>
<c n="Clarksburg" c="CLARKSBURG"/>
<c n="Clinton" c="CLINTON"/>
<c n="College Park" c="COLLEGE PARK"/>
<c n="Compton" c="COMPTON"/>
<c n="Cumberland" c="CUMBERLAND"/>
<c n="Damascus" c="DAMASCUS"/>
<c n="Derwood" c="DERWOOD"/>
<c n="District Heights" c="DISTRICT HEIGHTS"/>
<c n="Dunkirk" c="DUNKIRK"/>
<c n="Emmitsburg" c="EMMITSBURG"/>
<c n="Faulkner" c="FAULKNER"/>
<c n="Frederick" c="FREDERICK"/>
<c n="Frostburg" c="FROSTBURG"/>
<c n="Fort Washington" c="FORT WASHINGTON"/>
<c n="Funkstown" c="FUNKSTOWN"/>
<c n="Gaithersburg" c="GAITHERSBURG"/>
<c n="Garrett Park" c="GARRETT PARK"/>
<c n="Germantown" c="GERMANTOWN"/>
<c n="Glen Echo" c="GLEN ECHO"/>
<c n="Glenn Dale" c="GLENN DALE"/>
<c n="Great Mills" c="GREAT MILLS"/>
<c n="Greenbelt" c="GREENBELT"/>
<c n="Hagerstown" c="HAGERSTOWN"/>
<c n="Hollywood" c="HOLLYWOOD"/>
<c n="Hughesville" c="HUGHESVILLE"/>
<c n="Huntingtown" c="HUNTINGTOWN"/>
<c n="Hyattsville" c="HYATTSVILLE"/>
<c n="Ijamsville" c="IJAMSVILLE"/>
<c n="Indian Head" c="INDIAN HEAD"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Kensington" c="KENSINGTON"/>
<c n="Knoxville" c="KNOXVILLE"/>
<c n="La Plata" c="LA PLATA"/>
<c n="Lanham" c="LANHAM"/>
<c n="Laurel" c="LAUREL"/>
<c n="Leonardtown" c="LEONARDTOWN"/>
<c n="Lexington Park" c="LEXINGTON PARK"/>
<c n="Luke" c="LUKE"/>
<c n="Lusby" c="LUSBY"/>
<c n="Mechanicsville" c="MECHANICSVILLE"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="Monrovia" c="MONROVIA"/>
<c n="Montgomery Village" c="MONTGOMERY VILLAGE"/>
<c n="Mount Rainier" c="MOUNT RAINIER"/>
<c n="Myersville" c="MYERSVILLE"/>
<c n="Nanjemoy" c="NANJEMOY"/>
<c n="New Market" c="NEW MARKET"/>
<c n="North Beach" c="NORTH BEACH"/>
<c n="Oldtown" c="OLDTOWN"/>
<c n="Olney" c="OLNEY"/>
<c n="Owings" c="OWINGS"/>
<c n="Oxon Hill" c="OXON HILL"/>
<c n="Patuxent River" c="PATUXENT RIVER"/>
<c n="Point of Rocks" c="POINT OF ROCKS"/>
<c n="Poolesville" c="POOLESVILLE"/>
<c n="Potomac" c="POTOMAC"/>
<c n="Prince Frederick" c="PRINCE FREDERICK"/>
<c n="Ridge" c="RIDGE"/>
<c n="Riverdale Park" c="RIVERDALE PARK"/>
<c n="Rock Point" c="ROCK POINT"/>
<c n="Rockville" c="ROCKVILLE"/>
<c n="Sandy Spring" c="SANDY SPRING"/>
<c n="Silver Spring" c="SILVER SPRING"/>
<c n="Smithsburg" c="SMITHSBURG"/>
<c n="Solomons" c="SOLOMONS"/>
<c n="Spencerville" c="SPENCERVILLE"/>
<c n="Saint Inigoes" c="SAINT INIGOES"/>
<c n="St. Leonard" c="ST. LEONARD"/>
<c n="Saint Marys City" c="SAINT MARYS CITY"/>
<c n="Suitland-Silver Hill" c="SUITLAND-SILVER HILL"/>
<c n="Takoma Park" c="TAKOMA PARK"/>
<c n="Temple Hills" c="TEMPLE HILLS"/>
<c n="Upper Marlboro" c="UPPER MARLBORO"/>
<c n="Valley Lee" c="VALLEY LEE"/>
<c n="Waldorf" c="WALDORF"/>
<c n="Walkersville" c="WALKERSVILLE"/>
<c n="Washington Grove" c="WASHINGTON GROVE"/>
<c n="Westernport" c="WESTERNPORT"/>
<c n="White Plains" c="WHITE PLAINS"/>
<c n="Williamsport" c="WILLIAMSPORT"/>
<c n="Woodsboro" c="WOODSBORO"/>
<c n="McConnellsburg" c="MCCONNELLSBURG"/>
<c n="Warfordsburg" c="WARFORDSBURG"/>
<c n="Aldie" c="ALDIE"/>
<c n="Alexandria" c="ALEXANDRIA"/>
<c n="Annandale" c="ANNANDALE"/>
<c n="Arcola" c="ARCOLA"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Ashburn" c="ASHBURN"/>
<c n="Bealeton" c="BEALETON"/>
<c n="Berryville" c="BERRYVILLE"/>
<c n="Boston" c="BOSTON"/>
<c n="Boyce" c="BOYCE"/>
<c n="Bristow" c="BRISTOW"/>
<c n="Burke" c="BURKE"/>
<c n="Catharpin" c="CATHARPIN"/>
<c n="Catlett" c="CATLETT"/>
<c n="Centreville" c="CENTREVILLE"/>
<c n="Chantilly" c="CHANTILLY"/>
<c n="Clifton" c="CLIFTON"/>
<c n="Colonial Beach" c="COLONIAL BEACH"/>
<c n="Culpeper" c="CULPEPER"/>
<c n="Dahlgren" c="DAHLGREN"/>
<c n="Delaplane" c="DELAPLANE"/>
<c n="Dulles" c="DULLES"/>
<c n="Dumfries" c="DUMFRIES"/>
<c n="Dunn Loring" c="DUNN LORING"/>
<c n="Edinburg" c="EDINBURG"/>
<c n="Elkwood" c="ELKWOOD"/>
<c n="Fairfax" c="FAIRFAX"/>
<c n="Fairfax Station" c="FAIRFAX STATION"/>
<c n="Falls Church" c="FALLS CHURCH"/>
<c n="Flint Hill" c="FLINT HILL"/>
<c n="Fredericksburg" c="FREDERICKSBURG"/>
<c n="Front Royal" c="FRONT ROYAL"/>
<c n="Fort Belvoir" c="FORT BELVOIR"/>
<c n="Fort Myer" c="FORT MYER"/>
<c n="Gainesville" c="GAINESVILLE"/>
<c n="Great Falls" c="GREAT FALLS"/>
<c n="Hartwood" c="HARTWOOD"/>
<c n="Haymarket" c="HAYMARKET"/>
<c n="Herndon" c="HERNDON"/>
<c n="King George" c="KING GEORGE"/>
<c n="Kinsale" c="KINSALE"/>
<c n="Leesburg" c="LEESBURG"/>
<c n="Lignum" c="LIGNUM"/>
<c n="Linden" c="LINDEN"/>
<c n="Lorton" c="LORTON"/>
<c n="Lovettsville" c="LOVETTSVILLE"/>
<c n="Luray" c="LURAY"/>
<c n="Manassas" c="MANASSAS"/>
<c n="Marshall" c="MARSHALL"/>
<c n="McLean" c="MCLEAN"/>
<c n="Merrifield" c="MERRIFIELD"/>
<c n="Middleburg" c="MIDDLEBURG"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="Midland" c="MIDLAND"/>
<c n="Millwood" c="MILLWOOD"/>
<c n="Montross" c="MONTROSS"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="New Market" c="NEW MARKET"/>
<c n="Newington" c="NEWINGTON"/>
<c n="Nokesville" c="NOKESVILLE"/>
<c n="Oakton" c="OAKTON"/>
<c n="Occoquan" c="OCCOQUAN"/>
<c n="Paeonian Springs" c="PAEONIAN SPRINGS"/>
<c n="Purcellville" c="PURCELLVILLE"/>
<c n="Quantico" c="QUANTICO"/>
<c n="Remington" c="REMINGTON"/>
<c n="Reston" c="RESTON"/>
<c n="Round Hill" c="ROUND HILL"/>
<c n="Shenandoah" c="SHENANDOAH"/>
<c n="Sperryville" c="SPERRYVILLE"/>
<c n="Spotsylvania" c="SPOTSYLVANIA"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="Stafford" c="STAFFORD"/>
<c n="Stanley" c="STANLEY"/>
<c n="Stephens City" c="STEPHENS CITY"/>
<c n="Sterling" c="STERLING"/>
<c n="Strasburg" c="STRASBURG"/>
<c n="The Plains" c="THE PLAINS"/>
<c n="Triangle" c="TRIANGLE"/>
<c n="Upperville" c="UPPERVILLE"/>
<c n="Vienna" c="VIENNA"/>
<c n="Warrenton" c="WARRENTON"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Waterford" c="WATERFORD"/>
<c n="West McLean" c="WEST MCLEAN"/>
<c n="Winchester" c="WINCHESTER"/>
<c n="Woodbridge" c="WOODBRIDGE"/>
<c n="Woodstock" c="WOODSTOCK"/>
<c n="Bath" c="BATH"/>
<c n="Bunker Hill" c="BUNKER HILL"/>
<c n="Charles Town" c="CHARLES TOWN"/>
<c n="Falling Waters" c="FALLING WATERS"/>
<c n="Fort Ashby" c="FORT ASHBY"/>
<c n="Green Spring" c="GREEN SPRING"/>
<c n="Harpers Ferry" c="HARPERS FERRY"/>
<c n="Hedgesville" c="HEDGESVILLE"/>
<c n="Inwood" c="INWOOD"/>
<c n="Keyser" c="KEYSER"/>
<c n="Lost City" c="LOST CITY"/>
<c n="Martinsburg" c="MARTINSBURG"/>
<c n="Millville" c="MILLVILLE"/>
<c n="Moorefield" c="MOOREFIELD"/>
<c n="Old Fields" c="OLD FIELDS"/>
<c n="Petersburg" c="PETERSBURG"/>
<c n="Ranson" c="RANSON"/>
<c n="Romney" c="ROMNEY"/>
<c n="Shepherdstown" c="SHEPHERDSTOWN"/>
<c n="Adelphi" c="ADELPHI"/>
<c n="Aquia Harbour" c="AQUIA HARBOUR"/>
<c n="Aspen Hill" c="ASPEN HILL"/>
<c n="Bailey s Crossroads" c="BAILEY S CROSSROADS"/>
<c n="Ballenger Creek" c="BALLENGER CREEK"/>
<c n="Belle Haven" c="BELLE HAVEN"/>
<c n="Bennsville" c="BENNSVILLE"/>
<c n="Brambleton" c="BRAMBLETON"/>
<c n="Bull Run" c="BULL RUN"/>
<c n="Calverton" c="CALVERTON"/>
<c n="Camp Springs" c="CAMP SPRINGS"/>
<c n="Cheverly" c="CHEVERLY"/>
<c n="Chillum" c="CHILLUM"/>
<c n="Cloverly" c="CLOVERLY"/>
<c n="Colesville" c="COLESVILLE"/>
<c n="Dale City" c="DALE CITY"/>
<c n="Darnestown" c="DARNESTOWN"/>
<c n="East Riverdale" c="EAST RIVERDALE"/>
<c n="Fairland" c="FAIRLAND"/>
<c n="Falmouth" c="FALMOUTH"/>
<c n="Forestville" c="FORESTVILLE"/>
<c n="Fort Hunt" c="FORT HUNT"/>
<c n="Franconia" c="FRANCONIA"/>
<c n="Friendly" c="FRIENDLY"/>
<c n="Goddard" c="GODDARD"/>
<c n="Greater Landover" c="GREATER LANDOVER"/>
<c n="Green Valley" c="GREEN VALLEY"/>
<c n="Groveton" c="GROVETON"/>
<c n="Hancock" c="HANCOCK"/>
<c n="Hillcrest Heights" c="HILLCREST HEIGHTS"/>
<c n="Hybla Valley" c="HYBLA VALLEY"/>
<c n="Idylwood" c="IDYLWOOD"/>
<c n="Kettering" c="KETTERING"/>
<c n="Lake Arbor" c="LAKE ARBOR"/>
<c n="Lake Ridge" c="LAKE RIDGE"/>
<c n="Lanham-Seabrook" c="LANHAM-SEABROOK"/>
<c n="Largo" c="LARGO"/>
<c n="Lincolnia" c="LINCOLNIA"/>
<c n="Linganore-Bartonsville" c="LINGANORE-BARTONSVILLE"/>
<c n="Manassas Park" c="MANASSAS PARK"/>
<c n="Mantua" c="MANTUA"/>
<c n="Mitchellville" c="MITCHELLVILLE"/>
<c n="Montclair" c="MONTCLAIR"/>
<c n="New Carrollton" c="NEW CARROLLTON"/>
<c n="North Bethesda" c="NORTH BETHESDA"/>
<c n="North Kensington" c="NORTH KENSINGTON"/>
<c n="North Potomac" c="NORTH POTOMAC"/>
<c n="North Springfield" c="NORTH SPRINGFIELD"/>
<c n="Oxon Hill-Glassmanor" c="OXON HILL-GLASSMANOR"/>
<c n="Potomac Falls" c="POTOMAC FALLS"/>
<c n="Redland" c="REDLAND"/>
<c n="Rosaryville" c="ROSARYVILLE"/>
<c n="Rose Hill" c="ROSE HILL"/>
<c n="South Kensington" c="SOUTH KENSINGTON"/>
<c n="South Laurel" c="SOUTH LAUREL"/>
<c n="St. Charles" c="ST. CHARLES"/>
<c n="Thurmont" c="THURMONT"/>
<c n="Travilah" c="TRAVILAH"/>
<c n="Tysons Corner" c="TYSONS CORNER"/>
<c n="West Falls Church" c="WEST FALLS CHURCH"/>
<c n="West Laurel" c="WEST LAUREL"/>
<c n="West Springfield" c="WEST SPRINGFIELD"/>
<c n="Wheaton-Glenmont" c="WHEATON-GLENMONT"/>
<c n="White Oak" c="WHITE OAK"/>
<c n="Wolf Trap" c="WOLF TRAP"/>
<c n="Woodmore" c="WOODMORE"/></dma>
    </state>
<state id="MD" full_name="Maryland">
    <dma code="512" title="Baltimore, MD">
<c n="Aberdeen" c="ABERDEEN"/>
<c n="Aberdeen Proving Ground" c="ABERDEEN PROVING GROUND"/>
<c n="Abingdon" c="ABINGDON"/>
<c n="Annapolis" c="ANNAPOLIS"/>
<c n="Annapolis Junction" c="ANNAPOLIS JUNCTION"/>
<c n="Arnold" c="ARNOLD"/>
<c n="Baltimore" c="BALTIMORE"/>
<c n="Bel Air" c="BEL AIR"/>
<c n="Belcamp" c="BELCAMP"/>
<c n="Bethlehem" c="BETHLEHEM"/>
<c n="Brooklandville" c="BROOKLANDVILLE"/>
<c n="Brooklyn" c="BROOKLYN"/>
<c n="Butler" c="BUTLER"/>
<c n="Catonsville" c="CATONSVILLE"/>
<c n="Cecilton" c="CECILTON"/>
<c n="Centreville" c="CENTREVILLE"/>
<c n="Chase" c="CHASE"/>
<c n="Chester" c="CHESTER"/>
<c n="Chestertown" c="CHESTERTOWN"/>
<c n="Churchville" c="CHURCHVILLE"/>
<c n="Clarksville" c="CLARKSVILLE"/>
<c n="Cockeysville" c="COCKEYSVILLE"/>
<c n="Colora" c="COLORA"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Conowingo" c="CONOWINGO"/>
<c n="Cooksville" c="COOKSVILLE"/>
<c n="Crofton" c="CROFTON"/>
<c n="Crownsville" c="CROWNSVILLE"/>
<c n="Curtis Bay" c="CURTIS BAY"/>
<c n="Darlington" c="DARLINGTON"/>
<c n="Davidsonville" c="DAVIDSONVILLE"/>
<c n="Deale" c="DEALE"/>
<c n="Denton" c="DENTON"/>
<c n="Dundalk" c="DUNDALK"/>
<c n="Easton" c="EASTON"/>
<c n="Edgewater" c="EDGEWATER"/>
<c n="Edgewood" c="EDGEWOOD"/>
<c n="Elkridge" c="ELKRIDGE"/>
<c n="Elkton" c="ELKTON"/>
<c n="Ellicott City" c="ELLICOTT CITY"/>
<c n="Essex" c="ESSEX"/>
<c n="Fallston" c="FALLSTON"/>
<c n="Federalsburg" c="FEDERALSBURG"/>
<c n="Finksburg" c="FINKSBURG"/>
<c n="Forest Hill" c="FOREST HILL"/>
<c n="Fork" c="FORK"/>
<c n="Fort Meade" c="FORT MEADE"/>
<c n="Fulton" c="FULTON"/>
<c n="Gambrills" c="GAMBRILLS"/>
<c n="Glen Arm" c="GLEN ARM"/>
<c n="Glen Burnie" c="GLEN BURNIE"/>
<c n="Glenelg" c="GLENELG"/>
<c n="Glenwood" c="GLENWOOD"/>
<c n="Glyndon" c="GLYNDON"/>
<c n="Grasonville" c="GRASONVILLE"/>
<c n="Gunpowder" c="GUNPOWDER"/>
<c n="Gwynn Oak" c="GWYNN OAK"/>
<c n="Halethorpe" c="HALETHORPE"/>
<c n="Hampstead" c="HAMPSTEAD"/>
<c n="Hanover" c="HANOVER"/>
<c n="Harwood" c="HARWOOD"/>
<c n="Havre de Grace" c="HAVRE DE GRACE"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Hunt Valley" c="HUNT VALLEY"/>
<c n="Jarrettsville" c="JARRETTSVILLE"/>
<c n="Jessup" c="JESSUP"/>
<c n="Joppa" c="JOPPA"/>
<c n="Keymar" c="KEYMAR"/>
<c n="Linthicum Heights" c="LINTHICUM HEIGHTS"/>
<c n="Lisbon" c="LISBON"/>
<c n="Lutherville-Timonium" c="LUTHERVILLE-TIMONIUM"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Marriottsville" c="MARRIOTTSVILLE"/>
<c n="Mayo" c="MAYO"/>
<c n="McDaniel" c="MCDANIEL"/>
<c n="Middle River" c="MIDDLE RIVER"/>
<c n="Millersville" c="MILLERSVILLE"/>
<c n="Monkton" c="MONKTON"/>
<c n="New Windsor" c="NEW WINDSOR"/>
<c n="North East" c="NORTH EAST"/>
<c n="Nottingham" c="NOTTINGHAM"/>
<c n="Odenton" c="ODENTON"/>
<c n="Owings Mills" c="OWINGS MILLS"/>
<c n="Parkton" c="PARKTON"/>
<c n="Parkville" c="PARKVILLE"/>
<c n="Pasadena" c="PASADENA"/>
<c n="Perry Hall" c="PERRY HALL"/>
<c n="Perryman" c="PERRYMAN"/>
<c n="Perryville" c="PERRYVILLE"/>
<c n="Phoenix" c="PHOENIX"/>
<c n="Pikesville" c="PIKESVILLE"/>
<c n="Port Deposit" c="PORT DEPOSIT"/>
<c n="Preston" c="PRESTON"/>
<c n="Randallstown" c="RANDALLSTOWN"/>
<c n="Reisterstown" c="REISTERSTOWN"/>
<c n="Ridgely" c="RIDGELY"/>
<c n="Rising Sun" c="RISING SUN"/>
<c n="Rosedale" c="ROSEDALE"/>
<c n="Savage" c="SAVAGE"/>
<c n="Severn" c="SEVERN"/>
<c n="Severna Park" c="SEVERNA PARK"/>
<c n="Shady Side" c="SHADY SIDE"/>
<c n="Simpsonville" c="SIMPSONVILLE"/>
<c n="Sparks Glencoe" c="SPARKS GLENCOE"/>
<c n="Sparrows Point" c="SPARROWS POINT"/>
<c n="St. Michaels" c="ST. MICHAELS"/>
<c n="Stevenson" c="STEVENSON"/>
<c n="Stevensville" c="STEVENSVILLE"/>
<c n="Sudlersville" c="SUDLERSVILLE"/>
<c n="Sykesville" c="SYKESVILLE"/>
<c n="Taneytown" c="TANEYTOWN"/>
<c n="Towson" c="TOWSON"/>
<c n="Union Bridge" c="UNION BRIDGE"/>
<c n="West Friendship" c="WEST FRIENDSHIP"/>
<c n="West River" c="WEST RIVER"/>
<c n="Westminster" c="WESTMINSTER"/>
<c n="White Hall" c="WHITE HALL"/>
<c n="White Marsh" c="WHITE MARSH"/>
<c n="Whiteford" c="WHITEFORD"/>
<c n="Windsor Mill" c="WINDSOR MILL"/>
<c n="Woodbine" c="WOODBINE"/>
<c n="Woodstock" c="WOODSTOCK"/>
<c n="Wye Mills" c="WYE MILLS"/>
<c n="Arbutus" c="ARBUTUS"/>
<c n="Bel Air North" c="BEL AIR NORTH"/>
<c n="Bel Air South" c="BEL AIR SOUTH"/>
<c n="Brooklyn Park" c="BROOKLYN PARK"/>
<c n="Cape St. Claire" c="CAPE ST. CLAIRE"/>
<c n="Carney" c="CARNEY"/>
<c n="Edgemere" c="EDGEMERE"/>
<c n="Eldersburg" c="ELDERSBURG"/>
<c n="Ferndale" c="FERNDALE"/>
<c n="Garrison" c="GARRISON"/>
<c n="Hillsmere Shores" c="HILLSMERE SHORES"/>
<c n="Joppatowne" c="JOPPATOWNE"/>
<c n="Kingsville" c="KINGSVILLE"/>
<c n="Lake Shore" c="LAKE SHORE"/>
<c n="Lansdowne" c="LANSDOWNE"/>
<c n="Lochearn" c="LOCHEARN"/>
<c n="Maryland City" c="MARYLAND CITY"/>
<c n="Milford Mill" c="MILFORD MILL"/>
<c n="North Laurel" c="NORTH LAUREL"/>
<c n="Parole" c="PAROLE"/>
<c n="Pylesville" c="PYLESVILLE"/>
<c n="Riva" c="RIVA"/>
<c n="Rossville" c="ROSSVILLE"/>
<c n="Savage" c="SAVAGE"/>
<c n="Woodlawn" c="WOODLAWN"/></dma>
    
    <dma code="576" title="Salisbury, MD">
<c n="Bethany Beach" c="BETHANY BEACH"/>
<c n="Bridgeville" c="BRIDGEVILLE"/>
<c n="Dagsboro" c="DAGSBORO"/>
<c n="Delmar" c="DELMAR"/>
<c n="Fenwick Island" c="FENWICK ISLAND"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Greenwood" c="GREENWOOD"/>
<c n="Laurel" c="LAUREL"/>
<c n="Lewes" c="LEWES"/>
<c n="Millsboro" c="MILLSBORO"/>
<c n="Milton" c="MILTON"/>
<c n="Ocean View" c="OCEAN VIEW"/>
<c n="Rehoboth Beach" c="REHOBOTH BEACH"/>
<c n="Seaford" c="SEAFORD"/>
<c n="Selbyville" c="SELBYVILLE"/>
<c n="Berlin" c="BERLIN"/>
<c n="Cambridge" c="CAMBRIDGE"/>
<c n="Crisfield" c="CRISFIELD"/>
<c n="Deal Island" c="DEAL ISLAND"/>
<c n="Delmar" c="DELMAR"/>
<c n="East New Market" c="EAST NEW MARKET"/>
<c n="Fruitland" c="FRUITLAND"/>
<c n="Hurlock" c="HURLOCK"/>
<c n="Nanticoke" c="NANTICOKE"/>
<c n="Newark" c="NEWARK"/>
<c n="Ocean City" c="OCEAN CITY"/>
<c n="Pocomoke City" c="POCOMOKE CITY"/>
<c n="Princess Anne" c="PRINCESS ANNE"/>
<c n="Salisbury" c="SALISBURY"/>
<c n="Snow Hill" c="SNOW HILL"/>
<c n="Vienna" c="VIENNA"/>
<c n="Westover" c="WESTOVER"/>
<c n="Willards" c="WILLARDS"/>
<c n="Long Neck" c="LONG NECK"/>
<c n="Ocean Pines" c="OCEAN PINES"/></dma>
    </state>
<state id="NC" full_name="North Carolina">
    <dma code="517" title="Charlotte, NC">
<c n="Albemarle" c="ALBEMARLE"/>
<c n="Banner Elk" c="BANNER ELK"/>
<c n="Belmont" c="BELMONT"/>
<c n="Bessemer City" c="BESSEMER CITY"/>
<c n="Boiling Springs" c="BOILING SPRINGS"/>
<c n="Boone" c="BOONE"/>
<c n="Catawba" c="CATAWBA"/>
<c n="Charlotte" c="CHARLOTTE"/>
<c n="Cherryville" c="CHERRYVILLE"/>
<c n="Claremont" c="CLAREMONT"/>
<c n="Cleveland" c="CLEVELAND"/>
<c n="Concord" c="CONCORD"/>
<c n="Conover" c="CONOVER"/>
<c n="Cornelius" c="CORNELIUS"/>
<c n="Cramerton" c="CRAMERTON"/>
<c n="Creston" c="CRESTON"/>
<c n="Dallas" c="DALLAS"/>
<c n="Davidson" c="DAVIDSON"/>
<c n="Denver" c="DENVER"/>
<c n="East Spencer" c="EAST SPENCER"/>
<c n="Ellerbe" c="ELLERBE"/>
<c n="Gastonia" c="GASTONIA"/>
<c n="Granite Falls" c="GRANITE FALLS"/>
<c n="Grover" c="GROVER"/>
<c n="Hamlet" c="HAMLET"/>
<c n="Harrisburg" c="HARRISBURG"/>
<c n="Hickory" c="HICKORY"/>
<c n="Hildebran" c="HILDEBRAN"/>
<c n="Hoffman" c="HOFFMAN"/>
<c n="Hudson" c="HUDSON"/>
<c n="Huntersville" c="HUNTERSVILLE"/>
<c n="Indian Trail" c="INDIAN TRAIL"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Kannapolis" c="KANNAPOLIS"/>
<c n="Kings Mountain" c="KINGS MOUNTAIN"/>
<c n="Lansing" c="LANSING"/>
<c n="Lattimore" c="LATTIMORE"/>
<c n="Lawndale" c="LAWNDALE"/>
<c n="Lenoir" c="LENOIR"/>
<c n="Lincolnton" c="LINCOLNTON"/>
<c n="Lowell" c="LOWELL"/>
<c n="Maiden" c="MAIDEN"/>
<c n="Marshville" c="MARSHVILLE"/>
<c n="Matthews" c="MATTHEWS"/>
<c n="Midland" c="MIDLAND"/>
<c n="Misenheimer" c="MISENHEIMER"/>
<c n="Monroe" c="MONROE"/>
<c n="Mooresville" c="MOORESVILLE"/>
<c n="Morganton" c="MORGANTON"/>
<c n="Mount Holly" c="MOUNT HOLLY"/>
<c n="Mount Pleasant" c="MOUNT PLEASANT"/>
<c n="Mount Ulla" c="MOUNT ULLA"/>
<c n="New London" c="NEW LONDON"/>
<c n="Newell" c="NEWELL"/>
<c n="Newland" c="NEWLAND"/>
<c n="Newton" c="NEWTON"/>
<c n="Olin" c="OLIN"/>
<c n="Pineville" c="PINEVILLE"/>
<c n="Polkton" c="POLKTON"/>
<c n="Rockingham" c="ROCKINGHAM"/>
<c n="Rutherford College" c="RUTHERFORD COLLEGE"/>
<c n="Salisbury" c="SALISBURY"/>
<c n="Shelby" c="SHELBY"/>
<c n="Stanley" c="STANLEY"/>
<c n="Statesville" c="STATESVILLE"/>
<c n="Stony Point" c="STONY POINT"/>
<c n="Taylorsville" c="TAYLORSVILLE"/>
<c n="Troutman" c="TROUTMAN"/>
<c n="Valdese" c="VALDESE"/>
<c n="Vale" c="VALE"/>
<c n="Wadesboro" c="WADESBORO"/>
<c n="Warrensville" c="WARRENSVILLE"/>
<c n="Waxhaw" c="WAXHAW"/>
<c n="West Jefferson" c="WEST JEFFERSON"/>
<c n="Cheraw" c="CHERAW"/>
<c n="Chester" c="CHESTER"/>
<c n="Chesterfield" c="CHESTERFIELD"/>
<c n="Clover" c="CLOVER"/>
<c n="Fort Lawn" c="FORT LAWN"/>
<c n="Fort Mill" c="FORT MILL"/>
<c n="Heath Springs" c="HEATH SPRINGS"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Kershaw" c="KERSHAW"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Pageland" c="PAGELAND"/>
<c n="Richburg" c="RICHBURG"/>
<c n="Rock Hill" c="ROCK HILL"/>
<c n="York" c="YORK"/>
<c n="China Grove" c="CHINA GROVE"/>
<c n="Crossnore" c="CROSSNORE"/>
<c n="Lake Wylie" c="LAKE WYLIE"/>
<c n="Locust" c="LOCUST"/>
<c n="Marvin" c="MARVIN"/>
<c n="Mint Hill" c="MINT HILL"/>
<c n="Oakboro" c="OAKBORO"/>
<c n="Rockwell" c="ROCKWELL"/>
<c n="Stallings" c="STALLINGS"/>
<c n="Tega Cay" c="TEGA CAY"/>
<c n="Weddington" c="WEDDINGTON"/>
<c n="Wesley Chapel" c="WESLEY CHAPEL"/>
<c n="Westport" c="WESTPORT"/>
<c n="Wingate" c="WINGATE"/></dma>
    
    <dma code="518" title="Greensboro-Winston Salem, NC">
<c n="Advance" c="ADVANCE"/>
<c n="Asheboro" c="ASHEBORO"/>
<c n="Belews Creek" c="BELEWS CREEK"/>
<c n="Blanch" c="BLANCH"/>
<c n="Browns Summit" c="BROWNS SUMMIT"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Cedar Falls" c="CEDAR FALLS"/>
<c n="Clemmons" c="CLEMMONS"/>
<c n="Climax" c="CLIMAX"/>
<c n="Colfax" c="COLFAX"/>
<c n="Danbury" c="DANBURY"/>
<c n="Dobson" c="DOBSON"/>
<c n="Eden" c="EDEN"/>
<c n="Elkin" c="ELKIN"/>
<c n="Elon" c="ELON"/>
<c n="Ennice" c="ENNICE"/>
<c n="Gibsonville" c="GIBSONVILLE"/>
<c n="Graham" c="GRAHAM"/>
<c n="Greensboro" c="GREENSBORO"/>
<c n="Hamptonville" c="HAMPTONVILLE"/>
<c n="Haw River" c="HAW RIVER"/>
<c n="High Point" c="HIGH POINT"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Kernersville" c="KERNERSVILLE"/>
<c n="King" c="KING"/>
<c n="Lewisville" c="LEWISVILLE"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Madison" c="MADISON"/>
<c n="Mayodan" c="MAYODAN"/>
<c n="McLeansville" c="MCLEANSVILLE"/>
<c n="Mocksville" c="MOCKSVILLE"/>
<c n="Mount Airy" c="MOUNT AIRY"/>
<c n="Mount Gilead" c="MOUNT GILEAD"/>
<c n="North Wilkesboro" c="NORTH WILKESBORO"/>
<c n="Pfafftown" c="PFAFFTOWN"/>
<c n="Pilot Mountain" c="PILOT MOUNTAIN"/>
<c n="Pine Hall" c="PINE HALL"/>
<c n="Pleasant Garden" c="PLEASANT GARDEN"/>
<c n="Purlear" c="PURLEAR"/>
<c n="Ramseur" c="RAMSEUR"/>
<c n="Randleman" c="RANDLEMAN"/>
<c n="Reidsville" c="REIDSVILLE"/>
<c n="Ruffin" c="RUFFIN"/>
<c n="Rural Hall" c="RURAL HALL"/>
<c n="Sparta" c="SPARTA"/>
<c n="Staley" c="STALEY"/>
<c n="Star" c="STAR"/>
<c n="Stoneville" c="STONEVILLE"/>
<c n="Swepsonville" c="SWEPSONVILLE"/>
<c n="Thomasville" c="THOMASVILLE"/>
<c n="Tobaccoville" c="TOBACCOVILLE"/>
<c n="Trinity" c="TRINITY"/>
<c n="Troy" c="TROY"/>
<c n="Walnut Cove" c="WALNUT COVE"/>
<c n="Welcome" c="WELCOME"/>
<c n="Wentworth" c="WENTWORTH"/>
<c n="Whitsett" c="WHITSETT"/>
<c n="Wilkesboro" c="WILKESBORO"/>
<c n="Winston-Salem" c="WINSTON-SALEM"/>
<c n="Yadkinville" c="YADKINVILLE"/>
<c n="Yanceyville" c="YANCEYVILLE"/>
<c n="Critz" c="CRITZ"/>
<c n="Stuart" c="STUART"/>
<c n="Archdale" c="ARCHDALE"/>
<c n="Denton" c="DENTON"/>
<c n="Liberty" c="LIBERTY"/>
<c n="Oak Ridge" c="OAK RIDGE"/>
<c n="Saxapahaw" c="SAXAPAHAW"/>
<c n="Summerfield" c="SUMMERFIELD"/>
<c n="Wallburg" c="WALLBURG"/></dma>
    
    <dma code="545" title="Greenville-New Bern-Washington, NC">
<c n="Alliance" c="ALLIANCE"/>
<c n="Atlantic" c="ATLANTIC"/>
<c n="Atlantic Beach" c="ATLANTIC BEACH"/>
<c n="Aulander" c="AULANDER"/>
<c n="Aurora" c="AURORA"/>
<c n="Bath" c="BATH"/>
<c n="Bayboro" c="BAYBORO"/>
<c n="Beaufort" c="BEAUFORT"/>
<c n="Belhaven" c="BELHAVEN"/>
<c n="Bridgeton" c="BRIDGETON"/>
<c n="Camp Lejeune" c="CAMP LEJEUNE"/>
<c n="Cedar Island" c="CEDAR ISLAND"/>
<c n="Marine Corps Air Station Cherry Point" c="MARINE CORPS AIR STATION CHERRY POINT"/>
<c n="Chocowinity" c="CHOCOWINITY"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Cove City" c="COVE CITY"/>
<c n="Creswell" c="CRESWELL"/>
<c n="Emerald Isle" c="EMERALD ISLE"/>
<c n="Engelhard" c="ENGELHARD"/>
<c n="Everetts" c="EVERETTS"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Farmville" c="FARMVILLE"/>
<c n="Grantsboro" c="GRANTSBORO"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Harkers Island" c="HARKERS ISLAND"/>
<c n="Havelock" c="HAVELOCK"/>
<c n="Holly Ridge" c="HOLLY RIDGE"/>
<c n="Jacksonville" c="JACKSONVILLE"/>
<c n="Kenansville" c="KENANSVILLE"/>
<c n="Kinston" c="KINSTON"/>
<c n="La Grange" c="LA GRANGE"/>
<c n="Maury" c="MAURY"/>
<c n="Marine Corps Air Station New River" c="MARINE CORPS AIR STATION NEW RIVER"/>
<c n="Morehead City" c="MOREHEAD CITY"/>
<c n="New Bern" c="NEW BERN"/>
<c n="Newport" c="NEWPORT"/>
<c n="Ocracoke" c="OCRACOKE"/>
<c n="Oriental" c="ORIENTAL"/>
<c n="Pantego" c="PANTEGO"/>
<c n="Pinetown" c="PINETOWN"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Pollocksville" c="POLLOCKSVILLE"/>
<c n="Robersonville" c="ROBERSONVILLE"/>
<c n="Rose Hill" c="ROSE HILL"/>
<c n="Sneads Ferry" c="SNEADS FERRY"/>
<c n="Snow Hill" c="SNOW HILL"/>
<c n="Swan Quarter" c="SWAN QUARTER"/>
<c n="Swansboro" c="SWANSBORO"/>
<c n="Trenton" c="TRENTON"/>
<c n="Vanceboro" c="VANCEBORO"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Williamston" c="WILLIAMSTON"/>
<c n="Windsor" c="WINDSOR"/>
<c n="Winterville" c="WINTERVILLE"/>
<c n="Beulaville" c="BEULAVILLE"/>
<c n="North Topsail Beach" c="NORTH TOPSAIL BEACH"/>
<c n="Richlands" c="RICHLANDS"/></dma>
    
    <dma code="550" title="Wilmington, NC">
<c n="Bolivia" c="BOLIVIA"/>
<c n="Brunswick" c="BRUNSWICK"/>
<c n="Burgaw" c="BURGAW"/>
<c n="Calabash" c="CALABASH"/>
<c n="Carolina Beach" c="CAROLINA BEACH"/>
<c n="Castle Hayne" c="CASTLE HAYNE"/>
<c n="Dublin" c="DUBLIN"/>
<c n="Elizabethtown" c="ELIZABETHTOWN"/>
<c n="Hampstead" c="HAMPSTEAD"/>
<c n="Kure Beach" c="KURE BEACH"/>
<c n="Leland" c="LELAND"/>
<c n="Oak Island" c="OAK ISLAND"/>
<c n="Ocean Isle Beach" c="OCEAN ISLE BEACH"/>
<c n="Rocky Point" c="ROCKY POINT"/>
<c n="Shallotte" c="SHALLOTTE"/>
<c n="Southport" c="SOUTHPORT"/>
<c n="Supply" c="SUPPLY"/>
<c n="Tabor City" c="TABOR CITY"/>
<c n="Whiteville" c="WHITEVILLE"/>
<c n="Willard" c="WILLARD"/>
<c n="Wilmington" c="WILMINGTON"/>
<c n="Wrightsville Beach" c="WRIGHTSVILLE BEACH"/>
<c n="Bladenboro" c="BLADENBORO"/>
<c n="Boiling Spring Lakes" c="BOILING SPRING LAKES"/>
<c n="Carolina Shores" c="CAROLINA SHORES"/>
<c n="Holden Beach" c="HOLDEN BEACH"/>
<c n="Sunset Beach" c="SUNSET BEACH"/>
<c n="Varnamtown" c="VARNAMTOWN"/></dma>
    
    <dma code="560" title="Raleigh-Durham (Fayetteville), NC">
<c n="Aberdeen" c="ABERDEEN"/>
<c n="Angier" c="ANGIER"/>
<c n="Apex" c="APEX"/>
<c n="Bailey" c="BAILEY"/>
<c n="Battleboro" c="BATTLEBORO"/>
<c n="Benson" c="BENSON"/>
<c n="Black Creek" c="BLACK CREEK"/>
<c n="Buies Creek" c="BUIES CREEK"/>
<c n="Bunn" c="BUNN"/>
<c n="Butner" c="BUTNER"/>
<c n="Cameron" c="CAMERON"/>
<c n="Carrboro" c="CARRBORO"/>
<c n="Carthage" c="CARTHAGE"/>
<c n="Cary" c="CARY"/>
<c n="Chapel Hill" c="CHAPEL HILL"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Clinton" c="CLINTON"/>
<c n="Coats" c="COATS"/>
<c n="Conetoe" c="CONETOE"/>
<c n="Creedmoor" c="CREEDMOOR"/>
<c n="Dudley" c="DUDLEY"/>
<c n="Dunn" c="DUNN"/>
<c n="Durham" c="DURHAM"/>
<c n="Eagle Springs" c="EAGLE SPRINGS"/>
<c n="Efland" c="EFLAND"/>
<c n="Elm City" c="ELM CITY"/>
<c n="Enfield" c="ENFIELD"/>
<c n="Erwin" c="ERWIN"/>
<c n="Fayetteville" c="FAYETTEVILLE"/>
<c n="Franklinton" c="FRANKLINTON"/>
<c n="Ft Bragg" c="FT BRAGG"/>
<c n="Fuquay-Varina" c="FUQUAY-VARINA"/>
<c n="Garner" c="GARNER"/>
<c n="Godwin" c="GODWIN"/>
<c n="Goldsboro" c="GOLDSBORO"/>
<c n="Goldston" c="GOLDSTON"/>
<c n="Halifax" c="HALIFAX"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Hillsborough" c="HILLSBOROUGH"/>
<c n="Holly Springs" c="HOLLY SPRINGS"/>
<c n="Hope Mills" c="HOPE MILLS"/>
<c n="Jackson" c="JACKSON"/>
<c n="Jackson Springs" c="JACKSON SPRINGS"/>
<c n="Kittrell" c="KITTRELL"/>
<c n="Knightdale" c="KNIGHTDALE"/>
<c n="Lillington" c="LILLINGTON"/>
<c n="Littleton" c="LITTLETON"/>
<c n="Louisburg" c="LOUISBURG"/>
<c n="Lucama" c="LUCAMA"/>
<c n="Manson" c="MANSON"/>
<c n="McCain" c="MCCAIN"/>
<c n="Middlesex" c="MIDDLESEX"/>
<c n="Morrisville" c="MORRISVILLE"/>
<c n="Mount Olive" c="MOUNT OLIVE"/>
<c n="Nashville" c="NASHVILLE"/>
<c n="Newton Grove" c="NEWTON GROVE"/>
<c n="Oxford" c="OXFORD"/>
<c n="Pinehurst" c="PINEHURST"/>
<c n="Pinetops" c="PINETOPS"/>
<c n="Pittsboro" c="PITTSBORO"/>
<c n="Pope Army Airfield" c="POPE ARMY AIRFIELD"/>
<c n="Raeford" c="RAEFORD"/>
<c n="Raleigh" c="RALEIGH"/>
<c n="Roanoke Rapids" c="ROANOKE RAPIDS"/>
<c n="Robbins" c="ROBBINS"/>
<c n="Rocky Mount" c="ROCKY MOUNT"/>
<c n="Roseboro" c="ROSEBORO"/>
<c n="Roxboro" c="ROXBORO"/>
<c n="Sanford" c="SANFORD"/>
<c n="Scotland Neck" c="SCOTLAND NECK"/>
<c n="Selma" c="SELMA"/>
<c n="Siler City" c="SILER CITY"/>
<c n="Smithfield" c="SMITHFIELD"/>
<c n="Southern Pines" c="SOUTHERN PINES"/>
<c n="Spring Hope" c="SPRING HOPE"/>
<c n="Spring Lake" c="SPRING LAKE"/>
<c n="Tarboro" c="TARBORO"/>
<c n="Tillery" c="TILLERY"/>
<c n="Timberlake" c="TIMBERLAKE"/>
<c n="Wake Forest" c="WAKE FOREST"/>
<c n="Warrenton" c="WARRENTON"/>
<c n="Weldon" c="WELDON"/>
<c n="Wendell" c="WENDELL"/>
<c n="West End" c="WEST END"/>
<c n="Willow Spring" c="WILLOW SPRING"/>
<c n="Wilson" c="WILSON"/>
<c n="Youngsville" c="YOUNGSVILLE"/>
<c n="Zebulon" c="ZEBULON"/>
<c n="Boydton" c="BOYDTON"/>
<c n="Bracey" c="BRACEY"/>
<c n="Chase City" c="CHASE CITY"/>
<c n="Clarksville" c="CLARKSVILLE"/>
<c n="South Hill" c="SOUTH HILL"/>
<c n="Fearrington" c="FEARRINGTON"/>
<c n="Holly Springs" c="HOLLY SPRINGS"/>
<c n="Rockfish" c="ROCKFISH"/>
<c n="Seven Lakes" c="SEVEN LAKES"/></dma>
    </state>
<state id="SC" full_name="South Carolina">
    <dma code="519" title="Charleston, SC">
<c n="Andrews" c="ANDREWS"/>
<c n="Charleston" c="CHARLESTON"/>
<c n="Joint Base Charleston" c="JOINT BASE CHARLESTON"/>
<c n="Cottageville" c="COTTAGEVILLE"/>
<c n="Dorchester" c="DORCHESTER"/>
<c n="Seabrook Island" c="SEABROOK ISLAND"/>
<c n="Folly Beach" c="FOLLY BEACH"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Goose Creek" c="GOOSE CREEK"/>
<c n="Hollywood" c="HOLLYWOOD"/>
<c n="Huger" c="HUGER"/>
<c n="Isle of Palms" c="ISLE OF PALMS"/>
<c n="Johns Island" c="JOHNS ISLAND"/>
<c n="Kingstree" c="KINGSTREE"/>
<c n="Ladson" c="LADSON"/>
<c n="McClellanville" c="MCCLELLANVILLE"/>
<c n="Moncks Corner" c="MONCKS CORNER"/>
<c n="Mount Pleasant" c="MOUNT PLEASANT"/>
<c n="Murrells Inlet" c="MURRELLS INLET"/>
<c n="North Charleston" c="NORTH CHARLESTON"/>
<c n="Pawleys Island" c="PAWLEYS ISLAND"/>
<c n="Ravenel" c="RAVENEL"/>
<c n="Ridgeville" c="RIDGEVILLE"/>
<c n="Round O" c="ROUND O"/>
<c n="St. George" c="ST. GEORGE"/>
<c n="St. Stephen" c="ST. STEPHEN"/>
<c n="Summerville" c="SUMMERVILLE"/>
<c n="Walterboro" c="WALTERBORO"/>
<c n="Hanahan" c="HANAHAN"/>
<c n="Kiawah Island" c="KIAWAH ISLAND"/></dma>
    
    <dma code="546" title="Columbia, SC">
<c n="Ballentine" c="BALLENTINE"/>
<c n="Batesburg-Leesville" c="BATESBURG-LEESVILLE"/>
<c n="Bishopville" c="BISHOPVILLE"/>
<c n="Blythewood" c="BLYTHEWOOD"/>
<c n="Branchville" c="BRANCHVILLE"/>
<c n="Camden" c="CAMDEN"/>
<c n="Cayce" c="CAYCE"/>
<c n="Chapin" c="CHAPIN"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Dalzell" c="DALZELL"/>
<c n="Eastover" c="EASTOVER"/>
<c n="Elgin" c="ELGIN"/>
<c n="Gaston" c="GASTON"/>
<c n="Gilbert" c="GILBERT"/>
<c n="Holly Hill" c="HOLLY HILL"/>
<c n="Irmo" c="IRMO"/>
<c n="Jenkinsville" c="JENKINSVILLE"/>
<c n="Leesville" c="LEESVILLE"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Lugoff" c="LUGOFF"/>
<c n="Lynchburg" c="LYNCHBURG"/>
<c n="Manning" c="MANNING"/>
<c n="Mayesville" c="MAYESVILLE"/>
<c n="Newberry" c="NEWBERRY"/>
<c n="North" c="NORTH"/>
<c n="Orangeburg" c="ORANGEBURG"/>
<c n="Pelion" c="PELION"/>
<c n="Prosperity" c="PROSPERITY"/>
<c n="Richland" c="RICHLAND"/>
<c n="Ridgeway" c="RIDGEWAY"/>
<c n="Saluda" c="SALUDA"/>
<c n="Santee" c="SANTEE"/>
<c n="Shaw Air Force Base" c="SHAW AIR FORCE BASE"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="St. Matthews" c="ST. MATTHEWS"/>
<c n="Summerton" c="SUMMERTON"/>
<c n="Sumter" c="SUMTER"/>
<c n="Swansea" c="SWANSEA"/>
<c n="Turbeville" c="TURBEVILLE"/>
<c n="West Columbia" c="WEST COLUMBIA"/>
<c n="Whitmire" c="WHITMIRE"/>
<c n="Winnsboro" c="WINNSBORO"/>
<c n="Dentsville" c="DENTSVILLE"/>
<c n="Forest Acres" c="FOREST ACRES"/>
<c n="Red Bank" c="RED BANK"/>
<c n="Ridge Spring" c="RIDGE SPRING"/>
<c n="Seven Oaks" c="SEVEN OAKS"/>
<c n="Springdale" c="SPRINGDALE"/>
<c n="St. Andrews" c="ST. ANDREWS"/>
<c n="Woodfield" c="WOODFIELD"/></dma>
    
    <dma code="567" title="Greenville-Spartanburg, SC">
<c n="Carnesville" c="CARNESVILLE"/>
<c n="Elberton" c="ELBERTON"/>
<c n="Franklin Springs" c="FRANKLIN SPRINGS"/>
<c n="Hartwell" c="HARTWELL"/>
<c n="Lavonia" c="LAVONIA"/>
<c n="Toccoa" c="TOCCOA"/>
<c n="Toccoa Falls" c="TOCCOA FALLS"/>
<c n="Arden" c="ARDEN"/>
<c n="Asheville" c="ASHEVILLE"/>
<c n="Bakersville" c="BAKERSVILLE"/>
<c n="Barnardsville" c="BARNARDSVILLE"/>
<c n="Black Mountain" c="BLACK MOUNTAIN"/>
<c n="Brevard" c="BREVARD"/>
<c n="Bryson City" c="BRYSON CITY"/>
<c n="Burnsville" c="BURNSVILLE"/>
<c n="Candler" c="CANDLER"/>
<c n="Canton" c="CANTON"/>
<c n="Cashiers" c="CASHIERS"/>
<c n="Cherokee" c="CHEROKEE"/>
<c n="Clyde" c="CLYDE"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Cullowhee" c="CULLOWHEE"/>
<c n="Enka" c="ENKA"/>
<c n="Fairview" c="FAIRVIEW"/>
<c n="Flat Rock" c="FLAT ROCK"/>
<c n="Fletcher" c="FLETCHER"/>
<c n="Forest City" c="FOREST CITY"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Hazelwood" c="HAZELWOOD"/>
<c n="Hendersonville" c="HENDERSONVILLE"/>
<c n="Highlands" c="HIGHLANDS"/>
<c n="Horse Shoe" c="HORSE SHOE"/>
<c n="Lake Junaluska" c="LAKE JUNALUSKA"/>
<c n="Lake Lure" c="LAKE LURE"/>
<c n="Maggie Valley" c="MAGGIE VALLEY"/>
<c n="Marion" c="MARION"/>
<c n="Mars Hill" c="MARS HILL"/>
<c n="Marshall" c="MARSHALL"/>
<c n="Mill Spring" c="MILL SPRING"/>
<c n="Mountain Home" c="MOUNTAIN HOME"/>
<c n="Naples" c="NAPLES"/>
<c n="Nebo" c="NEBO"/>
<c n="Old Fort" c="OLD FORT"/>
<c n="Otto" c="OTTO"/>
<c n="Pisgah Forest" c="PISGAH FOREST"/>
<c n="Robbinsville" c="ROBBINSVILLE"/>
<c n="Rosman" c="ROSMAN"/>
<c n="Rutherfordton" c="RUTHERFORDTON"/>
<c n="Saluda" c="SALUDA"/>
<c n="Skyland" c="SKYLAND"/>
<c n="Spindale" c="SPINDALE"/>
<c n="Spruce Pine" c="SPRUCE PINE"/>
<c n="Swannanoa" c="SWANNANOA"/>
<c n="Sylva" c="SYLVA"/>
<c n="Tryon" c="TRYON"/>
<c n="Waynesville" c="WAYNESVILLE"/>
<c n="Weaverville" c="WEAVERVILLE"/>
<c n="Webster" c="WEBSTER"/>
<c n="Whittier" c="WHITTIER"/>
<c n="Abbeville" c="ABBEVILLE"/>
<c n="Anderson" c="ANDERSON"/>
<c n="Arcadia" c="ARCADIA"/>
<c n="Belton" c="BELTON"/>
<c n="Blacksburg" c="BLACKSBURG"/>
<c n="Calhoun Falls" c="CALHOUN FALLS"/>
<c n="Campobello" c="CAMPOBELLO"/>
<c n="Central" c="CENTRAL"/>
<c n="Chesnee" c="CHESNEE"/>
<c n="Clemson" c="CLEMSON"/>
<c n="Clinton" c="CLINTON"/>
<c n="Due West" c="DUE WEST"/>
<c n="Duncan" c="DUNCAN"/>
<c n="Easley" c="EASLEY"/>
<c n="Fair Play" c="FAIR PLAY"/>
<c n="Fairforest" c="FAIRFOREST"/>
<c n="Fountain Inn" c="FOUNTAIN INN"/>
<c n="Gaffney" c="GAFFNEY"/>
<c n="Glendale" c="GLENDALE"/>
<c n="Gray Court" c="GRAY COURT"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Greenwood" c="GREENWOOD"/>
<c n="Greer" c="GREER"/>
<c n="Hodges" c="HODGES"/>
<c n="Honea Path" c="HONEA PATH"/>
<c n="Inman" c="INMAN"/>
<c n="Iva" c="IVA"/>
<c n="Joanna" c="JOANNA"/>
<c n="Jonesville" c="JONESVILLE"/>
<c n="La France" c="LA FRANCE"/>
<c n="Landrum" c="LANDRUM"/>
<c n="Laurens" c="LAURENS"/>
<c n="Liberty" c="LIBERTY"/>
<c n="Lyman" c="LYMAN"/>
<c n="Mauldin" c="MAULDIN"/>
<c n="Moore" c="MOORE"/>
<c n="Mountville" c="MOUNTVILLE"/>
<c n="Ninety Six" c="NINETY SIX"/>
<c n="Pauline" c="PAULINE"/>
<c n="Pendleton" c="PENDLETON"/>
<c n="Pickens" c="PICKENS"/>
<c n="Piedmont" c="PIEDMONT"/>
<c n="Roebuck" c="ROEBUCK"/>
<c n="Salem" c="SALEM"/>
<c n="Seneca" c="SENECA"/>
<c n="Simpsonville" c="SIMPSONVILLE"/>
<c n="Spartanburg" c="SPARTANBURG"/>
<c n="Taylors" c="TAYLORS"/>
<c n="Travelers Rest" c="TRAVELERS REST"/>
<c n="Union" c="UNION"/>
<c n="Walhalla" c="WALHALLA"/>
<c n="Ware Shoals" c="WARE SHOALS"/>
<c n="Westminster" c="WESTMINSTER"/>
<c n="Williamston" c="WILLIAMSTON"/>
<c n="Woodruff" c="WOODRUFF"/>
<c n="Berea" c="BEREA"/>
<c n="Boiling Springs" c="BOILING SPRINGS"/>
<c n="Five Forks" c="FIVE FORKS"/>
<c n="Gantt" c="GANTT"/>
<c n="Golden Grove" c="GOLDEN GROVE"/>
<c n="Mills River" c="MILLS RIVER"/>
<c n="Powdersville" c="POWDERSVILLE"/>
<c n="Reidville" c="REIDVILLE"/>
<c n="Sans Souci" c="SANS SOUCI"/>
<c n="Southern Shops" c="SOUTHERN SHOPS"/>
<c n="Starr" c="STARR"/>
<c n="Valley Falls" c="VALLEY FALLS"/>
<c n="Wade Hampton" c="WADE HAMPTON"/>
<c n="Welcome" c="WELCOME"/>
<c n="Woodfin" c="WOODFIN"/></dma>
    
    <dma code="570" title="Florence-Myrtle Beach, SC">
<c n="Fairmont" c="FAIRMONT"/>
<c n="Laurinburg" c="LAURINBURG"/>
<c n="Lumberton" c="LUMBERTON"/>
<c n="Maxton" c="MAXTON"/>
<c n="Pembroke" c="PEMBROKE"/>
<c n="Red Springs" c="RED SPRINGS"/>
<c n="Rex" c="REX"/>
<c n="Wagram" c="WAGRAM"/>
<c n="Bennettsville" c="BENNETTSVILLE"/>
<c n="Conway" c="CONWAY"/>
<c n="Darlington" c="DARLINGTON"/>
<c n="Dillon" c="DILLON"/>
<c n="Effingham" c="EFFINGHAM"/>
<c n="Florence" c="FLORENCE"/>
<c n="Green Sea" c="GREEN SEA"/>
<c n="Hamer" c="HAMER"/>
<c n="Hartsville" c="HARTSVILLE"/>
<c n="Johnsonville" c="JOHNSONVILLE"/>
<c n="Lake City" c="LAKE CITY"/>
<c n="Lamar" c="LAMAR"/>
<c n="Latta" c="LATTA"/>
<c n="Little River" c="LITTLE RIVER"/>
<c n="Loris" c="LORIS"/>
<c n="Marion" c="MARION"/>
<c n="McColl" c="MCCOLL"/>
<c n="Mullins" c="MULLINS"/>
<c n="Myrtle Beach" c="MYRTLE BEACH"/>
<c n="North Myrtle Beach" c="NORTH MYRTLE BEACH"/>
<c n="Pamplico" c="PAMPLICO"/>
<c n="Rains" c="RAINS"/>
<c n="Scranton" c="SCRANTON"/>
<c n="Timmonsville" c="TIMMONSVILLE"/>
<c n="Wallace" c="WALLACE"/>
<c n="Aynor" c="AYNOR"/>
<c n="Carolina Forest" c="CAROLINA FOREST"/>
<c n="Garden City" c="GARDEN CITY"/>
<c n="Socastee" c="SOCASTEE"/>
<c n="Surfside Beach" c="SURFSIDE BEACH"/></dma>
    </state>
<state id="RI" full_name="Providence">
    <dma code="521" title="Providence, RI-New Bedford, MA">
<c n="Acushnet" c="ACUSHNET"/>
<c n="Attleboro" c="ATTLEBORO"/>
<c n="Attleboro Falls" c="ATTLEBORO FALLS"/>
<c n="Dartmouth" c="DARTMOUTH"/>
<c n="Dighton" c="DIGHTON"/>
<c n="East Freetown" c="EAST FREETOWN"/>
<c n="Easton" c="EASTON"/>
<c n="Fairhaven" c="FAIRHAVEN"/>
<c n="Fall River" c="FALL RIVER"/>
<c n="Mansfield" c="MANSFIELD"/>
<c n="New Bedford" c="NEW BEDFORD"/>
<c n="North Attleborough" c="NORTH ATTLEBOROUGH"/>
<c n="North Dartmouth" c="NORTH DARTMOUTH"/>
<c n="North Dighton" c="NORTH DIGHTON"/>
<c n="North Easton" c="NORTH EASTON"/>
<c n="Norton" c="NORTON"/>
<c n="Raynham" c="RAYNHAM"/>
<c n="Rehoboth" c="REHOBOTH"/>
<c n="Seekonk" c="SEEKONK"/>
<c n="Somerset" c="SOMERSET"/>
<c n="South Dartmouth" c="SOUTH DARTMOUTH"/>
<c n="South Easton" c="SOUTH EASTON"/>
<c n="Swansea" c="SWANSEA"/>
<c n="Taunton" c="TAUNTON"/>
<c n="Westport" c="WESTPORT"/>
<c n="Ashaway" c="ASHAWAY"/>
<c n="Barrington" c="BARRINGTON"/>
<c n="Block Island" c="BLOCK ISLAND"/>
<c n="Bradford" c="BRADFORD"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Carolina" c="CAROLINA"/>
<c n="Central Falls" c="CENTRAL FALLS"/>
<c n="Charlestown" c="CHARLESTOWN"/>
<c n="Chepachet" c="CHEPACHET"/>
<c n="Clayville" c="CLAYVILLE"/>
<c n="Coventry" c="COVENTRY"/>
<c n="Cranston" c="CRANSTON"/>
<c n="Cumberland" c="CUMBERLAND"/>
<c n="East Greenwich" c="EAST GREENWICH"/>
<c n="East Providence" c="EAST PROVIDENCE"/>
<c n="Exeter" c="EXETER"/>
<c n="Fiskeville" c="FISKEVILLE"/>
<c n="Foster" c="FOSTER"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Harrisville" c="HARRISVILLE"/>
<c n="Hope" c="HOPE"/>
<c n="Hope Valley" c="HOPE VALLEY"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Johnston" c="JOHNSTON"/>
<c n="Kenyon" c="KENYON"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Little Compton" c="LITTLE COMPTON"/>
<c n="Manville" c="MANVILLE"/>
<c n="Mapleville" c="MAPLEVILLE"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="Narragansett" c="NARRAGANSETT"/>
<c n="Newport" c="NEWPORT"/>
<c n="North Kingstown" c="NORTH KINGSTOWN"/>
<c n="North Providence" c="NORTH PROVIDENCE"/>
<c n="North Scituate" c="NORTH SCITUATE"/>
<c n="North Smithfield" c="NORTH SMITHFIELD"/>
<c n="Oakland" c="OAKLAND"/>
<c n="Pascoag" c="PASCOAG"/>
<c n="Pawtucket" c="PAWTUCKET"/>
<c n="Peace Dale" c="PEACE DALE"/>
<c n="Portsmouth" c="PORTSMOUTH"/>
<c n="Providence" c="PROVIDENCE"/>
<c n="Riverside" c="RIVERSIDE"/>
<c n="Rumford" c="RUMFORD"/>
<c n="Saunderstown" c="SAUNDERSTOWN"/>
<c n="Slatersville" c="SLATERSVILLE"/>
<c n="Slocum" c="SLOCUM"/>
<c n="Smithfield" c="SMITHFIELD"/>
<c n="Tiverton" c="TIVERTON"/>
<c n="Wakefield" c="WAKEFIELD"/>
<c n="Warren" c="WARREN"/>
<c n="Warwick" c="WARWICK"/>
<c n="West Greenwich" c="WEST GREENWICH"/>
<c n="West Kingston" c="WEST KINGSTON"/>
<c n="West Warwick" c="WEST WARWICK"/>
<c n="Westerly" c="WESTERLY"/>
<c n="Wood River Junction" c="WOOD RIVER JUNCTION"/>
<c n="Woonsocket" c="WOONSOCKET"/>
<c n="Wyoming" c="WYOMING"/>
<c n="Berkley" c="BERKLEY"/>
<c n="Burrillville" c="BURRILLVILLE"/>
<c n="Freetown" c="FREETOWN"/>
<c n="Glocester" c="GLOCESTER"/>
<c n="Hopkinton" c="HOPKINTON"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Scituate" c="SCITUATE"/>
<c n="South Kingstown" c="SOUTH KINGSTOWN"/>
<c n="Tiverton" c="TIVERTON"/>
<c n="Westerly" c="WESTERLY"/></dma>

    </state>

<state id="MA" full_name="Massachusetts">
        <dma code="506" title="Boston, MA-Manchester, NH">
<c n="Abington" c="ABINGTON"/>
<c n="Acton" c="ACTON"/>
<c n="Allston" c="ALLSTON"/>
<c n="Amesbury" c="AMESBURY"/>
<c n="Andover" c="ANDOVER"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Arlington Heights" c="ARLINGTON HEIGHTS"/>
<c n="Ashburnham" c="ASHBURNHAM"/>
<c n="Ashby" c="ASHBY"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Athol" c="ATHOL"/>
<c n="Auburn" c="AUBURN"/>
<c n="Auburndale" c="AUBURNDALE"/>
<c n="Avon" c="AVON"/>
<c n="Ayer" c="AYER"/>
<c n="Babson Park" c="BABSON PARK"/>
<c n="Baldwinville" c="BALDWINVILLE"/>
<c n="Barnstable" c="BARNSTABLE"/>
<c n="Barre" c="BARRE"/>
<c n="Bedford" c="BEDFORD"/>
<c n="Bellingham" c="BELLINGHAM"/>
<c n="Belmont" c="BELMONT"/>
<c n="Berlin" c="BERLIN"/>
<c n="Beverly" c="BEVERLY"/>
<c n="Billerica" c="BILLERICA"/>
<c n="Blackstone" c="BLACKSTONE"/>
<c n="Bolton" c="BOLTON"/>
<c n="Boston" c="BOSTON"/>
<c n="Boxborough" c="BOXBOROUGH"/>
<c n="Boxford" c="BOXFORD"/>
<c n="Boylston" c="BOYLSTON"/>
<c n="Braintree" c="BRAINTREE"/>
<c n="Brewster" c="BREWSTER"/>
<c n="Bridgewater" c="BRIDGEWATER"/>
<c n="Brighton" c="BRIGHTON"/>
<c n="Brockton" c="BROCKTON"/>
<c n="Brookfield" c="BROOKFIELD"/>
<c n="Brookline" c="BROOKLINE"/>
<c n="Brookline Village" c="BROOKLINE VILLAGE"/>
<c n="Bryantville" c="BRYANTVILLE"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Buzzards Bay" c="BUZZARDS BAY"/>
<c n="Byfield" c="BYFIELD"/>
<c n="Cambridge" c="CAMBRIDGE"/>
<c n="Canton" c="CANTON"/>
<c n="Carlisle" c="CARLISLE"/>
<c n="Carver" c="CARVER"/>
<c n="Cataumet" c="CATAUMET"/>
<c n="Centerville" c="CENTERVILLE"/>
<c n="Charlestown" c="CHARLESTOWN"/>
<c n="Charlton" c="CHARLTON"/>
<c n="Charlton City" c="CHARLTON CITY"/>
<c n="Chatham" c="CHATHAM"/>
<c n="Chelmsford" c="CHELMSFORD"/>
<c n="Chelsea" c="CHELSEA"/>
<c n="Cherry Valley" c="CHERRY VALLEY"/>
<c n="Chestnut Hill" c="CHESTNUT HILL"/>
<c n="Chilmark" c="CHILMARK"/>
<c n="Clinton" c="CLINTON"/>
<c n="Cohasset" c="COHASSET"/>
<c n="Concord" c="CONCORD"/>
<c n="Cotuit" c="COTUIT"/>
<c n="Cummaquid" c="CUMMAQUID"/>
<c n="Danvers" c="DANVERS"/>
<c n="Dedham" c="DEDHAM"/>
<c n="Dennis" c="DENNIS"/>
<c n="Douglas" c="DOUGLAS"/>
<c n="Dover" c="DOVER"/>
<c n="Dracut" c="DRACUT"/>
<c n="Dudley" c="DUDLEY"/>
<c n="Dunstable" c="DUNSTABLE"/>
<c n="Duxbury" c="DUXBURY"/>
<c n="East Boston" c="EAST BOSTON"/>
<c n="East Bridgewater" c="EAST BRIDGEWATER"/>
<c n="East Dennis" c="EAST DENNIS"/>
<c n="East Falmouth" c="EAST FALMOUTH"/>
<c n="East Orleans" c="EAST ORLEANS"/>
<c n="East Templeton" c="EAST TEMPLETON"/>
<c n="East Walpole" c="EAST WALPOLE"/>
<c n="Eastham" c="EASTHAM"/>
<c n="Edgartown" c="EDGARTOWN"/>
<c n="Essex" c="ESSEX"/>
<c n="Everett" c="EVERETT"/>
<c n="Falmouth" c="FALMOUTH"/>
<c n="Fayville" c="FAYVILLE"/>
<c n="Fitchburg" c="FITCHBURG"/>
<c n="Foxborough" c="FOXBOROUGH"/>
<c n="Framingham" c="FRAMINGHAM"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Gardner" c="GARDNER"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Gilbertville" c="GILBERTVILLE"/>
<c n="Gloucester" c="GLOUCESTER"/>
<c n="Grafton" c="GRAFTON"/>
<c n="Green Harbor-Cedar Crest" c="GREEN HARBOR-CEDAR CREST"/>
<c n="Greenbush" c="GREENBUSH"/>
<c n="Groton" c="GROTON"/>
<c n="Groveland" c="GROVELAND"/>
<c n="Halifax" c="HALIFAX"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Hanover" c="HANOVER"/>
<c n="Hanscom Air Force Base" c="HANSCOM AIR FORCE BASE"/>
<c n="Hanson" c="HANSON"/>
<c n="Hardwick" c="HARDWICK"/>
<c n="Harvard" c="HARVARD"/>
<c n="Harwich" c="HARWICH"/>
<c n="Harwich Port" c="HARWICH PORT"/>
<c n="Haverhill" c="HAVERHILL"/>
<c n="Hingham" c="HINGHAM"/>
<c n="Holbrook" c="HOLBROOK"/>
<c n="Holden" c="HOLDEN"/>
<c n="Holliston" c="HOLLISTON"/>
<c n="Hopedale" c="HOPEDALE"/>
<c n="Hopkinton" c="HOPKINTON"/>
<c n="Hubbardston" c="HUBBARDSTON"/>
<c n="Hudson" c="HUDSON"/>
<c n="Hull" c="HULL"/>
<c n="Hyannis" c="HYANNIS"/>
<c n="Hyde Park" c="HYDE PARK"/>
<c n="Ipswich" c="IPSWICH"/>
<c n="Jamaica Plain" c="JAMAICA PLAIN"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Lakeville" c="LAKEVILLE"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Lawrence" c="LAWRENCE"/>
<c n="Leicester" c="LEICESTER"/>
<c n="Leominster" c="LEOMINSTER"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Linwood" c="LINWOOD"/>
<c n="Littleton" c="LITTLETON"/>
<c n="Lowell" c="LOWELL"/>
<c n="Lunenburg" c="LUNENBURG"/>
<c n="Lynn" c="LYNN"/>
<c n="Lynnfield" c="LYNNFIELD"/>
<c n="Malden" c="MALDEN"/>
<c n="Manchaug" c="MANCHAUG"/>
<c n="Manchester-by-the-Sea" c="MANCHESTER-BY-THE-SEA"/>
<c n="Manomet" c="MANOMET"/>
<c n="Marblehead" c="MARBLEHEAD"/>
<c n="Marion" c="MARION"/>
<c n="Marlborough" c="MARLBOROUGH"/>
<c n="Marshfield" c="MARSHFIELD"/>
<c n="Marstons Mills" c="MARSTONS MILLS"/>
<c n="Mashpee" c="MASHPEE"/>
<c n="Mattapan" c="MATTAPAN"/>
<c n="Mattapoisett" c="MATTAPOISETT"/>
<c n="Maynard" c="MAYNARD"/>
<c n="Medfield" c="MEDFIELD"/>
<c n="Medford" c="MEDFORD"/>
<c n="Medway" c="MEDWAY"/>
<c n="Melrose" c="MELROSE"/>
<c n="Mendon" c="MENDON"/>
<c n="Merrimac" c="MERRIMAC"/>
<c n="Methuen" c="METHUEN"/>
<c n="Middleborough" c="MIDDLEBOROUGH"/>
<c n="Middleton" c="MIDDLETON"/>
<c n="Milford" c="MILFORD"/>
<c n="Millbury" c="MILLBURY"/>
<c n="Millis" c="MILLIS"/>
<c n="Millville" c="MILLVILLE"/>
<c n="Milton" c="MILTON"/>
<c n="Nahant" c="NAHANT"/>
<c n="Nantucket" c="NANTUCKET"/>
<c n="Natick" c="NATICK"/>
<c n="Needham" c="NEEDHAM"/>
<c n="Needham Heights" c="NEEDHAM HEIGHTS"/>
<c n="Newbury" c="NEWBURY"/>
<c n="Newburyport" c="NEWBURYPORT"/>
<c n="Newton" c="NEWTON"/>
<c n="Newton Centre" c="NEWTON CENTRE"/>
<c n="Newton Highlands" c="NEWTON HIGHLANDS"/>
<c n="Newton Lower Falls" c="NEWTON LOWER FALLS"/>
<c n="Newton Upper Falls" c="NEWTON UPPER FALLS"/>
<c n="Newtonville" c="NEWTONVILLE"/>
<c n="Norfolk" c="NORFOLK"/>
<c n="North Andover" c="NORTH ANDOVER"/>
<c n="North Billerica" c="NORTH BILLERICA"/>
<c n="North Brookfield" c="NORTH BROOKFIELD"/>
<c n="North Chelmsford" c="NORTH CHELMSFORD"/>
<c n="North Grafton" c="NORTH GRAFTON"/>
<c n="North Oxford" c="NORTH OXFORD"/>
<c n="North Reading" c="NORTH READING"/>
<c n="North Scituate" c="NORTH SCITUATE"/>
<c n="North Truro" c="NORTH TRURO"/>
<c n="Northborough" c="NORTHBOROUGH"/>
<c n="Northbridge" c="NORTHBRIDGE"/>
<c n="Norwell" c="NORWELL"/>
<c n="Norwood" c="NORWOOD"/>
<c n="Oak Bluffs" c="OAK BLUFFS"/>
<c n="Oakham" c="OAKHAM"/>
<c n="Orleans" c="ORLEANS"/>
<c n="Osterville" c="OSTERVILLE"/>
<c n="Oxford" c="OXFORD"/>
<c n="Paxton" c="PAXTON"/>
<c n="Peabody" c="PEABODY"/>
<c n="Pembroke" c="PEMBROKE"/>
<c n="Pepperell" c="PEPPERELL"/>
<c n="Petersham" c="PETERSHAM"/>
<c n="Pinehurst" c="PINEHURST"/>
<c n="Plainville" c="PLAINVILLE"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Pocasset" c="POCASSET"/>
<c n="Prides Crossing" c="PRIDES CROSSING"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Provincetown" c="PROVINCETOWN"/>
<c n="Quincy" c="QUINCY"/>
<c n="Randolph" c="RANDOLPH"/>
<c n="Reading" c="READING"/>
<c n="Revere" c="REVERE"/>
<c n="Rochester" c="ROCHESTER"/>
<c n="Rockland" c="ROCKLAND"/>
<c n="Rockport" c="ROCKPORT"/>
<c n="Roslindale" c="ROSLINDALE"/>
<c n="Rowley" c="ROWLEY"/>
<c n="Rutland" c="RUTLAND"/>
<c n="Sagamore" c="SAGAMORE"/>
<c n="Sagamore Beach" c="SAGAMORE BEACH"/>
<c n="Salem" c="SALEM"/>
<c n="Salisbury" c="SALISBURY"/>
<c n="Sandwich" c="SANDWICH"/>
<c n="Saugus" c="SAUGUS"/>
<c n="Scituate" c="SCITUATE"/>
<c n="Sharon" c="SHARON"/>
<c n="Sherborn" c="SHERBORN"/>
<c n="Shirley" c="SHIRLEY"/>
<c n="Shrewsbury" c="SHREWSBURY"/>
<c n="Siasconset" c="SIASCONSET"/>
<c n="Somerville" c="SOMERVILLE"/>
<c n="South Hamilton" c="SOUTH HAMILTON"/>
<c n="South Lancaster" c="SOUTH LANCASTER"/>
<c n="South Walpole" c="SOUTH WALPOLE"/>
<c n="South Yarmouth" c="SOUTH YARMOUTH"/>
<c n="Southborough" c="SOUTHBOROUGH"/>
<c n="Southbridge" c="SOUTHBRIDGE"/>
<c n="Spencer" c="SPENCER"/>
<c n="Sterling" c="STERLING"/>
<c n="Stoneham" c="STONEHAM"/>
<c n="Stoughton" c="STOUGHTON"/>
<c n="Stow" c="STOW"/>
<c n="Sturbridge" c="STURBRIDGE"/>
<c n="Sudbury" c="SUDBURY"/>
<c n="Sutton" c="SUTTON"/>
<c n="Swampscott" c="SWAMPSCOTT"/>
<c n="Templeton" c="TEMPLETON"/>
<c n="Tewksbury" c="TEWKSBURY"/>
<c n="Topsfield" c="TOPSFIELD"/>
<c n="Townsend" c="TOWNSEND"/>
<c n="Truro" c="TRURO"/>
<c n="Tyngsboro" c="TYNGSBORO"/>
<c n="Upton" c="UPTON"/>
<c n="Uxbridge" c="UXBRIDGE"/>
<c n="Village of Nagog Woods" c="VILLAGE OF NAGOG WOODS"/>
<c n="Vineyard Haven" c="VINEYARD HAVEN"/>
<c n="Waban" c="WABAN"/>
<c n="Wakefield" c="WAKEFIELD"/>
<c n="Walpole" c="WALPOLE"/>
<c n="Waltham" c="WALTHAM"/>
<c n="Wareham" c="WAREHAM"/>
<c n="Warren" c="WARREN"/>
<c n="Watertown" c="WATERTOWN"/>
<c n="Wayland" c="WAYLAND"/>
<c n="Webster" c="WEBSTER"/>
<c n="Wellesley" c="WELLESLEY"/>
<c n="Wellfleet" c="WELLFLEET"/>
<c n="Wenham" c="WENHAM"/>
<c n="West Barnstable" c="WEST BARNSTABLE"/>
<c n="West Boylston" c="WEST BOYLSTON"/>
<c n="West Bridgewater" c="WEST BRIDGEWATER"/>
<c n="West Dennis" c="WEST DENNIS"/>
<c n="West Falmouth" c="WEST FALMOUTH"/>
<c n="West Medford" c="WEST MEDFORD"/>
<c n="West Newbury" c="WEST NEWBURY"/>
<c n="West Newton" c="WEST NEWTON"/>
<c n="West Roxbury" c="WEST ROXBURY"/>
<c n="West Tisbury" c="WEST TISBURY"/>
<c n="West Townsend" c="WEST TOWNSEND"/>
<c n="West Wareham" c="WEST WAREHAM"/>
<c n="West Warren" c="WEST WARREN"/>
<c n="West Yarmouth" c="WEST YARMOUTH"/>
<c n="Westborough" c="WESTBOROUGH"/>
<c n="Westford" c="WESTFORD"/>
<c n="Westminster" c="WESTMINSTER"/>
<c n="Weston" c="WESTON"/>
<c n="Westwood" c="WESTWOOD"/>
<c n="Weymouth" c="WEYMOUTH"/>
<c n="Whitinsville" c="WHITINSVILLE"/>
<c n="Whitman" c="WHITMAN"/>
<c n="Wilmington" c="WILMINGTON"/>
<c n="Winchendon" c="WINCHENDON"/>
<c n="Winchester" c="WINCHESTER"/>
<c n="Winthrop" c="WINTHROP"/>
<c n="Woburn" c="WOBURN"/>
<c n="Woods Hole" c="WOODS HOLE"/>
<c n="Worcester" c="WORCESTER"/>
<c n="Wrentham" c="WRENTHAM"/>
<c n="Yarmouth Port" c="YARMOUTH PORT"/>
<c n="Alstead" c="ALSTEAD"/>
<c n="Alton" c="ALTON"/>
<c n="Alton Bay" c="ALTON BAY"/>
<c n="Amherst" c="AMHERST"/>
<c n="Andover" c="ANDOVER"/>
<c n="Antrim" c="ANTRIM"/>
<c n="Atkinson" c="ATKINSON"/>
<c n="Auburn" c="AUBURN"/>
<c n="Barnstead" c="BARNSTEAD"/>
<c n="Barrington" c="BARRINGTON"/>
<c n="Bedford" c="BEDFORD"/>
<c n="Belmont" c="BELMONT"/>
<c n="Bennington" c="BENNINGTON"/>
<c n="Bow" c="BOW"/>
<c n="Bradford" c="BRADFORD"/>
<c n="Brookline" c="BROOKLINE"/>
<c n="Candia" c="CANDIA"/>
<c n="Canterbury" c="CANTERBURY"/>
<c n="Center Barnstead" c="CENTER BARNSTEAD"/>
<c n="Center Harbor" c="CENTER HARBOR"/>
<c n="Center Strafford" c="CENTER STRAFFORD"/>
<c n="Chester" c="CHESTER"/>
<c n="Chesterfield" c="CHESTERFIELD"/>
<c n="Chichester" c="CHICHESTER"/>
<c n="Concord" c="CONCORD"/>
<c n="Contoocook" c="CONTOOCOOK"/>
<c n="Danbury" c="DANBURY"/>
<c n="Danville" c="DANVILLE"/>
<c n="Deerfield" c="DEERFIELD"/>
<c n="Derry" c="DERRY"/>
<c n="Dover" c="DOVER"/>
<c n="Dublin" c="DUBLIN"/>
<c n="Dunbarton" c="DUNBARTON"/>
<c n="Town of Durham" c="TOWN OF DURHAM"/>
<c n="East Derry" c="EAST DERRY"/>
<c n="East Hampstead" c="EAST HAMPSTEAD"/>
<c n="East Kingston" c="EAST KINGSTON"/>
<c n="Epping" c="EPPING"/>
<c n="Epsom" c="EPSOM"/>
<c n="Exeter" c="EXETER"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Fitzwilliam" c="FITZWILLIAM"/>
<c n="Francestown" c="FRANCESTOWN"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Fremont" c="FREMONT"/>
<c n="Gilford" c="GILFORD"/>
<c n="Gilsum" c="GILSUM"/>
<c n="Goffstown" c="GOFFSTOWN"/>
<c n="Greenfield" c="GREENFIELD"/>
<c n="Town of Greenland" c="TOWN OF GREENLAND"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Hampstead" c="HAMPSTEAD"/>
<c n="Town of Hampton" c="TOWN OF HAMPTON"/>
<c n="Hampton Falls" c="HAMPTON FALLS"/>
<c n="Hancock" c="HANCOCK"/>
<c n="Harrisville" c="HARRISVILLE"/>
<c n="Henniker" c="HENNIKER"/>
<c n="Hill" c="HILL"/>
<c n="Hillsboro" c="HILLSBORO"/>
<c n="Hinsdale" c="HINSDALE"/>
<c n="Hollis" c="HOLLIS"/>
<c n="Hooksett" c="HOOKSETT"/>
<c n="Hudson" c="HUDSON"/>
<c n="Jaffrey" c="JAFFREY"/>
<c n="Keene" c="KEENE"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Laconia" c="LACONIA"/>
<c n="Litchfield" c="LITCHFIELD"/>
<c n="Londonderry" c="LONDONDERRY"/>
<c n="Loudon" c="LOUDON"/>
<c n="Lyndeborough" c="LYNDEBOROUGH"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Marlborough" c="MARLBOROUGH"/>
<c n="Marlow" c="MARLOW"/>
<c n="Meredith" c="MEREDITH"/>
<c n="Merrimack" c="MERRIMACK"/>
<c n="Milford" c="MILFORD"/>
<c n="Milton" c="MILTON"/>
<c n="Milton Mills" c="MILTON MILLS"/>
<c n="Mont Vernon" c="MONT VERNON"/>
<c n="Nashua" c="NASHUA"/>
<c n="New Boston" c="NEW BOSTON"/>
<c n="New Castle" c="NEW CASTLE"/>
<c n="New Durham" c="NEW DURHAM"/>
<c n="New Hampton" c="NEW HAMPTON"/>
<c n="New Ipswich" c="NEW IPSWICH"/>
<c n="New London" c="NEW LONDON"/>
<c n="Newbury" c="NEWBURY"/>
<c n="Newfields" c="NEWFIELDS"/>
<c n="Newmarket" c="NEWMARKET"/>
<c n="North Hampton" c="NORTH HAMPTON"/>
<c n="North Salem" c="NORTH SALEM"/>
<c n="North Walpole" c="NORTH WALPOLE"/>
<c n="Northwood" c="NORTHWOOD"/>
<c n="Nottingham" c="NOTTINGHAM"/>
<c n="Pelham" c="PELHAM"/>
<c n="Peterborough" c="PETERBOROUGH"/>
<c n="Pittsfield" c="PITTSFIELD"/>
<c n="Plaistow" c="PLAISTOW"/>
<c n="Portsmouth" c="PORTSMOUTH"/>
<c n="Raymond" c="RAYMOND"/>
<c n="Rindge" c="RINDGE"/>
<c n="Rochester" c="ROCHESTER"/>
<c n="Rollinsford" c="ROLLINSFORD"/>
<c n="Rye" c="RYE"/>
<c n="Rye Beach" c="RYE BEACH"/>
<c n="Salem" c="SALEM"/>
<c n="Sanbornton" c="SANBORNTON"/>
<c n="Seabrook" c="SEABROOK"/>
<c n="Somersworth" c="SOMERSWORTH"/>
<c n="Spofford" c="SPOFFORD"/>
<c n="Stoddard" c="STODDARD"/>
<c n="Strafford" c="STRAFFORD"/>
<c n="Stratham" c="STRATHAM"/>
<c n="Sullivan" c="SULLIVAN"/>
<c n="Suncook" c="SUNCOOK"/>
<c n="Swanzey" c="SWANZEY"/>
<c n="Temple" c="TEMPLE"/>
<c n="Tilton" c="TILTON"/>
<c n="Troy" c="TROY"/>
<c n="Walpole" c="WALPOLE"/>
<c n="Warner" c="WARNER"/>
<c n="Weare" c="WEARE"/>
<c n="West Chesterfield" c="WEST CHESTERFIELD"/>
<c n="West Swanzey" c="WEST SWANZEY"/>
<c n="Westmoreland" c="WESTMORELAND"/>
<c n="Wilmot" c="WILMOT"/>
<c n="Wilton" c="WILTON"/>
<c n="Winchester" c="WINCHESTER"/>
<c n="Windham" c="WINDHAM"/>
<c n="Winnisquam" c="WINNISQUAM"/>
<c n="Bellows Falls" c="BELLOWS FALLS"/>
<c n="Brattleboro" c="BRATTLEBORO"/>
<c n="Grafton" c="GRAFTON"/>
<c n="Jacksonville" c="JACKSONVILLE"/>
<c n="Londonderry" c="LONDONDERRY"/>
<c n="Marlboro" c="MARLBORO"/>
<c n="Newfane" c="NEWFANE"/>
<c n="Putney" c="PUTNEY"/>
<c n="Saxtons River" c="SAXTONS RIVER"/>
<c n="South Londonderry" c="SOUTH LONDONDERRY"/>
<c n="Townshend" c="TOWNSHEND"/>
<c n="Vernon" c="VERNON"/>
<c n="Wardsboro" c="WARDSBORO"/>
<c n="West Dover" c="WEST DOVER"/>
<c n="West Halifax" c="WEST HALIFAX"/>
<c n="West Townshend" c="WEST TOWNSHEND"/>
<c n="Westminster" c="WESTMINSTER"/>
<c n="Westminster Station" c="WESTMINSTER STATION"/>
<c n="Wilmington" c="WILMINGTON"/>
<c n="Andover" c="ANDOVER"/>
<c n="Ayer" c="AYER"/>
<c n="Barre" c="BARRE"/>
<c n="Bellingham" c="BELLINGHAM"/>
<c n="Bourne" c="BOURNE"/>
<c n="Boxford" c="BOXFORD"/>
<c n="Brattleboro" c="BRATTLEBORO"/>
<c n="Brentwood" c="BRENTWOOD"/>
<c n="Brewster" c="BREWSTER"/>
<c n="Bridgewater" c="BRIDGEWATER"/>
<c n="Chatham" c="CHATHAM"/>
<c n="Clinton" c="CLINTON"/>
<c n="Dennis" c="DENNIS"/>
<c n="Derry" c="DERRY"/>
<c n="Fort Devens" c="FORT DEVENS"/>
<c n="Dover" c="DOVER"/>
<c n="Duxbury" c="DUXBURY"/>
<c n="Exeter" c="EXETER"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Foxborough" c="FOXBOROUGH"/>
<c n="Groton" c="GROTON"/>
<c n="Hanson" c="HANSON"/>
<c n="Henniker" c="HENNIKER"/>
<c n="Hingham" c="HINGHAM"/>
<c n="Hooksett" c="HOOKSETT"/>
<c n="Hopedale" c="HOPEDALE"/>
<c n="Hopkinton" c="HOPKINTON"/>
<c n="Hopkinton" c="HOPKINTON"/>
<c n="Hudson" c="HUDSON"/>
<c n="Hudson" c="HUDSON"/>
<c n="Ipswich" c="IPSWICH"/>
<c n="Jaffrey" c="JAFFREY"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Londonderry" c="LONDONDERRY"/>
<c n="Lunenburg" c="LUNENBURG"/>
<c n="Marshfield" c="MARSHFIELD"/>
<c n="Medfield" c="MEDFIELD"/>
<c n="Meredith" c="MEREDITH"/>
<c n="Milford" c="MILFORD"/>
<c n="Newmarket" c="NEWMARKET"/>
<c n="Newton" c="NEWTON"/>
<c n="North Brookfield" c="NORTH BROOKFIELD"/>
<c n="Northborough" c="NORTHBOROUGH"/>
<c n="Orleans" c="ORLEANS"/>
<c n="Oxford" c="OXFORD"/>
<c n="Pepperell" c="PEPPERELL"/>
<c n="Peterborough" c="PETERBOROUGH"/>
<c n="Rockingham" c="ROCKINGHAM"/>
<c n="Rowley" c="ROWLEY"/>
<c n="Rutland" c="RUTLAND"/>
<c n="Salisbury" c="SALISBURY"/>
<c n="Sandwich" c="SANDWICH"/>
<c n="Sharon" c="SHARON"/>
<c n="Shirley" c="SHIRLEY"/>
<c n="Southbridge" c="SOUTHBRIDGE"/>
<c n="Spencer" c="SPENCER"/>
<c n="Sturbridge" c="STURBRIDGE"/>
<c n="Tisbury" c="TISBURY"/>
<c n="Topsfield" c="TOPSFIELD"/>
<c n="Townsend" c="TOWNSEND"/>
<c n="Tyngsborough" c="TYNGSBOROUGH"/>
<c n="Walpole" c="WALPOLE"/>
<c n="Westborough" c="WESTBOROUGH"/>
<c n="Wilton" c="WILTON"/>
<c n="Winchendon" c="WINCHENDON"/>
<c n="Yarmouth" c="YARMOUTH"/></dma>

    <dma code="521" title="Providence, RI-New Bedford, MA">
<c n="Acushnet" c="ACUSHNET"/>
<c n="Attleboro" c="ATTLEBORO"/>
<c n="Attleboro Falls" c="ATTLEBORO FALLS"/>
<c n="Dartmouth" c="DARTMOUTH"/>
<c n="Dighton" c="DIGHTON"/>
<c n="East Freetown" c="EAST FREETOWN"/>
<c n="Easton" c="EASTON"/>
<c n="Fairhaven" c="FAIRHAVEN"/>
<c n="Fall River" c="FALL RIVER"/>
<c n="Mansfield" c="MANSFIELD"/>
<c n="New Bedford" c="NEW BEDFORD"/>
<c n="North Attleborough" c="NORTH ATTLEBOROUGH"/>
<c n="North Dartmouth" c="NORTH DARTMOUTH"/>
<c n="North Dighton" c="NORTH DIGHTON"/>
<c n="North Easton" c="NORTH EASTON"/>
<c n="Norton" c="NORTON"/>
<c n="Raynham" c="RAYNHAM"/>
<c n="Rehoboth" c="REHOBOTH"/>
<c n="Seekonk" c="SEEKONK"/>
<c n="Somerset" c="SOMERSET"/>
<c n="South Dartmouth" c="SOUTH DARTMOUTH"/>
<c n="South Easton" c="SOUTH EASTON"/>
<c n="Swansea" c="SWANSEA"/>
<c n="Taunton" c="TAUNTON"/>
<c n="Westport" c="WESTPORT"/>
<c n="Ashaway" c="ASHAWAY"/>
<c n="Barrington" c="BARRINGTON"/>
<c n="Block Island" c="BLOCK ISLAND"/>
<c n="Bradford" c="BRADFORD"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Carolina" c="CAROLINA"/>
<c n="Central Falls" c="CENTRAL FALLS"/>
<c n="Charlestown" c="CHARLESTOWN"/>
<c n="Chepachet" c="CHEPACHET"/>
<c n="Clayville" c="CLAYVILLE"/>
<c n="Coventry" c="COVENTRY"/>
<c n="Cranston" c="CRANSTON"/>
<c n="Cumberland" c="CUMBERLAND"/>
<c n="East Greenwich" c="EAST GREENWICH"/>
<c n="East Providence" c="EAST PROVIDENCE"/>
<c n="Exeter" c="EXETER"/>
<c n="Fiskeville" c="FISKEVILLE"/>
<c n="Foster" c="FOSTER"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Harrisville" c="HARRISVILLE"/>
<c n="Hope" c="HOPE"/>
<c n="Hope Valley" c="HOPE VALLEY"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Johnston" c="JOHNSTON"/>
<c n="Kenyon" c="KENYON"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Little Compton" c="LITTLE COMPTON"/>
<c n="Manville" c="MANVILLE"/>
<c n="Mapleville" c="MAPLEVILLE"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="Narragansett" c="NARRAGANSETT"/>
<c n="Newport" c="NEWPORT"/>
<c n="North Kingstown" c="NORTH KINGSTOWN"/>
<c n="North Providence" c="NORTH PROVIDENCE"/>
<c n="North Scituate" c="NORTH SCITUATE"/>
<c n="North Smithfield" c="NORTH SMITHFIELD"/>
<c n="Oakland" c="OAKLAND"/>
<c n="Pascoag" c="PASCOAG"/>
<c n="Pawtucket" c="PAWTUCKET"/>
<c n="Peace Dale" c="PEACE DALE"/>
<c n="Portsmouth" c="PORTSMOUTH"/>
<c n="Providence" c="PROVIDENCE"/>
<c n="Riverside" c="RIVERSIDE"/>
<c n="Rumford" c="RUMFORD"/>
<c n="Saunderstown" c="SAUNDERSTOWN"/>
<c n="Slatersville" c="SLATERSVILLE"/>
<c n="Slocum" c="SLOCUM"/>
<c n="Smithfield" c="SMITHFIELD"/>
<c n="Tiverton" c="TIVERTON"/>
<c n="Wakefield" c="WAKEFIELD"/>
<c n="Warren" c="WARREN"/>
<c n="Warwick" c="WARWICK"/>
<c n="West Greenwich" c="WEST GREENWICH"/>
<c n="West Kingston" c="WEST KINGSTON"/>
<c n="West Warwick" c="WEST WARWICK"/>
<c n="Westerly" c="WESTERLY"/>
<c n="Wood River Junction" c="WOOD RIVER JUNCTION"/>
<c n="Woonsocket" c="WOONSOCKET"/>
<c n="Wyoming" c="WYOMING"/>
<c n="Berkley" c="BERKLEY"/>
<c n="Burrillville" c="BURRILLVILLE"/>
<c n="Freetown" c="FREETOWN"/>
<c n="Glocester" c="GLOCESTER"/>
<c n="Hopkinton" c="HOPKINTON"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Scituate" c="SCITUATE"/>
<c n="South Kingstown" c="SOUTH KINGSTOWN"/>
<c n="Tiverton" c="TIVERTON"/>
<c n="Westerly" c="WESTERLY"/></dma>
    
    <dma code="543" title="Springfield-Holyoke, MA">
<c n="Agawam" c="AGAWAM"/>
<c n="Amherst" c="AMHERST"/>
<c n="Ashfield" c="ASHFIELD"/>
<c n="Belchertown" c="BELCHERTOWN"/>
<c n="Bernardston" c="BERNARDSTON"/>
<c n="Blandford" c="BLANDFORD"/>
<c n="Brimfield" c="BRIMFIELD"/>
<c n="Buckland" c="BUCKLAND"/>
<c n="Charlemont" c="CHARLEMONT"/>
<c n="Chester" c="CHESTER"/>
<c n="Chesterfield" c="CHESTERFIELD"/>
<c n="Chicopee" c="CHICOPEE"/>
<c n="Colrain" c="COLRAIN"/>
<c n="Conway" c="CONWAY"/>
<c n="Cummington" c="CUMMINGTON"/>
<c n="Deerfield" c="DEERFIELD"/>
<c n="East Longmeadow" c="EAST LONGMEADOW"/>
<c n="Easthampton" c="EASTHAMPTON"/>
<c n="Erving" c="ERVING"/>
<c n="Feeding Hills" c="FEEDING HILLS"/>
<c n="Florence" c="FLORENCE"/>
<c n="Goshen" c="GOSHEN"/>
<c n="Granby" c="GRANBY"/>
<c n="Granville" c="GRANVILLE"/>
<c n="Greenfield" c="GREENFIELD"/>
<c n="Hadley" c="HADLEY"/>
<c n="Hampden" c="HAMPDEN"/>
<c n="Hatfield" c="HATFIELD"/>
<c n="Heath" c="HEATH"/>
<c n="Holland" c="HOLLAND"/>
<c n="Holyoke" c="HOLYOKE"/>
<c n="Huntington" c="HUNTINGTON"/>
<c n="Indian Orchard" c="INDIAN ORCHARD"/>
<c n="Leverett" c="LEVERETT"/>
<c n="Longmeadow" c="LONGMEADOW"/>
<c n="Ludlow" c="LUDLOW"/>
<c n="Middlefield" c="MIDDLEFIELD"/>
<c n="Monson" c="MONSON"/>
<c n="Montague" c="MONTAGUE"/>
<c n="North Amherst" c="NORTH AMHERST"/>
<c n="Northampton" c="NORTHAMPTON"/>
<c n="Northfield" c="NORTHFIELD"/>
<c n="Orange" c="ORANGE"/>
<c n="Palmer" c="PALMER"/>
<c n="Plainfield" c="PLAINFIELD"/>
<c n="Rowe" c="ROWE"/>
<c n="Russell" c="RUSSELL"/>
<c n="Shelburne Falls" c="SHELBURNE FALLS"/>
<c n="South Deerfield" c="SOUTH DEERFIELD"/>
<c n="South Hadley" c="SOUTH HADLEY"/>
<c n="Southampton" c="SOUTHAMPTON"/>
<c n="Southwick" c="SOUTHWICK"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="Sunderland" c="SUNDERLAND"/>
<c n="Turners Falls" c="TURNERS FALLS"/>
<c n="Wales" c="WALES"/>
<c n="Ware" c="WARE"/>
<c n="West Springfield" c="WEST SPRINGFIELD"/>
<c n="Westfield" c="WESTFIELD"/>
<c n="Whately" c="WHATELY"/>
<c n="Wilbraham" c="WILBRAHAM"/>
<c n="Williamsburg" c="WILLIAMSBURG"/>
<c n="Worthington" c="WORTHINGTON"/>
<c n="Belchertown" c="BELCHERTOWN"/>
<c n="Orange" c="ORANGE"/>
<c n="Palmer" c="PALMER"/>
<c n="Ware" c="WARE"/>
<c n="Wilbraham" c="WILBRAHAM"/></dma>
    </state>
<state id="FL" full_name="Florida">
    <dma code="528" title="Miami-Ft. Lauderdale, FL">
<c n="Big Pine Key" c="BIG PINE KEY"/>
<c n="Dania Beach" c="DANIA BEACH"/>
<c n="Deerfield Beach" c="DEERFIELD BEACH"/>
<c n="Fort Lauderdale" c="FORT LAUDERDALE"/>
<c n="Hallandale Beach" c="HALLANDALE BEACH"/>
<c n="Hialeah" c="HIALEAH"/>
<c n="Hollywood" c="HOLLYWOOD"/>
<c n="Homestead" c="HOMESTEAD"/>
<c n="Islamorada" c="ISLAMORADA"/>
<c n="Key Biscayne" c="KEY BISCAYNE"/>
<c n="Key Largo" c="KEY LARGO"/>
<c n="Key West" c="KEY WEST"/>
<c n="Marathon" c="MARATHON"/>
<c n="Miami" c="MIAMI"/>
<c n="Miami Beach" c="MIAMI BEACH"/>
<c n="North Miami Beach" c="NORTH MIAMI BEACH"/>
<c n="Opa Locka" c="OPA LOCKA"/>
<c n="Pembroke Pines" c="PEMBROKE PINES"/>
<c n="Pompano Beach" c="POMPANO BEACH"/>
<c n="Sugarloaf Shores" c="SUGARLOAF SHORES"/>
<c n="Summerland Key" c="SUMMERLAND KEY"/>
<c n="Tavernier" c="TAVERNIER"/>
<c n="Weston" c="WESTON"/>
<c n="Aventura" c="AVENTURA"/>
<c n="Bal Harbour" c="BAL HARBOUR"/>
<c n="Coconut Creek" c="COCONUT CREEK"/>
<c n="Cooper City" c="COOPER CITY"/>
<c n="Coral Gables" c="CORAL GABLES"/>
<c n="Coral Springs" c="CORAL SPRINGS"/>
<c n="Coral Terrace" c="CORAL TERRACE"/>
<c n="Country Club" c="COUNTRY CLUB"/>
<c n="Cutler Bay" c="CUTLER BAY"/>
<c n="Davie" c="DAVIE"/>
<c n="Doral" c="DORAL"/>
<c n="Duck Key" c="DUCK KEY"/>
<c n="Florida City" c="FLORIDA CITY"/>
<c n="Fountainebleau" c="FOUNTAINEBLEAU"/>
<c n="Glenvar Heights" c="GLENVAR HEIGHTS"/>
<c n="Hialeah Gardens" c="HIALEAH GARDENS"/>
<c n="Ives Estates" c="IVES ESTATES"/>
<c n="Kendale Lakes" c="KENDALE LAKES"/>
<c n="Kendall" c="KENDALL"/>
<c n="Kendall West" c="KENDALL WEST"/>
<c n="Lauderdale Lakes" c="LAUDERDALE LAKES"/>
<c n="Lauderdale-by-the-Sea" c="LAUDERDALE-BY-THE-SEA"/>
<c n="Lauderhill" c="LAUDERHILL"/>
<c n="Leisure City" c="LEISURE CITY"/>
<c n="Lighthouse Point" c="LIGHTHOUSE POINT"/>
<c n="Margate" c="MARGATE"/>
<c n="Medley" c="MEDLEY"/>
<c n="Miami Gardens" c="MIAMI GARDENS"/>
<c n="Miami Lakes" c="MIAMI LAKES"/>
<c n="Miami Shores" c="MIAMI SHORES"/>
<c n="Miami Springs" c="MIAMI SPRINGS"/>
<c n="Miramar" c="MIRAMAR"/>
<c n="Naranja" c="NARANJA"/>
<c n="North Bay Village" c="NORTH BAY VILLAGE"/>
<c n="North Lauderdale" c="NORTH LAUDERDALE"/>
<c n="North Miami" c="NORTH MIAMI"/>
<c n="Oakland Park" c="OAKLAND PARK"/>
<c n="Palmetto Bay" c="PALMETTO BAY"/>
<c n="Palmetto Estates" c="PALMETTO ESTATES"/>
<c n="Parkland" c="PARKLAND"/>
<c n="Pinecrest" c="PINECREST"/>
<c n="Plantation" c="PLANTATION"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Richmond West" c="RICHMOND WEST"/>
<c n="South Miami" c="SOUTH MIAMI"/>
<c n="South Miami Heights" c="SOUTH MIAMI HEIGHTS"/>
<c n="Sunny Isles Beach" c="SUNNY ISLES BEACH"/>
<c n="Sunrise" c="SUNRISE"/>
<c n="Sunset" c="SUNSET"/>
<c n="Surfside" c="SURFSIDE"/>
<c n="Tamarac" c="TAMARAC"/>
<c n="Tamiami" c="TAMIAMI"/>
<c n="The Crossings" c="THE CROSSINGS"/>
<c n="The Hammocks" c="THE HAMMOCKS"/>
<c n="Three Lakes" c="THREE LAKES"/>
<c n="University Park" c="UNIVERSITY PARK"/>
<c n="West Little River" c="WEST LITTLE RIVER"/>
<c n="Westchester" c="WESTCHESTER"/>
<c n="Westview" c="WESTVIEW"/>
<c n="Wilton Manors" c="WILTON MANORS"/></dma>
    
    <dma code="534" title="Orlando-Daytona Beach, FL">
<c n="Altamonte Springs" c="ALTAMONTE SPRINGS"/>
<c n="Anthony" c="ANTHONY"/>
<c n="Apopka" c="APOPKA"/>
<c n="Belleview" c="BELLEVIEW"/>
<c n="Bunnell" c="BUNNELL"/>
<c n="Bushnell" c="BUSHNELL"/>
<c n="Candler" c="CANDLER"/>
<c n="Cape Canaveral" c="CAPE CANAVERAL"/>
<c n="Casselberry" c="CASSELBERRY"/>
<c n="Clarcona" c="CLARCONA"/>
<c n="Clermont" c="CLERMONT"/>
<c n="Cocoa" c="COCOA"/>
<c n="Cocoa Beach" c="COCOA BEACH"/>
<c n="Daytona Beach" c="DAYTONA BEACH"/>
<c n="De Leon Springs" c="DE LEON SPRINGS"/>
<c n="DeBary" c="DEBARY"/>
<c n="DeLand" c="DELAND"/>
<c n="Deltona" c="DELTONA"/>
<c n="Edgewater" c="EDGEWATER"/>
<c n="Eustis" c="EUSTIS"/>
<c n="Flagler Beach" c="FLAGLER BEACH"/>
<c n="Fruitland Park" c="FRUITLAND PARK"/>
<c n="Geneva" c="GENEVA"/>
<c n="Glenwood" c="GLENWOOD"/>
<c n="Goldenrod" c="GOLDENROD"/>
<c n="Grant" c="GRANT"/>
<c n="Groveland" c="GROVELAND"/>
<c n="Indialantic" c="INDIALANTIC"/>
<c n="Kenansville" c="KENANSVILLE"/>
<c n="Kissimmee" c="KISSIMMEE"/>
<c n="Lady Lake" c="LADY LAKE"/>
<c n="Lake Helen" c="LAKE HELEN"/>
<c n="Lake Mary" c="LAKE MARY"/>
<c n="Leesburg" c="LEESBURG"/>
<c n="Longwood" c="LONGWOOD"/>
<c n="Maitland" c="MAITLAND"/>
<c n="Malabar" c="MALABAR"/>
<c n="Melbourne" c="MELBOURNE"/>
<c n="Merritt Island" c="MERRITT ISLAND"/>
<c n="Minneola" c="MINNEOLA"/>
<c n="Montverde" c="MONTVERDE"/>
<c n="Mount Dora" c="MOUNT DORA"/>
<c n="New Smyrna Beach" c="NEW SMYRNA BEACH"/>
<c n="Ocala" c="OCALA"/>
<c n="Ocoee" c="OCOEE"/>
<c n="Okahumpka" c="OKAHUMPKA"/>
<c n="Orange City" c="ORANGE CITY"/>
<c n="Orlando" c="ORLANDO"/>
<c n="Ormond Beach" c="ORMOND BEACH"/>
<c n="Oviedo" c="OVIEDO"/>
<c n="Palm Bay" c="PALM BAY"/>
<c n="Palm Coast" c="PALM COAST"/>
<c n="Patrick AFB" c="PATRICK AFB"/>
<c n="Pierson" c="PIERSON"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Port Orange" c="PORT ORANGE"/>
<c n="Reddick" c="REDDICK"/>
<c n="Rockledge" c="ROCKLEDGE"/>
<c n="Sanford" c="SANFORD"/>
<c n="Satellite Beach" c="SATELLITE BEACH"/>
<c n="Silver Springs" c="SILVER SPRINGS"/>
<c n="Sorrento" c="SORRENTO"/>
<c n="St. Cloud" c="ST. CLOUD"/>
<c n="Tavares" c="TAVARES"/>
<c n="Titusville" c="TITUSVILLE"/>
<c n="Wildwood" c="WILDWOOD"/>
<c n="Windermere" c="WINDERMERE"/>
<c n="Winter Garden" c="WINTER GARDEN"/>
<c n="Winter Park" c="WINTER PARK"/>
<c n="Winter Springs" c="WINTER SPRINGS"/>
<c n="Zellwood" c="ZELLWOOD"/>
<c n="Azalea Park" c="AZALEA PARK"/>
<c n="Bay Lake" c="BAY LAKE"/>
<c n="Belle Isle" c="BELLE ISLE"/>
<c n="Bithlo" c="BITHLO"/>
<c n="Buena Ventura Lakes" c="BUENA VENTURA LAKES"/>
<c n="Celebration" c="CELEBRATION"/>
<c n="Daytona Beach Shores" c="DAYTONA BEACH SHORES"/>
<c n="Doctor Phillips" c="DOCTOR PHILLIPS"/>
<c n="Dunnellon" c="DUNNELLON"/>
<c n="Fairview Shores" c="FAIRVIEW SHORES"/>
<c n="Forest City" c="FOREST CITY"/>
<c n="Heathrow" c="HEATHROW"/>
<c n="Holly Hill" c="HOLLY HILL"/>
<c n="Hunters Creek" c="HUNTERS CREEK"/>
<c n="Indian Harbour Beach" c="INDIAN HARBOUR BEACH"/>
<c n="Lake Butler" c="LAKE BUTLER"/>
<c n="Lake Hart" c="LAKE HART"/>
<c n="Lockhart" c="LOCKHART"/>
<c n="Meadow Woods" c="MEADOW WOODS"/>
<c n="Melbourne Beach" c="MELBOURNE BEACH"/>
<c n="Mount Plymouth" c="MOUNT PLYMOUTH"/>
<c n="Oak Ridge" c="OAK RIDGE"/>
<c n="Pine Hills" c="PINE HILLS"/>
<c n="Poinciana" c="POINCIANA"/>
<c n="Port St. John" c="PORT ST. JOHN"/>
<c n="Silver Springs Shores" c="SILVER SPRINGS SHORES"/>
<c n="Sky Lake" c="SKY LAKE"/>
<c n="Southchase" c="SOUTHCHASE"/>
<c n="The Villages" c="THE VILLAGES"/>
<c n="Umatilla" c="UMATILLA"/>
<c n="Union Park" c="UNION PARK"/>
<c n="Wedgefield" c="WEDGEFIELD"/>
<c n="Wekiva Springs" c="WEKIVA SPRINGS"/>
<c n="West Melbourne" c="WEST MELBOURNE"/>
<c n="Williamsburg" c="WILLIAMSBURG"/></dma>
    
    <dma code="539" title="Tampa-St Petersburg (Sarasota), FL">
<c n="Anna Maria" c="ANNA MARIA"/>
<c n="Auburndale" c="AUBURNDALE"/>
<c n="Avon Park" c="AVON PARK"/>
<c n="Bartow" c="BARTOW"/>
<c n="Bradenton" c="BRADENTON"/>
<c n="Brandon" c="BRANDON"/>
<c n="Brooksville" c="BROOKSVILLE"/>
<c n="Clearwater" c="CLEARWATER"/>
<c n="Clearwater Beach" c="CLEARWATER BEACH"/>
<c n="Crystal Beach" c="CRYSTAL BEACH"/>
<c n="Crystal River" c="CRYSTAL RIVER"/>
<c n="Crystal Springs" c="CRYSTAL SPRINGS"/>
<c n="Dade City" c="DADE CITY"/>
<c n="Davenport" c="DAVENPORT"/>
<c n="Dover" c="DOVER"/>
<c n="Dundee" c="DUNDEE"/>
<c n="Dunedin" c="DUNEDIN"/>
<c n="Eagle Lake" c="EAGLE LAKE"/>
<c n="Elfers" c="ELFERS"/>
<c n="Ellenton" c="ELLENTON"/>
<c n="Frostproof" c="FROSTPROOF"/>
<c n="Fort Meade" c="FORT MEADE"/>
<c n="Gibsonton" c="GIBSONTON"/>
<c n="Haines City" c="HAINES CITY"/>
<c n="Hernando" c="HERNANDO"/>
<c n="Holiday" c="HOLIDAY"/>
<c n="Homosassa" c="HOMOSASSA"/>
<c n="Homosassa Springs" c="HOMOSASSA SPRINGS"/>
<c n="Hudson" c="HUDSON"/>
<c n="Indian Rocks Beach" c="INDIAN ROCKS BEACH"/>
<c n="Inverness" c="INVERNESS"/>
<c n="Lake Placid" c="LAKE PLACID"/>
<c n="Lake Wales" c="LAKE WALES"/>
<c n="Lakeland" c="LAKELAND"/>
<c n="Land O Lakes" c="LAND O LAKES"/>
<c n="Largo" c="LARGO"/>
<c n="Lecanto" c="LECANTO"/>
<c n="Longboat Key" c="LONGBOAT KEY"/>
<c n="Lutz" c="LUTZ"/>
<c n="Mulberry" c="MULBERRY"/>
<c n="Myakka City" c="MYAKKA CITY"/>
<c n="New Port Richey" c="NEW PORT RICHEY"/>
<c n="Nokomis" c="NOKOMIS"/>
<c n="North Port" c="NORTH PORT"/>
<c n="Odessa" c="ODESSA"/>
<c n="Oldsmar" c="OLDSMAR"/>
<c n="Osprey" c="OSPREY"/>
<c n="Ozona" c="OZONA"/>
<c n="Palm Harbor" c="PALM HARBOR"/>
<c n="Palmetto" c="PALMETTO"/>
<c n="Pinellas Park" c="PINELLAS PARK"/>
<c n="Plant City" c="PLANT CITY"/>
<c n="Polk City" c="POLK CITY"/>
<c n="Port Richey" c="PORT RICHEY"/>
<c n="Riverview" c="RIVERVIEW"/>
<c n="Safety Harbor" c="SAFETY HARBOR"/>
<c n="San Antonio" c="SAN ANTONIO"/>
<c n="Sarasota" c="SARASOTA"/>
<c n="Sebring" c="SEBRING"/>
<c n="Seffner" c="SEFFNER"/>
<c n="Seminole" c="SEMINOLE"/>
<c n="Spring Hill" c="SPRING HILL"/>
<c n="St. Petersburg" c="ST. PETERSBURG"/>
<c n="Sun City" c="SUN CITY"/>
<c n="Tampa" c="TAMPA"/>
<c n="Tarpon Springs" c="TARPON SPRINGS"/>
<c n="Thonotosassa" c="THONOTOSASSA"/>
<c n="Valrico" c="VALRICO"/>
<c n="Venice" c="VENICE"/>
<c n="Venus" c="VENUS"/>
<c n="Wauchula" c="WAUCHULA"/>
<c n="Wimauma" c="WIMAUMA"/>
<c n="Winter Haven" c="WINTER HAVEN"/>
<c n="Zephyrhills" c="ZEPHYRHILLS"/>
<c n="Apollo Beach" c="APOLLO BEACH"/>
<c n="Bayonet Point" c="BAYONET POINT"/>
<c n="Bayshore Gardens" c="BAYSHORE GARDENS"/>
<c n="Bee Ridge" c="BEE RIDGE"/>
<c n="Beverly Hills" c="BEVERLY HILLS"/>
<c n="Cheval" c="CHEVAL"/>
<c n="Citrus Park" c="CITRUS PARK"/>
<c n="Citrus Springs" c="CITRUS SPRINGS"/>
<c n="Cypress Gardens" c="CYPRESS GARDENS"/>
<c n="Desoto Lakes" c="DESOTO LAKES"/>
<c n="East Lake" c="EAST LAKE"/>
<c n="East Lake-Orient Park" c="EAST LAKE-ORIENT PARK"/>
<c n="Egypt Lake-Leto" c="EGYPT LAKE-LETO"/>
<c n="Feather Sound" c="FEATHER SOUND"/>
<c n="Fruitville" c="FRUITVILLE"/>
<c n="Greater Carrollwood" c="GREATER CARROLLWOOD"/>
<c n="Greater Northdale" c="GREATER NORTHDALE"/>
<c n="Gulf Gate Estates" c="GULF GATE ESTATES"/>
<c n="Gulfport" c="GULFPORT"/>
<c n="Holmes Beach" c="HOLMES BEACH"/>
<c n="Inverness Highlands South" c="INVERNESS HIGHLANDS SOUTH"/>
<c n="Jan Phyl Village" c="JAN PHYL VILLAGE"/>
<c n="Jasmine Estates" c="JASMINE ESTATES"/>
<c n="Kathleen" c="KATHLEEN"/>
<c n="Keystone" c="KEYSTONE"/>
<c n="Lake Magdalene" c="LAKE MAGDALENE"/>
<c n="Lakeland Highlands" c="LAKELAND HIGHLANDS"/>
<c n="Laurel" c="LAUREL"/>
<c n="Loughman" c="LOUGHMAN"/>
<c n="Madeira Beach" c="MADEIRA BEACH"/>
<c n="Mango" c="MANGO"/>
<c n="New Port Richey East" c="NEW PORT RICHEY EAST"/>
<c n="North Redington Beach" c="NORTH REDINGTON BEACH"/>
<c n="North Sarasota" c="NORTH SARASOTA"/>
<c n="North Weeki Wachee" c="NORTH WEEKI WACHEE"/>
<c n="Palm River-Clair Mel" c="PALM RIVER-CLAIR MEL"/>
<c n="Pine Ridge" c="PINE RIDGE"/>
<c n="Ridge Manor" c="RIDGE MANOR"/>
<c n="Ruskin" c="RUSKIN"/>
<c n="Samoset" c="SAMOSET"/>
<c n="Sarasota Springs" c="SARASOTA SPRINGS"/>
<c n="Shady Hills" c="SHADY HILLS"/>
<c n="Siesta Key" c="SIESTA KEY"/>
<c n="South Bradenton" c="SOUTH BRADENTON"/>
<c n="South Venice" c="SOUTH VENICE"/>
<c n="St. Pete Beach" c="ST. PETE BEACH"/>
<c n="Sugarmill Woods" c="SUGARMILL WOODS"/>
<c n="Sun City Center" c="SUN CITY CENTER"/>
<c n="Temple Terrace" c="TEMPLE TERRACE"/>
<c n="The Meadows" c="THE MEADOWS"/>
<c n="Town n Country" c="TOWN N COUNTRY"/>
<c n="Treasure Island" c="TREASURE ISLAND"/>
<c n="Trinity" c="TRINITY"/>
<c n="University" c="UNIVERSITY"/>
<c n="Vamo" c="VAMO"/>
<c n="Wesley Chapel" c="WESLEY CHAPEL"/>
<c n="Wesley Chapel South" c="WESLEY CHAPEL SOUTH"/>
<c n="Westchase" c="WESTCHASE"/>
<c n="Whitfield" c="WHITFIELD"/>
<c n="Willow Oak" c="WILLOW OAK"/>
<c n="Zephyrhills West" c="ZEPHYRHILLS WEST"/></dma>
    
    <dma code="548" title="West Palm Beach-Ft. Pierce, FL">
<c n="Belle Glade" c="BELLE GLADE"/>
<c n="Boca Raton" c="BOCA RATON"/>
<c n="Boynton Beach" c="BOYNTON BEACH"/>
<c n="Delray Beach" c="DELRAY BEACH"/>
<c n="Fort Pierce" c="FORT PIERCE"/>
<c n="Hobe Sound" c="HOBE SOUND"/>
<c n="Indiantown" c="INDIANTOWN"/>
<c n="Jensen Beach" c="JENSEN BEACH"/>
<c n="Jupiter" c="JUPITER"/>
<c n="Lake Worth" c="LAKE WORTH"/>
<c n="Loxahatchee Groves" c="LOXAHATCHEE GROVES"/>
<c n="North Palm Beach" c="NORTH PALM BEACH"/>
<c n="Okeechobee" c="OKEECHOBEE"/>
<c n="Pahokee" c="PAHOKEE"/>
<c n="Palm Beach" c="PALM BEACH"/>
<c n="Palm City" c="PALM CITY"/>
<c n="Port St. Lucie" c="PORT ST. LUCIE"/>
<c n="Sebastian" c="SEBASTIAN"/>
<c n="South Bay" c="SOUTH BAY"/>
<c n="Stuart" c="STUART"/>
<c n="Vero Beach" c="VERO BEACH"/>
<c n="Wabasso" c="WABASSO"/>
<c n="West Palm Beach" c="WEST PALM BEACH"/>
<c n="Boca Del Mar" c="BOCA DEL MAR"/>
<c n="Village Of Golf" c="VILLAGE OF GOLF"/>
<c n="Green Acres" c="GREEN ACRES"/>
<c n="Hamptons at Boca Raton" c="HAMPTONS AT BOCA RATON"/>
<c n="Juno Beach" c="JUNO BEACH"/>
<c n="Kings Point" c="KINGS POINT"/>
<c n="Lakewood Park" c="LAKEWOOD PARK"/>
<c n="Lantana" c="LANTANA"/>
<c n="Mission Bay" c="MISSION BAY"/>
<c n="Palm Beach Gardens" c="PALM BEACH GARDENS"/>
<c n="Palm Beach Shores" c="PALM BEACH SHORES"/>
<c n="Palm Springs" c="PALM SPRINGS"/>
<c n="Port Salerno" c="PORT SALERNO"/>
<c n="Riviera Beach" c="RIVIERA BEACH"/>
<c n="Royal Palm Beach" c="ROYAL PALM BEACH"/>
<c n="Sandalfoot Cove" c="SANDALFOOT COVE"/>
<c n="Tequesta" c="TEQUESTA"/>
<c n="Wellington" c="WELLINGTON"/>
<c n="Whisper Walk" c="WHISPER WALK"/></dma>
    
    <dma code="561" title="Jacksonville, FL">
<c n="Atlantic Beach" c="ATLANTIC BEACH"/>
<c n="Callahan" c="CALLAHAN"/>
<c n="Crescent City" c="CRESCENT CITY"/>
<c n="Fernandina Beach" c="FERNANDINA BEACH"/>
<c n="Graham" c="GRAHAM"/>
<c n="Green Cove Springs" c="GREEN COVE SPRINGS"/>
<c n="Hilliard" c="HILLIARD"/>
<c n="Jacksonville" c="JACKSONVILLE"/>
<c n="Jacksonville Beach" c="JACKSONVILLE BEACH"/>
<c n="Keystone Heights" c="KEYSTONE HEIGHTS"/>
<c n="Lake Butler" c="LAKE BUTLER"/>
<c n="Lake City" c="LAKE CITY"/>
<c n="Macclenny" c="MACCLENNY"/>
<c n="Middleburg" c="MIDDLEBURG"/>
<c n="Neptune Beach" c="NEPTUNE BEACH"/>
<c n="Orange Park" c="ORANGE PARK"/>
<c n="Palatka" c="PALATKA"/>
<c n="Pomona Park" c="POMONA PARK"/>
<c n="Ponte Vedra Beach" c="PONTE VEDRA BEACH"/>
<c n="St. Augustine" c="ST. AUGUSTINE"/>
<c n="Starke" c="STARKE"/>
<c n="Yulee" c="YULEE"/>
<c n="Blackshear" c="BLACKSHEAR"/>
<c n="Brunswick" c="BRUNSWICK"/>
<c n="Folkston" c="FOLKSTON"/>
<c n="Kings Bay Base" c="KINGS BAY BASE"/>
<c n="Kingsland" c="KINGSLAND"/>
<c n="Nahunta" c="NAHUNTA"/>
<c n="St. Marys" c="ST. MARYS"/>
<c n="Saint Simons Island" c="SAINT SIMONS ISLAND"/>
<c n="Waycross" c="WAYCROSS"/>
<c n="Waynesville" c="WAYNESVILLE"/>
<c n="Bellair-Meadowbrook Terrace" c="BELLAIR-MEADOWBROOK TERRACE"/>
<c n="Dock Junction" c="DOCK JUNCTION"/>
<c n="Fruit Cove" c="FRUIT COVE"/>
<c n="Interlachen" c="INTERLACHEN"/>
<c n="Lakeside" c="LAKESIDE"/>
<c n="Palm Valley" c="PALM VALLEY"/>
<c n="St. Augustine Beach" c="ST. AUGUSTINE BEACH"/>
<c n="St. Augustine Shores" c="ST. AUGUSTINE SHORES"/></dma>
    
    <dma code="571" title="Ft. Myers-Naples, FL">
<c n="Arcadia" c="ARCADIA"/>
<c n="Boca Grande" c="BOCA GRANDE"/>
<c n="Bonita Springs" c="BONITA SPRINGS"/>
<c n="Cape Coral" c="CAPE CORAL"/>
<c n="Clewiston" c="CLEWISTON"/>
<c n="Estero" c="ESTERO"/>
<c n="Fort Myers" c="FORT MYERS"/>
<c n="Fort Myers Beach" c="FORT MYERS BEACH"/>
<c n="Immokalee" c="IMMOKALEE"/>
<c n="LaBelle" c="LABELLE"/>
<c n="Lehigh Acres" c="LEHIGH ACRES"/>
<c n="Marco Island" c="MARCO ISLAND"/>
<c n="Naples" c="NAPLES"/>
<c n="North Fort Myers" c="NORTH FORT MYERS"/>
<c n="Placida" c="PLACIDA"/>
<c n="Port Charlotte" c="PORT CHARLOTTE"/>
<c n="Punta Gorda" c="PUNTA GORDA"/>
<c n="Sanibel" c="SANIBEL"/>
<c n="St. James City" c="ST. JAMES CITY"/>
<c n="Buckingham" c="BUCKINGHAM"/>
<c n="Captiva" c="CAPTIVA"/>
<c n="Cypress Lake" c="CYPRESS LAKE"/>
<c n="Gateway" c="GATEWAY"/>
<c n="Golden Gate" c="GOLDEN GATE"/>
<c n="Harbour Heights" c="HARBOUR HEIGHTS"/>
<c n="Iona" c="IONA"/>
<c n="Lely Resort" c="LELY RESORT"/>
<c n="North Naples" c="NORTH NAPLES"/>
<c n="Orangetree" c="ORANGETREE"/>
<c n="Rotonda West" c="ROTONDA WEST"/>
<c n="San Carlos Park" c="SAN CARLOS PARK"/>
<c n="Three Oaks" c="THREE OAKS"/>
<c n="Villas" c="VILLAS"/>
<c n="Vineyards" c="VINEYARDS"/></dma>
    
    <dma code="592" title="Gainesville, FL">
<c n="Alachua" c="ALACHUA"/>
<c n="Bronson" c="BRONSON"/>
<c n="Chiefland" c="CHIEFLAND"/>
<c n="Cross City" c="CROSS CITY"/>
<c n="Gainesville" c="GAINESVILLE"/>
<c n="Hawthorne" c="HAWTHORNE"/>
<c n="High Springs" c="HIGH SPRINGS"/>
<c n="Newberry" c="NEWBERRY"/>
<c n="Trenton" c="TRENTON"/>
<c n="Williston" c="WILLISTON"/></dma>
    
    <dma code="656" title="Panama City, FL">
<c n="Altha" c="ALTHA"/>
<c n="Apalachicola" c="APALACHICOLA"/>
<c n="Blountstown" c="BLOUNTSTOWN"/>
<c n="Chipley" c="CHIPLEY"/>
<c n="Cottondale" c="COTTONDALE"/>
<c n="DeFuniak Springs" c="DEFUNIAK SPRINGS"/>
<c n="Eastpoint" c="EASTPOINT"/>
<c n="Freeport" c="FREEPORT"/>
<c n="Graceville" c="GRACEVILLE"/>
<c n="Lynn Haven" c="LYNN HAVEN"/>
<c n="Marianna" c="MARIANNA"/>
<c n="Mexico Beach" c="MEXICO BEACH"/>
<c n="Panama City" c="PANAMA CITY"/>
<c n="Panama City Beach" c="PANAMA CITY BEACH"/>
<c n="Port St. Joe" c="PORT ST. JOE"/>
<c n="Sunnyside" c="SUNNYSIDE"/>
<c n="Callaway" c="CALLAWAY"/>
<c n="Laguna Beach" c="LAGUNA BEACH"/>
<c n="Lower Grand Lagoon" c="LOWER GRAND LAGOON"/>
<c n="Miramar Beach" c="MIRAMAR BEACH"/>
<c n="Tyndall AFB" c="TYNDALL AFB"/>
<c n="Upper Grand Lagoon" c="UPPER GRAND LAGOON"/></dma>
    
    <dma code="686" title="Mobile, AL-Pensacola, FL">
<c n="Atmore" c="ATMORE"/>
<c n="Axis" c="AXIS"/>
<c n="Bay Minette" c="BAY MINETTE"/>
<c n="Brewton" c="BREWTON"/>
<c n="Bucks" c="BUCKS"/>
<c n="Coffeeville" c="COFFEEVILLE"/>
<c n="Creola" c="CREOLA"/>
<c n="Daphne" c="DAPHNE"/>
<c n="Dauphin Island" c="DAUPHIN ISLAND"/>
<c n="Eight Mile" c="EIGHT MILE"/>
<c n="Elberta" c="ELBERTA"/>
<c n="Evergreen" c="EVERGREEN"/>
<c n="Excel" c="EXCEL"/>
<c n="Fairhope" c="FAIRHOPE"/>
<c n="Foley" c="FOLEY"/>
<c n="Fruitdale" c="FRUITDALE"/>
<c n="Fulton" c="FULTON"/>
<c n="Grand Bay" c="GRAND BAY"/>
<c n="Grove Hill" c="GROVE HILL"/>
<c n="Gulf Shores" c="GULF SHORES"/>
<c n="Huxford" c="HUXFORD"/>
<c n="Jackson" c="JACKSON"/>
<c n="Lillian" c="LILLIAN"/>
<c n="Loxley" c="LOXLEY"/>
<c n="Millry" c="MILLRY"/>
<c n="Mobile" c="MOBILE"/>
<c n="Monroeville" c="MONROEVILLE"/>
<c n="Montrose" c="MONTROSE"/>
<c n="Orange Beach" c="ORANGE BEACH"/>
<c n="Perdue Hill" c="PERDUE HILL"/>
<c n="Robertsdale" c="ROBERTSDALE"/>
<c n="Saraland" c="SARALAND"/>
<c n="Semmes" c="SEMMES"/>
<c n="Spanish Fort" c="SPANISH FORT"/>
<c n="Summerdale" c="SUMMERDALE"/>
<c n="Theodore" c="THEODORE"/>
<c n="Thomasville" c="THOMASVILLE"/>
<c n="Cantonment" c="CANTONMENT"/>
<c n="Century" c="CENTURY"/>
<c n="Crestview" c="CRESTVIEW"/>
<c n="Destin" c="DESTIN"/>
<c n="Eglin AFB" c="EGLIN AFB"/>
<c n="Fort Walton Beach" c="FORT WALTON BEACH"/>
<c n="Gulf Breeze" c="GULF BREEZE"/>
<c n="Hurlburt Field" c="HURLBURT FIELD"/>
<c n="Jay" c="JAY"/>
<c n="Laurel Hill" c="LAUREL HILL"/>
<c n="Mary Esther" c="MARY ESTHER"/>
<c n="McDavid" c="MCDAVID"/>
<c n="Milton" c="MILTON"/>
<c n="Molino" c="MOLINO"/>
<c n="Navarre" c="NAVARRE"/>
<c n="Niceville" c="NICEVILLE"/>
<c n="Pensacola" c="PENSACOLA"/>
<c n="Shalimar" c="SHALIMAR"/>
<c n="Valparaiso" c="VALPARAISO"/>
<c n="Leakesville" c="LEAKESVILLE"/>
<c n="Lucedale" c="LUCEDALE"/>
<c n="Bellview" c="BELLVIEW"/>
<c n="Brent" c="BRENT"/>
<c n="Chatom" c="CHATOM"/>
<c n="Ensley" c="ENSLEY"/>
<c n="Ferry Pass" c="FERRY PASS"/>
<c n="Gonzalez" c="GONZALEZ"/>
<c n="Lake Lorraine" c="LAKE LORRAINE"/>
<c n="Myrtle Grove" c="MYRTLE GROVE"/>
<c n="Okaloosa Island" c="OKALOOSA ISLAND"/>
<c n="Pace" c="PACE"/>
<c n="Pensacola Beach" c="PENSACOLA BEACH"/>
<c n="Perdido Key" c="PERDIDO KEY"/>
<c n="Tillmans Corner" c="TILLMANS CORNER"/>
<c n="Warrington" c="WARRINGTON"/>
<c n="West Pensacola" c="WEST PENSACOLA"/>
<c n="Wright" c="WRIGHT"/></dma>
    </state>
<state id="KY" full_name="Kentucky">
    <dma code="529" title="Louisville, KY">
<c n="Austin" c="AUSTIN"/>
<c n="Borden" c="BORDEN"/>
<c n="Brownstown" c="BROWNSTOWN"/>
<c n="Butlerville" c="BUTLERVILLE"/>
<c n="Campbellsburg" c="CAMPBELLSBURG"/>
<c n="Canaan" c="CANAAN"/>
<c n="Charlestown" c="CHARLESTOWN"/>
<c n="Clarksville" c="CLARKSVILLE"/>
<c n="Corydon" c="CORYDON"/>
<c n="Crothersville" c="CROTHERSVILLE"/>
<c n="Deputy" c="DEPUTY"/>
<c n="Eckerty" c="ECKERTY"/>
<c n="Elizabeth" c="ELIZABETH"/>
<c n="English" c="ENGLISH"/>
<c n="Floyds Knobs" c="FLOYDS KNOBS"/>
<c n="French Lick" c="FRENCH LICK"/>
<c n="Hanover" c="HANOVER"/>
<c n="Hardinsburg" c="HARDINSBURG"/>
<c n="Henryville" c="HENRYVILLE"/>
<c n="Jeffersonville" c="JEFFERSONVILLE"/>
<c n="Lanesville" c="LANESVILLE"/>
<c n="Madison" c="MADISON"/>
<c n="Marengo" c="MARENGO"/>
<c n="Mauckport" c="MAUCKPORT"/>
<c n="Medora" c="MEDORA"/>
<c n="New Albany" c="NEW ALBANY"/>
<c n="New Washington" c="NEW WASHINGTON"/>
<c n="North Vernon" c="NORTH VERNON"/>
<c n="Orleans" c="ORLEANS"/>
<c n="Palmyra" c="PALMYRA"/>
<c n="Paoli" c="PAOLI"/>
<c n="Pekin" c="PEKIN"/>
<c n="Ramsey" c="RAMSEY"/>
<c n="Salem" c="SALEM"/>
<c n="Scottsburg" c="SCOTTSBURG"/>
<c n="Sellersburg" c="SELLERSBURG"/>
<c n="Seymour" c="SEYMOUR"/>
<c n="Vallonia" c="VALLONIA"/>
<c n="Vernon" c="VERNON"/>
<c n="West Baden Springs" c="WEST BADEN SPRINGS"/>
<c n="Bardstown" c="BARDSTOWN"/>
<c n="Bedford" c="BEDFORD"/>
<c n="Brandenburg" c="BRANDENBURG"/>
<c n="Buckner" c="BUCKNER"/>
<c n="Campbellsburg" c="CAMPBELLSBURG"/>
<c n="Campbellsville" c="CAMPBELLSVILLE"/>
<c n="Carrollton" c="CARROLLTON"/>
<c n="Cloverport" c="CLOVERPORT"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Coxs Creek" c="COXS CREEK"/>
<c n="Crestwood" c="CRESTWOOD"/>
<c n="Elizabethtown" c="ELIZABETHTOWN"/>
<c n="Eminence" c="EMINENCE"/>
<c n="Fisherville" c="FISHERVILLE"/>
<c n="Fort Knox" c="FORT KNOX"/>
<c n="Garfield" c="GARFIELD"/>
<c n="Ghent" c="GHENT"/>
<c n="Goshen" c="GOSHEN"/>
<c n="Greensburg" c="GREENSBURG"/>
<c n="Hardinsburg" c="HARDINSBURG"/>
<c n="Hodgenville" c="HODGENVILLE"/>
<c n="La Grange" c="LA GRANGE"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Leitchfield" c="LEITCHFIELD"/>
<c n="Louisville" c="LOUISVILLE"/>
<c n="Mount Washington" c="MOUNT WASHINGTON"/>
<c n="Nerinx" c="NERINX"/>
<c n="New Castle" c="NEW CASTLE"/>
<c n="Pewee Valley" c="PEWEE VALLEY"/>
<c n="Pleasureville" c="PLEASUREVILLE"/>
<c n="Prospect" c="PROSPECT"/>
<c n="Radcliff" c="RADCLIFF"/>
<c n="Shelbyville" c="SHELBYVILLE"/>
<c n="Shepherdsville" c="SHEPHERDSVILLE"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="Summit" c="SUMMIT"/>
<c n="Taylorsville" c="TAYLORSVILLE"/>
<c n="Upton" c="UPTON"/>
<c n="West Point" c="WEST POINT"/>
<c n="Westport" c="WESTPORT"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Jeffersontown" c="JEFFERSONTOWN"/>
<c n="Lyndon" c="LYNDON"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="St. Matthews" c="ST. MATTHEWS"/></dma>
    
    <dma code="541" title="Lexington, KY">
<c n="Annville" c="ANNVILLE"/>
<c n="Barbourville" c="BARBOURVILLE"/>
<c n="Beattyville" c="BEATTYVILLE"/>
<c n="Berea" c="BEREA"/>
<c n="Booneville" c="BOONEVILLE"/>
<c n="Bryantsville" c="BRYANTSVILLE"/>
<c n="Burgin" c="BURGIN"/>
<c n="Bush" c="BUSH"/>
<c n="Campton" c="CAMPTON"/>
<c n="Carlisle" c="CARLISLE"/>
<c n="Clay City" c="CLAY CITY"/>
<c n="Combs" c="COMBS"/>
<c n="Corbin" c="CORBIN"/>
<c n="Cornettsville" c="CORNETTSVILLE"/>
<c n="Cynthiana" c="CYNTHIANA"/>
<c n="Danville" c="DANVILLE"/>
<c n="Dunnville" c="DUNNVILLE"/>
<c n="Dwarf" c="DWARF"/>
<c n="East Bernstadt" c="EAST BERNSTADT"/>
<c n="Fall Rock" c="FALL ROCK"/>
<c n="Ferguson" c="FERGUSON"/>
<c n="Flat Lick" c="FLAT LICK"/>
<c n="Flemingsburg" c="FLEMINGSBURG"/>
<c n="Ford" c="FORD"/>
<c n="Frankfort" c="FRANKFORT"/>
<c n="Frenchburg" c="FRENCHBURG"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Harrodsburg" c="HARRODSBURG"/>
<c n="Hazard" c="HAZARD"/>
<c n="Hindman" c="HINDMAN"/>
<c n="Irvine" c="IRVINE"/>
<c n="Jackson" c="JACKSON"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Keavy" c="KEAVY"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Lawrenceburg" c="LAWRENCEBURG"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Liberty" c="LIBERTY"/>
<c n="London" c="LONDON"/>
<c n="Lost Creek" c="LOST CREEK"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="McKee" c="MCKEE"/>
<c n="Midway" c="MIDWAY"/>
<c n="Millersburg" c="MILLERSBURG"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="Morehead" c="MOREHEAD"/>
<c n="Mount Olivet" c="MOUNT OLIVET"/>
<c n="Mount Sterling" c="MOUNT STERLING"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="Mousie" c="MOUSIE"/>
<c n="Nicholasville" c="NICHOLASVILLE"/>
<c n="Owingsville" c="OWINGSVILLE"/>
<c n="Paris" c="PARIS"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Russell Springs" c="RUSSELL SPRINGS"/>
<c n="Salt Lick" c="SALT LICK"/>
<c n="Salvisa" c="SALVISA"/>
<c n="Salyersville" c="SALYERSVILLE"/>
<c n="Science Hill" c="SCIENCE HILL"/>
<c n="Somerset" c="SOMERSET"/>
<c n="Stamping Ground" c="STAMPING GROUND"/>
<c n="Stanford" c="STANFORD"/>
<c n="Stanton" c="STANTON"/>
<c n="Topmost" c="TOPMOST"/>
<c n="Versailles" c="VERSAILLES"/>
<c n="Vicco" c="VICCO"/>
<c n="Viper" c="VIPER"/>
<c n="Wellington" c="WELLINGTON"/>
<c n="West Liberty" c="WEST LIBERTY"/>
<c n="Williamsburg" c="WILLIAMSBURG"/>
<c n="Wilmore" c="WILMORE"/>
<c n="Winchester" c="WINCHESTER"/></dma>
    
    <dma code="736" title="Bowling Green, KY">
<c n="Bowling Green" c="BOWLING GREEN"/>
<c n="Brownsville" c="BROWNSVILLE"/>
<c n="Canmer" c="CANMER"/>
<c n="Cave City" c="CAVE CITY"/>
<c n="Edmonton" c="EDMONTON"/>
<c n="Glasgow" c="GLASGOW"/>
<c n="Morgantown" c="MORGANTOWN"/>
<c n="Munfordville" c="MUNFORDVILLE"/>
<c n="Oakland" c="OAKLAND"/>
<c n="Summer Shade" c="SUMMER SHADE"/></dma>
    </state>
<state id="VA" full_name="Virginia">
    <dma code="531" title="Tri-Cities, TN-VA">
<c n="Confluence" c="CONFLUENCE"/>
<c n="Hoskinston" c="HOSKINSTON"/>
<c n="Hyden" c="HYDEN"/>
<c n="Jackhorn" c="JACKHORN"/>
<c n="Jenkins" c="JENKINS"/>
<c n="Whitesburg" c="WHITESBURG"/>
<c n="Blountville" c="BLOUNTVILLE"/>
<c n="Bluff City" c="BLUFF CITY"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Bulls Gap" c="BULLS GAP"/>
<c n="Butler" c="BUTLER"/>
<c n="Church Hill" c="CHURCH HILL"/>
<c n="Elizabethton" c="ELIZABETHTON"/>
<c n="Erwin" c="ERWIN"/>
<c n="Greeneville" c="GREENEVILLE"/>
<c n="Hampton" c="HAMPTON"/>
<c n="Johnson City" c="JOHNSON CITY"/>
<c n="Jonesborough" c="JONESBOROUGH"/>
<c n="Kingsport" c="KINGSPORT"/>
<c n="Limestone" c="LIMESTONE"/>
<c n="Midway" c="MIDWAY"/>
<c n="Mountain City" c="MOUNTAIN CITY"/>
<c n="Piney Flats" c="PINEY FLATS"/>
<c n="Rogersville" c="ROGERSVILLE"/>
<c n="Surgoinsville" c="SURGOINSVILLE"/>
<c n="Unicoi" c="UNICOI"/>
<c n="Abingdon" c="ABINGDON"/>
<c n="Atkins" c="ATKINS"/>
<c n="Big Stone Gap" c="BIG STONE GAP"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Clintwood" c="CLINTWOOD"/>
<c n="Duffield" c="DUFFIELD"/>
<c n="Gate City" c="GATE CITY"/>
<c n="Glade Spring" c="GLADE SPRING"/>
<c n="Grundy" c="GRUNDY"/>
<c n="Honaker" c="HONAKER"/>
<c n="Jonesville" c="JONESVILLE"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Marion" c="MARION"/>
<c n="Meadowview" c="MEADOWVIEW"/>
<c n="Norton" c="NORTON"/>
<c n="Saltville" c="SALTVILLE"/>
<c n="Vansant" c="VANSANT"/>
<c n="Weber City" c="WEBER CITY"/>
<c n="Wise" c="WISE"/>
<c n="Chilhowie" c="CHILHOWIE"/>
<c n="Pennington Gap" c="PENNINGTON GAP"/></dma>
    
    <dma code="544" title="Norfolk-Portsmouth-Newport News,VA">
<c n="Ahoskie" c="AHOSKIE"/>
<c n="Avon" c="AVON"/>
<c n="Aydlett" c="AYDLETT"/>
<c n="Barco" c="BARCO"/>
<c n="Buxton" c="BUXTON"/>
<c n="Camden" c="CAMDEN"/>
<c n="Corolla" c="COROLLA"/>
<c n="Currituck" c="CURRITUCK"/>
<c n="Edenton" c="EDENTON"/>
<c n="Elizabeth City" c="ELIZABETH CITY"/>
<c n="Gates" c="GATES"/>
<c n="Gatesville" c="GATESVILLE"/>
<c n="Grandy" c="GRANDY"/>
<c n="Harbinger" c="HARBINGER"/>
<c n="Hatteras" c="HATTERAS"/>
<c n="Hertford" c="HERTFORD"/>
<c n="Kill Devil Hills" c="KILL DEVIL HILLS"/>
<c n="Kitty Hawk" c="KITTY HAWK"/>
<c n="Knotts Island" c="KNOTTS ISLAND"/>
<c n="Manns Harbor" c="MANNS HARBOR"/>
<c n="Manteo" c="MANTEO"/>
<c n="Maple" c="MAPLE"/>
<c n="Moyock" c="MOYOCK"/>
<c n="Murfreesboro" c="MURFREESBORO"/>
<c n="Nags Head" c="NAGS HEAD"/>
<c n="Point Harbor" c="POINT HARBOR"/>
<c n="Poplar Branch" c="POPLAR BRANCH"/>
<c n="Roduco" c="RODUCO"/>
<c n="Sunbury" c="SUNBURY"/>
<c n="Tyner" c="TYNER"/>
<c n="Wanchese" c="WANCHESE"/>
<c n="Winton" c="WINTON"/>
<c n="Accomac" c="ACCOMAC"/>
<c n="Ark" c="ARK"/>
<c n="Boykins" c="BOYKINS"/>
<c n="Cape Charles" c="CAPE CHARLES"/>
<c n="Capron" c="CAPRON"/>
<c n="Chesapeake" c="CHESAPEAKE"/>
<c n="Chincoteague Island" c="CHINCOTEAGUE ISLAND"/>
<c n="Claremont" c="CLAREMONT"/>
<c n="Courtland" c="COURTLAND"/>
<c n="Dendron" c="DENDRON"/>
<c n="Exmore" c="EXMORE"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Fort Eustis" c="FORT EUSTIS"/>
<c n="Fort Monroe" c="FORT MONROE"/>
<c n="Gloucester Point" c="GLOUCESTER POINT"/>
<c n="Greenbush" c="GREENBUSH"/>
<c n="Grimstead" c="GRIMSTEAD"/>
<c n="Hampton" c="HAMPTON"/>
<c n="Hayes" c="HAYES"/>
<c n="Isle of Wight" c="ISLE OF WIGHT"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Lightfoot" c="LIGHTFOOT"/>
<c n="Machipongo" c="MACHIPONGO"/>
<c n="Mathews" c="MATHEWS"/>
<c n="Melfa" c="MELFA"/>
<c n="Nassawadox" c="NASSAWADOX"/>
<c n="New Church" c="NEW CHURCH"/>
<c n="Newport News" c="NEWPORT NEWS"/>
<c n="Norfolk" c="NORFOLK"/>
<c n="Painter" c="PAINTER"/>
<c n="Poquoson" c="POQUOSON"/>
<c n="Portsmouth" c="PORTSMOUTH"/>
<c n="Smithfield" c="SMITHFIELD"/>
<c n="Suffolk" c="SUFFOLK"/>
<c n="Surry" c="SURRY"/>
<c n="Toano" c="TOANO"/>
<c n="Virginia Beach" c="VIRGINIA BEACH"/>
<c n="Wallops Island" c="WALLOPS ISLAND"/>
<c n="Wattsville" c="WATTSVILLE"/>
<c n="Williamsburg" c="WILLIAMSBURG"/>
<c n="Yorktown" c="YORKTOWN"/>
<c n="Duck" c="DUCK"/></dma>
    
    <dma code="556" title="Richmond-Petersburg, VA">
<c n="Alberta" c="ALBERTA"/>
<c n="Amelia Court House" c="AMELIA COURT HOUSE"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Aylett" c="AYLETT"/>
<c n="Blackstone" c="BLACKSTONE"/>
<c n="Bowling Green" c="BOWLING GREEN"/>
<c n="Buckingham" c="BUCKINGHAM"/>
<c n="Carson" c="CARSON"/>
<c n="Charles City" c="CHARLES CITY"/>
<c n="Chester" c="CHESTER"/>
<c n="Chesterfield" c="CHESTERFIELD"/>
<c n="Colonial Heights" c="COLONIAL HEIGHTS"/>
<c n="Crewe" c="CREWE"/>
<c n="Cumberland" c="CUMBERLAND"/>
<c n="Dinwiddie" c="DINWIDDIE"/>
<c n="Disputanta" c="DISPUTANTA"/>
<c n="Emporia" c="EMPORIA"/>
<c n="Farmville" c="FARMVILLE"/>
<c n="Ft Lee" c="FT LEE"/>
<c n="Gasburg" c="GASBURG"/>
<c n="Glen Allen" c="GLEN ALLEN"/>
<c n="Goochland" c="GOOCHLAND"/>
<c n="Gordonsville" c="GORDONSVILLE"/>
<c n="Hampden Sydney" c="HAMPDEN SYDNEY"/>
<c n="Hanover" c="HANOVER"/>
<c n="Heathsville" c="HEATHSVILLE"/>
<c n="Highland Springs" c="HIGHLAND SPRINGS"/>
<c n="Hopewell" c="HOPEWELL"/>
<c n="Irvington" c="IRVINGTON"/>
<c n="Jarratt" c="JARRATT"/>
<c n="Jetersville" c="JETERSVILLE"/>
<c n="Kenbridge" c="KENBRIDGE"/>
<c n="Kilmarnock" c="KILMARNOCK"/>
<c n="King and Queen Court House" c="KING AND QUEEN COURT HOUSE"/>
<c n="King William" c="KING WILLIAM"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Lawrenceville" c="LAWRENCEVILLE"/>
<c n="Locust Grove" c="LOCUST GROVE"/>
<c n="Louisa" c="LOUISA"/>
<c n="Lunenburg" c="LUNENBURG"/>
<c n="Manakin-Sabot" c="MANAKIN-SABOT"/>
<c n="Manquin" c="MANQUIN"/>
<c n="Mechanicsville" c="MECHANICSVILLE"/>
<c n="Midlothian" c="MIDLOTHIAN"/>
<c n="Mineral" c="MINERAL"/>
<c n="New Kent" c="NEW KENT"/>
<c n="Nottoway Court House" c="NOTTOWAY COURT HOUSE"/>
<c n="Oilville" c="OILVILLE"/>
<c n="Orange" c="ORANGE"/>
<c n="Petersburg" c="PETERSBURG"/>
<c n="Powhatan" c="POWHATAN"/>
<c n="Prince George" c="PRINCE GEORGE"/>
<c n="Prospect" c="PROSPECT"/>
<c n="Quinton" c="QUINTON"/>
<c n="Rhoadesville" c="RHOADESVILLE"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Rockville" c="ROCKVILLE"/>
<c n="Saluda" c="SALUDA"/>
<c n="Sandston" c="SANDSTON"/>
<c n="Studley" c="STUDLEY"/>
<c n="Sussex" c="SUSSEX"/>
<c n="Tappahannock" c="TAPPAHANNOCK"/>
<c n="Urbanna" c="URBANNA"/>
<c n="Victoria" c="VICTORIA"/>
<c n="Wakefield" c="WAKEFIELD"/>
<c n="Walkerton" c="WALKERTON"/>
<c n="Warsaw" c="WARSAW"/>
<c n="Waverly" c="WAVERLY"/>
<c n="West Point" c="WEST POINT"/>
<c n="White Stone" c="WHITE STONE"/>
<c n="Bellwood" c="BELLWOOD"/>
<c n="Bon Air" c="BON AIR"/>
<c n="Chamberlayne" c="CHAMBERLAYNE"/>
<c n="Dumbarton" c="DUMBARTON"/>
<c n="East Highland Park" c="EAST HIGHLAND PARK"/>
<c n="Lakeside" c="LAKESIDE"/>
<c n="Laurel" c="LAUREL"/>
<c n="Matoaca" c="MATOACA"/>
<c n="Montrose" c="MONTROSE"/>
<c n="Short Pump" c="SHORT PUMP"/>
<c n="Tuckahoe" c="TUCKAHOE"/>
<c n="Woodlake" c="WOODLAKE"/>
<c n="Wyndham" c="WYNDHAM"/></dma>
    
    <dma code="569" title="Harrisonburg, VA">
<c n="Bridgewater" c="BRIDGEWATER"/>
<c n="Broadway" c="BROADWAY"/>
<c n="Dayton" c="DAYTON"/>
<c n="Deerfield" c="DEERFIELD"/>
<c n="Elkton" c="ELKTON"/>
<c n="Fishersville" c="FISHERSVILLE"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Grottoes" c="GROTTOES"/>
<c n="Harrisonburg" c="HARRISONBURG"/>
<c n="Hinton" c="HINTON"/>
<c n="McGaheysville" c="MCGAHEYSVILLE"/>
<c n="Staunton" c="STAUNTON"/>
<c n="Steeles Tavern" c="STEELES TAVERN"/>
<c n="Stuarts Draft" c="STUARTS DRAFT"/>
<c n="Verona" c="VERONA"/>
<c n="Waynesboro" c="WAYNESBORO"/>
<c n="Weyers Cave" c="WEYERS CAVE"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Sugar Grove" c="SUGAR GROVE"/>
<c n="Massanutten" c="MASSANUTTEN"/></dma>
    
    <dma code="573" title="Roanoke-Lynchburg, VA">
<c n="Afton" c="AFTON"/>
<c n="Altavista" c="ALTAVISTA"/>
<c n="Amherst" c="AMHERST"/>
<c n="Appomattox" c="APPOMATTOX"/>
<c n="Bassett" c="BASSETT"/>
<c n="Bastian" c="BASTIAN"/>
<c n="Bedford" c="BEDFORD"/>
<c n="Bent Mountain" c="BENT MOUNTAIN"/>
<c n="Big Island" c="BIG ISLAND"/>
<c n="Blacksburg" c="BLACKSBURG"/>
<c n="Bland" c="BLAND"/>
<c n="Brookneal" c="BROOKNEAL"/>
<c n="Buchanan" c="BUCHANAN"/>
<c n="Buena Vista" c="BUENA VISTA"/>
<c n="Charlotte Court House" c="CHARLOTTE COURT HOUSE"/>
<c n="Chatham" c="CHATHAM"/>
<c n="Christiansburg" c="CHRISTIANSBURG"/>
<c n="Clifton Forge" c="CLIFTON FORGE"/>
<c n="Clover" c="CLOVER"/>
<c n="Cloverdale" c="CLOVERDALE"/>
<c n="Collinsville" c="COLLINSVILLE"/>
<c n="Covington" c="COVINGTON"/>
<c n="Daleville" c="DALEVILLE"/>
<c n="Danville" c="DANVILLE"/>
<c n="Dublin" c="DUBLIN"/>
<c n="Faber" c="FABER"/>
<c n="Ferrum" c="FERRUM"/>
<c n="Fieldale" c="FIELDALE"/>
<c n="Fincastle" c="FINCASTLE"/>
<c n="Floyd" c="FLOYD"/>
<c n="Forest" c="FOREST"/>
<c n="Galax" c="GALAX"/>
<c n="Gretna" c="GRETNA"/>
<c n="Halifax" c="HALIFAX"/>
<c n="Hillsville" c="HILLSVILLE"/>
<c n="Hot Springs" c="HOT SPRINGS"/>
<c n="Huddleston" c="HUDDLESTON"/>
<c n="Independence" c="INDEPENDENCE"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Lovingston" c="LOVINGSTON"/>
<c n="Low Moor" c="LOW MOOR"/>
<c n="Lynchburg" c="LYNCHBURG"/>
<c n="Madison Heights" c="MADISON HEIGHTS"/>
<c n="Martinsville" c="MARTINSVILLE"/>
<c n="Monterey" c="MONTEREY"/>
<c n="Narrows" c="NARROWS"/>
<c n="Natural Bridge" c="NATURAL BRIDGE"/>
<c n="Nellysford" c="NELLYSFORD"/>
<c n="New Castle" c="NEW CASTLE"/>
<c n="New River" c="NEW RIVER"/>
<c n="Norwood" c="NORWOOD"/>
<c n="Pearisburg" c="PEARISBURG"/>
<c n="Pembroke" c="PEMBROKE"/>
<c n="Pulaski" c="PULASKI"/>
<c n="Radford" c="RADFORD"/>
<c n="Rich Creek" c="RICH CREEK"/>
<c n="Roanoke" c="ROANOKE"/>
<c n="Rocky Mount" c="ROCKY MOUNT"/>
<c n="Rustburg" c="RUSTBURG"/>
<c n="Salem" c="SALEM"/>
<c n="Shawsville" c="SHAWSVILLE"/>
<c n="South Boston" c="SOUTH BOSTON"/>
<c n="Sweet Briar" c="SWEET BRIAR"/>
<c n="Troutville" c="TROUTVILLE"/>
<c n="Vinton" c="VINTON"/>
<c n="Virgilina" c="VIRGILINA"/>
<c n="Warm Springs" c="WARM SPRINGS"/>
<c n="Williamsville" c="WILLIAMSVILLE"/>
<c n="Wirtz" c="WIRTZ"/>
<c n="Woodlawn" c="WOODLAWN"/>
<c n="Wytheville" c="WYTHEVILLE"/>
<c n="Green Bank" c="GREEN BANK"/>
<c n="Marlinton" c="MARLINTON"/>
<c n="Snowshoe" c="SNOWSHOE"/>
<c n="Cave Spring" c="CAVE SPRING"/>
<c n="Hollins" c="HOLLINS"/>
<c n="Timberlake" c="TIMBERLAKE"/></dma>
    
    <dma code="584" title="Charlottesville, VA">
<c n="Charlottesville" c="CHARLOTTESVILLE"/>
<c n="Earlysville" c="EARLYSVILLE"/>
<c n="Fork Union" c="FORK UNION"/>
<c n="Keswick" c="KESWICK"/>
<c n="Madison" c="MADISON"/>
<c n="Palmyra" c="PALMYRA"/>
<c n="Ruckersville" c="RUCKERSVILLE"/>
<c n="Scottsville" c="SCOTTSVILLE"/>
<c n="Stanardsville" c="STANARDSVILLE"/>
<c n="Troy" c="TROY"/>
<c n="Woodberry Forest" c="WOODBERRY FOREST"/>
<c n="Brightwood" c="BRIGHTWOOD"/>
<c n="Crozet" c="CROZET"/>
<c n="Lake Monticello" c="LAKE MONTICELLO"/></dma>
    </state>
<state id="CT" full_name="Connecticut">
    <dma code="533" title="Hartford &amp;New Haven, CT">
<c n="Amston" c="AMSTON"/>
<c n="Andover" c="ANDOVER"/>
<c n="Ansonia" c="ANSONIA"/>
<c n="Ashford" c="ASHFORD"/>
<c n="Avon" c="AVON"/>
<c n="Baltic" c="BALTIC"/>
<c n="Bantam" c="BANTAM"/>
<c n="Barkhamsted" c="BARKHAMSTED"/>
<c n="Beacon Falls" c="BEACON FALLS"/>
<c n="Berlin" c="BERLIN"/>
<c n="Bethany" c="BETHANY"/>
<c n="Bethlehem" c="BETHLEHEM"/>
<c n="Bloomfield" c="BLOOMFIELD"/>
<c n="Bolton" c="BOLTON"/>
<c n="Bozrah" c="BOZRAH"/>
<c n="Branford" c="BRANFORD"/>
<c n="Bridgewater" c="BRIDGEWATER"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Broad Brook" c="BROAD BROOK"/>
<c n="Brooklyn" c="BROOKLYN"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Canaan" c="CANAAN"/>
<c n="Canterbury" c="CANTERBURY"/>
<c n="Canton" c="CANTON"/>
<c n="Canton Center" c="CANTON CENTER"/>
<c n="Centerbrook" c="CENTERBROOK"/>
<c n="Chaplin" c="CHAPLIN"/>
<c n="Cheshire" c="CHESHIRE"/>
<c n="Chester" c="CHESTER"/>
<c n="Clinton" c="CLINTON"/>
<c n="Colchester Center" c="COLCHESTER CENTER"/>
<c n="Colebrook" c="COLEBROOK"/>
<c n="Collinsville" c="COLLINSVILLE"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Cornwall" c="CORNWALL"/>
<c n="Cornwall Bridge" c="CORNWALL BRIDGE"/>
<c n="Coventry" c="COVENTRY"/>
<c n="Cromwell" c="CROMWELL"/>
<c n="Danielson" c="DANIELSON"/>
<c n="Dayville" c="DAYVILLE"/>
<c n="Deep River Center" c="DEEP RIVER CENTER"/>
<c n="Derby" c="DERBY"/>
<c n="Durham" c="DURHAM"/>
<c n="East Berlin" c="EAST BERLIN"/>
<c n="East Canaan" c="EAST CANAAN"/>
<c n="East Granby" c="EAST GRANBY"/>
<c n="East Haddam" c="EAST HADDAM"/>
<c n="East Hampton" c="EAST HAMPTON"/>
<c n="East Hartford" c="EAST HARTFORD"/>
<c n="East Hartland" c="EAST HARTLAND"/>
<c n="East Haven" c="EAST HAVEN"/>
<c n="East Killingly" c="EAST KILLINGLY"/>
<c n="East Lyme" c="EAST LYME"/>
<c n="East Windsor" c="EAST WINDSOR"/>
<c n="Eastford" c="EASTFORD"/>
<c n="Ellington" c="ELLINGTON"/>
<c n="Enfield" c="ENFIELD"/>
<c n="Essex" c="ESSEX"/>
<c n="Falls Village" c="FALLS VILLAGE"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Gales Ferry" c="GALES FERRY"/>
<c n="Gaylordsville" c="GAYLORDSVILLE"/>
<c n="Glastonbury" c="GLASTONBURY"/>
<c n="Goshen" c="GOSHEN"/>
<c n="Granby" c="GRANBY"/>
<c n="Groton" c="GROTON"/>
<c n="Guilford Center" c="GUILFORD CENTER"/>
<c n="Haddam" c="HADDAM"/>
<c n="Hamden" c="HAMDEN"/>
<c n="Hampton" c="HAMPTON"/>
<c n="Hartford" c="HARTFORD"/>
<c n="Harwinton" c="HARWINTON"/>
<c n="Hebron" c="HEBRON"/>
<c n="Higganum" c="HIGGANUM"/>
<c n="Ivoryton" c="IVORYTON"/>
<c n="Jewett City" c="JEWETT CITY"/>
<c n="Kent" c="KENT"/>
<c n="Killingworth" c="KILLINGWORTH"/>
<c n="Lakeside" c="LAKESIDE"/>
<c n="Lakeville" c="LAKEVILLE"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Ledyard" c="LEDYARD"/>
<c n="Litchfield" c="LITCHFIELD"/>
<c n="Madison Center" c="MADISON CENTER"/>
<c n="Central Manchester" c="CENTRAL MANCHESTER"/>
<c n="Mansfield Center" c="MANSFIELD CENTER"/>
<c n="Marlborough" c="MARLBOROUGH"/>
<c n="Meriden" c="MERIDEN"/>
<c n="Middlebury" c="MIDDLEBURY"/>
<c n="Middlefield" c="MIDDLEFIELD"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="Milford" c="MILFORD"/>
<c n="Milldale" c="MILLDALE"/>
<c n="Montville" c="MONTVILLE"/>
<c n="Moodus" c="MOODUS"/>
<c n="Moosup" c="MOOSUP"/>
<c n="Morris" c="MORRIS"/>
<c n="Mystic" c="MYSTIC"/>
<c n="Naugatuck" c="NAUGATUCK"/>
<c n="New Britain" c="NEW BRITAIN"/>
<c n="New Hartford" c="NEW HARTFORD"/>
<c n="New Haven" c="NEW HAVEN"/>
<c n="New London" c="NEW LONDON"/>
<c n="New Milford" c="NEW MILFORD"/>
<c n="Newington" c="NEWINGTON"/>
<c n="Niantic" c="NIANTIC"/>
<c n="Norfolk" c="NORFOLK"/>
<c n="North Branford" c="NORTH BRANFORD"/>
<c n="North Canton" c="NORTH CANTON"/>
<c n="North Franklin" c="NORTH FRANKLIN"/>
<c n="North Granby" c="NORTH GRANBY"/>
<c n="North Grosvenor Dale" c="NORTH GROSVENOR DALE"/>
<c n="North Haven" c="NORTH HAVEN"/>
<c n="North Stonington" c="NORTH STONINGTON"/>
<c n="North Windham" c="NORTH WINDHAM"/>
<c n="Northford" c="NORTHFORD"/>
<c n="Norwich" c="NORWICH"/>
<c n="Oakdale" c="OAKDALE"/>
<c n="Oakville" c="OAKVILLE"/>
<c n="Old Lyme" c="OLD LYME"/>
<c n="Old Saybrook" c="OLD SAYBROOK"/>
<c n="Orange" c="ORANGE"/>
<c n="Oxford" c="OXFORD"/>
<c n="Pawcatuck" c="PAWCATUCK"/>
<c n="Plainfield" c="PLAINFIELD"/>
<c n="Plainville" c="PLAINVILLE"/>
<c n="Plantsville" c="PLANTSVILLE"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Pomfret" c="POMFRET"/>
<c n="Pomfret Center" c="POMFRET CENTER"/>
<c n="Portland" c="PORTLAND"/>
<c n="Preston" c="PRESTON"/>
<c n="Prospect" c="PROSPECT"/>
<c n="Putnam" c="PUTNAM"/>
<c n="Quaker Hill" c="QUAKER HILL"/>
<c n="Quinebaug" c="QUINEBAUG"/>
<c n="Riverton" c="RIVERTON"/>
<c n="Rockfall" c="ROCKFALL"/>
<c n="Rocky Hill" c="ROCKY HILL"/>
<c n="Rogers" c="ROGERS"/>
<c n="Roxbury" c="ROXBURY"/>
<c n="Salem" c="SALEM"/>
<c n="Salisbury" c="SALISBURY"/>
<c n="Scotland" c="SCOTLAND"/>
<c n="Seymour" c="SEYMOUR"/>
<c n="Sharon" c="SHARON"/>
<c n="Simsbury Center" c="SIMSBURY CENTER"/>
<c n="Somers" c="SOMERS"/>
<c n="South Glastonbury" c="SOUTH GLASTONBURY"/>
<c n="South Kent" c="SOUTH KENT"/>
<c n="South Windham" c="SOUTH WINDHAM"/>
<c n="South Windsor" c="SOUTH WINDSOR"/>
<c n="Southbury" c="SOUTHBURY"/>
<c n="Southington" c="SOUTHINGTON"/>
<c n="Stafford" c="STAFFORD"/>
<c n="Stafford Springs" c="STAFFORD SPRINGS"/>
<c n="Sterling" c="STERLING"/>
<c n="Stonington" c="STONINGTON"/>
<c n="Storrs" c="STORRS"/>
<c n="Suffield" c="SUFFIELD"/>
<c n="Taconic" c="TACONIC"/>
<c n="Taftville" c="TAFTVILLE"/>
<c n="Tariffville" c="TARIFFVILLE"/>
<c n="Terryville" c="TERRYVILLE"/>
<c n="Thomaston" c="THOMASTON"/>
<c n="Thompson" c="THOMPSON"/>
<c n="Tolland" c="TOLLAND"/>
<c n="Torrington" c="TORRINGTON"/>
<c n="Oxoboxo River" c="OXOBOXO RIVER"/>
<c n="Unionville" c="UNIONVILLE"/>
<c n="Vernon" c="VERNON"/>
<c n="Versailles" c="VERSAILLES"/>
<c n="Voluntown" c="VOLUNTOWN"/>
<c n="Wallingford Center" c="WALLINGFORD CENTER"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Washington Depot" c="WASHINGTON DEPOT"/>
<c n="Waterbury" c="WATERBURY"/>
<c n="Central Waterford" c="CENTRAL WATERFORD"/>
<c n="Watertown" c="WATERTOWN"/>
<c n="Wauregan" c="WAUREGAN"/>
<c n="Weatogue" c="WEATOGUE"/>
<c n="West Cornwall" c="WEST CORNWALL"/>
<c n="West Granby" c="WEST GRANBY"/>
<c n="West Hartford" c="WEST HARTFORD"/>
<c n="West Hartland" c="WEST HARTLAND"/>
<c n="West Haven" c="WEST HAVEN"/>
<c n="West Simsbury" c="WEST SIMSBURY"/>
<c n="West Suffield" c="WEST SUFFIELD"/>
<c n="Westbrook Center" c="WESTBROOK CENTER"/>
<c n="Wethersfield" c="WETHERSFIELD"/>
<c n="Willimantic" c="WILLIMANTIC"/>
<c n="Willington" c="WILLINGTON"/>
<c n="Windham" c="WINDHAM"/>
<c n="Windsor" c="WINDSOR"/>
<c n="Windsor Locks" c="WINDSOR LOCKS"/>
<c n="Winsted" c="WINSTED"/>
<c n="Wolcott" c="WOLCOTT"/>
<c n="Woodbridge" c="WOODBRIDGE"/>
<c n="Woodbury" c="WOODBURY"/>
<c n="Woodstock" c="WOODSTOCK"/>
<c n="Woodstock Valley" c="WOODSTOCK VALLEY"/>
<c n="Yantic" c="YANTIC"/>
<c n="Colchester" c="COLCHESTER"/>
<c n="Deep River" c="DEEP RIVER"/>
<c n="Durham" c="DURHAM"/>
<c n="East Hampton" c="EAST HAMPTON"/>
<c n="Griswold" c="GRISWOLD"/>
<c n="Groton" c="GROTON"/>
<c n="Guilford" c="GUILFORD"/>
<c n="Killingly" c="KILLINGLY"/>
<c n="Litchfield" c="LITCHFIELD"/>
<c n="Madison" c="MADISON"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Mansfield" c="MANSFIELD"/>
<c n="Portland" c="PORTLAND"/>
<c n="Simsbury" c="SIMSBURY"/>
<c n="Stonington" c="STONINGTON"/>
<c n="Wallingford" c="WALLINGFORD"/>
<c n="Waterford" c="WATERFORD"/>
<c n="Westbrook" c="WESTBROOK"/>
<c n="Winchester" c="WINCHESTER"/></dma>
    </state>
<state id="TN" full_name="Tennessee">
    <dma code="531" title="Tri-Cities, TN-VA"><!--Fix for tri-cities-->
<c n="Confluence" c="CONFLUENCE"/>
<c n="Hoskinston" c="HOSKINSTON"/>
<c n="Hyden" c="HYDEN"/>
<c n="Jackhorn" c="JACKHORN"/>
<c n="Jenkins" c="JENKINS"/>
<c n="Whitesburg" c="WHITESBURG"/>
<c n="Blountville" c="BLOUNTVILLE"/>
<c n="Bluff City" c="BLUFF CITY"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Bulls Gap" c="BULLS GAP"/>
<c n="Butler" c="BUTLER"/>
<c n="Church Hill" c="CHURCH HILL"/>
<c n="Elizabethton" c="ELIZABETHTON"/>
<c n="Erwin" c="ERWIN"/>
<c n="Greeneville" c="GREENEVILLE"/>
<c n="Hampton" c="HAMPTON"/>
<c n="Johnson City" c="JOHNSON CITY"/>
<c n="Jonesborough" c="JONESBOROUGH"/>
<c n="Kingsport" c="KINGSPORT"/>
<c n="Limestone" c="LIMESTONE"/>
<c n="Midway" c="MIDWAY"/>
<c n="Mountain City" c="MOUNTAIN CITY"/>
<c n="Piney Flats" c="PINEY FLATS"/>
<c n="Rogersville" c="ROGERSVILLE"/>
<c n="Surgoinsville" c="SURGOINSVILLE"/>
<c n="Unicoi" c="UNICOI"/>
<c n="Abingdon" c="ABINGDON"/>
<c n="Atkins" c="ATKINS"/>
<c n="Big Stone Gap" c="BIG STONE GAP"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Clintwood" c="CLINTWOOD"/>
<c n="Duffield" c="DUFFIELD"/>
<c n="Gate City" c="GATE CITY"/>
<c n="Glade Spring" c="GLADE SPRING"/>
<c n="Grundy" c="GRUNDY"/>
<c n="Honaker" c="HONAKER"/>
<c n="Jonesville" c="JONESVILLE"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Marion" c="MARION"/>
<c n="Meadowview" c="MEADOWVIEW"/>
<c n="Norton" c="NORTON"/>
<c n="Saltville" c="SALTVILLE"/>
<c n="Vansant" c="VANSANT"/>
<c n="Weber City" c="WEBER CITY"/>
<c n="Wise" c="WISE"/>
<c n="Chilhowie" c="CHILHOWIE"/>
<c n="Pennington Gap" c="PENNINGTON GAP"/></dma>

    <dma code="557" title="Knoxville, TN">
<c n="Ages Brookside" c="AGES BROOKSIDE"/>
<c n="Beverly" c="BEVERLY"/>
<c n="Cranks" c="CRANKS"/>
<c n="Cumberland" c="CUMBERLAND"/>
<c n="Evarts" c="EVARTS"/>
<c n="Harlan" c="HARLAN"/>
<c n="Middlesboro" c="MIDDLESBORO"/>
<c n="Pineville" c="PINEVILLE"/>
<c n="Stearns" c="STEARNS"/>
<c n="Alcoa" c="ALCOA"/>
<c n="Andersonville" c="ANDERSONVILLE"/>
<c n="Clinton" c="CLINTON"/>
<c n="Coalfield" c="COALFIELD"/>
<c n="Corryton" c="CORRYTON"/>
<c n="Cosby" c="COSBY"/>
<c n="Crab Orchard" c="CRAB ORCHARD"/>
<c n="Crossville" c="CROSSVILLE"/>
<c n="Dandridge" c="DANDRIDGE"/>
<c n="Friendsville" c="FRIENDSVILLE"/>
<c n="Gatlinburg" c="GATLINBURG"/>
<c n="Greenback" c="GREENBACK"/>
<c n="Harriman" c="HARRIMAN"/>
<c n="Harrogate" c="HARROGATE"/>
<c n="Heiskell" c="HEISKELL"/>
<c n="Helenwood" c="HELENWOOD"/>
<c n="Huntsville" c="HUNTSVILLE"/>
<c n="Jacksboro" c="JACKSBORO"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Jefferson City" c="JEFFERSON CITY"/>
<c n="Jellico" c="JELLICO"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Knoxville" c="KNOXVILLE"/>
<c n="Kodak" c="KODAK"/>
<c n="Kyles Ford" c="KYLES FORD"/>
<c n="La Follette" c="LA FOLLETTE"/>
<c n="Lenoir City" c="LENOIR CITY"/>
<c n="Loudon" c="LOUDON"/>
<c n="Louisville" c="LOUISVILLE"/>
<c n="Lowland" c="LOWLAND"/>
<c n="Madisonville" c="MADISONVILLE"/>
<c n="Maryville" c="MARYVILLE"/>
<c n="Mascot" c="MASCOT"/>
<c n="Maynardville" c="MAYNARDVILLE"/>
<c n="Morristown" c="MORRISTOWN"/>
<c n="New Market" c="NEW MARKET"/>
<c n="Newport" c="NEWPORT"/>
<c n="Norris" c="NORRIS"/>
<c n="Oak Ridge" c="OAK RIDGE"/>
<c n="Oakdale" c="OAKDALE"/>
<c n="Oliver Springs" c="OLIVER SPRINGS"/>
<c n="Oneida" c="ONEIDA"/>
<c n="Pigeon Forge" c="PIGEON FORGE"/>
<c n="Pleasant Hill" c="PLEASANT HILL"/>
<c n="Powell" c="POWELL"/>
<c n="Rockford" c="ROCKFORD"/>
<c n="Rockwood" c="ROCKWOOD"/>
<c n="Rutledge" c="RUTLEDGE"/>
<c n="Sevierville" c="SEVIERVILLE"/>
<c n="Seymour" c="SEYMOUR"/>
<c n="Sunbright" c="SUNBRIGHT"/>
<c n="Sweetwater" c="SWEETWATER"/>
<c n="Talbott" c="TALBOTT"/>
<c n="Tazewell" c="TAZEWELL"/>
<c n="Tellico Plains" c="TELLICO PLAINS"/>
<c n="Townsend" c="TOWNSEND"/>
<c n="Vonore" c="VONORE"/>
<c n="Wartburg" c="WARTBURG"/>
<c n="Winfield" c="WINFIELD"/>
<c n="Farragut" c="FARRAGUT"/>
<c n="Lake City" c="LAKE CITY"/>
<c n="Whitley City" c="WHITLEY CITY"/></dma>
    
    <dma code="575" title="Chattanooga, TN">
<c n="Chatsworth" c="CHATSWORTH"/>
<c n="Chickamauga" c="CHICKAMAUGA"/>
<c n="Dalton" c="DALTON"/>
<c n="Fort Oglethorpe" c="FORT OGLETHORPE"/>
<c n="LaFayette" c="LAFAYETTE"/>
<c n="Lookout Mountain" c="LOOKOUT MOUNTAIN"/>
<c n="Menlo" c="MENLO"/>
<c n="Ringgold" c="RINGGOLD"/>
<c n="Rock Springs" c="ROCK SPRINGS"/>
<c n="Rossville" c="ROSSVILLE"/>
<c n="Summerville" c="SUMMERVILLE"/>
<c n="Trenton" c="TRENTON"/>
<c n="Trion" c="TRION"/>
<c n="Tunnel Hill" c="TUNNEL HILL"/>
<c n="Andrews" c="ANDREWS"/>
<c n="Marble" c="MARBLE"/>
<c n="Murphy" c="MURPHY"/>
<c n="Altamont" c="ALTAMONT"/>
<c n="Athens" c="ATHENS"/>
<c n="Benton" c="BENTON"/>
<c n="Chattanooga" c="CHATTANOOGA"/>
<c n="Cleveland" c="CLEVELAND"/>
<c n="Coalmont" c="COALMONT"/>
<c n="Collegedale" c="COLLEGEDALE"/>
<c n="Copperhill" c="COPPERHILL"/>
<c n="Dayton" c="DAYTON"/>
<c n="Decatur" c="DECATUR"/>
<c n="Ducktown" c="DUCKTOWN"/>
<c n="Dunlap" c="DUNLAP"/>
<c n="Evensville" c="EVENSVILLE"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Graysville" c="GRAYSVILLE"/>
<c n="Hixson" c="HIXSON"/>
<c n="Jasper" c="JASPER"/>
<c n="Old Fort" c="OLD FORT"/>
<c n="Ooltewah" c="OOLTEWAH"/>
<c n="Palmer" c="PALMER"/>
<c n="Pelham" c="PELHAM"/>
<c n="Pikeville" c="PIKEVILLE"/>
<c n="Sale Creek" c="SALE CREEK"/>
<c n="Signal Mountain" c="SIGNAL MOUNTAIN"/>
<c n="Soddy-Daisy" c="SODDY-DAISY"/>
<c n="Tracy City" c="TRACY CITY"/>
<c n="Turtletown" c="TURTLETOWN"/>
<c n="East Ridge" c="EAST RIDGE"/>
<c n="Red Bank" c="RED BANK"/>
<c n="South Pittsburg" c="SOUTH PITTSBURG"/></dma>
    
    <dma code="639" title="Jackson, TN">
<c n="Atwood" c="ATWOOD"/>
<c n="Bradford" c="BRADFORD"/>
<c n="Bruceton" c="BRUCETON"/>
<c n="Clarksburg" c="CLARKSBURG"/>
<c n="Counce" c="COUNCE"/>
<c n="Crump" c="CRUMP"/>
<c n="Dyer" c="DYER"/>
<c n="Gibson" c="GIBSON"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Humboldt" c="HUMBOLDT"/>
<c n="Huntingdon" c="HUNTINGDON"/>
<c n="Jackson" c="JACKSON"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Milan" c="MILAN"/>
<c n="Pickwick Dam" c="PICKWICK DAM"/>
<c n="Rutherford" c="RUTHERFORD"/>
<c n="Savannah" c="SAVANNAH"/>
<c n="Trenton" c="TRENTON"/>
<c n="Medina" c="MEDINA"/></dma>
    
    <dma code="640" title="Memphis, TN">
<c n="Armorel" c="ARMOREL"/>
<c n="Blytheville" c="BLYTHEVILLE"/>
<c n="Burdette" c="BURDETTE"/>
<c n="Dyess" c="DYESS"/>
<c n="Forrest City" c="FORREST CITY"/>
<c n="Harrisburg" c="HARRISBURG"/>
<c n="Helena" c="HELENA"/>
<c n="Joiner" c="JOINER"/>
<c n="Keiser" c="KEISER"/>
<c n="Lepanto" c="LEPANTO"/>
<c n="Luxora" c="LUXORA"/>
<c n="Marianna" c="MARIANNA"/>
<c n="Marion" c="MARION"/>
<c n="Marked Tree" c="MARKED TREE"/>
<c n="Osceola" c="OSCEOLA"/>
<c n="Palestine" c="PALESTINE"/>
<c n="Poplar Grove" c="POPLAR GROVE"/>
<c n="Trumann" c="TRUMANN"/>
<c n="Weiner" c="WEINER"/>
<c n="West Helena" c="WEST HELENA"/>
<c n="West Memphis" c="WEST MEMPHIS"/>
<c n="Wynne" c="WYNNE"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Batesville" c="BATESVILLE"/>
<c n="Blue Mountain" c="BLUE MOUNTAIN"/>
<c n="Byhalia" c="BYHALIA"/>
<c n="Clarksdale" c="CLARKSDALE"/>
<c n="Corinth" c="CORINTH"/>
<c n="Hernando" c="HERNANDO"/>
<c n="Holly Springs" c="HOLLY SPRINGS"/>
<c n="Horn Lake" c="HORN LAKE"/>
<c n="Marks" c="MARKS"/>
<c n="Olive Branch" c="OLIVE BRANCH"/>
<c n="Oxford" c="OXFORD"/>
<c n="Rienzi" c="RIENZI"/>
<c n="Ripley" c="RIPLEY"/>
<c n="Senatobia" c="SENATOBIA"/>
<c n="Southaven" c="SOUTHAVEN"/>
<c n="Tunica" c="TUNICA"/>
<c n="University of Mississippi" c="UNIVERSITY OF MISSISSIPPI"/>
<c n="Walls" c="WALLS"/>
<c n="Alamo" c="ALAMO"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Bells" c="BELLS"/>
<c n="Bolivar" c="BOLIVAR"/>
<c n="Brighton" c="BRIGHTON"/>
<c n="Brownsville" c="BROWNSVILLE"/>
<c n="Collierville" c="COLLIERVILLE"/>
<c n="Cordova" c="CORDOVA"/>
<c n="Covington" c="COVINGTON"/>
<c n="Drummonds" c="DRUMMONDS"/>
<c n="Dyersburg" c="DYERSBURG"/>
<c n="Eads" c="EADS"/>
<c n="Finger" c="FINGER"/>
<c n="Friendship" c="FRIENDSHIP"/>
<c n="Gadsden" c="GADSDEN"/>
<c n="Gallaway" c="GALLAWAY"/>
<c n="Germantown" c="GERMANTOWN"/>
<c n="Henning" c="HENNING"/>
<c n="Maury City" c="MAURY CITY"/>
<c n="Memphis" c="MEMPHIS"/>
<c n="Millington" c="MILLINGTON"/>
<c n="Munford" c="MUNFORD"/>
<c n="Newbern" c="NEWBERN"/>
<c n="Oakland" c="OAKLAND"/>
<c n="Ripley" c="RIPLEY"/>
<c n="Selmer" c="SELMER"/>
<c n="Somerville" c="SOMERVILLE"/>
<c n="Whiteville" c="WHITEVILLE"/>
<c n="Atoka" c="ATOKA"/>
<c n="Bartlett" c="BARTLETT"/>
<c n="Helena-West Helena" c="HELENA-WEST HELENA"/>
<c n="Lakeland" c="LAKELAND"/></dma>
    
    <dma code="659" title="Nashville, TN">
<c n="Albany" c="ALBANY"/>
<c n="Auburn" c="AUBURN"/>
<c n="Burkesville" c="BURKESVILLE"/>
<c n="Cadiz" c="CADIZ"/>
<c n="Elkton" c="ELKTON"/>
<c n="Fountain Run" c="FOUNTAIN RUN"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Fort Campbell" c="FORT CAMPBELL"/>
<c n="Gracey" c="GRACEY"/>
<c n="Guthrie" c="GUTHRIE"/>
<c n="Hopkinsville" c="HOPKINSVILLE"/>
<c n="La Fayette" c="LA FAYETTE"/>
<c n="Oak Grove" c="OAK GROVE"/>
<c n="Pembroke" c="PEMBROKE"/>
<c n="Russellville" c="RUSSELLVILLE"/>
<c n="Scottsville" c="SCOTTSVILLE"/>
<c n="Tompkinsville" c="TOMPKINSVILLE"/>
<c n="Alexandria" c="ALEXANDRIA"/>
<c n="Antioch" c="ANTIOCH"/>
<c n="Arnold Air Force Base" c="ARNOLD AIR FORCE BASE"/>
<c n="Ashland City" c="ASHLAND CITY"/>
<c n="Baxter" c="BAXTER"/>
<c n="Belfast" c="BELFAST"/>
<c n="Bethpage" c="BETHPAGE"/>
<c n="Big Sandy" c="BIG SANDY"/>
<c n="Bon Aqua" c="BON AQUA"/>
<c n="Brentwood" c="BRENTWOOD"/>
<c n="Burns" c="BURNS"/>
<c n="Byrdstown" c="BYRDSTOWN"/>
<c n="Camden" c="CAMDEN"/>
<c n="Carthage" c="CARTHAGE"/>
<c n="Celina" c="CELINA"/>
<c n="Centerville" c="CENTERVILLE"/>
<c n="Chapel Hill" c="CHAPEL HILL"/>
<c n="Chapmansboro" c="CHAPMANSBORO"/>
<c n="Clarksville" c="CLARKSVILLE"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Cookeville" c="COOKEVILLE"/>
<c n="Cornersville" c="CORNERSVILLE"/>
<c n="Cottontown" c="COTTONTOWN"/>
<c n="Cowan" c="COWAN"/>
<c n="Decherd" c="DECHERD"/>
<c n="Dickson" c="DICKSON"/>
<c n="Dover" c="DOVER"/>
<c n="Doyle" c="DOYLE"/>
<c n="Elkton" c="ELKTON"/>
<c n="Estill Springs" c="ESTILL SPRINGS"/>
<c n="Fairview" c="FAIRVIEW"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Gainesboro" c="GAINESBORO"/>
<c n="Gallatin" c="GALLATIN"/>
<c n="Goodlettsville" c="GOODLETTSVILLE"/>
<c n="Hartsville" c="HARTSVILLE"/>
<c n="Hendersonville" c="HENDERSONVILLE"/>
<c n="Henry" c="HENRY"/>
<c n="Hermitage" c="HERMITAGE"/>
<c n="Hillsboro" c="HILLSBORO"/>
<c n="Hohenwald" c="HOHENWALD"/>
<c n="Holladay" c="HOLLADAY"/>
<c n="Huntland" c="HUNTLAND"/>
<c n="La Vergne" c="LA VERGNE"/>
<c n="Lafayette" c="LAFAYETTE"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Lawrenceburg" c="LAWRENCEBURG"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Lewisburg" c="LEWISBURG"/>
<c n="Linden" c="LINDEN"/>
<c n="Livingston" c="LIVINGSTON"/>
<c n="Loretto" c="LORETTO"/>
<c n="Lyles" c="LYLES"/>
<c n="Lynchburg" c="LYNCHBURG"/>
<c n="Lynnville" c="LYNNVILLE"/>
<c n="Madison" c="MADISON"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="McEwen" c="MCEWEN"/>
<c n="McMinnville" c="MCMINNVILLE"/>
<c n="Minor Hill" c="MINOR HILL"/>
<c n="Monterey" c="MONTEREY"/>
<c n="Morrison" c="MORRISON"/>
<c n="Moss" c="MOSS"/>
<c n="Mount Juliet" c="MOUNT JULIET"/>
<c n="Mount Pleasant" c="MOUNT PLEASANT"/>
<c n="Murfreesboro" c="MURFREESBORO"/>
<c n="Nashville" c="NASHVILLE"/>
<c n="New Johnsonville" c="NEW JOHNSONVILLE"/>
<c n="Old Hickory" c="OLD HICKORY"/>
<c n="Orlinda" c="ORLINDA"/>
<c n="Palmyra" c="PALMYRA"/>
<c n="Paris" c="PARIS"/>
<c n="Parsons" c="PARSONS"/>
<c n="Pleasant View" c="PLEASANT VIEW"/>
<c n="Portland" c="PORTLAND"/>
<c n="Pulaski" c="PULASKI"/>
<c n="Red Boiling Springs" c="RED BOILING SPRINGS"/>
<c n="Rock Island" c="ROCK ISLAND"/>
<c n="Rockvale" c="ROCKVALE"/>
<c n="Sewanee" c="SEWANEE"/>
<c n="Shelbyville" c="SHELBYVILLE"/>
<c n="Smithville" c="SMITHVILLE"/>
<c n="Smyrna" c="SMYRNA"/>
<c n="Sparta" c="SPARTA"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="Summertown" c="SUMMERTOWN"/>
<c n="Summitville" c="SUMMITVILLE"/>
<c n="Tennessee Ridge" c="TENNESSEE RIDGE"/>
<c n="Tullahoma" c="TULLAHOMA"/>
<c n="Walling" c="WALLING"/>
<c n="Waverly" c="WAVERLY"/>
<c n="Waynesboro" c="WAYNESBORO"/>
<c n="Westmoreland" c="WESTMORELAND"/>
<c n="White House" c="WHITE HOUSE"/>
<c n="Whites Creek" c="WHITES CREEK"/>
<c n="Winchester" c="WINCHESTER"/>
<c n="Woodbury" c="WOODBURY"/>
<c n="Erin" c="ERIN"/>
<c n="Greenbrier" c="GREENBRIER"/>
<c n="Kingston Springs" c="KINGSTON SPRINGS"/>
<c n="Nolensville" c="NOLENSVILLE"/>
<c n="Oak Hill" c="OAK HILL"/>
<c n="Spring Hill" c="SPRING HILL"/></dma>
    </state>
<state id="WV" full_name="West Virginia">
    <dma code="559" title="Bluefield-Beckley-Oak Hill, WV">
<c n="Bluefield" c="BLUEFIELD"/>
<c n="Cedar Bluff" c="CEDAR BLUFF"/>
<c n="Doran" c="DORAN"/>
<c n="Falls Mills" c="FALLS MILLS"/>
<c n="Pocahontas" c="POCAHONTAS"/>
<c n="Richlands" c="RICHLANDS"/>
<c n="Tazewell" c="TAZEWELL"/>
<c n="Alderson" c="ALDERSON"/>
<c n="Alloy" c="ALLOY"/>
<c n="Ansted" c="ANSTED"/>
<c n="Ballard" c="BALLARD"/>
<c n="Beaver" c="BEAVER"/>
<c n="Beckley" c="BECKLEY"/>
<c n="Bluefield" c="BLUEFIELD"/>
<c n="Brenton" c="BRENTON"/>
<c n="Daniels" c="DANIELS"/>
<c n="Fayetteville" c="FAYETTEVILLE"/>
<c n="Gauley Bridge" c="GAULEY BRIDGE"/>
<c n="Hinton" c="HINTON"/>
<c n="Iaeger" c="IAEGER"/>
<c n="Itmann" c="ITMANN"/>
<c n="Keystone" c="KEYSTONE"/>
<c n="Leckie" c="LECKIE"/>
<c n="Lewisburg" c="LEWISBURG"/>
<c n="Lindside" c="LINDSIDE"/>
<c n="Mabscott" c="MABSCOTT"/>
<c n="Mount Hope" c="MOUNT HOPE"/>
<c n="Naoma" c="NAOMA"/>
<c n="Oak Hill" c="OAK HILL"/>
<c n="Oceana" c="OCEANA"/>
<c n="Peterstown" c="PETERSTOWN"/>
<c n="Pineville" c="PINEVILLE"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Prosperity" c="PROSPERITY"/>
<c n="Rainelle" c="RAINELLE"/>
<c n="Ronceverte" c="RONCEVERTE"/>
<c n="Rupert" c="RUPERT"/>
<c n="Shady Spring" c="SHADY SPRING"/>
<c n="Sophia" c="SOPHIA"/>
<c n="Stephenson" c="STEPHENSON"/>
<c n="Union" c="UNION"/>
<c n="Welch" c="WELCH"/>
<c n="White Sulphur Springs" c="WHITE SULPHUR SPRINGS"/></dma>
    
    <dma code="564" title="Charleston-Huntington, WV">
<c n="Ashland" c="ASHLAND"/>
<c n="Beauty" c="BEAUTY"/>
<c n="Beaver" c="BEAVER"/>
<c n="Boons Camp" c="BOONS CAMP"/>
<c n="Canada" c="CANADA"/>
<c n="Grayson" c="GRAYSON"/>
<c n="Greenup" c="GREENUP"/>
<c n="Harold" c="HAROLD"/>
<c n="Inez" c="INEZ"/>
<c n="Ivel" c="IVEL"/>
<c n="Lloyd" c="LLOYD"/>
<c n="Lookout" c="LOOKOUT"/>
<c n="Louisa" c="LOUISA"/>
<c n="Lovely" c="LOVELY"/>
<c n="Melvin" c="MELVIN"/>
<c n="Olive Hill" c="OLIVE HILL"/>
<c n="Paintsville" c="PAINTSVILLE"/>
<c n="Pikeville" c="PIKEVILLE"/>
<c n="Pinsonfork" c="PINSONFORK"/>
<c n="Prestonsburg" c="PRESTONSBURG"/>
<c n="Raccoon" c="RACCOON"/>
<c n="Russell" c="RUSSELL"/>
<c n="Sandy Hook" c="SANDY HOOK"/>
<c n="Ulysses" c="ULYSSES"/>
<c n="Vanceburg" c="VANCEBURG"/>
<c n="Chesapeake" c="CHESAPEAKE"/>
<c n="Cheshire" c="CHESHIRE"/>
<c n="Chester" c="CHESTER"/>
<c n="Coalton" c="COALTON"/>
<c n="Gallipolis" c="GALLIPOLIS"/>
<c n="Ironton" c="IRONTON"/>
<c n="Jackson" c="JACKSON"/>
<c n="Lucasville" c="LUCASVILLE"/>
<c n="McArthur" c="MCARTHUR"/>
<c n="McDermott" c="MCDERMOTT"/>
<c n="Minford" c="MINFORD"/>
<c n="Oak Hill" c="OAK HILL"/>
<c n="Patriot" c="PATRIOT"/>
<c n="Pomeroy" c="POMEROY"/>
<c n="Portsmouth" c="PORTSMOUTH"/>
<c n="Proctorville" c="PROCTORVILLE"/>
<c n="Reedsville" c="REEDSVILLE"/>
<c n="Rio Grande" c="RIO GRANDE"/>
<c n="South Point" c="SOUTH POINT"/>
<c n="South Webster" c="SOUTH WEBSTER"/>
<c n="Wellston" c="WELLSTON"/>
<c n="West Portsmouth" c="WEST PORTSMOUTH"/>
<c n="Wheelersburg" c="WHEELERSBURG"/>
<c n="Willow Wood" c="WILLOW WOOD"/>
<c n="Baisden" c="BAISDEN"/>
<c n="Barboursville" c="BARBOURSVILLE"/>
<c n="Belle" c="BELLE"/>
<c n="Cedar Grove" c="CEDAR GROVE"/>
<c n="Ceredo" c="CEREDO"/>
<c n="Chapmanville" c="CHAPMANVILLE"/>
<c n="Charleston" c="CHARLESTON"/>
<c n="Clay" c="CLAY"/>
<c n="Craigsville" c="CRAIGSVILLE"/>
<c n="Culloden" c="CULLODEN"/>
<c n="Danville" c="DANVILLE"/>
<c n="Delbarton" c="DELBARTON"/>
<c n="Dunbar" c="DUNBAR"/>
<c n="Eleanor" c="ELEANOR"/>
<c n="Elizabeth" c="ELIZABETH"/>
<c n="Flatwoods" c="FLATWOODS"/>
<c n="Gassaway" c="GASSAWAY"/>
<c n="Grantsville" c="GRANTSVILLE"/>
<c n="Hamlin" c="HAMLIN"/>
<c n="Huntington" c="HUNTINGTON"/>
<c n="Hurricane" c="HURRICANE"/>
<c n="Institute" c="INSTITUTE"/>
<c n="Kenova" c="KENOVA"/>
<c n="Kermit" c="KERMIT"/>
<c n="LeRoy" c="LEROY"/>
<c n="Logan" c="LOGAN"/>
<c n="Madison" c="MADISON"/>
<c n="Milton" c="MILTON"/>
<c n="Nitro" c="NITRO"/>
<c n="Ona" c="ONA"/>
<c n="Poca" c="POCA"/>
<c n="Point Pleasant" c="POINT PLEASANT"/>
<c n="Ravenswood" c="RAVENSWOOD"/>
<c n="Red House" c="RED HOUSE"/>
<c n="Richwood" c="RICHWOOD"/>
<c n="Ripley" c="RIPLEY"/>
<c n="Scott Depot" c="SCOTT DEPOT"/>
<c n="Spencer" c="SPENCER"/>
<c n="St. Albans" c="ST. ALBANS"/>
<c n="Summersville" c="SUMMERSVILLE"/>
<c n="Sutton" c="SUTTON"/>
<c n="Teays" c="TEAYS"/>
<c n="Varney" c="VARNEY"/>
<c n="Wayne" c="WAYNE"/>
<c n="Williamson" c="WILLIAMSON"/>
<c n="Winfield" c="WINFIELD"/>
<c n="Cross Lanes" c="CROSS LANES"/>
<c n="Sciotodale" c="SCIOTODALE"/>
<c n="South Charleston" c="SOUTH CHARLESTON"/>
<c n="Teays Valley" c="TEAYS VALLEY"/></dma>
    
    <dma code="597" title="Parkersburg, WV">
<c n="Barlow" c="BARLOW"/>
<c n="Beverly" c="BEVERLY"/>
<c n="Marietta" c="MARIETTA"/>
<c n="Reno" c="RENO"/>
<c n="Waterford" c="WATERFORD"/>
<c n="Parkersburg" c="PARKERSBURG"/>
<c n="St. Marys" c="ST. MARYS"/>
<c n="Vienna" c="VIENNA"/>
<c n="Washington D.C." c="WASHINGTON D.C."/>
<c n="Williamstown" c="WILLIAMSTOWN"/>
<c n="Belpre" c="BELPRE"/></dma>
    
    <dma code="598" title="Clarksburg-Weston, WV">
<c n="Beverly" c="BEVERLY"/>
<c n="Bridgeport" c="BRIDGEPORT"/>
<c n="Brohard" c="BROHARD"/>
<c n="Buckhannon" c="BUCKHANNON"/>
<c n="Clarksburg" c="CLARKSBURG"/>
<c n="Dailey" c="DAILEY"/>
<c n="Elkins" c="ELKINS"/>
<c n="Ellamore" c="ELLAMORE"/>
<c n="Erbacon" c="ERBACON"/>
<c n="Fairmont" c="FAIRMONT"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Glenville" c="GLENVILLE"/>
<c n="Grafton" c="GRAFTON"/>
<c n="Harrisville" c="HARRISVILLE"/>
<c n="Mount Clare" c="MOUNT CLARE"/>
<c n="Parsons" c="PARSONS"/>
<c n="Philippi" c="PHILIPPI"/>
<c n="Shinnston" c="SHINNSTON"/>
<c n="Thomas" c="THOMAS"/>
<c n="Addison" c="ADDISON"/>
<c n="West Union" c="WEST UNION"/>
<c n="Weston" c="WESTON"/>
<c n="Davis" c="DAVIS"/></dma>
    </state>
<state id="TX" full_name="Texas">
    <dma code="657" title="Sherman, TX-Ada, OK">
<c n="Ada" c="ADA"/>
<c n="Antlers" c="ANTLERS"/>
<c n="Ardmore" c="ARDMORE"/>
<c n="Atoka" c="ATOKA"/>
<c n="Calera" c="CALERA"/>
<c n="Clarita" c="CLARITA"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Coalgate" c="COALGATE"/>
<c n="Coleman" c="COLEMAN"/>
<c n="Durant" c="DURANT"/>
<c n="Grant" c="GRANT"/>
<c n="Healdton" c="HEALDTON"/>
<c n="Hugo" c="HUGO"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Madill" c="MADILL"/>
<c n="Marietta" c="MARIETTA"/>
<c n="Rattan" c="RATTAN"/>
<c n="Stonewall" c="STONEWALL"/>
<c n="Stringtown" c="STRINGTOWN"/>
<c n="Tishomingo" c="TISHOMINGO"/>
<c n="Tupelo" c="TUPELO"/>
<c n="Bells" c="BELLS"/>
<c n="Collinsville" c="COLLINSVILLE"/>
<c n="Denison" c="DENISON"/>
<c n="Gunter" c="GUNTER"/>
<c n="Howe" c="HOWE"/>
<c n="Pottsboro" c="POTTSBORO"/>
<c n="Sadler" c="SADLER"/>
<c n="Sherman" c="SHERMAN"/>
<c n="Tioga" c="TIOGA"/>
<c n="Tom Bean" c="TOM BEAN"/>
<c n="Van Alstyne" c="VAN ALSTYNE"/>
<c n="Whitesboro" c="WHITESBORO"/>
<c n="Whitewright" c="WHITEWRIGHT"/>
<c n="Colbert" c="COLBERT"/></dma>

    <dma code="627" title="Wichita Falls, TX &amp;Lawton, OK">
<c n="Altus" c="ALTUS"/>
<c n="Bray" c="BRAY"/>
<c n="Duncan" c="DUNCAN"/>
<c n="Eldorado" c="ELDORADO"/>
<c n="Fletcher" c="FLETCHER"/>
<c n="Frederick" c="FREDERICK"/>
<c n="Fort Sill" c="FORT SILL"/>
<c n="Geronimo" c="GERONIMO"/>
<c n="Indiahoma" c="INDIAHOMA"/>
<c n="Lawton" c="LAWTON"/>
<c n="Marlow" c="MARLOW"/>
<c n="Terral" c="TERRAL"/>
<c n="Velma" c="VELMA"/>
<c n="Walters" c="WALTERS"/>
<c n="Waurika" c="WAURIKA"/>
<c n="Archer City" c="ARCHER CITY"/>
<c n="Bowie" c="BOWIE"/>
<c n="Burkburnett" c="BURKBURNETT"/>
<c n="Byers" c="BYERS"/>
<c n="Crowell" c="CROWELL"/>
<c n="Electra" c="ELECTRA"/>
<c n="Graham" c="GRAHAM"/>
<c n="Guthrie" c="GUTHRIE"/>
<c n="Harrold" c="HARROLD"/>
<c n="Henrietta" c="HENRIETTA"/>
<c n="Iowa Park" c="IOWA PARK"/>
<c n="Loving" c="LOVING"/>
<c n="Montague" c="MONTAGUE"/>
<c n="Olney" c="OLNEY"/>
<c n="Quanah" c="QUANAH"/>
<c n="Seymour" c="SEYMOUR"/>
<c n="Sheppard AFB" c="SHEPPARD AFB"/>
<c n="Throckmorton" c="THROCKMORTON"/>
<c n="Vernon" c="VERNON"/>
<c n="Wichita Falls" c="WICHITA FALLS"/>
<c n="Elgin" c="ELGIN"/>
<c n="Windthorst" c="WINDTHORST"/></dma>

    <dma code="600" title="Corpus Christi, TX">
<c n="Alice" c="ALICE"/>
<c n="Aransas Pass" c="ARANSAS PASS"/>
<c n="Armstrong" c="ARMSTRONG"/>
<c n="Beeville" c="BEEVILLE"/>
<c n="Benavides" c="BENAVIDES"/>
<c n="Bishop" c="BISHOP"/>
<c n="Corpus Christi" c="CORPUS CHRISTI"/>
<c n="Falfurrias" c="FALFURRIAS"/>
<c n="George West" c="GEORGE WEST"/>
<c n="Hebbronville" c="HEBBRONVILLE"/>
<c n="Ingleside" c="INGLESIDE"/>
<c n="Kingsville" c="KINGSVILLE"/>
<c n="Mathis" c="MATHIS"/>
<c n="Odem" c="ODEM"/>
<c n="Orange Grove" c="ORANGE GROVE"/>
<c n="Port Aransas" c="PORT ARANSAS"/>
<c n="Portland" c="PORTLAND"/>
<c n="Premont" c="PREMONT"/>
<c n="Refugio" c="REFUGIO"/>
<c n="Riviera" c="RIVIERA"/>
<c n="Robstown" c="ROBSTOWN"/>
<c n="Rockport" c="ROCKPORT"/>
<c n="San Diego" c="SAN DIEGO"/>
<c n="Sandia" c="SANDIA"/>
<c n="Sinton" c="SINTON"/>
<c n="Three Rivers" c="THREE RIVERS"/>
<c n="Woodsboro" c="WOODSBORO"/></dma>
    
    <dma code="618" title="Houston, TX">
<c n="Alief" c="ALIEF"/>
<c n="Alvin" c="ALVIN"/>
<c n="Anahuac" c="ANAHUAC"/>
<c n="Anderson" c="ANDERSON"/>
<c n="Angleton" c="ANGLETON"/>
<c n="Apple Springs" c="APPLE SPRINGS"/>
<c n="Barker" c="BARKER"/>
<c n="Bay City" c="BAY CITY"/>
<c n="Baytown" c="BAYTOWN"/>
<c n="Bellaire" c="BELLAIRE"/>
<c n="Bellville" c="BELLVILLE"/>
<c n="Boling-Iago" c="BOLING-IAGO"/>
<c n="Brazoria" c="BRAZORIA"/>
<c n="Brenham" c="BRENHAM"/>
<c n="Brookshire" c="BROOKSHIRE"/>
<c n="Channelview" c="CHANNELVIEW"/>
<c n="Chappell Hill" c="CHAPPELL HILL"/>
<c n="Cleveland" c="CLEVELAND"/>
<c n="Clute" c="CLUTE"/>
<c n="Coldspring" c="COLDSPRING"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Conroe" c="CONROE"/>
<c n="Crosby" c="CROSBY"/>
<c n="Cypress" c="CYPRESS"/>
<c n="Damon" c="DAMON"/>
<c n="Dayton" c="DAYTON"/>
<c n="Deer Park" c="DEER PARK"/>
<c n="Dickinson" c="DICKINSON"/>
<c n="Eagle Lake" c="EAGLE LAKE"/>
<c n="East Bernard" c="EAST BERNARD"/>
<c n="Edna" c="EDNA"/>
<c n="El Campo" c="EL CAMPO"/>
<c n="Freeport" c="FREEPORT"/>
<c n="Fresno" c="FRESNO"/>
<c n="Friendswood" c="FRIENDSWOOD"/>
<c n="Galena Park" c="GALENA PARK"/>
<c n="Galveston" c="GALVESTON"/>
<c n="Ganado" c="GANADO"/>
<c n="Garwood" c="GARWOOD"/>
<c n="Hardin" c="HARDIN"/>
<c n="Hempstead" c="HEMPSTEAD"/>
<c n="Highlands" c="HIGHLANDS"/>
<c n="Hitchcock" c="HITCHCOCK"/>
<c n="Hockley" c="HOCKLEY"/>
<c n="Houston" c="HOUSTON"/>
<c n="Huffman" c="HUFFMAN"/>
<c n="Humble" c="HUMBLE"/>
<c n="Huntsville" c="HUNTSVILLE"/>
<c n="Industry" c="INDUSTRY"/>
<c n="Katy" c="KATY"/>
<c n="Kemah" c="KEMAH"/>
<c n="Kendleton" c="KENDLETON"/>
<c n="La Marque" c="LA MARQUE"/>
<c n="La Porte" c="LA PORTE"/>
<c n="La Salle" c="LA SALLE"/>
<c n="Lake Jackson" c="LAKE JACKSON"/>
<c n="League City" c="LEAGUE CITY"/>
<c n="Liberty" c="LIBERTY"/>
<c n="Liverpool" c="LIVERPOOL"/>
<c n="Livingston" c="LIVINGSTON"/>
<c n="Louise" c="LOUISE"/>
<c n="Magnolia" c="MAGNOLIA"/>
<c n="Matagorda" c="MATAGORDA"/>
<c n="Missouri City" c="MISSOURI CITY"/>
<c n="Mont Belvieu" c="MONT BELVIEU"/>
<c n="Montgomery" c="MONTGOMERY"/>
<c n="Navasota" c="NAVASOTA"/>
<c n="Needville" c="NEEDVILLE"/>
<c n="New Caney" c="NEW CANEY"/>
<c n="New Waverly" c="NEW WAVERLY"/>
<c n="Onalaska" c="ONALASKA"/>
<c n="Palacios" c="PALACIOS"/>
<c n="Pasadena" c="PASADENA"/>
<c n="Pearland" c="PEARLAND"/>
<c n="Pinehurst" c="PINEHURST"/>
<c n="Point Comfort" c="POINT COMFORT"/>
<c n="Port Lavaca" c="PORT LAVACA"/>
<c n="Porter" c="PORTER"/>
<c n="Prairie View" c="PRAIRIE VIEW"/>
<c n="Lakemont" c="LAKEMONT"/>
<c n="Rosenberg" c="ROSENBERG"/>
<c n="Rosharon" c="ROSHARON"/>
<c n="Santa Fe" c="SANTA FE"/>
<c n="Seabrook" c="SEABROOK"/>
<c n="Sealy" c="SEALY"/>
<c n="Shiro" c="SHIRO"/>
<c n="South Houston" c="SOUTH HOUSTON"/>
<c n="Splendora" c="SPLENDORA"/>
<c n="Spring" c="SPRING"/>
<c n="Stafford" c="STAFFORD"/>
<c n="Sugar Land" c="SUGAR LAND"/>
<c n="Texas City" c="TEXAS CITY"/>
<c n="Thompsons" c="THOMPSONS"/>
<c n="Tomball" c="TOMBALL"/>
<c n="Trinity" c="TRINITY"/>
<c n="Van Vleck" c="VAN VLECK"/>
<c n="Wadsworth" c="WADSWORTH"/>
<c n="Waller" c="WALLER"/>
<c n="Wallis" c="WALLIS"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Webster" c="WEBSTER"/>
<c n="West Columbia" c="WEST COLUMBIA"/>
<c n="Wharton" c="WHARTON"/>
<c n="Willis" c="WILLIS"/>
<c n="Atascocita" c="ATASCOCITA"/>
<c n="Cinco Ranch" c="CINCO RANCH"/>
<c n="Four Corners" c="FOUR CORNERS"/>
<c n="Fulshear" c="FULSHEAR"/>
<c n="Greatwood" c="GREATWOOD"/>
<c n="Iowa Colony" c="IOWA COLONY"/>
<c n="Jersey Village" c="JERSEY VILLAGE"/>
<c n="Manvel" c="MANVEL"/>
<c n="Mission Bend" c="MISSION BEND"/>
<c n="Pecan Grove" c="PECAN GROVE"/>
<c n="Piney Point Village" c="PINEY POINT VILLAGE"/>
<c n="Sienna Plantation" c="SIENNA PLANTATION"/>
<c n="Stagecoach" c="STAGECOACH"/>
<c n="The Woodlands" c="THE WOODLANDS"/>
<c n="West University Place" c="WEST UNIVERSITY PLACE"/></dma>
    
    <dma code="623" title="Dallas-Ft. Worth, TX">
<c n="Addison" c="ADDISON"/>
<c n="Aledo" c="ALEDO"/>
<c n="Allen" c="ALLEN"/>
<c n="Alvarado" c="ALVARADO"/>
<c n="Anna" c="ANNA"/>
<c n="Argyle" c="ARGYLE"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Athens" c="ATHENS"/>
<c n="Aubrey" c="AUBREY"/>
<c n="Avalon" c="AVALON"/>
<c n="Avery" c="AVERY"/>
<c n="Azle" c="AZLE"/>
<c n="Bailey" c="BAILEY"/>
<c n="Bedford" c="BEDFORD"/>
<c n="Blue Ridge" c="BLUE RIDGE"/>
<c n="Bonham" c="BONHAM"/>
<c n="Brashear" c="BRASHEAR"/>
<c n="Bridgeport" c="BRIDGEPORT"/>
<c n="Brownsboro" c="BROWNSBORO"/>
<c n="Burleson" c="BURLESON"/>
<c n="Caddo Mills" c="CADDO MILLS"/>
<c n="Campbell" c="CAMPBELL"/>
<c n="Canton" c="CANTON"/>
<c n="Carrollton" c="CARROLLTON"/>
<c n="Cedar Hill" c="CEDAR HILL"/>
<c n="Celeste" c="CELESTE"/>
<c n="Celina" c="CELINA"/>
<c n="Chandler" c="CHANDLER"/>
<c n="Chatfield" c="CHATFIELD"/>
<c n="Clarksville" c="CLARKSVILLE"/>
<c n="Cleburne" c="CLEBURNE"/>
<c n="Clifton" c="CLIFTON"/>
<c n="Colleyville" c="COLLEYVILLE"/>
<c n="Comanche" c="COMANCHE"/>
<c n="Commerce" c="COMMERCE"/>
<c n="Cooper" c="COOPER"/>
<c n="Coppell" c="COPPELL"/>
<c n="Corsicana" c="CORSICANA"/>
<c n="Crandall" c="CRANDALL"/>
<c n="Crowley" c="CROWLEY"/>
<c n="Cumby" c="CUMBY"/>
<c n="Dallas" c="DALLAS"/>
<c n="Dawson" c="DAWSON"/>
<c n="De Leon" c="DE LEON"/>
<c n="Decatur" c="DECATUR"/>
<c n="Denton" c="DENTON"/>
<c n="DeSoto" c="DESOTO"/>
<c n="Dodd City" c="DODD CITY"/>
<c n="Duncanville" c="DUNCANVILLE"/>
<c n="Ector" c="ECTOR"/>
<c n="Emory" c="EMORY"/>
<c n="Ennis" c="ENNIS"/>
<c n="Euless" c="EULESS"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Farmersville" c="FARMERSVILLE"/>
<c n="Ferris" c="FERRIS"/>
<c n="Flower Mound" c="FLOWER MOUND"/>
<c n="Forney" c="FORNEY"/>
<c n="Frisco" c="FRISCO"/>
<c n="Fort Worth" c="FORT WORTH"/>
<c n="Gainesville" c="GAINESVILLE"/>
<c n="Garland" c="GARLAND"/>
<c n="Glen Rose" c="GLEN ROSE"/>
<c n="Gordon" c="GORDON"/>
<c n="Granbury" c="GRANBURY"/>
<c n="Grand Prairie" c="GRAND PRAIRIE"/>
<c n="Grapevine" c="GRAPEVINE"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Haltom City" c="HALTOM CITY"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Haslet" c="HASLET"/>
<c n="Hico" c="HICO"/>
<c n="Hillsboro" c="HILLSBORO"/>
<c n="Honey Grove" c="HONEY GROVE"/>
<c n="Hubbard" c="HUBBARD"/>
<c n="Hurst" c="HURST"/>
<c n="Hutchins" c="HUTCHINS"/>
<c n="Irving" c="IRVING"/>
<c n="Italy" c="ITALY"/>
<c n="Itasca" c="ITASCA"/>
<c n="Ivanhoe" c="IVANHOE"/>
<c n="Jacksboro" c="JACKSBORO"/>
<c n="Joshua" c="JOSHUA"/>
<c n="Justin" c="JUSTIN"/>
<c n="Kaufman" c="KAUFMAN"/>
<c n="Keene" c="KEENE"/>
<c n="Keller" c="KELLER"/>
<c n="Kemp" c="KEMP"/>
<c n="Kennedale" c="KENNEDALE"/>
<c n="Kerens" c="KERENS"/>
<c n="Krum" c="KRUM"/>
<c n="Ladonia" c="LADONIA"/>
<c n="Lake Dallas" c="LAKE DALLAS"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Leonard" c="LEONARD"/>
<c n="Lewisville" c="LEWISVILLE"/>
<c n="Lipan" c="LIPAN"/>
<c n="Little Elm" c="LITTLE ELM"/>
<c n="Lone Oak" c="LONE OAK"/>
<c n="Mabank" c="MABANK"/>
<c n="Malakoff" c="MALAKOFF"/>
<c n="Malone" c="MALONE"/>
<c n="Mansfield" c="MANSFIELD"/>
<c n="Maypearl" c="MAYPEARL"/>
<c n="McKinney" c="MCKINNEY"/>
<c n="Melissa" c="MELISSA"/>
<c n="Meridian" c="MERIDIAN"/>
<c n="Merit" c="MERIT"/>
<c n="Mesquite" c="MESQUITE"/>
<c n="Midlothian" c="MIDLOTHIAN"/>
<c n="Milford" c="MILFORD"/>
<c n="Mineral Wells" c="MINERAL WELLS"/>
<c n="Muenster" c="MUENSTER"/>
<c n="Nevada" c="NEVADA"/>
<c n="Newark" c="NEWARK"/>
<c n="North Richland Hills" c="NORTH RICHLAND HILLS"/>
<c n="Palestine" c="PALESTINE"/>
<c n="Palmer" c="PALMER"/>
<c n="Palo Pinto" c="PALO PINTO"/>
<c n="Paris" c="PARIS"/>
<c n="Pilot Point" c="PILOT POINT"/>
<c n="Plano" c="PLANO"/>
<c n="Point" c="POINT"/>
<c n="Ponder" c="PONDER"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Prosper" c="PROSPER"/>
<c n="Quinlan" c="QUINLAN"/>
<c n="Red Oak" c="RED OAK"/>
<c n="Rice" c="RICE"/>
<c n="Richardson" c="RICHARDSON"/>
<c n="Roanoke" c="ROANOKE"/>
<c n="Rockwall" c="ROCKWALL"/>
<c n="Rowlett" c="ROWLETT"/>
<c n="Royse City" c="ROYSE CITY"/>
<c n="Sachse" c="SACHSE"/>
<c n="Savoy" c="SAVOY"/>
<c n="Scurry" c="SCURRY"/>
<c n="Seagoville" c="SEAGOVILLE"/>
<c n="Southlake" c="SOUTHLAKE"/>
<c n="Springtown" c="SPRINGTOWN"/>
<c n="Stephenville" c="STEPHENVILLE"/>
<c n="Strawn" c="STRAWN"/>
<c n="Streetman" c="STREETMAN"/>
<c n="Sulphur Springs" c="SULPHUR SPRINGS"/>
<c n="Sunnyvale" c="SUNNYVALE"/>
<c n="Terrell" c="TERRELL"/>
<c n="The Colony" c="THE COLONY"/>
<c n="Trenton" c="TRENTON"/>
<c n="Trinidad" c="TRINIDAD"/>
<c n="Valley View" c="VALLEY VIEW"/>
<c n="Waxahachie" c="WAXAHACHIE"/>
<c n="Weatherford" c="WEATHERFORD"/>
<c n="Weston" c="WESTON"/>
<c n="Whitney" c="WHITNEY"/>
<c n="Wills Point" c="WILLS POINT"/>
<c n="Wolf City" c="WOLF CITY"/>
<c n="Wylie" c="WYLIE"/>
<c n="Balch Springs" c="BALCH SPRINGS"/>
<c n="Bartonville" c="BARTONVILLE"/>
<c n="Benbrook" c="BENBROOK"/>
<c n="Copper Canyon" c="COPPER CANYON"/>
<c n="Corinth" c="CORINTH"/>
<c n="Cross Roads" c="CROSS ROADS"/>
<c n="Fairview" c="FAIRVIEW"/>
<c n="Farmers Branch" c="FARMERS BRANCH"/>
<c n="Godley" c="GODLEY"/>
<c n="Grandview" c="GRANDVIEW"/>
<c n="Highland Park" c="HIGHLAND PARK"/>
<c n="Highland Village" c="HIGHLAND VILLAGE"/>
<c n="Lavon" c="LAVON"/>
<c n="Lucas" c="LUCAS"/>
<c n="Murphy" c="MURPHY"/>
<c n="Paradise" c="PARADISE"/>
<c n="Saginaw" c="SAGINAW"/>
<c n="Sanger" c="SANGER"/>
<c n="Trophy Club" c="TROPHY CLUB"/>
<c n="University Park" c="UNIVERSITY PARK"/>
<c n="Venus" c="VENUS"/>
<c n="Watauga" c="WATAUGA"/>
<c n="Westlake" c="WESTLAKE"/>
<c n="Willow Park" c="WILLOW PARK"/></dma>
    
    <dma code="625" title="Waco-Temple-Bryan, TX">
<c n="Belton" c="BELTON"/>
<c n="Bryan" c="BRYAN"/>
<c n="Buffalo" c="BUFFALO"/>
<c n="Caldwell" c="CALDWELL"/>
<c n="Calvert" c="CALVERT"/>
<c n="Cameron" c="CAMERON"/>
<c n="Centerville" c="CENTERVILLE"/>
<c n="Cherokee" c="CHEROKEE"/>
<c n="Chilton" c="CHILTON"/>
<c n="China Spring" c="CHINA SPRING"/>
<c n="Clay" c="CLAY"/>
<c n="College Station" c="COLLEGE STATION"/>
<c n="Coolidge" c="COOLIDGE"/>
<c n="Copperas Cove" c="COPPERAS COVE"/>
<c n="Crawford" c="CRAWFORD"/>
<c n="Elm Mott" c="ELM MOTT"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Gatesville" c="GATESVILLE"/>
<c n="Goldthwaite" c="GOLDTHWAITE"/>
<c n="Groesbeck" c="GROESBECK"/>
<c n="Harker Heights" c="HARKER HEIGHTS"/>
<c n="Hearne" c="HEARNE"/>
<c n="Holland" c="HOLLAND"/>
<c n="Killeen" c="KILLEEN"/>
<c n="Lampasas" c="LAMPASAS"/>
<c n="Little River-Academy" c="LITTLE RIVER-ACADEMY"/>
<c n="Lometa" c="LOMETA"/>
<c n="Lott" c="LOTT"/>
<c n="Madisonville" c="MADISONVILLE"/>
<c n="Marlin" c="MARLIN"/>
<c n="Marquez" c="MARQUEZ"/>
<c n="Mart" c="MART"/>
<c n="McGregor" c="MCGREGOR"/>
<c n="Mexia" c="MEXIA"/>
<c n="Milano" c="MILANO"/>
<c n="Moody" c="MOODY"/>
<c n="Mumford" c="MUMFORD"/>
<c n="Reagan" c="REAGAN"/>
<c n="Rockdale" c="ROCKDALE"/>
<c n="Rogers" c="ROGERS"/>
<c n="Ross" c="ROSS"/>
<c n="Salado" c="SALADO"/>
<c n="San Saba" c="SAN SABA"/>
<c n="Snook" c="SNOOK"/>
<c n="Temple" c="TEMPLE"/>
<c n="Thorndale" c="THORNDALE"/>
<c n="Thornton" c="THORNTON"/>
<c n="Troy" c="TROY"/>
<c n="Waco" c="WACO"/>
<c n="Woodway" c="WOODWAY"/>
<c n="Fort Hood" c="FORT HOOD"/>
<c n="Hewitt" c="HEWITT"/>
<c n="Lorena" c="LORENA"/>
<c n="Robinson" c="ROBINSON"/></dma>
    
    <dma code="626" title="Victoria, TX">
<c n="Bloomington" c="BLOOMINGTON"/>
<c n="Nursery" c="NURSERY"/>
<c n="Victoria" c="VICTORIA"/></dma>
    
    <dma code="633" title="Odessa-Midland, TX">
<c n="Alpine" c="ALPINE"/>
<c n="Andrews" c="ANDREWS"/>
<c n="Big Lake" c="BIG LAKE"/>
<c n="Big Spring" c="BIG SPRING"/>
<c n="Crane" c="CRANE"/>
<c n="Fort Davis" c="FORT DAVIS"/>
<c n="Fort Stockton" c="FORT STOCKTON"/>
<c n="Garden City" c="GARDEN CITY"/>
<c n="Gardendale" c="GARDENDALE"/>
<c n="Kermit" c="KERMIT"/>
<c n="Marfa" c="MARFA"/>
<c n="McCamey" c="MCCAMEY"/>
<c n="Midland" c="MIDLAND"/>
<c n="Monahans" c="MONAHANS"/>
<c n="Odessa" c="ODESSA"/>
<c n="Pecos" c="PECOS"/>
<c n="Penwell" c="PENWELL"/>
<c n="Presidio" c="PRESIDIO"/>
<c n="Rankin" c="RANKIN"/>
<c n="Sanderson" c="SANDERSON"/>
<c n="Stanton" c="STANTON"/></dma>
    
    <dma code="634" title="Amarillo, TX">
<c n="Cannon AFB" c="CANNON AFB"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Clovis" c="CLOVIS"/>
<c n="Des Moines" c="DES MOINES"/>
<c n="Dora" c="DORA"/>
<c n="Elida" c="ELIDA"/>
<c n="Floyd" c="FLOYD"/>
<c n="Melrose" c="MELROSE"/>
<c n="Portales" c="PORTALES"/>
<c n="Texico" c="TEXICO"/>
<c n="Tucumcari" c="TUCUMCARI"/>
<c n="Beaver City" c="BEAVER CITY"/>
<c n="Boise City" c="BOISE CITY"/>
<c n="Forgan" c="FORGAN"/>
<c n="Goodwell" c="GOODWELL"/>
<c n="Guymon" c="GUYMON"/>
<c n="Amarillo" c="AMARILLO"/>
<c n="Borger" c="BORGER"/>
<c n="Briscoe" c="BRISCOE"/>
<c n="Bushland" c="BUSHLAND"/>
<c n="Canadian" c="CANADIAN"/>
<c n="Canyon" c="CANYON"/>
<c n="Childress" c="CHILDRESS"/>
<c n="Clarendon" c="CLARENDON"/>
<c n="Dalhart" c="DALHART"/>
<c n="Dimmitt" c="DIMMITT"/>
<c n="Dumas" c="DUMAS"/>
<c n="Farwell" c="FARWELL"/>
<c n="Follett" c="FOLLETT"/>
<c n="Gruver" c="GRUVER"/>
<c n="Hartley" c="HARTLEY"/>
<c n="Hereford" c="HEREFORD"/>
<c n="Lipscomb" c="LIPSCOMB"/>
<c n="Memphis" c="MEMPHIS"/>
<c n="Miami" c="MIAMI"/>
<c n="Morse" c="MORSE"/>
<c n="Paducah" c="PADUCAH"/>
<c n="Pampa" c="PAMPA"/>
<c n="Panhandle" c="PANHANDLE"/>
<c n="Perryton" c="PERRYTON"/>
<c n="Shamrock" c="SHAMROCK"/>
<c n="Silverton" c="SILVERTON"/>
<c n="Spearman" c="SPEARMAN"/>
<c n="Stinnett" c="STINNETT"/>
<c n="Stratford" c="STRATFORD"/>
<c n="Tulia" c="TULIA"/>
<c n="Vega" c="VEGA"/>
<c n="Wellington" c="WELLINGTON"/>
<c n="Wheeler" c="WHEELER"/></dma>
    
    <dma code="635" title="Austin, TX">
<c n="Austin" c="AUSTIN"/>
<c n="Bastrop" c="BASTROP"/>
<c n="Blanco" c="BLANCO"/>
<c n="Briggs" c="BRIGGS"/>
<c n="Buda" c="BUDA"/>
<c n="Burnet" c="BURNET"/>
<c n="Cedar Creek" c="CEDAR CREEK"/>
<c n="Cedar Park" c="CEDAR PARK"/>
<c n="Dale" c="DALE"/>
<c n="Del Valle" c="DEL VALLE"/>
<c n="Driftwood" c="DRIFTWOOD"/>
<c n="Dripping Springs" c="DRIPPING SPRINGS"/>
<c n="Elgin" c="ELGIN"/>
<c n="Fayetteville" c="FAYETTEVILLE"/>
<c n="Flatonia" c="FLATONIA"/>
<c n="Florence" c="FLORENCE"/>
<c n="Fredericksburg" c="FREDERICKSBURG"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Giddings" c="GIDDINGS"/>
<c n="Harper" c="HARPER"/>
<c n="Hutto" c="HUTTO"/>
<c n="Johnson City" c="JOHNSON CITY"/>
<c n="Kyle" c="KYLE"/>
<c n="La Grange" c="LA GRANGE"/>
<c n="Leander" c="LEANDER"/>
<c n="Llano" c="LLANO"/>
<c n="Lockhart" c="LOCKHART"/>
<c n="Luling" c="LULING"/>
<c n="Manchaca" c="MANCHACA"/>
<c n="Manor" c="MANOR"/>
<c n="Marble Falls" c="MARBLE FALLS"/>
<c n="Mason" c="MASON"/>
<c n="McNeil" c="MCNEIL"/>
<c n="Pflugerville" c="PFLUGERVILLE"/>
<c n="Round Mountain" c="ROUND MOUNTAIN"/>
<c n="Round Rock" c="ROUND ROCK"/>
<c n="Round Top" c="ROUND TOP"/>
<c n="San Marcos" c="SAN MARCOS"/>
<c n="Schulenburg" c="SCHULENBURG"/>
<c n="Smithville" c="SMITHVILLE"/>
<c n="Spicewood" c="SPICEWOOD"/>
<c n="Stonewall" c="STONEWALL"/>
<c n="Taylor" c="TAYLOR"/>
<c n="Wimberley" c="WIMBERLEY"/>
<c n="Barton Creek" c="BARTON CREEK"/>
<c n="Bear Creek" c="BEAR CREEK"/>
<c n="Bee Cave" c="BEE CAVE"/>
<c n="Briarcliff" c="BRIARCLIFF"/>
<c n="Brushy Creek" c="BRUSHY CREEK"/>
<c n="Horseshoe Bay" c="HORSESHOE BAY"/>
<c n="Jollyville" c="JOLLYVILLE"/>
<c n="Kingsland" c="KINGSLAND"/>
<c n="Lago Vista" c="LAGO VISTA"/>
<c n="Lakeway" c="LAKEWAY"/>
<c n="Liberty Hill" c="LIBERTY HILL"/>
<c n="Wells Branch" c="WELLS BRANCH"/>
<c n="West Lake Hills" c="WEST LAKE HILLS"/>
<c n="Wyldwood" c="WYLDWOOD"/></dma>
    
    <dma code="636" title="Harlingen-Weslaco-McAllen, TX">
<c n="Alamo" c="ALAMO"/>
<c n="Brownsville" c="BROWNSVILLE"/>
<c n="Donna" c="DONNA"/>
<c n="Edcouch" c="EDCOUCH"/>
<c n="Edinburg" c="EDINBURG"/>
<c n="Elsa" c="ELSA"/>
<c n="Harlingen" c="HARLINGEN"/>
<c n="Hidalgo" c="HIDALGO"/>
<c n="La Joya" c="LA JOYA"/>
<c n="La Villa" c="LA VILLA"/>
<c n="Lasara" c="LASARA"/>
<c n="Los Fresnos" c="LOS FRESNOS"/>
<c n="Lyford" c="LYFORD"/>
<c n="McAllen" c="MCALLEN"/>
<c n="Mercedes" c="MERCEDES"/>
<c n="Mission" c="MISSION"/>
<c n="Pharr" c="PHARR"/>
<c n="Progreso" c="PROGRESO"/>
<c n="Raymondville" c="RAYMONDVILLE"/>
<c n="Rio Grande City" c="RIO GRANDE CITY"/>
<c n="Rio Hondo" c="RIO HONDO"/>
<c n="Roma" c="ROMA"/>
<c n="San Benito" c="SAN BENITO"/>
<c n="San Juan" c="SAN JUAN"/>
<c n="Sebastian" c="SEBASTIAN"/>
<c n="South Padre Island" c="SOUTH PADRE ISLAND"/>
<c n="Weslaco" c="WESLACO"/>
<c n="Port Isabel" c="PORT ISABEL"/></dma>
    
    <dma code="641" title="San Antonio, TX">
<c n="Atascosa" c="ATASCOSA"/>
<c n="Bandera" c="BANDERA"/>
<c n="Boerne" c="BOERNE"/>
<c n="Brackettville" c="BRACKETTVILLE"/>
<c n="Bulverde" c="BULVERDE"/>
<c n="Carrizo Springs" c="CARRIZO SPRINGS"/>
<c n="Castroville" c="CASTROVILLE"/>
<c n="Center Point" c="CENTER POINT"/>
<c n="Charlotte" c="CHARLOTTE"/>
<c n="Cibolo" c="CIBOLO"/>
<c n="Comfort" c="COMFORT"/>
<c n="Converse" c="CONVERSE"/>
<c n="Cotulla" c="COTULLA"/>
<c n="Crystal City" c="CRYSTAL CITY"/>
<c n="Cuero" c="CUERO"/>
<c n="D Hanis" c="D HANIS"/>
<c n="Del Rio" c="DEL RIO"/>
<c n="Devine" c="DEVINE"/>
<c n="Dilley" c="DILLEY"/>
<c n="Eagle Pass" c="EAGLE PASS"/>
<c n="Elmendorf" c="ELMENDORF"/>
<c n="Falls City" c="FALLS CITY"/>
<c n="Fannin" c="FANNIN"/>
<c n="Floresville" c="FLORESVILLE"/>
<c n="Geronimo" c="GERONIMO"/>
<c n="Gillett" c="GILLETT"/>
<c n="Goliad" c="GOLIAD"/>
<c n="Gonzales" c="GONZALES"/>
<c n="Hallettsville" c="HALLETTSVILLE"/>
<c n="Helotes" c="HELOTES"/>
<c n="Hondo" c="HONDO"/>
<c n="Hunt" c="HUNT"/>
<c n="Ingram" c="INGRAM"/>
<c n="Jourdanton" c="JOURDANTON"/>
<c n="Karnes City" c="KARNES CITY"/>
<c n="Kenedy" c="KENEDY"/>
<c n="Kerrville" c="KERRVILLE"/>
<c n="Knippa" c="KNIPPA"/>
<c n="La Pryor" c="LA PRYOR"/>
<c n="La Vernia" c="LA VERNIA"/>
<c n="Laughlin AFB" c="LAUGHLIN AFB"/>
<c n="Leakey" c="LEAKEY"/>
<c n="Lytle" c="LYTLE"/>
<c n="Marion" c="MARION"/>
<c n="Medina" c="MEDINA"/>
<c n="Moore" c="MOORE"/>
<c n="Natalia" c="NATALIA"/>
<c n="New Braunfels" c="NEW BRAUNFELS"/>
<c n="Nixon" c="NIXON"/>
<c n="Pearsall" c="PEARSALL"/>
<c n="Pipe Creek" c="PIPE CREEK"/>
<c n="Pleasanton" c="PLEASANTON"/>
<c n="Poteet" c="POTEET"/>
<c n="Poth" c="POTH"/>
<c n="Quemado" c="QUEMADO"/>
<c n="Rocksprings" c="ROCKSPRINGS"/>
<c n="Runge" c="RUNGE"/>
<c n="Sabinal" c="SABINAL"/>
<c n="San Antonio" c="SAN ANTONIO"/>
<c n="Schertz" c="SCHERTZ"/>
<c n="Seguin" c="SEGUIN"/>
<c n="Shiner" c="SHINER"/>
<c n="Somerset" c="SOMERSET"/>
<c n="Spring Branch" c="SPRING BRANCH"/>
<c n="Stockdale" c="STOCKDALE"/>
<c n="Tilden" c="TILDEN"/>
<c n="Universal City" c="UNIVERSAL CITY"/>
<c n="Utopia" c="UTOPIA"/>
<c n="Uvalde" c="UVALDE"/>
<c n="Yoakum" c="YOAKUM"/>
<c n="Alamo Heights" c="ALAMO HEIGHTS"/>
<c n="Canyon Lake" c="CANYON LAKE"/>
<c n="Fair Oaks Ranch" c="FAIR OAKS RANCH"/>
<c n="Garden Ridge" c="GARDEN RIDGE"/>
<c n="Lackland Air Force Base" c="LACKLAND AIR FORCE BASE"/>
<c n="Lakehills" c="LAKEHILLS"/>
<c n="Live Oak" c="LIVE OAK"/>
<c n="St. Hedwig" c="ST. HEDWIG"/>
<c n="Timberwood Park" c="TIMBERWOOD PARK"/>
<c n="Windcrest" c="WINDCREST"/></dma>
    
    <dma code="651" title="Lubbock, TX">
<c n="Abernathy" c="ABERNATHY"/>
<c n="Brownfield" c="BROWNFIELD"/>
<c n="Crosbyton" c="CROSBYTON"/>
<c n="Denver City" c="DENVER CITY"/>
<c n="Dickens" c="DICKENS"/>
<c n="Floydada" c="FLOYDADA"/>
<c n="Gail" c="GAIL"/>
<c n="Hale Center" c="HALE CENTER"/>
<c n="Jayton" c="JAYTON"/>
<c n="Lamesa" c="LAMESA"/>
<c n="Levelland" c="LEVELLAND"/>
<c n="Littlefield" c="LITTLEFIELD"/>
<c n="Lubbock" c="LUBBOCK"/>
<c n="Matador" c="MATADOR"/>
<c n="Morton" c="MORTON"/>
<c n="Muleshoe" c="MULESHOE"/>
<c n="Petersburg" c="PETERSBURG"/>
<c n="Plains" c="PLAINS"/>
<c n="Plainview" c="PLAINVIEW"/>
<c n="Post" c="POST"/>
<c n="Seagraves" c="SEAGRAVES"/>
<c n="Seminole" c="SEMINOLE"/>
<c n="Slaton" c="SLATON"/>
<c n="Spur" c="SPUR"/>
<c n="Sudan" c="SUDAN"/>
<c n="Tahoka" c="TAHOKA"/>
<c n="Wellman" c="WELLMAN"/>
<c n="Whiteface" c="WHITEFACE"/>
<c n="Whitharral" c="WHITHARRAL"/>
<c n="Wolfforth" c="WOLFFORTH"/></dma>
    
    <dma code="661" title="San Angelo, TX">
<c n="Brady" c="BRADY"/>
<c n="Eden" c="EDEN"/>
<c n="Eldorado" c="ELDORADO"/>
<c n="Goodfellow Air Force Base" c="GOODFELLOW AIR FORCE BASE"/>
<c n="Junction" c="JUNCTION"/>
<c n="Menard" c="MENARD"/>
<c n="Mertzon" c="MERTZON"/>
<c n="Ozona" c="OZONA"/>
<c n="Paint Rock" c="PAINT ROCK"/>
<c n="Robert Lee" c="ROBERT LEE"/>
<c n="San Angelo" c="SAN ANGELO"/>
<c n="Sonora" c="SONORA"/>
<c n="Sterling City" c="STERLING CITY"/></dma>
    
    <dma code="662" title="Abilene-Sweetwater, TX">
<c n="Abilene" c="ABILENE"/>
<c n="Albany" c="ALBANY"/>
<c n="Anson" c="ANSON"/>
<c n="Aspermont" c="ASPERMONT"/>
<c n="Baird" c="BAIRD"/>
<c n="Ballinger" c="BALLINGER"/>
<c n="Benjamin" c="BENJAMIN"/>
<c n="Breckenridge" c="BRECKENRIDGE"/>
<c n="Brownwood" c="BROWNWOOD"/>
<c n="Cisco" c="CISCO"/>
<c n="Clyde" c="CLYDE"/>
<c n="Coleman" c="COLEMAN"/>
<c n="Colorado City" c="COLORADO CITY"/>
<c n="Dyess Air Force Base" c="DYESS AIR FORCE BASE"/>
<c n="Eastland" c="EASTLAND"/>
<c n="Gorman" c="GORMAN"/>
<c n="Haskell" c="HASKELL"/>
<c n="Knox City" c="KNOX CITY"/>
<c n="Merkel" c="MERKEL"/>
<c n="Nolan" c="NOLAN"/>
<c n="Ranger" c="RANGER"/>
<c n="Roby" c="ROBY"/>
<c n="San Saba" c="SAN SABA"/>
<c n="Snyder" c="SNYDER"/>
<c n="Stamford" c="STAMFORD"/>
<c n="Sweetwater" c="SWEETWATER"/>
<c n="Tye" c="TYE"/></dma>
    
    <dma code="692" title="Beaumont-Port Arthur, TX">
<c n="Beaumont" c="BEAUMONT"/>
<c n="Bridge City" c="BRIDGE CITY"/>
<c n="Buna" c="BUNA"/>
<c n="Chester" c="CHESTER"/>
<c n="Groves" c="GROVES"/>
<c n="Hamshire" c="HAMSHIRE"/>
<c n="Jasper" c="JASPER"/>
<c n="Lumberton" c="LUMBERTON"/>
<c n="Mauriceville" c="MAURICEVILLE"/>
<c n="Nederland" c="NEDERLAND"/>
<c n="Newton" c="NEWTON"/>
<c n="Orange" c="ORANGE"/>
<c n="Orangefield" c="ORANGEFIELD"/>
<c n="Port Arthur" c="PORT ARTHUR"/>
<c n="Port Neches" c="PORT NECHES"/>
<c n="Saratoga" c="SARATOGA"/>
<c n="Silsbee" c="SILSBEE"/>
<c n="Sour Lake" c="SOUR LAKE"/>
<c n="Spurger" c="SPURGER"/>
<c n="Vidor" c="VIDOR"/>
<c n="Woodville" c="WOODVILLE"/></dma>
    
    <dma code="709" title="Tyler-Longview(Nacogdoches), TX">
<c n="Alba" c="ALBA"/>
<c n="Big Sandy" c="BIG SANDY"/>
<c n="Bullard" c="BULLARD"/>
<c n="Crockett" c="CROCKETT"/>
<c n="Cushing" c="CUSHING"/>
<c n="Diboll" c="DIBOLL"/>
<c n="Garrison" c="GARRISON"/>
<c n="Gilmer" c="GILMER"/>
<c n="Gladewater" c="GLADEWATER"/>
<c n="Grapeland" c="GRAPELAND"/>
<c n="Hawkins" c="HAWKINS"/>
<c n="Hemphill" c="HEMPHILL"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Huntington" c="HUNTINGTON"/>
<c n="Jacksonville" c="JACKSONVILLE"/>
<c n="Kilgore" c="KILGORE"/>
<c n="Lindale" c="LINDALE"/>
<c n="Lovelady" c="LOVELADY"/>
<c n="Lufkin" c="LUFKIN"/>
<c n="Milam" c="MILAM"/>
<c n="Mineola" c="MINEOLA"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="Nacogdoches" c="NACOGDOCHES"/>
<c n="Overton" c="OVERTON"/>
<c n="Pittsburg" c="PITTSBURG"/>
<c n="Quitman" c="QUITMAN"/>
<c n="Rusk" c="RUSK"/>
<c n="San Augustine" c="SAN AUGUSTINE"/>
<c n="Tyler" c="TYLER"/>
<c n="Whitehouse" c="WHITEHOUSE"/>
<c n="Winnsboro" c="WINNSBORO"/>
<c n="Ore City" c="ORE CITY"/>
<c n="White Oak" c="WHITE OAK"/></dma>
    
    <dma code="749" title="Laredo, TX">
<c n="Laredo" c="LAREDO"/>
<c n="Zapata" c="ZAPATA"/></dma>
    
    <dma code="765" title="El Paso, TX">
<c n="Anthony" c="ANTHONY"/>
<c n="Garfield" c="GARFIELD"/>
<c n="Hatch" c="HATCH"/>
<c n="La Mesa" c="LA MESA"/>
<c n="Las Cruces" c="LAS CRUCES"/>
<c n="Mesilla Park" c="MESILLA PARK"/>
<c n="Mesquite" c="MESQUITE"/>
<c n="Radium Springs" c="RADIUM SPRINGS"/>
<c n="Rincon" c="RINCON"/>
<c n="Salem" c="SALEM"/>
<c n="Sunland Park" c="SUNLAND PARK"/>
<c n="Anthony" c="ANTHONY"/>
<c n="Canutillo" c="CANUTILLO"/>
<c n="Clint" c="CLINT"/>
<c n="Dell City" c="DELL CITY"/>
<c n="El Paso" c="EL PASO"/>
<c n="Fabens" c="FABENS"/>
<c n="Fort Hancock" c="FORT HANCOCK"/>
<c n="San Elizario" c="SAN ELIZARIO"/>
<c n="Sierra Blanca" c="SIERRA BLANCA"/>
<c n="Tornillo" c="TORNILLO"/>
<c n="Van Horn" c="VAN HORN"/>
<c n="Fort Bliss" c="FORT BLISS"/>
<c n="Horizon City" c="HORIZON CITY"/>
<c n="Socorro" c="SOCORRO"/></dma>
    </state>
<state id="IL" full_name="Illinois">
    <dma code="717" title="Quincy, IL-Hannibal, MO-Keokuk, IA">
<c n="Donnellson" c="DONNELLSON"/>
<c n="Fort Madison" c="FORT MADISON"/>
<c n="Keokuk" c="KEOKUK"/>
<c n="West Point" c="WEST POINT"/>
<c n="Augusta" c="AUGUSTA"/>
<c n="Barry" c="BARRY"/>
<c n="Bluffs" c="BLUFFS"/>
<c n="Bushnell" c="BUSHNELL"/>
<c n="Camden" c="CAMDEN"/>
<c n="Camp Point" c="CAMP POINT"/>
<c n="Carthage" c="CARTHAGE"/>
<c n="Colchester" c="COLCHESTER"/>
<c n="Golden" c="GOLDEN"/>
<c n="Griggsville" c="GRIGGSVILLE"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Industry" c="INDUSTRY"/>
<c n="Kinderhook" c="KINDERHOOK"/>
<c n="La Harpe" c="LA HARPE"/>
<c n="Liberty" c="LIBERTY"/>
<c n="Macomb" c="MACOMB"/>
<c n="Mendon" c="MENDON"/>
<c n="Mount Sterling" c="MOUNT STERLING"/>
<c n="Nauvoo" c="NAUVOO"/>
<c n="New Salem" c="NEW SALEM"/>
<c n="Perry" c="PERRY"/>
<c n="Pittsfield" c="PITTSFIELD"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Quincy" c="QUINCY"/>
<c n="Rushville" c="RUSHVILLE"/>
<c n="Sciota" c="SCIOTA"/>
<c n="Versailles" c="VERSAILLES"/>
<c n="Warsaw" c="WARSAW"/>
<c n="Winchester" c="WINCHESTER"/>
<c n="Canton" c="CANTON"/>
<c n="Center" c="CENTER"/>
<c n="Edina" c="EDINA"/>
<c n="Ewing" c="EWING"/>
<c n="South Gorin" c="SOUTH GORIN"/>
<c n="Hannibal" c="HANNIBAL"/>
<c n="Holliday" c="HOLLIDAY"/>
<c n="Hurdland" c="HURDLAND"/>
<c n="Kahoka" c="KAHOKA"/>
<c n="La Belle" c="LA BELLE"/>
<c n="La Grange" c="LA GRANGE"/>
<c n="Madison" c="MADISON"/>
<c n="Memphis" c="MEMPHIS"/>
<c n="Monroe City" c="MONROE CITY"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="New London" c="NEW LONDON"/>
<c n="Palmyra" c="PALMYRA"/>
<c n="Paris" c="PARIS"/>
<c n="Perry" c="PERRY"/>
<c n="Philadelphia" c="PHILADELPHIA"/>
<c n="Revere" c="REVERE"/>
<c n="Shelbina" c="SHELBINA"/>
<c n="Shelbyville" c="SHELBYVILLE"/>
<c n="Wyaconda" c="WYACONDA"/></dma>

    <dma code="602" title="Chicago, IL">
<c n="Addison" c="ADDISON"/>
<c n="Algonquin" c="ALGONQUIN"/>
<c n="Alsip" c="ALSIP"/>
<c n="Antioch" c="ANTIOCH"/>
<c n="Arlington Heights" c="ARLINGTON HEIGHTS"/>
<c n="Aurora" c="AURORA"/>
<c n="Barrington" c="BARRINGTON"/>
<c n="Bartlett" c="BARTLETT"/>
<c n="Batavia" c="BATAVIA"/>
<c n="Bedford Park" c="BEDFORD PARK"/>
<c n="Beecher" c="BEECHER"/>
<c n="Bellwood" c="BELLWOOD"/>
<c n="Bensenville" c="BENSENVILLE"/>
<c n="Berkeley" c="BERKELEY"/>
<c n="Berwyn" c="BERWYN"/>
<c n="Big Rock" c="BIG ROCK"/>
<c n="Bloomingdale" c="BLOOMINGDALE"/>
<c n="Blue Island" c="BLUE ISLAND"/>
<c n="Bolingbrook" c="BOLINGBROOK"/>
<c n="Bourbonnais" c="BOURBONNAIS"/>
<c n="Braceville" c="BRACEVILLE"/>
<c n="Bradley" c="BRADLEY"/>
<c n="Bridgeview" c="BRIDGEVIEW"/>
<c n="Broadview" c="BROADVIEW"/>
<c n="Brookfield" c="BROOKFIELD"/>
<c n="Buffalo Grove" c="BUFFALO GROVE"/>
<c n="Burbank" c="BURBANK"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Calumet City" c="CALUMET CITY"/>
<c n="Carol Stream" c="CAROL STREAM"/>
<c n="Carpentersville" c="CARPENTERSVILLE"/>
<c n="Cary" c="CARY"/>
<c n="Channahon" c="CHANNAHON"/>
<c n="Chicago" c="CHICAGO"/>
<c n="Chicago Heights" c="CHICAGO HEIGHTS"/>
<c n="Chicago Ridge" c="CHICAGO RIDGE"/>
<c n="Cicero" c="CICERO"/>
<c n="Clarendon Hills" c="CLARENDON HILLS"/>
<c n="Coal City" c="COAL CITY"/>
<c n="Cortland" c="CORTLAND"/>
<c n="Country Club Hills" c="COUNTRY CLUB HILLS"/>
<c n="Crete" c="CRETE"/>
<c n="Crystal Lake" c="CRYSTAL LAKE"/>
<c n="Darien" c="DARIEN"/>
<c n="Deerfield" c="DEERFIELD"/>
<c n="De Kalb" c="DE KALB"/>
<c n="Des Plaines" c="DES PLAINES"/>
<c n="Dolton" c="DOLTON"/>
<c n="Downers Grove" c="DOWNERS GROVE"/>
<c n="Dundee" c="DUNDEE"/>
<c n="Earlville" c="EARLVILLE"/>
<c n="Elburn" c="ELBURN"/>
<c n="Elgin" c="ELGIN"/>
<c n="Elk Grove Village" c="ELK GROVE VILLAGE"/>
<c n="Elmhurst" c="ELMHURST"/>
<c n="Elmwood Park" c="ELMWOOD PARK"/>
<c n="Elwood" c="ELWOOD"/>
<c n="Evanston" c="EVANSTON"/>
<c n="Evergreen Park" c="EVERGREEN PARK"/>
<c n="Flossmoor" c="FLOSSMOOR"/>
<c n="Forest Park" c="FOREST PARK"/>
<c n="Fox Lake" c="FOX LAKE"/>
<c n="Fox River Grove" c="FOX RIVER GROVE"/>
<c n="Frankfort" c="FRANKFORT"/>
<c n="Franklin Park" c="FRANKLIN PARK"/>
<c n="Fort Sheridan" c="FORT SHERIDAN"/>
<c n="Gardner" c="GARDNER"/>
<c n="Geneva" c="GENEVA"/>
<c n="Genoa" c="GENOA"/>
<c n="Glen Ellyn" c="GLEN ELLYN"/>
<c n="Glencoe" c="GLENCOE"/>
<c n="Glendale Heights" c="GLENDALE HEIGHTS"/>
<c n="Glenview" c="GLENVIEW"/>
<c n="Glenwood" c="GLENWOOD"/>
<c n="Golf" c="GOLF"/>
<c n="Grand Ridge" c="GRAND RIDGE"/>
<c n="Grant Park" c="GRANT PARK"/>
<c n="Grayslake" c="GRAYSLAKE"/>
<c n="Great Lakes" c="GREAT LAKES"/>
<c n="Gurnee" c="GURNEE"/>
<c n="Hampshire" c="HAMPSHIRE"/>
<c n="Harvard" c="HARVARD"/>
<c n="Harvey" c="HARVEY"/>
<c n="Harwood Heights" c="HARWOOD HEIGHTS"/>
<c n="Hazel Crest" c="HAZEL CREST"/>
<c n="Hebron" c="HEBRON"/>
<c n="Herscher" c="HERSCHER"/>
<c n="Hickory Hills" c="HICKORY HILLS"/>
<c n="Highland Park" c="HIGHLAND PARK"/>
<c n="Highwood" c="HIGHWOOD"/>
<c n="Hillside" c="HILLSIDE"/>
<c n="Hinckley" c="HINCKLEY"/>
<c n="Hines" c="HINES"/>
<c n="Hinsdale" c="HINSDALE"/>
<c n="Hoffman Estates" c="HOFFMAN ESTATES"/>
<c n="Hometown" c="HOMETOWN"/>
<c n="Homewood" c="HOMEWOOD"/>
<c n="Hopkins Park" c="HOPKINS PARK"/>
<c n="Huntley" c="HUNTLEY"/>
<c n="Ingleside" c="INGLESIDE"/>
<c n="Island Lake" c="ISLAND LAKE"/>
<c n="Itasca" c="ITASCA"/>
<c n="Joliet" c="JOLIET"/>
<c n="Justice" c="JUSTICE"/>
<c n="Kaneville" c="KANEVILLE"/>
<c n="Kankakee" c="KANKAKEE"/>
<c n="Kenilworth" c="KENILWORTH"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Kirkland" c="KIRKLAND"/>
<c n="La Grange" c="LA GRANGE"/>
<c n="La Grange Park" c="LA GRANGE PARK"/>
<c n="LaSalle" c="LASALLE"/>
<c n="La Fox" c="LA FOX"/>
<c n="Lake Bluff" c="LAKE BLUFF"/>
<c n="Lake Forest" c="LAKE FOREST"/>
<c n="Lake in the Hills" c="LAKE IN THE HILLS"/>
<c n="Lake Villa" c="LAKE VILLA"/>
<c n="Lake Zurich" c="LAKE ZURICH"/>
<c n="Lansing" c="LANSING"/>
<c n="Leland" c="LELAND"/>
<c n="Lemont" c="LEMONT"/>
<c n="Libertyville" c="LIBERTYVILLE"/>
<c n="Lincolnshire" c="LINCOLNSHIRE"/>
<c n="Lincolnwood" c="LINCOLNWOOD"/>
<c n="Lisle" c="LISLE"/>
<c n="Lockport" c="LOCKPORT"/>
<c n="Lombard" c="LOMBARD"/>
<c n="Long Grove" c="LONG GROVE"/>
<c n="Lyons" c="LYONS"/>
<c n="Malta" c="MALTA"/>
<c n="Manhattan" c="MANHATTAN"/>
<c n="Manteno" c="MANTENO"/>
<c n="Maple Park" c="MAPLE PARK"/>
<c n="Marengo" c="MARENGO"/>
<c n="Marseilles" c="MARSEILLES"/>
<c n="Matteson" c="MATTESON"/>
<c n="Maywood" c="MAYWOOD"/>
<c n="McHenry" c="MCHENRY"/>
<c n="Medinah" c="MEDINAH"/>
<c n="Melrose Park" c="MELROSE PARK"/>
<c n="Mendota" c="MENDOTA"/>
<c n="Midlothian" c="MIDLOTHIAN"/>
<c n="Minooka" c="MINOOKA"/>
<c n="Mokena" c="MOKENA"/>
<c n="Momence" c="MOMENCE"/>
<c n="Monee" c="MONEE"/>
<c n="Montgomery" c="MONTGOMERY"/>
<c n="Mooseheart" c="MOOSEHEART"/>
<c n="Morris" c="MORRIS"/>
<c n="Morton Grove" c="MORTON GROVE"/>
<c n="Mount Prospect" c="MOUNT PROSPECT"/>
<c n="Mundelein" c="MUNDELEIN"/>
<c n="Naperville" c="NAPERVILLE"/>
<c n="New Lenox" c="NEW LENOX"/>
<c n="Newark" c="NEWARK"/>
<c n="Niles" c="NILES"/>
<c n="North Aurora" c="NORTH AURORA"/>
<c n="North Chicago" c="NORTH CHICAGO"/>
<c n="Northbrook" c="NORTHBROOK"/>
<c n="Oak Brook" c="OAK BROOK"/>
<c n="Oak Forest" c="OAK FOREST"/>
<c n="Oak Lawn" c="OAK LAWN"/>
<c n="Oak Park" c="OAK PARK"/>
<c n="Oglesby" c="OGLESBY"/>
<c n="Olympia Fields" c="OLYMPIA FIELDS"/>
<c n="Orland Park" c="ORLAND PARK"/>
<c n="Oswego" c="OSWEGO"/>
<c n="Ottawa" c="OTTAWA"/>
<c n="Palatine" c="PALATINE"/>
<c n="Palos Heights" c="PALOS HEIGHTS"/>
<c n="Palos Hills" c="PALOS HILLS"/>
<c n="Palos Park" c="PALOS PARK"/>
<c n="Park Forest" c="PARK FOREST"/>
<c n="Park Ridge" c="PARK RIDGE"/>
<c n="Peotone" c="PEOTONE"/>
<c n="Peru" c="PERU"/>
<c n="Plainfield" c="PLAINFIELD"/>
<c n="Plano" c="PLANO"/>
<c n="Plato Center" c="PLATO CENTER"/>
<c n="Posen" c="POSEN"/>
<c n="Prospect Heights" c="PROSPECT HEIGHTS"/>
<c n="Ransom" c="RANSOM"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Richton Park" c="RICHTON PARK"/>
<c n="Ringwood" c="RINGWOOD"/>
<c n="River Forest" c="RIVER FOREST"/>
<c n="River Grove" c="RIVER GROVE"/>
<c n="Riverdale" c="RIVERDALE"/>
<c n="Riverside" c="RIVERSIDE"/>
<c n="Rolling Meadows" c="ROLLING MEADOWS"/>
<c n="Romeoville" c="ROMEOVILLE"/>
<c n="Roselle" c="ROSELLE"/>
<c n="Round Lake" c="ROUND LAKE"/>
<c n="Sandwich" c="SANDWICH"/>
<c n="Schaumburg" c="SCHAUMBURG"/>
<c n="Schiller Park" c="SCHILLER PARK"/>
<c n="Seneca" c="SENECA"/>
<c n="Shabbona" c="SHABBONA"/>
<c n="Sheridan" c="SHERIDAN"/>
<c n="Skokie" c="SKOKIE"/>
<c n="Somonauk" c="SOMONAUK"/>
<c n="South Elgin" c="SOUTH ELGIN"/>
<c n="South Holland" c="SOUTH HOLLAND"/>
<c n="South Wilmington" c="SOUTH WILMINGTON"/>
<c n="Spring Grove" c="SPRING GROVE"/>
<c n="St. Anne" c="ST. ANNE"/>
<c n="St. Charles" c="ST. CHARLES"/>
<c n="Steger" c="STEGER"/>
<c n="Stone Park" c="STONE PARK"/>
<c n="Streamwood" c="STREAMWOOD"/>
<c n="Sugar Grove" c="SUGAR GROVE"/>
<c n="Summit" c="SUMMIT"/>
<c n="Sycamore" c="SYCAMORE"/>
<c n="Techny" c="TECHNY"/>
<c n="Thornton" c="THORNTON"/>
<c n="Tinley Park" c="TINLEY PARK"/>
<c n="Tonica" c="TONICA"/>
<c n="Union" c="UNION"/>
<c n="Utica" c="UTICA"/>
<c n="Vernon Hills" c="VERNON HILLS"/>
<c n="Villa Park" c="VILLA PARK"/>
<c n="Virgil" c="VIRGIL"/>
<c n="Warrenville" c="WARRENVILLE"/>
<c n="Waterman" c="WATERMAN"/>
<c n="Wauconda" c="WAUCONDA"/>
<c n="Waukegan" c="WAUKEGAN"/>
<c n="Wayne" c="WAYNE"/>
<c n="Wedron" c="WEDRON"/>
<c n="West Chicago" c="WEST CHICAGO"/>
<c n="Westchester" c="WESTCHESTER"/>
<c n="Western Springs" c="WESTERN SPRINGS"/>
<c n="Westmont" c="WESTMONT"/>
<c n="Wheaton" c="WHEATON"/>
<c n="Wheeling" c="WHEELING"/>
<c n="Willow Springs" c="WILLOW SPRINGS"/>
<c n="Wilmette" c="WILMETTE"/>
<c n="Winfield" c="WINFIELD"/>
<c n="Winnetka" c="WINNETKA"/>
<c n="Wonder Lake" c="WONDER LAKE"/>
<c n="Wood Dale" c="WOOD DALE"/>
<c n="Woodridge" c="WOODRIDGE"/>
<c n="Woodstock" c="WOODSTOCK"/>
<c n="Worth" c="WORTH"/>
<c n="Yorkville" c="YORKVILLE"/>
<c n="Zion" c="ZION"/>
<c n="Boone Grove" c="BOONE GROVE"/>
<c n="Brook" c="BROOK"/>
<c n="Cedar Lake" c="CEDAR LAKE"/>
<c n="Chesterton" c="CHESTERTON"/>
<c n="Crown Point" c="CROWN POINT"/>
<c n="De Motte" c="DE MOTTE"/>
<c n="Dyer" c="DYER"/>
<c n="East Chicago" c="EAST CHICAGO"/>
<c n="Gary" c="GARY"/>
<c n="Goodland" c="GOODLAND"/>
<c n="Griffith" c="GRIFFITH"/>
<c n="Hammond" c="HAMMOND"/>
<c n="Hebron" c="HEBRON"/>
<c n="Highland" c="HIGHLAND"/>
<c n="Hobart" c="HOBART"/>
<c n="Kentland" c="KENTLAND"/>
<c n="Kouts" c="KOUTS"/>
<c n="La Crosse" c="LA CROSSE"/>
<c n="La Porte" c="LA PORTE"/>
<c n="Lake Station" c="LAKE STATION"/>
<c n="Lake Village" c="LAKE VILLAGE"/>
<c n="Leroy" c="LEROY"/>
<c n="Lowell" c="LOWELL"/>
<c n="Merrillville" c="MERRILLVILLE"/>
<c n="Michigan City" c="MICHIGAN CITY"/>
<c n="Morocco" c="MOROCCO"/>
<c n="Munster" c="MUNSTER"/>
<c n="Portage" c="PORTAGE"/>
<c n="Remington" c="REMINGTON"/>
<c n="Rensselaer" c="RENSSELAER"/>
<c n="Schererville" c="SCHERERVILLE"/>
<c n="Shelby" c="SHELBY"/>
<c n="St. John" c="ST. JOHN"/>
<c n="Union Mills" c="UNION MILLS"/>
<c n="Valparaiso" c="VALPARAISO"/>
<c n="Wanatah" c="WANATAH"/>
<c n="Westville" c="WESTVILLE"/>
<c n="Wheatfield" c="WHEATFIELD"/>
<c n="Whiting" c="WHITING"/>
<c n="Bannockburn" c="BANNOCKBURN"/>
<c n="Braidwood" c="BRAIDWOOD"/>
<c n="Burns Harbor" c="BURNS HARBOR"/>
<c n="Burr Ridge" c="BURR RIDGE"/>
<c n="Campton Hills" c="CAMPTON HILLS"/>
<c n="Countryside" c="COUNTRYSIDE"/>
<c n="Crest Hill" c="CREST HILL"/>
<c n="Crestwood" c="CRESTWOOD"/>
<c n="Deer Park" c="DEER PARK"/>
<c n="Gilberts" c="GILBERTS"/>
<c n="Green Oaks" c="GREEN OAKS"/>
<c n="Hanover Park" c="HANOVER PARK"/>
<c n="Hawthorn Woods" c="HAWTHORN WOODS"/>
<c n="Homer Glen" c="HOMER GLEN"/>
<c n="Johnsburg" c="JOHNSBURG"/>
<c n="Kildeer" c="KILDEER"/>
<c n="Lakemoor" c="LAKEMOOR"/>
<c n="Lindenhurst" c="LINDENHURST"/>
<c n="Markham" c="MARKHAM"/>
<c n="Mettawa" c="METTAWA"/>
<c n="Norridge" c="NORRIDGE"/>
<c n="Northfield" c="NORTHFIELD"/>
<c n="Northlake" c="NORTHLAKE"/>
<c n="Oakbrook Terrace" c="OAKBROOK TERRACE"/>
<c n="Riverwoods" c="RIVERWOODS"/>
<c n="Roselawn" c="ROSELAWN"/>
<c n="Rosemont" c="ROSEMONT"/>
<c n="Round Lake Beach" c="ROUND LAKE BEACH"/>
<c n="Shorewood" c="SHOREWOOD"/>
<c n="Sleepy Hollow" c="SLEEPY HOLLOW"/>
<c n="South Barrington" c="SOUTH BARRINGTON"/>
<c n="University Park" c="UNIVERSITY PARK"/>
<c n="West Dundee" c="WEST DUNDEE"/>
<c n="Willowbrook" c="WILLOWBROOK"/>
<c n="Wilmington" c="WILMINGTON"/>
<c n="Winthrop Harbor" c="WINTHROP HARBOR"/></dma>
    
    <dma code="610" title="Rockford, IL">
<c n="Amboy" c="AMBOY"/>
<c n="Ashton" c="ASHTON"/>
<c n="Baileyville" c="BAILEYVILLE"/>
<c n="Belvidere" c="BELVIDERE"/>
<c n="Byron" c="BYRON"/>
<c n="Caledonia" c="CALEDONIA"/>
<c n="Capron" c="CAPRON"/>
<c n="Cherry Valley" c="CHERRY VALLEY"/>
<c n="Dakota" c="DAKOTA"/>
<c n="Davis" c="DAVIS"/>
<c n="Dixon" c="DIXON"/>
<c n="Durand" c="DURAND"/>
<c n="Forreston" c="FORRESTON"/>
<c n="Freeport" c="FREEPORT"/>
<c n="Garden Prairie" c="GARDEN PRAIRIE"/>
<c n="Harmon" c="HARMON"/>
<c n="Leaf River" c="LEAF RIVER"/>
<c n="Lena" c="LENA"/>
<c n="Loves Park" c="LOVES PARK"/>
<c n="Machesney Park" c="MACHESNEY PARK"/>
<c n="Mount Morris" c="MOUNT MORRIS"/>
<c n="Orangeville" c="ORANGEVILLE"/>
<c n="Oregon" c="OREGON"/>
<c n="Paw Paw" c="PAW PAW"/>
<c n="Pearl City" c="PEARL CITY"/>
<c n="Pecatonica" c="PECATONICA"/>
<c n="Poplar Grove" c="POPLAR GROVE"/>
<c n="Rochelle" c="ROCHELLE"/>
<c n="Rockford" c="ROCKFORD"/>
<c n="Rockton" c="ROCKTON"/>
<c n="Roscoe" c="ROSCOE"/>
<c n="South Beloit" c="SOUTH BELOIT"/>
<c n="Steward" c="STEWARD"/>
<c n="Stillman Valley" c="STILLMAN VALLEY"/>
<c n="Sublette" c="SUBLETTE"/>
<c n="Winnebago" c="WINNEBAGO"/>
<c n="Davis Junction" c="DAVIS JUNCTION"/></dma>
    
    <dma code="632" title="Paducah, KY-Harrisburg, IL">
<c n="Anna" c="ANNA"/>
<c n="Benton" c="BENTON"/>
<c n="Brookport" c="BROOKPORT"/>
<c n="Buncombe" c="BUNCOMBE"/>
<c n="Carbondale" c="CARBONDALE"/>
<c n="Carrier Mills" c="CARRIER MILLS"/>
<c n="Carterville" c="CARTERVILLE"/>
<c n="Christopher" c="CHRISTOPHER"/>
<c n="Cobden" c="COBDEN"/>
<c n="Creal Springs" c="CREAL SPRINGS"/>
<c n="Dahlgren" c="DAHLGREN"/>
<c n="Dongola" c="DONGOLA"/>
<c n="Du Quoin" c="DU QUOIN"/>
<c n="Eldorado" c="ELDORADO"/>
<c n="Energy" c="ENERGY"/>
<c n="Equality" c="EQUALITY"/>
<c n="Galatia" c="GALATIA"/>
<c n="Golconda" c="GOLCONDA"/>
<c n="Goreville" c="GOREVILLE"/>
<c n="Harrisburg" c="HARRISBURG"/>
<c n="Herrin" c="HERRIN"/>
<c n="Hurst" c="HURST"/>
<c n="Ina" c="INA"/>
<c n="Johnston City" c="JOHNSTON CITY"/>
<c n="Joppa" c="JOPPA"/>
<c n="Junction" c="JUNCTION"/>
<c n="Logan" c="LOGAN"/>
<c n="Marion" c="MARION"/>
<c n="McLeansboro" c="MCLEANSBORO"/>
<c n="Metropolis" c="METROPOLIS"/>
<c n="Mounds" c="MOUNDS"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="Murphysboro" c="MURPHYSBORO"/>
<c n="New Haven" c="NEW HAVEN"/>
<c n="Pinckneyville" c="PINCKNEYVILLE"/>
<c n="Pulaski" c="PULASKI"/>
<c n="Raleigh" c="RALEIGH"/>
<c n="Ridgway" c="RIDGWAY"/>
<c n="Rosiclare" c="ROSICLARE"/>
<c n="Sesser" c="SESSER"/>
<c n="Shawneetown" c="SHAWNEETOWN"/>
<c n="Simpson" c="SIMPSON"/>
<c n="Stonefort" c="STONEFORT"/>
<c n="Tamaroa" c="TAMAROA"/>
<c n="Tamms" c="TAMMS"/>
<c n="Ullin" c="ULLIN"/>
<c n="Vienna" c="VIENNA"/>
<c n="West Frankfort" c="WEST FRANKFORT"/>
<c n="Woodlawn" c="WOODLAWN"/>
<c n="Almo" c="ALMO"/>
<c n="Bardwell" c="BARDWELL"/>
<c n="Barlow" c="BARLOW"/>
<c n="Benton" c="BENTON"/>
<c n="Calvert City" c="CALVERT CITY"/>
<c n="Clinton" c="CLINTON"/>
<c n="Eddyville" c="EDDYVILLE"/>
<c n="Fancy Farm" c="FANCY FARM"/>
<c n="Fulton" c="FULTON"/>
<c n="Hickman" c="HICKMAN"/>
<c n="La Center" c="LA CENTER"/>
<c n="Lovelaceville" c="LOVELACEVILLE"/>
<c n="Marion" c="MARION"/>
<c n="Mayfield" c="MAYFIELD"/>
<c n="Murray" c="MURRAY"/>
<c n="Paducah" c="PADUCAH"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Salem" c="SALEM"/>
<c n="Sedalia" c="SEDALIA"/>
<c n="Smithland" c="SMITHLAND"/>
<c n="Wickliffe" c="WICKLIFFE"/>
<c n="Advance" c="ADVANCE"/>
<c n="Altenburg" c="ALTENBURG"/>
<c n="Arbyrd" c="ARBYRD"/>
<c n="Bell City" c="BELL CITY"/>
<c n="Benton" c="BENTON"/>
<c n="Bernie" c="BERNIE"/>
<c n="Bloomfield" c="BLOOMFIELD"/>
<c n="Broseley" c="BROSELEY"/>
<c n="Campbell" c="CAMPBELL"/>
<c n="Cape Girardeau" c="CAPE GIRARDEAU"/>
<c n="Cardwell" c="CARDWELL"/>
<c n="Caruthersville" c="CARUTHERSVILLE"/>
<c n="Chaffee" c="CHAFFEE"/>
<c n="Charleston" c="CHARLESTON"/>
<c n="Clarkton" c="CLARKTON"/>
<c n="Cooter" c="COOTER"/>
<c n="Deering" c="DEERING"/>
<c n="Delta" c="DELTA"/>
<c n="Dexter" c="DEXTER"/>
<c n="Doniphan" c="DONIPHAN"/>
<c n="Dudley" c="DUDLEY"/>
<c n="East Prairie" c="EAST PRAIRIE"/>
<c n="Ellsinore" c="ELLSINORE"/>
<c n="Essex" c="ESSEX"/>
<c n="Fredericktown" c="FREDERICKTOWN"/>
<c n="Gatewood" c="GATEWOOD"/>
<c n="Gideon" c="GIDEON"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Hayti" c="HAYTI"/>
<c n="Holcomb" c="HOLCOMB"/>
<c n="Hornersville" c="HORNERSVILLE"/>
<c n="Jackson" c="JACKSON"/>
<c n="Kennett" c="KENNETT"/>
<c n="Leopold" c="LEOPOLD"/>
<c n="Malden" c="MALDEN"/>
<c n="Marble Hill" c="MARBLE HILL"/>
<c n="Marquand" c="MARQUAND"/>
<c n="Naylor" c="NAYLOR"/>
<c n="Neelyville" c="NEELYVILLE"/>
<c n="New Madrid" c="NEW MADRID"/>
<c n="Oak Ridge" c="OAK RIDGE"/>
<c n="Oran" c="ORAN"/>
<c n="Patton" c="PATTON"/>
<c n="Perryville" c="PERRYVILLE"/>
<c n="Piedmont" c="PIEDMONT"/>
<c n="Poplar Bluff" c="POPLAR BLUFF"/>
<c n="Portageville" c="PORTAGEVILLE"/>
<c n="Puxico" c="PUXICO"/>
<c n="Risco" c="RISCO"/>
<c n="Scott City" c="SCOTT CITY"/>
<c n="Senath" c="SENATH"/>
<c n="Sikeston" c="SIKESTON"/>
<c n="Steele" c="STEELE"/>
<c n="Van Buren" c="VAN BUREN"/>
<c n="Wardell" c="WARDELL"/>
<c n="Zalma" c="ZALMA"/>
<c n="Dresden" c="DRESDEN"/>
<c n="Gleason" c="GLEASON"/>
<c n="Hornbeak" c="HORNBEAK"/>
<c n="Martin" c="MARTIN"/>
<c n="South Fulton" c="SOUTH FULTON"/>
<c n="Tiptonville" c="TIPTONVILLE"/>
<c n="Troy" c="TROY"/>
<c n="Union City" c="UNION CITY"/></dma>
    
    <dma code="648" title="Champaign &amp;Springfield-Decatur,IL">
<c n="Alexander" c="ALEXANDER"/>
<c n="Altamont" c="ALTAMONT"/>
<c n="Arcola" c="ARCOLA"/>
<c n="Arenzville" c="ARENZVILLE"/>
<c n="Arthur" c="ARTHUR"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Assumption" c="ASSUMPTION"/>
<c n="Athens" c="ATHENS"/>
<c n="Atlanta" c="ATLANTA"/>
<c n="Auburn" c="AUBURN"/>
<c n="Beardstown" c="BEARDSTOWN"/>
<c n="Bement" c="BEMENT"/>
<c n="Bethany" c="BETHANY"/>
<c n="Bismarck" c="BISMARCK"/>
<c n="Blue Mound" c="BLUE MOUND"/>
<c n="Broadlands" c="BROADLANDS"/>
<c n="Buffalo" c="BUFFALO"/>
<c n="Catlin" c="CATLIN"/>
<c n="Cerro Gordo" c="CERRO GORDO"/>
<c n="Champaign" c="CHAMPAIGN"/>
<c n="Charleston" c="CHARLESTON"/>
<c n="Chatham" c="CHATHAM"/>
<c n="Chrisman" c="CHRISMAN"/>
<c n="Cissna Park" c="CISSNA PARK"/>
<c n="Clifton" c="CLIFTON"/>
<c n="Clinton" c="CLINTON"/>
<c n="Cowden" c="COWDEN"/>
<c n="Crescent City" c="CRESCENT CITY"/>
<c n="Danville" c="DANVILLE"/>
<c n="Decatur" c="DECATUR"/>
<c n="Dieterich" c="DIETERICH"/>
<c n="Donovan" c="DONOVAN"/>
<c n="Effingham" c="EFFINGHAM"/>
<c n="Elkhart" c="ELKHART"/>
<c n="Farmer City" c="FARMER CITY"/>
<c n="Findlay" c="FINDLAY"/>
<c n="Fisher" c="FISHER"/>
<c n="Fithian" c="FITHIAN"/>
<c n="Forsyth" c="FORSYTH"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Gibson City" c="GIBSON CITY"/>
<c n="Gilman" c="GILMAN"/>
<c n="Greenup" c="GREENUP"/>
<c n="Greenview" c="GREENVIEW"/>
<c n="Hammond" c="HAMMOND"/>
<c n="Herrick" c="HERRICK"/>
<c n="Hoopeston" c="HOOPESTON"/>
<c n="Hume" c="HUME"/>
<c n="Illiopolis" c="ILLIOPOLIS"/>
<c n="Iroquois" c="IROQUOIS"/>
<c n="Jacksonville" c="JACKSONVILLE"/>
<c n="Kansas" c="KANSAS"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Lovington" c="LOVINGTON"/>
<c n="Macon" c="MACON"/>
<c n="Mahomet" c="MAHOMET"/>
<c n="Maroa" c="MAROA"/>
<c n="Mason" c="MASON"/>
<c n="Mattoon" c="MATTOON"/>
<c n="Meredosia" c="MEREDOSIA"/>
<c n="Milford" c="MILFORD"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="Mount Pulaski" c="MOUNT PULASKI"/>
<c n="Mount Zion" c="MOUNT ZION"/>
<c n="Moweaqua" c="MOWEAQUA"/>
<c n="New Berlin" c="NEW BERLIN"/>
<c n="Newman" c="NEWMAN"/>
<c n="Niantic" c="NIANTIC"/>
<c n="Oakwood" c="OAKWOOD"/>
<c n="Oconee" c="OCONEE"/>
<c n="Paris" c="PARIS"/>
<c n="Pawnee" c="PAWNEE"/>
<c n="Paxton" c="PAXTON"/>
<c n="Petersburg" c="PETERSBURG"/>
<c n="Piper City" c="PIPER CITY"/>
<c n="Pleasant Plains" c="PLEASANT PLAINS"/>
<c n="Potomac" c="POTOMAC"/>
<c n="Rantoul" c="RANTOUL"/>
<c n="Ridge Farm" c="RIDGE FARM"/>
<c n="Riverton" c="RIVERTON"/>
<c n="Rosamond" c="ROSAMOND"/>
<c n="Rossville" c="ROSSVILLE"/>
<c n="Savoy" c="SAVOY"/>
<c n="Shelbyville" c="SHELBYVILLE"/>
<c n="Sheldon" c="SHELDON"/>
<c n="Sidell" c="SIDELL"/>
<c n="Sidney" c="SIDNEY"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="St. Joseph" c="ST. JOSEPH"/>
<c n="Strasburg" c="STRASBURG"/>
<c n="Sullivan" c="SULLIVAN"/>
<c n="Taylorville" c="TAYLORVILLE"/>
<c n="Teutopolis" c="TEUTOPOLIS"/>
<c n="Thayer" c="THAYER"/>
<c n="Thomasboro" c="THOMASBORO"/>
<c n="Toledo" c="TOLEDO"/>
<c n="Tolono" c="TOLONO"/>
<c n="Tuscola" c="TUSCOLA"/>
<c n="Urbana" c="URBANA"/>
<c n="Vermilion" c="VERMILION"/>
<c n="Villa Grove" c="VILLA GROVE"/>
<c n="Virginia" c="VIRGINIA"/>
<c n="Warrensburg" c="WARRENSBURG"/>
<c n="Watseka" c="WATSEKA"/>
<c n="Waverly" c="WAVERLY"/>
<c n="Waynesville" c="WAYNESVILLE"/>
<c n="Westville" c="WESTVILLE"/>
<c n="Williamsville" c="WILLIAMSVILLE"/>
<c n="Windsor" c="WINDSOR"/>
<c n="Pine Village" c="PINE VILLAGE"/>
<c n="West Lebanon" c="WEST LEBANON"/>
<c n="Williamsport" c="WILLIAMSPORT"/>
<c n="Pana" c="PANA"/>
<c n="Sherman" c="SHERMAN"/></dma>
    
    <dma code="675" title="Peoria-Bloomington, IL">
<c n="Astoria" c="ASTORIA"/>
<c n="Bellflower" c="BELLFLOWER"/>
<c n="Bloomington" c="BLOOMINGTON"/>
<c n="Bradford" c="BRADFORD"/>
<c n="Brimfield" c="BRIMFIELD"/>
<c n="Canton" c="CANTON"/>
<c n="Chatsworth" c="CHATSWORTH"/>
<c n="Chenoa" c="CHENOA"/>
<c n="Chillicothe" c="CHILLICOTHE"/>
<c n="Colfax" c="COLFAX"/>
<c n="Creve Coeur" c="CREVE COEUR"/>
<c n="Cuba" c="CUBA"/>
<c n="Cullom" c="CULLOM"/>
<c n="Danvers" c="DANVERS"/>
<c n="Deer Creek" c="DEER CREEK"/>
<c n="Delavan" c="DELAVAN"/>
<c n="Downs" c="DOWNS"/>
<c n="Dunlap" c="DUNLAP"/>
<c n="East Peoria" c="EAST PEORIA"/>
<c n="Edelstein" c="EDELSTEIN"/>
<c n="Edwards" c="EDWARDS"/>
<c n="El Paso" c="EL PASO"/>
<c n="Elmwood" c="ELMWOOD"/>
<c n="Eureka" c="EUREKA"/>
<c n="Fairbury" c="FAIRBURY"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Flanagan" c="FLANAGAN"/>
<c n="Forrest" c="FORREST"/>
<c n="Glasford" c="GLASFORD"/>
<c n="Goodfield" c="GOODFIELD"/>
<c n="Granville" c="GRANVILLE"/>
<c n="Graymont" c="GRAYMONT"/>
<c n="Green Valley" c="GREEN VALLEY"/>
<c n="Gridley" c="GRIDLEY"/>
<c n="Groveland" c="GROVELAND"/>
<c n="Hanna City" c="HANNA CITY"/>
<c n="Havana" c="HAVANA"/>
<c n="Henry" c="HENRY"/>
<c n="Heyworth" c="HEYWORTH"/>
<c n="Hopedale" c="HOPEDALE"/>
<c n="Hudson" c="HUDSON"/>
<c n="Kingston Mines" c="KINGSTON MINES"/>
<c n="Lacon" c="LACON"/>
<c n="Le Roy" c="LE ROY"/>
<c n="Lewistown" c="LEWISTOWN"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Mackinaw" c="MACKINAW"/>
<c n="Magnolia" c="MAGNOLIA"/>
<c n="Manito" c="MANITO"/>
<c n="Mapleton" c="MAPLETON"/>
<c n="Mason City" c="MASON CITY"/>
<c n="McLean" c="MCLEAN"/>
<c n="McNabb" c="MCNABB"/>
<c n="Metamora" c="METAMORA"/>
<c n="Minonk" c="MINONK"/>
<c n="Morton" c="MORTON"/>
<c n="Mossville" c="MOSSVILLE"/>
<c n="Normal" c="NORMAL"/>
<c n="Odell" c="ODELL"/>
<c n="Pekin" c="PEKIN"/>
<c n="Peoria" c="PEORIA"/>
<c n="Pontiac" c="PONTIAC"/>
<c n="Princeville" c="PRINCEVILLE"/>
<c n="Putnam" c="PUTNAM"/>
<c n="Roanoke" c="ROANOKE"/>
<c n="Rome" c="ROME"/>
<c n="Smithfield" c="SMITHFIELD"/>
<c n="South Pekin" c="SOUTH PEKIN"/>
<c n="Sparland" c="SPARLAND"/>
<c n="Stanford" c="STANFORD"/>
<c n="Table Grove" c="TABLE GROVE"/>
<c n="Toluca" c="TOLUCA"/>
<c n="Toulon" c="TOULON"/>
<c n="Towanda" c="TOWANDA"/>
<c n="Tremont" c="TREMONT"/>
<c n="Trivoli" c="TRIVOLI"/>
<c n="Vermont" c="VERMONT"/>
<c n="Washburn" c="WASHBURN"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Wenona" c="WENONA"/>
<c n="Bartonville" c="BARTONVILLE"/>
<c n="Bellevue" c="BELLEVUE"/>
<c n="Germantown Hills" c="GERMANTOWN HILLS"/></dma>
    
    <dma code="682" title="Davenport,IA-Rock Island-Moline,IL">
<c n="Andrew" c="ANDREW"/>
<c n="Baldwin" c="BALDWIN"/>
<c n="Bellevue" c="BELLEVUE"/>
<c n="Bettendorf" c="BETTENDORF"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Camanche" c="CAMANCHE"/>
<c n="Clinton" c="CLINTON"/>
<c n="Columbus Junction" c="COLUMBUS JUNCTION"/>
<c n="Danville" c="DANVILLE"/>
<c n="Davenport" c="DAVENPORT"/>
<c n="DeWitt" c="DEWITT"/>
<c n="Delmar" c="DELMAR"/>
<c n="Eldridge" c="ELDRIDGE"/>
<c n="Goose Lake" c="GOOSE LAKE"/>
<c n="Grand Mound" c="GRAND MOUND"/>
<c n="Letts" c="LETTS"/>
<c n="Lost Nation" c="LOST NATION"/>
<c n="Maquoketa" c="MAQUOKETA"/>
<c n="Mediapolis" c="MEDIAPOLIS"/>
<c n="Miles" c="MILES"/>
<c n="Morning Sun" c="MORNING SUN"/>
<c n="Moscow" c="MOSCOW"/>
<c n="Mount Pleasant" c="MOUNT PLEASANT"/>
<c n="Muscatine" c="MUSCATINE"/>
<c n="New London" c="NEW LONDON"/>
<c n="Oakville" c="OAKVILLE"/>
<c n="Pleasant Valley" c="PLEASANT VALLEY"/>
<c n="Preston" c="PRESTON"/>
<c n="Sabula" c="SABULA"/>
<c n="Sperry" c="SPERRY"/>
<c n="Walcott" c="WALCOTT"/>
<c n="Wapello" c="WAPELLO"/>
<c n="Wayland" c="WAYLAND"/>
<c n="West Burlington" c="WEST BURLINGTON"/>
<c n="West Liberty" c="WEST LIBERTY"/>
<c n="Wheatland" c="WHEATLAND"/>
<c n="Wilton" c="WILTON"/>
<c n="Aledo" c="ALEDO"/>
<c n="Alexis" c="ALEXIS"/>
<c n="Annawan" c="ANNAWAN"/>
<c n="Apple River" c="APPLE RIVER"/>
<c n="Biggsville" c="BIGGSVILLE"/>
<c n="Buda" c="BUDA"/>
<c n="Bureau" c="BUREAU"/>
<c n="Cambridge" c="CAMBRIDGE"/>
<c n="Coal Valley" c="COAL VALLEY"/>
<c n="Cordova" c="CORDOVA"/>
<c n="DePue" c="DEPUE"/>
<c n="East Dubuque" c="EAST DUBUQUE"/>
<c n="East Moline" c="EAST MOLINE"/>
<c n="Elizabeth" c="ELIZABETH"/>
<c n="Erie" c="ERIE"/>
<c n="Fenton" c="FENTON"/>
<c n="Fulton" c="FULTON"/>
<c n="Galena" c="GALENA"/>
<c n="Galesburg" c="GALESBURG"/>
<c n="Geneseo" c="GENESEO"/>
<c n="Hampton" c="HAMPTON"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Joy" c="JOY"/>
<c n="Kewanee" c="KEWANEE"/>
<c n="Lyndon" c="LYNDON"/>
<c n="Milan" c="MILAN"/>
<c n="Milledgeville" c="MILLEDGEVILLE"/>
<c n="Mineral" c="MINERAL"/>
<c n="Moline" c="MOLINE"/>
<c n="Monmouth" c="MONMOUTH"/>
<c n="Morrison" c="MORRISON"/>
<c n="Mount Carroll" c="MOUNT CARROLL"/>
<c n="Neponset" c="NEPONSET"/>
<c n="Oneida" c="ONEIDA"/>
<c n="Oquawka" c="OQUAWKA"/>
<c n="Port Byron" c="PORT BYRON"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Prophetstown" c="PROPHETSTOWN"/>
<c n="Rock Falls" c="ROCK FALLS"/>
<c n="Rock Island" c="ROCK ISLAND"/>
<c n="Roseville" c="ROSEVILLE"/>
<c n="Savanna" c="SAVANNA"/>
<c n="Scales Mound" c="SCALES MOUND"/>
<c n="Sheffield" c="SHEFFIELD"/>
<c n="Sherrard" c="SHERRARD"/>
<c n="Spring Valley" c="SPRING VALLEY"/>
<c n="Sterling" c="STERLING"/>
<c n="Stockton" c="STOCKTON"/>
<c n="Stronghurst" c="STRONGHURST"/>
<c n="Thomson" c="THOMSON"/>
<c n="Victoria" c="VICTORIA"/>
<c n="Warren" c="WARREN"/>
<c n="Williamsfield" c="WILLIAMSFIELD"/>
<c n="Woodhull" c="WOODHULL"/>
<c n="Yates City" c="YATES CITY"/>
<c n="Abingdon" c="ABINGDON"/>
<c n="Le Claire" c="LE CLAIRE"/></dma>
    </state>
<state id="KS" full_name="Kansas">
    <dma code="603" title="Joplin, MO-Pittsburg, KS">
<c n="Altamont" c="ALTAMONT"/>
<c n="Baxter Springs" c="BAXTER SPRINGS"/>
<c n="Chanute" c="CHANUTE"/>
<c n="Chetopa" c="CHETOPA"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Fredonia" c="FREDONIA"/>
<c n="Frontenac" c="FRONTENAC"/>
<c n="Fort Scott" c="FORT SCOTT"/>
<c n="Galena" c="GALENA"/>
<c n="Gas" c="GAS"/>
<c n="Girard" c="GIRARD"/>
<c n="Humboldt" c="HUMBOLDT"/>
<c n="Iola" c="IOLA"/>
<c n="Mound Valley" c="MOUND VALLEY"/>
<c n="Neodesha" c="NEODESHA"/>
<c n="Oswego" c="OSWEGO"/>
<c n="Parsons" c="PARSONS"/>
<c n="Piqua" c="PIQUA"/>
<c n="Pittsburg" c="PITTSBURG"/>
<c n="Riverton" c="RIVERTON"/>
<c n="Scammon" c="SCAMMON"/>
<c n="St. Paul" c="ST. PAUL"/>
<c n="Yates Center" c="YATES CENTER"/>
<c n="Anderson" c="ANDERSON"/>
<c n="Avilla" c="AVILLA"/>
<c n="Bronaugh" c="BRONAUGH"/>
<c n="Carl Junction" c="CARL JUNCTION"/>
<c n="Carterville" c="CARTERVILLE"/>
<c n="Carthage" c="CARTHAGE"/>
<c n="Diamond" c="DIAMOND"/>
<c n="Golden City" c="GOLDEN CITY"/>
<c n="Granby" c="GRANBY"/>
<c n="Jasper" c="JASPER"/>
<c n="Joplin" c="JOPLIN"/>
<c n="Lamar" c="LAMAR"/>
<c n="Liberal" c="LIBERAL"/>
<c n="Neosho" c="NEOSHO"/>
<c n="Nevada" c="NEVADA"/>
<c n="Noel" c="NOEL"/>
<c n="Pineville" c="PINEVILLE"/>
<c n="Sarcoxie" c="SARCOXIE"/>
<c n="Schell City" c="SCHELL CITY"/>
<c n="Seneca" c="SENECA"/>
<c n="Sheldon" c="SHELDON"/>
<c n="Southwest City" c="SOUTHWEST CITY"/>
<c n="Tiff City" c="TIFF CITY"/>
<c n="Walker" c="WALKER"/>
<c n="Webb City" c="WEBB CITY"/>
<c n="Afton" c="AFTON"/>
<c n="Commerce" c="COMMERCE"/>
<c n="Fairland" c="FAIRLAND"/>
<c n="Miami" c="MIAMI"/>
<c n="Picher" c="PICHER"/>
<c n="Quapaw" c="QUAPAW"/>
<c n="Wyandotte" c="WYANDOTTE"/>
<c n="Erie" c="ERIE"/></dma>
    
    <dma code="605" title="Topeka, KS">
<c n="Allen" c="ALLEN"/>
<c n="Alma" c="ALMA"/>
<c n="Americus" c="AMERICUS"/>
<c n="Axtell" c="AXTELL"/>
<c n="Baileyville" c="BAILEYVILLE"/>
<c n="Barnes" c="BARNES"/>
<c n="Bern" c="BERN"/>
<c n="Blue Rapids" c="BLUE RAPIDS"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Carbondale" c="CARBONDALE"/>
<c n="Centralia" c="CENTRALIA"/>
<c n="Clay Center" c="CLAY CENTER"/>
<c n="Clifton" c="CLIFTON"/>
<c n="Concordia" c="CONCORDIA"/>
<c n="Corning" c="CORNING"/>
<c n="Council Grove" c="COUNCIL GROVE"/>
<c n="Emporia" c="EMPORIA"/>
<c n="Eskridge" c="ESKRIDGE"/>
<c n="Everest" c="EVEREST"/>
<c n="Frankfort" c="FRANKFORT"/>
<c n="Fort Riley North" c="FORT RILEY NORTH"/>
<c n="Hanover" c="HANOVER"/>
<c n="Hiawatha" c="HIAWATHA"/>
<c n="Holton" c="HOLTON"/>
<c n="Home" c="HOME"/>
<c n="Horton" c="HORTON"/>
<c n="Junction City" c="JUNCTION CITY"/>
<c n="Linn" c="LINN"/>
<c n="Lyndon" c="LYNDON"/>
<c n="Manhattan" c="MANHATTAN"/>
<c n="Maple Hill" c="MAPLE HILL"/>
<c n="Marysville" c="MARYSVILLE"/>
<c n="Mayetta" c="MAYETTA"/>
<c n="McLouth" c="MCLOUTH"/>
<c n="Meriden" c="MERIDEN"/>
<c n="Ogden" c="OGDEN"/>
<c n="Osage City" c="OSAGE CITY"/>
<c n="Oskaloosa" c="OSKALOOSA"/>
<c n="Overbrook" c="OVERBROOK"/>
<c n="Perry" c="PERRY"/>
<c n="Randolph" c="RANDOLPH"/>
<c n="Riley" c="RILEY"/>
<c n="Rossville" c="ROSSVILLE"/>
<c n="Sabetha" c="SABETHA"/>
<c n="Seneca" c="SENECA"/>
<c n="Silver Lake" c="SILVER LAKE"/>
<c n="Saint Marys" c="SAINT MARYS"/>
<c n="Summerfield" c="SUMMERFIELD"/>
<c n="Tecumseh" c="TECUMSEH"/>
<c n="Topeka" c="TOPEKA"/>
<c n="Valley Falls" c="VALLEY FALLS"/>
<c n="Wamego" c="WAMEGO"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Waterville" c="WATERVILLE"/>
<c n="Westmoreland" c="WESTMORELAND"/>
<c n="Winchester" c="WINCHESTER"/></dma>
    
    <dma code="678" title="Wichita-Hutchinson, KS">
<c n="Abilene" c="ABILENE"/>
<c n="Almena" c="ALMENA"/>
<c n="Andover" c="ANDOVER"/>
<c n="Anthony" c="ANTHONY"/>
<c n="Argonia" c="ARGONIA"/>
<c n="Arkansas City" c="ARKANSAS CITY"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Assaria" c="ASSARIA"/>
<c n="Atwood" c="ATWOOD"/>
<c n="Augusta" c="AUGUSTA"/>
<c n="Belle Plaine" c="BELLE PLAINE"/>
<c n="Beloit" c="BELOIT"/>
<c n="Bennington" c="BENNINGTON"/>
<c n="Bird City" c="BIRD CITY"/>
<c n="Brewster" c="BREWSTER"/>
<c n="Bucklin" c="BUCKLIN"/>
<c n="Buhler" c="BUHLER"/>
<c n="Burden" c="BURDEN"/>
<c n="Burrton" c="BURRTON"/>
<c n="Caldwell" c="CALDWELL"/>
<c n="Canton" c="CANTON"/>
<c n="Cawker City" c="CAWKER CITY"/>
<c n="Chase" c="CHASE"/>
<c n="Cheney" c="CHENEY"/>
<c n="Cimarron" c="CIMARRON"/>
<c n="Claflin" c="CLAFLIN"/>
<c n="Clearwater" c="CLEARWATER"/>
<c n="Colby" c="COLBY"/>
<c n="Coldwater" c="COLDWATER"/>
<c n="Colwich" c="COLWICH"/>
<c n="Cottonwood Falls" c="COTTONWOOD FALLS"/>
<c n="Cunningham" c="CUNNINGHAM"/>
<c n="Deerfield" c="DEERFIELD"/>
<c n="Derby" c="DERBY"/>
<c n="Dighton" c="DIGHTON"/>
<c n="Dodge City" c="DODGE CITY"/>
<c n="Downs" c="DOWNS"/>
<c n="El Dorado" c="EL DORADO"/>
<c n="Elbing" c="ELBING"/>
<c n="Elkhart" c="ELKHART"/>
<c n="Ellis" c="ELLIS"/>
<c n="Ellsworth" c="ELLSWORTH"/>
<c n="Enterprise" c="ENTERPRISE"/>
<c n="Eureka" c="EUREKA"/>
<c n="Galva" c="GALVA"/>
<c n="Garden City" c="GARDEN CITY"/>
<c n="Goddard" c="GODDARD"/>
<c n="Goodland" c="GOODLAND"/>
<c n="Gorham" c="GORHAM"/>
<c n="Gove City" c="GOVE CITY"/>
<c n="Great Bend" c="GREAT BEND"/>
<c n="Greensburg" c="GREENSBURG"/>
<c n="Grinnell" c="GRINNELL"/>
<c n="Gypsum" c="GYPSUM"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Harper" c="HARPER"/>
<c n="Haven" c="HAVEN"/>
<c n="Haviland" c="HAVILAND"/>
<c n="Hays" c="HAYS"/>
<c n="Haysville" c="HAYSVILLE"/>
<c n="Herndon" c="HERNDON"/>
<c n="Hesston" c="HESSTON"/>
<c n="Hill City" c="HILL CITY"/>
<c n="Hillsboro" c="HILLSBORO"/>
<c n="Holyrood" c="HOLYROOD"/>
<c n="Hope" c="HOPE"/>
<c n="Howard" c="HOWARD"/>
<c n="Hoxie" c="HOXIE"/>
<c n="Hugoton" c="HUGOTON"/>
<c n="Hutchinson" c="HUTCHINSON"/>
<c n="Inman" c="INMAN"/>
<c n="Jennings" c="JENNINGS"/>
<c n="Jetmore" c="JETMORE"/>
<c n="Johnson City" c="JOHNSON CITY"/>
<c n="Kanopolis" c="KANOPOLIS"/>
<c n="Kingman" c="KINGMAN"/>
<c n="Kinsley" c="KINSLEY"/>
<c n="Kiowa" c="KIOWA"/>
<c n="La Crosse" c="LA CROSSE"/>
<c n="Lakin" c="LAKIN"/>
<c n="Larned" c="LARNED"/>
<c n="Lenora" c="LENORA"/>
<c n="Leoti" c="LEOTI"/>
<c n="Liberal" c="LIBERAL"/>
<c n="Lincoln Center" c="LINCOLN CENTER"/>
<c n="Lindsborg" c="LINDSBORG"/>
<c n="Little River" c="LITTLE RIVER"/>
<c n="Lyons" c="LYONS"/>
<c n="Madison" c="MADISON"/>
<c n="Maize" c="MAIZE"/>
<c n="Mankato" c="MANKATO"/>
<c n="Marion" c="MARION"/>
<c n="McConnell AFB" c="MCCONNELL AFB"/>
<c n="McPherson" c="MCPHERSON"/>
<c n="Meade" c="MEADE"/>
<c n="Medicine Lodge" c="MEDICINE LODGE"/>
<c n="Minneapolis" c="MINNEAPOLIS"/>
<c n="Minneola" c="MINNEOLA"/>
<c n="Montezuma" c="MONTEZUMA"/>
<c n="Moscow" c="MOSCOW"/>
<c n="Moundridge" c="MOUNDRIDGE"/>
<c n="Mulvane" c="MULVANE"/>
<c n="Natoma" c="NATOMA"/>
<c n="Ness City" c="NESS CITY"/>
<c n="Newton" c="NEWTON"/>
<c n="North Newton" c="NORTH NEWTON"/>
<c n="Norton" c="NORTON"/>
<c n="Oakley" c="OAKLEY"/>
<c n="Oberlin" c="OBERLIN"/>
<c n="Osborne" c="OSBORNE"/>
<c n="Oxford" c="OXFORD"/>
<c n="Palco" c="PALCO"/>
<c n="Partridge" c="PARTRIDGE"/>
<c n="Peabody" c="PEABODY"/>
<c n="Plainville" c="PLAINVILLE"/>
<c n="Pratt" c="PRATT"/>
<c n="Pretty Prairie" c="PRETTY PRAIRIE"/>
<c n="Protection" c="PROTECTION"/>
<c n="Quinter" c="QUINTER"/>
<c n="Ransom" c="RANSOM"/>
<c n="Rexford" c="REXFORD"/>
<c n="Russell" c="RUSSELL"/>
<c n="Salina" c="SALINA"/>
<c n="Scott City" c="SCOTT CITY"/>
<c n="Sedgwick" c="SEDGWICK"/>
<c n="Selden" c="SELDEN"/>
<c n="Sharon Springs" c="SHARON SPRINGS"/>
<c n="Solomon" c="SOLOMON"/>
<c n="South Hutchinson" c="SOUTH HUTCHINSON"/>
<c n="Spearville" c="SPEARVILLE"/>
<c n="St. Francis" c="ST. FRANCIS"/>
<c n="St. John" c="ST. JOHN"/>
<c n="Stafford" c="STAFFORD"/>
<c n="Sterling" c="STERLING"/>
<c n="Stockton" c="STOCKTON"/>
<c n="Strong City" c="STRONG CITY"/>
<c n="Sublette" c="SUBLETTE"/>
<c n="Sylvan Grove" c="SYLVAN GROVE"/>
<c n="Syracuse" c="SYRACUSE"/>
<c n="Towanda" c="TOWANDA"/>
<c n="Tribune" c="TRIBUNE"/>
<c n="Turon" c="TURON"/>
<c n="Udall" c="UDALL"/>
<c n="Ulysses" c="ULYSSES"/>
<c n="Valley Center" c="VALLEY CENTER"/>
<c n="Victoria" c="VICTORIA"/>
<c n="WaKeeney" c="WAKEENEY"/>
<c n="Wellington" c="WELLINGTON"/>
<c n="Weskan" c="WESKAN"/>
<c n="Whitewater" c="WHITEWATER"/>
<c n="Wichita" c="WICHITA"/>
<c n="Wilson" c="WILSON"/>
<c n="Winfield" c="WINFIELD"/>
<c n="Winona" c="WINONA"/>
<c n="Andale" c="ANDALE"/>
<c n="Bel Aire" c="BEL AIRE"/>
<c n="Park City" c="PARK CITY"/>
<c n="Rose Hill" c="ROSE HILL"/></dma>
    </state>
<state id="MO" full_name="Missouri">
    <dma code="603" title="Joplin, MO-Pittsburg, KS">
<c n="Altamont" c="ALTAMONT"/>
<c n="Baxter Springs" c="BAXTER SPRINGS"/>
<c n="Chanute" c="CHANUTE"/>
<c n="Chetopa" c="CHETOPA"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Fredonia" c="FREDONIA"/>
<c n="Frontenac" c="FRONTENAC"/>
<c n="Fort Scott" c="FORT SCOTT"/>
<c n="Galena" c="GALENA"/>
<c n="Gas" c="GAS"/>
<c n="Girard" c="GIRARD"/>
<c n="Humboldt" c="HUMBOLDT"/>
<c n="Iola" c="IOLA"/>
<c n="Mound Valley" c="MOUND VALLEY"/>
<c n="Neodesha" c="NEODESHA"/>
<c n="Oswego" c="OSWEGO"/>
<c n="Parsons" c="PARSONS"/>
<c n="Piqua" c="PIQUA"/>
<c n="Pittsburg" c="PITTSBURG"/>
<c n="Riverton" c="RIVERTON"/>
<c n="Scammon" c="SCAMMON"/>
<c n="St. Paul" c="ST. PAUL"/>
<c n="Yates Center" c="YATES CENTER"/>
<c n="Anderson" c="ANDERSON"/>
<c n="Avilla" c="AVILLA"/>
<c n="Bronaugh" c="BRONAUGH"/>
<c n="Carl Junction" c="CARL JUNCTION"/>
<c n="Carterville" c="CARTERVILLE"/>
<c n="Carthage" c="CARTHAGE"/>
<c n="Diamond" c="DIAMOND"/>
<c n="Golden City" c="GOLDEN CITY"/>
<c n="Granby" c="GRANBY"/>
<c n="Jasper" c="JASPER"/>
<c n="Joplin" c="JOPLIN"/>
<c n="Lamar" c="LAMAR"/>
<c n="Liberal" c="LIBERAL"/>
<c n="Neosho" c="NEOSHO"/>
<c n="Nevada" c="NEVADA"/>
<c n="Noel" c="NOEL"/>
<c n="Pineville" c="PINEVILLE"/>
<c n="Sarcoxie" c="SARCOXIE"/>
<c n="Schell City" c="SCHELL CITY"/>
<c n="Seneca" c="SENECA"/>
<c n="Sheldon" c="SHELDON"/>
<c n="Southwest City" c="SOUTHWEST CITY"/>
<c n="Tiff City" c="TIFF CITY"/>
<c n="Walker" c="WALKER"/>
<c n="Webb City" c="WEBB CITY"/>
<c n="Afton" c="AFTON"/>
<c n="Commerce" c="COMMERCE"/>
<c n="Fairland" c="FAIRLAND"/>
<c n="Miami" c="MIAMI"/>
<c n="Picher" c="PICHER"/>
<c n="Quapaw" c="QUAPAW"/>
<c n="Wyandotte" c="WYANDOTTE"/>
<c n="Erie" c="ERIE"/></dma>

    <dma code="604" title="Columbia-Jefferson City, MO">
<c n="Ashland" c="ASHLAND"/>
<c n="Auxvasse" c="AUXVASSE"/>
<c n="Belle" c="BELLE"/>
<c n="Blackwater" c="BLACKWATER"/>
<c n="Boonville" c="BOONVILLE"/>
<c n="Brunswick" c="BRUNSWICK"/>
<c n="Bunceton" c="BUNCETON"/>
<c n="Cairo" c="CAIRO"/>
<c n="California" c="CALIFORNIA"/>
<c n="Centralia" c="CENTRALIA"/>
<c n="Chamois" c="CHAMOIS"/>
<c n="Clarksburg" c="CLARKSBURG"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Eldon" c="ELDON"/>
<c n="Eugene" c="EUGENE"/>
<c n="Farber" c="FARBER"/>
<c n="Fayette" c="FAYETTE"/>
<c n="Fulton" c="FULTON"/>
<c n="Glasgow" c="GLASGOW"/>
<c n="Hallsville" c="HALLSVILLE"/>
<c n="Harrisburg" c="HARRISBURG"/>
<c n="Higbee" c="HIGBEE"/>
<c n="Holts Summit" c="HOLTS SUMMIT"/>
<c n="Huntsville" c="HUNTSVILLE"/>
<c n="Iberia" c="IBERIA"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Jefferson City" c="JEFFERSON CITY"/>
<c n="Keytesville" c="KEYTESVILLE"/>
<c n="Kingdom City" c="KINGDOM CITY"/>
<c n="Laddonia" c="LADDONIA"/>
<c n="Lake Ozark" c="LAKE OZARK"/>
<c n="Laurie" c="LAURIE"/>
<c n="Linn" c="LINN"/>
<c n="Martinsburg" c="MARTINSBURG"/>
<c n="Mendon" c="MENDON"/>
<c n="Mexico" c="MEXICO"/>
<c n="Moberly" c="MOBERLY"/>
<c n="Mokane" c="MOKANE"/>
<c n="Montgomery City" c="MONTGOMERY CITY"/>
<c n="New Bloomfield" c="NEW BLOOMFIELD"/>
<c n="New Franklin" c="NEW FRANKLIN"/>
<c n="Otterville" c="OTTERVILLE"/>
<c n="Pilot Grove" c="PILOT GROVE"/>
<c n="Prairie Home" c="PRAIRIE HOME"/>
<c n="Renick" c="RENICK"/>
<c n="Rhineland" c="RHINELAND"/>
<c n="Rocheport" c="ROCHEPORT"/>
<c n="Russellville" c="RUSSELLVILLE"/>
<c n="Salisbury" c="SALISBURY"/>
<c n="St. Elizabeth" c="ST. ELIZABETH"/>
<c n="Stover" c="STOVER"/>
<c n="Sturgeon" c="STURGEON"/>
<c n="Tipton" c="TIPTON"/>
<c n="Tuscumbia" c="TUSCUMBIA"/>
<c n="Vandalia" c="VANDALIA"/>
<c n="Versailles" c="VERSAILLES"/>
<c n="Vienna" c="VIENNA"/>
<c n="Wellsville" c="WELLSVILLE"/>
<c n="Westphalia" c="WESTPHALIA"/></dma>
    
    <dma code="609" title="St. Louis, MO">
<c n="Addieville" c="ADDIEVILLE"/>
<c n="Alhambra" c="ALHAMBRA"/>
<c n="Alton" c="ALTON"/>
<c n="Ashley" c="ASHLEY"/>
<c n="Bartelso" c="BARTELSO"/>
<c n="Belleville" c="BELLEVILLE"/>
<c n="Bethalto" c="BETHALTO"/>
<c n="Breese" c="BREESE"/>
<c n="Brighton" c="BRIGHTON"/>
<c n="Brownstown" c="BROWNSTOWN"/>
<c n="Bunker Hill" c="BUNKER HILL"/>
<c n="Carlinville" c="CARLINVILLE"/>
<c n="Carlyle" c="CARLYLE"/>
<c n="Carrollton" c="CARROLLTON"/>
<c n="Centralia" c="CENTRALIA"/>
<c n="Chester" c="CHESTER"/>
<c n="Clay City" c="CLAY CITY"/>
<c n="Collinsville" c="COLLINSVILLE"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Coulterville" c="COULTERVILLE"/>
<c n="Dupo" c="DUPO"/>
<c n="East Alton" c="EAST ALTON"/>
<c n="East Saint Louis" c="EAST SAINT LOUIS"/>
<c n="Edwardsville" c="EDWARDSVILLE"/>
<c n="Ellis Grove" c="ELLIS GROVE"/>
<c n="Elsah" c="ELSAH"/>
<c n="Evansville" c="EVANSVILLE"/>
<c n="Fairview Heights" c="FAIRVIEW HEIGHTS"/>
<c n="Farina" c="FARINA"/>
<c n="Fillmore" c="FILLMORE"/>
<c n="Flora" c="FLORA"/>
<c n="Freeburg" c="FREEBURG"/>
<c n="Germantown" c="GERMANTOWN"/>
<c n="Gillespie" c="GILLESPIE"/>
<c n="Girard" c="GIRARD"/>
<c n="Glen Carbon" c="GLEN CARBON"/>
<c n="Godfrey" c="GODFREY"/>
<c n="Grafton" c="GRAFTON"/>
<c n="Granite City" c="GRANITE CITY"/>
<c n="Greenfield" c="GREENFIELD"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Hamel" c="HAMEL"/>
<c n="Hardin" c="HARDIN"/>
<c n="Highland" c="HIGHLAND"/>
<c n="Hillsboro" c="HILLSBORO"/>
<c n="Hoffman" c="HOFFMAN"/>
<c n="Hoyleton" c="HOYLETON"/>
<c n="Irving" c="IRVING"/>
<c n="Irvington" c="IRVINGTON"/>
<c n="Iuka" c="IUKA"/>
<c n="Jerseyville" c="JERSEYVILLE"/>
<c n="Kane" c="KANE"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Litchfield" c="LITCHFIELD"/>
<c n="Livingston" c="LIVINGSTON"/>
<c n="Louisville" c="LOUISVILLE"/>
<c n="Madison" c="MADISON"/>
<c n="Marine" c="MARINE"/>
<c n="Maryville" c="MARYVILLE"/>
<c n="Mascoutah" c="MASCOUTAH"/>
<c n="Menard" c="MENARD"/>
<c n="Nashville" c="NASHVILLE"/>
<c n="New Baden" c="NEW BADEN"/>
<c n="Nokomis" c="NOKOMIS"/>
<c n="O Fallon" c="O FALLON"/>
<c n="Odin" c="ODIN"/>
<c n="Okawville" c="OKAWVILLE"/>
<c n="Palmyra" c="PALMYRA"/>
<c n="Patoka" c="PATOKA"/>
<c n="Pocahontas" c="POCAHONTAS"/>
<c n="Prairie du Rocher" c="PRAIRIE DU ROCHER"/>
<c n="Raymond" c="RAYMOND"/>
<c n="Red Bud" c="RED BUD"/>
<c n="Rockwood" c="ROCKWOOD"/>
<c n="Roodhouse" c="ROODHOUSE"/>
<c n="Salem" c="SALEM"/>
<c n="Sandoval" c="SANDOVAL"/>
<c n="Scott AFB" c="SCOTT AFB"/>
<c n="Shipman" c="SHIPMAN"/>
<c n="Smithton" c="SMITHTON"/>
<c n="Sparta" c="SPARTA"/>
<c n="St. Jacob" c="ST. JACOB"/>
<c n="St. Libory" c="ST. LIBORY"/>
<c n="Staunton" c="STAUNTON"/>
<c n="Steeleville" c="STEELEVILLE"/>
<c n="Tilden" c="TILDEN"/>
<c n="Trenton" c="TRENTON"/>
<c n="Troy" c="TROY"/>
<c n="Valmeyer" c="VALMEYER"/>
<c n="Vandalia" c="VANDALIA"/>
<c n="Venice" c="VENICE"/>
<c n="Waterloo" c="WATERLOO"/>
<c n="Annapolis" c="ANNAPOLIS"/>
<c n="Arcadia" c="ARCADIA"/>
<c n="Arnold" c="ARNOLD"/>
<c n="Ballwin" c="BALLWIN"/>
<c n="Barnhart" c="BARNHART"/>
<c n="Beaufort" c="BEAUFORT"/>
<c n="Belleview" c="BELLEVIEW"/>
<c n="Berger" c="BERGER"/>
<c n="Bismarck" c="BISMARCK"/>
<c n="Bland" c="BLAND"/>
<c n="Bonne Terre" c="BONNE TERRE"/>
<c n="Bourbon" c="BOURBON"/>
<c n="Bowling Green" c="BOWLING GREEN"/>
<c n="Bridgeton" c="BRIDGETON"/>
<c n="Cadet" c="CADET"/>
<c n="Caledonia" c="CALEDONIA"/>
<c n="Cedar Hill" c="CEDAR HILL"/>
<c n="Centerville" c="CENTERVILLE"/>
<c n="Chesterfield" c="CHESTERFIELD"/>
<c n="Clarksville" c="CLARKSVILLE"/>
<c n="Crystal City" c="CRYSTAL CITY"/>
<c n="Cuba" c="CUBA"/>
<c n="De Soto" c="DE SOTO"/>
<c n="Defiance" c="DEFIANCE"/>
<c n="Dittmer" c="DITTMER"/>
<c n="Earth City" c="EARTH CITY"/>
<c n="Edgar Springs" c="EDGAR SPRINGS"/>
<c n="Ellington" c="ELLINGTON"/>
<c n="Elsberry" c="ELSBERRY"/>
<c n="Eolia" c="EOLIA"/>
<c n="Eureka" c="EUREKA"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Fenton" c="FENTON"/>
<c n="Festus" c="FESTUS"/>
<c n="Florissant" c="FLORISSANT"/>
<c n="Foristell" c="FORISTELL"/>
<c n="Gasconade" c="GASCONADE"/>
<c n="Gerald" c="GERALD"/>
<c n="Glencoe" c="GLENCOE"/>
<c n="Grover" c="GROVER"/>
<c n="Hawk Point" c="HAWK POINT"/>
<c n="Hazelwood" c="HAZELWOOD"/>
<c n="Herculaneum" c="HERCULANEUM"/>
<c n="Hermann" c="HERMANN"/>
<c n="High Ridge" c="HIGH RIDGE"/>
<c n="Hillsboro" c="HILLSBORO"/>
<c n="House Springs" c="HOUSE SPRINGS"/>
<c n="Imperial" c="IMPERIAL"/>
<c n="Irondale" c="IRONDALE"/>
<c n="Ironton" c="IRONTON"/>
<c n="Lake Saint Louis" c="LAKE SAINT LOUIS"/>
<c n="Leadwood" c="LEADWOOD"/>
<c n="Leasburg" c="LEASBURG"/>
<c n="Lesterville" c="LESTERVILLE"/>
<c n="Lonedell" c="LONEDELL"/>
<c n="Louisiana" c="LOUISIANA"/>
<c n="Marthasville" c="MARTHASVILLE"/>
<c n="Maryland Heights" c="MARYLAND HEIGHTS"/>
<c n="New Haven" c="NEW HAVEN"/>
<c n="Newburg" c="NEWBURG"/>
<c n="O Fallon" c="O FALLON"/>
<c n="Owensville" c="OWENSVILLE"/>
<c n="Pacific" c="PACIFIC"/>
<c n="Park Hills" c="PARK HILLS"/>
<c n="Potosi" c="POTOSI"/>
<c n="Richwoods" c="RICHWOODS"/>
<c n="Rolla" c="ROLLA"/>
<c n="Ste. Genevieve" c="STE. GENEVIEVE"/>
<c n="Silex" c="SILEX"/>
<c n="Saint Albans" c="SAINT ALBANS"/>
<c n="St. Ann" c="ST. ANN"/>
<c n="St. Charles" c="ST. CHARLES"/>
<c n="Saint Clair" c="SAINT CLAIR"/>
<c n="St. James" c="ST. JAMES"/>
<c n="St. Louis" c="ST. LOUIS"/>
<c n="St. Peters" c="ST. PETERS"/>
<c n="Stanton" c="STANTON"/>
<c n="Steelville" c="STEELVILLE"/>
<c n="Sullivan" c="SULLIVAN"/>
<c n="Troy" c="TROY"/>
<c n="Union" c="UNION"/>
<c n="Valley Park" c="VALLEY PARK"/>
<c n="Viburnum" c="VIBURNUM"/>
<c n="Warrenton" c="WARRENTON"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Wentzville" c="WENTZVILLE"/>
<c n="Winfield" c="WINFIELD"/>
<c n="Wright City" c="WRIGHT CITY"/>
<c n="Affton" c="AFFTON"/>
<c n="Bellefontaine Neighbors" c="BELLEFONTAINE NEIGHBORS"/>
<c n="Berkeley" c="BERKELEY"/>
<c n="Brentwood" c="BRENTWOOD"/>
<c n="Cahokia" c="CAHOKIA"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Concord" c="CONCORD"/>
<c n="Crestwood" c="CRESTWOOD"/>
<c n="Creve Coeur" c="CREVE COEUR"/>
<c n="Des Peres" c="DES PERES"/>
<c n="Ferguson" c="FERGUSON"/>
<c n="Jennings" c="JENNINGS"/>
<c n="Kirkwood" c="KIRKWOOD"/>
<c n="Ladue" c="LADUE"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Maplewood" c="MAPLEWOOD"/>
<c n="Mehlville" c="MEHLVILLE"/>
<c n="Millstadt" c="MILLSTADT"/>
<c n="Murphy" c="MURPHY"/>
<c n="Normandy" c="NORMANDY"/>
<c n="Oakville" c="OAKVILLE"/>
<c n="Olivette" c="OLIVETTE"/>
<c n="Overland" c="OVERLAND"/>
<c n="Richmond Heights" c="RICHMOND HEIGHTS"/>
<c n="Shiloh" c="SHILOH"/>
<c n="Spanish Lake" c="SPANISH LAKE"/>
<c n="St. John" c="ST. JOHN"/>
<c n="Sunset Hills" c="SUNSET HILLS"/>
<c n="Swansea" c="SWANSEA"/>
<c n="Town and Country" c="TOWN AND COUNTRY"/>
<c n="University City" c="UNIVERSITY CITY"/>
<c n="Webster Groves" c="WEBSTER GROVES"/>
<c n="Weldon Spring" c="WELDON SPRING"/>
<c n="Wildwood" c="WILDWOOD"/>
<c n="Wood River" c="WOOD RIVER"/></dma>
    
    <dma code="616" title="Kansas City, MO">
<c n="Atchison" c="ATCHISON"/>
<c n="Baldwin City" c="BALDWIN CITY"/>
<c n="Basehor" c="BASEHOR"/>
<c n="Bonner Springs" c="BONNER SPRINGS"/>
<c n="Bucyrus" c="BUCYRUS"/>
<c n="Clearview City" c="CLEARVIEW CITY"/>
<c n="Colony" c="COLONY"/>
<c n="Cummings" c="CUMMINGS"/>
<c n="De Soto" c="DE SOTO"/>
<c n="Edwardsville" c="EDWARDSVILLE"/>
<c n="Effingham" c="EFFINGHAM"/>
<c n="Eudora" c="EUDORA"/>
<c n="Fort Leavenworth" c="FORT LEAVENWORTH"/>
<c n="Gardner" c="GARDNER"/>
<c n="Garnett" c="GARNETT"/>
<c n="Kansas City" c="KANSAS CITY"/>
<c n="LaCygne" c="LACYGNE"/>
<c n="Lansing" c="LANSING"/>
<c n="Lawrence" c="LAWRENCE"/>
<c n="Leavenworth" c="LEAVENWORTH"/>
<c n="Leawood" c="LEAWOOD"/>
<c n="Lecompton" c="LECOMPTON"/>
<c n="Lenexa" c="LENEXA"/>
<c n="Linwood" c="LINWOOD"/>
<c n="Louisburg" c="LOUISBURG"/>
<c n="Mission" c="MISSION"/>
<c n="Mound City" c="MOUND CITY"/>
<c n="New Century" c="NEW CENTURY"/>
<c n="Olathe" c="OLATHE"/>
<c n="Osawatomie" c="OSAWATOMIE"/>
<c n="Ottawa" c="OTTAWA"/>
<c n="Overland Park" c="OVERLAND PARK"/>
<c n="Paola" c="PAOLA"/>
<c n="Pomona" c="POMONA"/>
<c n="Rantoul" c="RANTOUL"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Shawnee" c="SHAWNEE"/>
<c n="Spring Hill" c="SPRING HILL"/>
<c n="Stilwell" c="STILWELL"/>
<c n="Tonganoxie" c="TONGANOXIE"/>
<c n="Wellsville" c="WELLSVILLE"/>
<c n="Adrian" c="ADRIAN"/>
<c n="Albany" c="ALBANY"/>
<c n="Alma" c="ALMA"/>
<c n="Amoret" c="AMORET"/>
<c n="Archie" c="ARCHIE"/>
<c n="Barnard" c="BARNARD"/>
<c n="Bates City" c="BATES CITY"/>
<c n="Belton" c="BELTON"/>
<c n="Bethany" c="BETHANY"/>
<c n="Blue Springs" c="BLUE SPRINGS"/>
<c n="Bosworth" c="BOSWORTH"/>
<c n="Braymer" c="BRAYMER"/>
<c n="Breckenridge" c="BRECKENRIDGE"/>
<c n="Brookfield" c="BROOKFIELD"/>
<c n="Bucklin" c="BUCKLIN"/>
<c n="Burlington Junction" c="BURLINGTON JUNCTION"/>
<c n="Butler" c="BUTLER"/>
<c n="Cainsville" c="CAINSVILLE"/>
<c n="Calhoun" c="CALHOUN"/>
<c n="Carrollton" c="CARROLLTON"/>
<c n="Centerview" c="CENTERVIEW"/>
<c n="Chilhowee" c="CHILHOWEE"/>
<c n="Chillicothe" c="CHILLICOTHE"/>
<c n="Chula" c="CHULA"/>
<c n="Cleveland" c="CLEVELAND"/>
<c n="Clinton" c="CLINTON"/>
<c n="Conception" c="CONCEPTION"/>
<c n="Conception Junction" c="CONCEPTION JUNCTION"/>
<c n="Concordia" c="CONCORDIA"/>
<c n="Corder" c="CORDER"/>
<c n="Craig" c="CRAIG"/>
<c n="Creighton" c="CREIGHTON"/>
<c n="Deepwater" c="DEEPWATER"/>
<c n="Drexel" c="DREXEL"/>
<c n="Eagleville" c="EAGLEVILLE"/>
<c n="East Lynne" c="EAST LYNNE"/>
<c n="Excelsior Springs" c="EXCELSIOR SPRINGS"/>
<c n="Freeman" c="FREEMAN"/>
<c n="Gallatin" c="GALLATIN"/>
<c n="Galt" c="GALT"/>
<c n="Garden City" c="GARDEN CITY"/>
<c n="Gentry" c="GENTRY"/>
<c n="Gilman City" c="GILMAN CITY"/>
<c n="Graham" c="GRAHAM"/>
<c n="Grain Valley" c="GRAIN VALLEY"/>
<c n="Grandview" c="GRANDVIEW"/>
<c n="Grant City" c="GRANT CITY"/>
<c n="Green Ridge" c="GREEN RIDGE"/>
<c n="Greenwood" c="GREENWOOD"/>
<c n="Hale" c="HALE"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Hardin" c="HARDIN"/>
<c n="Harrisonville" c="HARRISONVILLE"/>
<c n="Higginsville" c="HIGGINSVILLE"/>
<c n="Holden" c="HOLDEN"/>
<c n="Holt" c="HOLT"/>
<c n="Hopkins" c="HOPKINS"/>
<c n="Hughesville" c="HUGHESVILLE"/>
<c n="Hume" c="HUME"/>
<c n="Independence" c="INDEPENDENCE"/>
<c n="Jameson" c="JAMESON"/>
<c n="Jamesport" c="JAMESPORT"/>
<c n="Kansas City" c="KANSAS CITY"/>
<c n="Kearney" c="KEARNEY"/>
<c n="King City" c="KING CITY"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Kingsville" c="KINGSVILLE"/>
<c n="Knob Noster" c="KNOB NOSTER"/>
<c n="La Monte" c="LA MONTE"/>
<c n="Laredo" c="LAREDO"/>
<c n="Lathrop" c="LATHROP"/>
<c n="Lawson" c="LAWSON"/>
<c n="Lee s Summit" c="LEE S SUMMIT"/>
<c n="Leeton" c="LEETON"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Liberty" c="LIBERTY"/>
<c n="Linneus" c="LINNEUS"/>
<c n="Lone Jack" c="LONE JACK"/>
<c n="Ludlow" c="LUDLOW"/>
<c n="Maitland" c="MAITLAND"/>
<c n="Malta Bend" c="MALTA BEND"/>
<c n="Marceline" c="MARCELINE"/>
<c n="Marshall" c="MARSHALL"/>
<c n="Maryville" c="MARYVILLE"/>
<c n="Meadville" c="MEADVILLE"/>
<c n="Mercer" c="MERCER"/>
<c n="Miami" c="MIAMI"/>
<c n="Missouri City" c="MISSOURI CITY"/>
<c n="Montrose" c="MONTROSE"/>
<c n="Mound City" c="MOUND CITY"/>
<c n="Norborne" c="NORBORNE"/>
<c n="Oak Grove" c="OAK GROVE"/>
<c n="Odessa" c="ODESSA"/>
<c n="Oregon" c="OREGON"/>
<c n="Orrick" c="ORRICK"/>
<c n="Pattonsburg" c="PATTONSBURG"/>
<c n="Peculiar" c="PECULIAR"/>
<c n="Platte City" c="PLATTE CITY"/>
<c n="Plattsburg" c="PLATTSBURG"/>
<c n="Pleasant Hill" c="PLEASANT HILL"/>
<c n="Polo" c="POLO"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Purdin" c="PURDIN"/>
<c n="Ravenwood" c="RAVENWOOD"/>
<c n="Raymore" c="RAYMORE"/>
<c n="Rich Hill" c="RICH HILL"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Ridgeway" c="RIDGEWAY"/>
<c n="Riverside" c="RIVERSIDE"/>
<c n="Sedalia" c="SEDALIA"/>
<c n="Slater" c="SLATER"/>
<c n="Smithton" c="SMITHTON"/>
<c n="Smithville" c="SMITHVILLE"/>
<c n="Spickard" c="SPICKARD"/>
<c n="Stanberry" c="STANBERRY"/>
<c n="Stet" c="STET"/>
<c n="Strasburg" c="STRASBURG"/>
<c n="Sweet Springs" c="SWEET SPRINGS"/>
<c n="Tina" c="TINA"/>
<c n="Trenton" c="TRENTON"/>
<c n="Trimble" c="TRIMBLE"/>
<c n="Warrensburg" c="WARRENSBURG"/>
<c n="Wellington" c="WELLINGTON"/>
<c n="Weston" c="WESTON"/>
<c n="Whiteman Air Force Base" c="WHITEMAN AIR FORCE BASE"/>
<c n="Windsor" c="WINDSOR"/>
<c n="Winston" c="WINSTON"/>
<c n="Gladstone" c="GLADSTONE"/>
<c n="Merriam" c="MERRIAM"/>
<c n="North Kansas City" c="NORTH KANSAS CITY"/>
<c n="Parkville" c="PARKVILLE"/>
<c n="Pleasanton" c="PLEASANTON"/>
<c n="Prairie Village" c="PRAIRIE VILLAGE"/>
<c n="Raytown" c="RAYTOWN"/>
<c n="Roeland Park" c="ROELAND PARK"/></dma>
    
    <dma code="619" title="Springfield, MO">
<c n="Berryville" c="BERRYVILLE"/>
<c n="Compton" c="COMPTON"/>
<c n="Eureka Springs" c="EUREKA SPRINGS"/>
<c n="Flippin" c="FLIPPIN"/>
<c n="Gassville" c="GASSVILLE"/>
<c n="Harrison" c="HARRISON"/>
<c n="Jasper" c="JASPER"/>
<c n="Lead Hill" c="LEAD HILL"/>
<c n="Mammoth Spring" c="MAMMOTH SPRING"/>
<c n="Mountain Home" c="MOUNTAIN HOME"/>
<c n="Norfork" c="NORFORK"/>
<c n="Salem" c="SALEM"/>
<c n="Valley Springs" c="VALLEY SPRINGS"/>
<c n="Yellville" c="YELLVILLE"/>
<c n="Alton" c="ALTON"/>
<c n="Appleton City" c="APPLETON CITY"/>
<c n="Ash Grove" c="ASH GROVE"/>
<c n="Aurora" c="AURORA"/>
<c n="Ava" c="AVA"/>
<c n="Bakersfield" c="BAKERSFIELD"/>
<c n="Billings" c="BILLINGS"/>
<c n="Blue Eye" c="BLUE EYE"/>
<c n="Bolivar" c="BOLIVAR"/>
<c n="Bradleyville" c="BRADLEYVILLE"/>
<c n="Branson" c="BRANSON"/>
<c n="Brookline Township" c="BROOKLINE TOWNSHIP"/>
<c n="Buffalo" c="BUFFALO"/>
<c n="Cabool" c="CABOOL"/>
<c n="Camdenton" c="CAMDENTON"/>
<c n="Cassville" c="CASSVILLE"/>
<c n="Chadwick" c="CHADWICK"/>
<c n="Clever" c="CLEVER"/>
<c n="Climax Springs" c="CLIMAX SPRINGS"/>
<c n="Cole Camp" c="COLE CAMP"/>
<c n="Conway" c="CONWAY"/>
<c n="Crane" c="CRANE"/>
<c n="Crocker" c="CROCKER"/>
<c n="Dadeville" c="DADEVILLE"/>
<c n="Dixon" c="DIXON"/>
<c n="Dora" c="DORA"/>
<c n="Eagle Rock" c="EAGLE ROCK"/>
<c n="Edwards" c="EDWARDS"/>
<c n="El Dorado Springs" c="EL DORADO SPRINGS"/>
<c n="Eminence" c="EMINENCE"/>
<c n="Everton" c="EVERTON"/>
<c n="Exeter" c="EXETER"/>
<c n="Fair Grove" c="FAIR GROVE"/>
<c n="Fairplay" c="FAIRPLAY"/>
<c n="Falcon" c="FALCON"/>
<c n="Flemington" c="FLEMINGTON"/>
<c n="Fordland" c="FORDLAND"/>
<c n="Forsyth" c="FORSYTH"/>
<c n="Fort Leonard Wood" c="FORT LEONARD WOOD"/>
<c n="Gainesville" c="GAINESVILLE"/>
<c n="Galena" c="GALENA"/>
<c n="Greenfield" c="GREENFIELD"/>
<c n="Half Way" c="HALF WAY"/>
<c n="Hartville" c="HARTVILLE"/>
<c n="Hermitage" c="HERMITAGE"/>
<c n="Hollister" c="HOLLISTER"/>
<c n="Houston" c="HOUSTON"/>
<c n="Humansville" c="HUMANSVILLE"/>
<c n="Hurley" c="HURLEY"/>
<c n="Kimberling City" c="KIMBERLING CITY"/>
<c n="Kirbyville" c="KIRBYVILLE"/>
<c n="Koshkonong" c="KOSHKONONG"/>
<c n="Laquey" c="LAQUEY"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Licking" c="LICKING"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Linn Creek" c="LINN CREEK"/>
<c n="Lockwood" c="LOCKWOOD"/>
<c n="Macks Creek" c="MACKS CREEK"/>
<c n="Mansfield" c="MANSFIELD"/>
<c n="Marionville" c="MARIONVILLE"/>
<c n="Marshfield" c="MARSHFIELD"/>
<c n="Miller" c="MILLER"/>
<c n="Monett" c="MONETT"/>
<c n="Morrisville" c="MORRISVILLE"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="Mountain Grove" c="MOUNTAIN GROVE"/>
<c n="Mountain View" c="MOUNTAIN VIEW"/>
<c n="Myrtle" c="MYRTLE"/>
<c n="Niangua" c="NIANGUA"/>
<c n="Nixa" c="NIXA"/>
<c n="Norwood" c="NORWOOD"/>
<c n="Osceola" c="OSCEOLA"/>
<c n="Ozark" c="OZARK"/>
<c n="Peace Valley" c="PEACE VALLEY"/>
<c n="Pierce City" c="PIERCE CITY"/>
<c n="Pittsburg" c="PITTSBURG"/>
<c n="Plato" c="PLATO"/>
<c n="Pleasant Hope" c="PLEASANT HOPE"/>
<c n="Point Lookout" c="POINT LOOKOUT"/>
<c n="Purdy" c="PURDY"/>
<c n="Raymondville" c="RAYMONDVILLE"/>
<c n="Reeds Spring" c="REEDS SPRING"/>
<c n="Republic" c="REPUBLIC"/>
<c n="Richland" c="RICHLAND"/>
<c n="Rogersville" c="ROGERSVILLE"/>
<c n="Roscoe" c="ROSCOE"/>
<c n="Salem" c="SALEM"/>
<c n="Seymour" c="SEYMOUR"/>
<c n="Shell Knob" c="SHELL KNOB"/>
<c n="Sparta" c="SPARTA"/>
<c n="Spokane" c="SPOKANE"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="St. Robert" c="ST. ROBERT"/>
<c n="Stockton" c="STOCKTON"/>
<c n="Stoutland" c="STOUTLAND"/>
<c n="Strafford" c="STRAFFORD"/>
<c n="Success" c="SUCCESS"/>
<c n="Summersville" c="SUMMERSVILLE"/>
<c n="Swedeborg" c="SWEDEBORG"/>
<c n="Taneyville" c="TANEYVILLE"/>
<c n="Thayer" c="THAYER"/>
<c n="Theodosia" c="THEODOSIA"/>
<c n="Thornfield" c="THORNFIELD"/>
<c n="Urbana" c="URBANA"/>
<c n="Vanzant" c="VANZANT"/>
<c n="Verona" c="VERONA"/>
<c n="Walnut Grove" c="WALNUT GROVE"/>
<c n="Warsaw" c="WARSAW"/>
<c n="Washburn" c="WASHBURN"/>
<c n="Waynesville" c="WAYNESVILLE"/>
<c n="Weaubleau" c="WEAUBLEAU"/>
<c n="West Plains" c="WEST PLAINS"/>
<c n="Wheatland" c="WHEATLAND"/>
<c n="Wheaton" c="WHEATON"/>
<c n="Willard" c="WILLARD"/>
<c n="Willow Springs" c="WILLOW SPRINGS"/>
<c n="Winona" c="WINONA"/></dma>
    
    <dma code="631" title="Ottumwa, IA-Kirksville, MO">
<c n="Agency" c="AGENCY"/>
<c n="Batavia" c="BATAVIA"/>
<c n="Bloomfield" c="BLOOMFIELD"/>
<c n="Bonaparte" c="BONAPARTE"/>
<c n="Cantril" c="CANTRIL"/>
<c n="Eldon" c="ELDON"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Keosauqua" c="KEOSAUQUA"/>
<c n="Ottumwa" c="OTTUMWA"/>
<c n="Packwood" c="PACKWOOD"/>
<c n="Atlanta" c="ATLANTA"/>
<c n="Bevier" c="BEVIER"/>
<c n="Brashear" c="BRASHEAR"/>
<c n="Callao" c="CALLAO"/>
<c n="Green City" c="GREEN CITY"/>
<c n="Kirksville" c="KIRKSVILLE"/>
<c n="La Plata" c="LA PLATA"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Macon" c="MACON"/>
<c n="Milan" c="MILAN"/>
<c n="New Cambria" c="NEW CAMBRIA"/>
<c n="Newtown" c="NEWTOWN"/>
<c n="Novinger" c="NOVINGER"/>
<c n="Queen City" c="QUEEN CITY"/>
<c n="Unionville" c="UNIONVILLE"/></dma>
    
    <dma code="638" title="St. Joseph, MO">
<c n="Denton" c="DENTON"/>
<c n="Elwood" c="ELWOOD"/>
<c n="Highland" c="HIGHLAND"/>
<c n="Troy" c="TROY"/>
<c n="Wathena" c="WATHENA"/>
<c n="Agency" c="AGENCY"/>
<c n="Cosby" c="COSBY"/>
<c n="De Kalb" c="DE KALB"/>
<c n="Faucett" c="FAUCETT"/>
<c n="Maysville" c="MAYSVILLE"/>
<c n="Rosendale" c="ROSENDALE"/>
<c n="Savannah" c="SAVANNAH"/>
<c n="St. Joseph" c="ST. JOSEPH"/>
<c n="Stewartsville" c="STEWARTSVILLE"/>
<c n="Union Star" c="UNION STAR"/></dma>
    </state>
<state id="AL" full_name="Alabama">
    <dma code="606" title="Dothan, AL">
<c n="Abbeville" c="ABBEVILLE"/>
<c n="Ashford" c="ASHFORD"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Cottonwood" c="COTTONWOOD"/>
<c n="Cowarts" c="COWARTS"/>
<c n="Daleville" c="DALEVILLE"/>
<c n="Dothan" c="DOTHAN"/>
<c n="Elba" c="ELBA"/>
<c n="Enterprise" c="ENTERPRISE"/>
<c n="Fort Rucker" c="FORT RUCKER"/>
<c n="Geneva" c="GENEVA"/>
<c n="Headland" c="HEADLAND"/>
<c n="Jack" c="JACK"/>
<c n="New Brockton" c="NEW BROCKTON"/>
<c n="Newton" c="NEWTON"/>
<c n="Newville" c="NEWVILLE"/>
<c n="Ozark" c="OZARK"/>
<c n="Webb" c="WEBB"/>
<c n="Bonifay" c="BONIFAY"/>
<c n="Blakely" c="BLAKELY"/></dma>
    
    <dma code="630" title="Birmingham, AL">
<c n="Adamsville" c="ADAMSVILLE"/>
<c n="Addison" c="ADDISON"/>
<c n="Adger" c="ADGER"/>
<c n="Alabaster" c="ALABASTER"/>
<c n="Alexandria" c="ALEXANDRIA"/>
<c n="Allgood" c="ALLGOOD"/>
<c n="Alpine" c="ALPINE"/>
<c n="Anniston" c="ANNISTON"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Ashville" c="ASHVILLE"/>
<c n="Attalla" c="ATTALLA"/>
<c n="Berry" c="BERRY"/>
<c n="Bessemer" c="BESSEMER"/>
<c n="Birmingham" c="BIRMINGHAM"/>
<c n="Blountsville" c="BLOUNTSVILLE"/>
<c n="Bremen" c="BREMEN"/>
<c n="Brookwood" c="BROOKWOOD"/>
<c n="Buhl" c="BUHL"/>
<c n="Calera" c="CALERA"/>
<c n="Carrollton" c="CARROLLTON"/>
<c n="Centre" c="CENTRE"/>
<c n="Centreville" c="CENTREVILLE"/>
<c n="Chelsea" c="CHELSEA"/>
<c n="Childersburg" c="CHILDERSBURG"/>
<c n="Clanton" c="CLANTON"/>
<c n="Columbiana" c="COLUMBIANA"/>
<c n="Cottondale" c="COTTONDALE"/>
<c n="Cullman" c="CULLMAN"/>
<c n="Eastaboga" c="EASTABOGA"/>
<c n="Eutaw" c="EUTAW"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Fayette" c="FAYETTE"/>
<c n="Fultondale" c="FULTONDALE"/>
<c n="Gadsden" c="GADSDEN"/>
<c n="Gardendale" c="GARDENDALE"/>
<c n="Goodwater" c="GOODWATER"/>
<c n="Gordo" c="GORDO"/>
<c n="Graysville" c="GRAYSVILLE"/>
<c n="Greensboro" c="GREENSBORO"/>
<c n="Guin" c="GUIN"/>
<c n="Haleyville" c="HALEYVILLE"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Hanceville" c="HANCEVILLE"/>
<c n="Hayden" c="HAYDEN"/>
<c n="Helena" c="HELENA"/>
<c n="Jacksonville" c="JACKSONVILLE"/>
<c n="Jasper" c="JASPER"/>
<c n="Kellyton" c="KELLYTON"/>
<c n="Leeds" c="LEEDS"/>
<c n="Leesburg" c="LEESBURG"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Lineville" c="LINEVILLE"/>
<c n="Locust Fork" c="LOCUST FORK"/>
<c n="Montevallo" c="MONTEVALLO"/>
<c n="Morris" c="MORRIS"/>
<c n="Munford" c="MUNFORD"/>
<c n="Northport" c="NORTHPORT"/>
<c n="Oakman" c="OAKMAN"/>
<c n="Oneonta" c="ONEONTA"/>
<c n="Oxford" c="OXFORD"/>
<c n="Pelham" c="PELHAM"/>
<c n="Pell City" c="PELL CITY"/>
<c n="Piedmont" c="PIEDMONT"/>
<c n="Pinson" c="PINSON"/>
<c n="Pleasant Grove" c="PLEASANT GROVE"/>
<c n="Quinton" c="QUINTON"/>
<c n="Ragland" c="RAGLAND"/>
<c n="Rainbow City" c="RAINBOW CITY"/>
<c n="Reform" c="REFORM"/>
<c n="Saginaw" c="SAGINAW"/>
<c n="Shannon" c="SHANNON"/>
<c n="Shelby" c="SHELBY"/>
<c n="Springville" c="SPRINGVILLE"/>
<c n="Sumiton" c="SUMITON"/>
<c n="Sycamore" c="SYCAMORE"/>
<c n="Sylacauga" c="SYLACAUGA"/>
<c n="Talladega" c="TALLADEGA"/>
<c n="Trussville" c="TRUSSVILLE"/>
<c n="Tuscaloosa" c="TUSCALOOSA"/>
<c n="Vinemont" c="VINEMONT"/>
<c n="Walnut Grove" c="WALNUT GROVE"/>
<c n="Warrior" c="WARRIOR"/>
<c n="Winfield" c="WINFIELD"/>
<c n="Forestdale" c="FORESTDALE"/>
<c n="Homewood" c="HOMEWOOD"/>
<c n="Hoover" c="HOOVER"/>
<c n="Hueytown" c="HUEYTOWN"/>
<c n="Irondale" c="IRONDALE"/>
<c n="Moody" c="MOODY"/>
<c n="Mountain Brook" c="MOUNTAIN BROOK"/>
<c n="Tarrant" c="TARRANT"/>
<c n="Vestavia Hills" c="VESTAVIA HILLS"/></dma>
    
    <dma code="691" title="Huntsville-Decatur (Florence), AL">
<c n="Albertville" c="ALBERTVILLE"/>
<c n="Arab" c="ARAB"/>
<c n="Athens" c="ATHENS"/>
<c n="Brownsboro" c="BROWNSBORO"/>
<c n="Cherokee" c="CHEROKEE"/>
<c n="Crossville" c="CROSSVILLE"/>
<c n="Decatur" c="DECATUR"/>
<c n="Florence" c="FLORENCE"/>
<c n="Fort Payne" c="FORT PAYNE"/>
<c n="Guntersville" c="GUNTERSVILLE"/>
<c n="Hartselle" c="HARTSELLE"/>
<c n="Hazel Green" c="HAZEL GREEN"/>
<c n="Hodges" c="HODGES"/>
<c n="Huntsville" c="HUNTSVILLE"/>
<c n="Ider" c="IDER"/>
<c n="Killen" c="KILLEN"/>
<c n="Laceys Spring" c="LACEYS SPRING"/>
<c n="Madison" c="MADISON"/>
<c n="Moulton" c="MOULTON"/>
<c n="Muscle Shoals" c="MUSCLE SHOALS"/>
<c n="New Market" c="NEW MARKET"/>
<c n="Normal" c="NORMAL"/>
<c n="Paint Rock" c="PAINT ROCK"/>
<c n="Rainsville" c="RAINSVILLE"/>
<c n="Red Bay" c="RED BAY"/>
<c n="Russellville" c="RUSSELLVILLE"/>
<c n="Scottsboro" c="SCOTTSBORO"/>
<c n="Sheffield" c="SHEFFIELD"/>
<c n="Toney" c="TONEY"/>
<c n="Tuscumbia" c="TUSCUMBIA"/>
<c n="Fayetteville" c="FAYETTEVILLE"/>
<c n="Ardmore" c="ARDMORE"/>
<c n="Grant" c="GRANT"/>
<c n="Harvest" c="HARVEST"/>
<c n="Henagar" c="HENAGAR"/>
<c n="New Hope" c="NEW HOPE"/>
<c n="Redstone Arsenal" c="REDSTONE ARSENAL"/></dma>
    
    <dma code="698" title="Montgomery (Selma), AL">
<c n="Alexander City" c="ALEXANDER CITY"/>
<c n="Andalusia" c="ANDALUSIA"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Autaugaville" c="AUTAUGAVILLE"/>
<c n="Camden" c="CAMDEN"/>
<c n="Chapman" c="CHAPMAN"/>
<c n="Deatsville" c="DEATSVILLE"/>
<c n="Demopolis" c="DEMOPOLIS"/>
<c n="Dixons Mills" c="DIXONS MILLS"/>
<c n="Eclectic" c="ECLECTIC"/>
<c n="Fort Deposit" c="FORT DEPOSIT"/>
<c n="Glenwood" c="GLENWOOD"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Hayneville" c="HAYNEVILLE"/>
<c n="Hope Hull" c="HOPE HULL"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Linden" c="LINDEN"/>
<c n="Luverne" c="LUVERNE"/>
<c n="Marion" c="MARION"/>
<c n="Mathews" c="MATHEWS"/>
<c n="Montgomery" c="MONTGOMERY"/>
<c n="Opp" c="OPP"/>
<c n="Pike Road" c="PIKE ROAD"/>
<c n="Pine Hill" c="PINE HILL"/>
<c n="Prattville" c="PRATTVILLE"/>
<c n="Ramer" c="RAMER"/>
<c n="Rutledge" c="RUTLEDGE"/>
<c n="Selma" c="SELMA"/>
<c n="Tallassee" c="TALLASSEE"/>
<c n="Troy" c="TROY"/>
<c n="Tuskegee" c="TUSKEGEE"/>
<c n="Tuskegee University" c="TUSKEGEE UNIVERSITY"/>
<c n="Union Springs" c="UNION SPRINGS"/>
<c n="Wetumpka" c="WETUMPKA"/>
<c n="Blue Ridge" c="BLUE RIDGE"/>
<c n="Dadeville" c="DADEVILLE"/>
<c n="Florala" c="FLORALA"/>
<c n="Millbrook" c="MILLBROOK"/></dma>
    </state>
<state id="IA" full_name="Iowa">
    <dma code="682" title="Davenport,IA-Rock Island-Moline,IL">
<c n="Andrew" c="ANDREW"/>
<c n="Baldwin" c="BALDWIN"/>
<c n="Bellevue" c="BELLEVUE"/>
<c n="Bettendorf" c="BETTENDORF"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Camanche" c="CAMANCHE"/>
<c n="Clinton" c="CLINTON"/>
<c n="Columbus Junction" c="COLUMBUS JUNCTION"/>
<c n="Danville" c="DANVILLE"/>
<c n="Davenport" c="DAVENPORT"/>
<c n="DeWitt" c="DEWITT"/>
<c n="Delmar" c="DELMAR"/>
<c n="Eldridge" c="ELDRIDGE"/>
<c n="Goose Lake" c="GOOSE LAKE"/>
<c n="Grand Mound" c="GRAND MOUND"/>
<c n="Letts" c="LETTS"/>
<c n="Lost Nation" c="LOST NATION"/>
<c n="Maquoketa" c="MAQUOKETA"/>
<c n="Mediapolis" c="MEDIAPOLIS"/>
<c n="Miles" c="MILES"/>
<c n="Morning Sun" c="MORNING SUN"/>
<c n="Moscow" c="MOSCOW"/>
<c n="Mount Pleasant" c="MOUNT PLEASANT"/>
<c n="Muscatine" c="MUSCATINE"/>
<c n="New London" c="NEW LONDON"/>
<c n="Oakville" c="OAKVILLE"/>
<c n="Pleasant Valley" c="PLEASANT VALLEY"/>
<c n="Preston" c="PRESTON"/>
<c n="Sabula" c="SABULA"/>
<c n="Sperry" c="SPERRY"/>
<c n="Walcott" c="WALCOTT"/>
<c n="Wapello" c="WAPELLO"/>
<c n="Wayland" c="WAYLAND"/>
<c n="West Burlington" c="WEST BURLINGTON"/>
<c n="West Liberty" c="WEST LIBERTY"/>
<c n="Wheatland" c="WHEATLAND"/>
<c n="Wilton" c="WILTON"/>
<c n="Aledo" c="ALEDO"/>
<c n="Alexis" c="ALEXIS"/>
<c n="Annawan" c="ANNAWAN"/>
<c n="Apple River" c="APPLE RIVER"/>
<c n="Biggsville" c="BIGGSVILLE"/>
<c n="Buda" c="BUDA"/>
<c n="Bureau" c="BUREAU"/>
<c n="Cambridge" c="CAMBRIDGE"/>
<c n="Coal Valley" c="COAL VALLEY"/>
<c n="Cordova" c="CORDOVA"/>
<c n="DePue" c="DEPUE"/>
<c n="East Dubuque" c="EAST DUBUQUE"/>
<c n="East Moline" c="EAST MOLINE"/>
<c n="Elizabeth" c="ELIZABETH"/>
<c n="Erie" c="ERIE"/>
<c n="Fenton" c="FENTON"/>
<c n="Fulton" c="FULTON"/>
<c n="Galena" c="GALENA"/>
<c n="Galesburg" c="GALESBURG"/>
<c n="Geneseo" c="GENESEO"/>
<c n="Hampton" c="HAMPTON"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Joy" c="JOY"/>
<c n="Kewanee" c="KEWANEE"/>
<c n="Lyndon" c="LYNDON"/>
<c n="Milan" c="MILAN"/>
<c n="Milledgeville" c="MILLEDGEVILLE"/>
<c n="Mineral" c="MINERAL"/>
<c n="Moline" c="MOLINE"/>
<c n="Monmouth" c="MONMOUTH"/>
<c n="Morrison" c="MORRISON"/>
<c n="Mount Carroll" c="MOUNT CARROLL"/>
<c n="Neponset" c="NEPONSET"/>
<c n="Oneida" c="ONEIDA"/>
<c n="Oquawka" c="OQUAWKA"/>
<c n="Port Byron" c="PORT BYRON"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Prophetstown" c="PROPHETSTOWN"/>
<c n="Rock Falls" c="ROCK FALLS"/>
<c n="Rock Island" c="ROCK ISLAND"/>
<c n="Roseville" c="ROSEVILLE"/>
<c n="Savanna" c="SAVANNA"/>
<c n="Scales Mound" c="SCALES MOUND"/>
<c n="Sheffield" c="SHEFFIELD"/>
<c n="Sherrard" c="SHERRARD"/>
<c n="Spring Valley" c="SPRING VALLEY"/>
<c n="Sterling" c="STERLING"/>
<c n="Stockton" c="STOCKTON"/>
<c n="Stronghurst" c="STRONGHURST"/>
<c n="Thomson" c="THOMSON"/>
<c n="Victoria" c="VICTORIA"/>
<c n="Warren" c="WARREN"/>
<c n="Williamsfield" c="WILLIAMSFIELD"/>
<c n="Woodhull" c="WOODHULL"/>
<c n="Yates City" c="YATES CITY"/>
<c n="Abingdon" c="ABINGDON"/>
<c n="Le Claire" c="LE CLAIRE"/></dma>

    <dma code="611" title="Rochester-Austin, MN-Mason City, IA">
<c n="Britt" c="BRITT"/>
<c n="Buffalo Center" c="BUFFALO CENTER"/>
<c n="Charles City" c="CHARLES CITY"/>
<c n="Clear Lake" c="CLEAR LAKE"/>
<c n="Cresco" c="CRESCO"/>
<c n="Crystal Lake" c="CRYSTAL LAKE"/>
<c n="Forest City" c="FOREST CITY"/>
<c n="Garner" c="GARNER"/>
<c n="Kanawha" c="KANAWHA"/>
<c n="Kensett" c="KENSETT"/>
<c n="Lake Mills" c="LAKE MILLS"/>
<c n="Lime Springs" c="LIME SPRINGS"/>
<c n="Manly" c="MANLY"/>
<c n="Mason City" c="MASON CITY"/>
<c n="Nora Springs" c="NORA SPRINGS"/>
<c n="Northwood" c="NORTHWOOD"/>
<c n="Osage" c="OSAGE"/>
<c n="Riceville" c="RICEVILLE"/>
<c n="Rockford" c="ROCKFORD"/>
<c n="Rockwell" c="ROCKWELL"/>
<c n="Rudd" c="RUDD"/>
<c n="St. Ansgar" c="ST. ANSGAR"/>
<c n="Thompson" c="THOMPSON"/>
<c n="Thornton" c="THORNTON"/>
<c n="Ventura" c="VENTURA"/>
<c n="Woden" c="WODEN"/>
<c n="Adams" c="ADAMS"/>
<c n="Albert Lea" c="ALBERT LEA"/>
<c n="Alden" c="ALDEN"/>
<c n="Austin" c="AUSTIN"/>
<c n="Brownsdale" c="BROWNSDALE"/>
<c n="Byron" c="BYRON"/>
<c n="Chatfield" c="CHATFIELD"/>
<c n="Dodge Center" c="DODGE CENTER"/>
<c n="Dover" c="DOVER"/>
<c n="Freeborn" c="FREEBORN"/>
<c n="Glenville" c="GLENVILLE"/>
<c n="Grand Meadow" c="GRAND MEADOW"/>
<c n="Harmony" c="HARMONY"/>
<c n="Hayfield" c="HAYFIELD"/>
<c n="Kasson" c="KASSON"/>
<c n="Le Roy" c="LE ROY"/>
<c n="Lyle" c="LYLE"/>
<c n="Mabel" c="MABEL"/>
<c n="Mantorville" c="MANTORVILLE"/>
<c n="Preston" c="PRESTON"/>
<c n="Rochester" c="ROCHESTER"/>
<c n="Rushford" c="RUSHFORD"/>
<c n="Spring Valley" c="SPRING VALLEY"/>
<c n="Stewartville" c="STEWARTVILLE"/>
<c n="Waltham" c="WALTHAM"/>
<c n="Wykoff" c="WYKOFF"/>
<c n="Lanesboro" c="LANESBORO"/>
<c n="Oronoco" c="ORONOCO"/></dma>
    
    <dma code="624" title="Sioux City, IA">
<c n="Akron" c="AKRON"/>
<c n="Albert City" c="ALBERT CITY"/>
<c n="Alta" c="ALTA"/>
<c n="Anthon" c="ANTHON"/>
<c n="Armstrong" c="ARMSTRONG"/>
<c n="Aurelia" c="AURELIA"/>
<c n="Boyden" c="BOYDEN"/>
<c n="Castana" c="CASTANA"/>
<c n="Cherokee" c="CHEROKEE"/>
<c n="Correctionville" c="CORRECTIONVILLE"/>
<c n="Cylinder" c="CYLINDER"/>
<c n="Dickens" c="DICKENS"/>
<c n="Emmetsburg" c="EMMETSBURG"/>
<c n="Estherville" c="ESTHERVILLE"/>
<c n="Everly" c="EVERLY"/>
<c n="Gillett Grove" c="GILLETT GROVE"/>
<c n="Graettinger" c="GRAETTINGER"/>
<c n="Granville" c="GRANVILLE"/>
<c n="Hartley" c="HARTLEY"/>
<c n="Hawarden" c="HAWARDEN"/>
<c n="City of Hinton" c="CITY OF HINTON"/>
<c n="Holstein" c="HOLSTEIN"/>
<c n="Hornick" c="HORNICK"/>
<c n="Hospers" c="HOSPERS"/>
<c n="Hull" c="HULL"/>
<c n="Ida Grove" c="IDA GROVE"/>
<c n="Kingsley" c="KINGSLEY"/>
<c n="Lake Park" c="LAKE PARK"/>
<c n="Lake View" c="LAKE VIEW"/>
<c n="Lawton" c="LAWTON"/>
<c n="Le Mars" c="LE MARS"/>
<c n="Mallard" c="MALLARD"/>
<c n="Mapleton" c="MAPLETON"/>
<c n="Marcus" c="MARCUS"/>
<c n="Meriden" c="MERIDEN"/>
<c n="Milford" c="MILFORD"/>
<c n="Moorhead" c="MOORHEAD"/>
<c n="Moville" c="MOVILLE"/>
<c n="Newell" c="NEWELL"/>
<c n="Odebolt" c="ODEBOLT"/>
<c n="Okoboji" c="OKOBOJI"/>
<c n="Onawa" c="ONAWA"/>
<c n="Orange City" c="ORANGE CITY"/>
<c n="Paullina" c="PAULLINA"/>
<c n="Primghar" c="PRIMGHAR"/>
<c n="Remsen" c="REMSEN"/>
<c n="Ringsted" c="RINGSTED"/>
<c n="Rock Valley" c="ROCK VALLEY"/>
<c n="Ruthven" c="RUTHVEN"/>
<c n="Sac City" c="SAC CITY"/>
<c n="Salix" c="SALIX"/>
<c n="Schaller" c="SCHALLER"/>
<c n="Sergeant Bluff" c="SERGEANT BLUFF"/>
<c n="Sheldon" c="SHELDON"/>
<c n="Sioux Center" c="SIOUX CENTER"/>
<c n="Sioux City" c="SIOUX CITY"/>
<c n="Sioux Rapids" c="SIOUX RAPIDS"/>
<c n="Sloan" c="SLOAN"/>
<c n="Spencer" c="SPENCER"/>
<c n="Spirit Lake" c="SPIRIT LAKE"/>
<c n="Storm Lake" c="STORM LAKE"/>
<c n="Superior" c="SUPERIOR"/>
<c n="Terril" c="TERRIL"/>
<c n="Wall Lake" c="WALL LAKE"/>
<c n="Whiting" c="WHITING"/>
<c n="Allen" c="ALLEN"/>
<c n="Battle Creek" c="BATTLE CREEK"/>
<c n="Bloomfield" c="BLOOMFIELD"/>
<c n="Coleridge" c="COLERIDGE"/>
<c n="Creighton" c="CREIGHTON"/>
<c n="Crofton" c="CROFTON"/>
<c n="Dakota City" c="DAKOTA CITY"/>
<c n="Hartington" c="HARTINGTON"/>
<c n="Jackson" c="JACKSON"/>
<c n="Laurel" c="LAUREL"/>
<c n="Madison" c="MADISON"/>
<c n="Newman Grove" c="NEWMAN GROVE"/>
<c n="Norfolk" c="NORFOLK"/>
<c n="Osmond" c="OSMOND"/>
<c n="Pender" c="PENDER"/>
<c n="Pierce" c="PIERCE"/>
<c n="Plainview" c="PLAINVIEW"/>
<c n="Ponca" c="PONCA"/>
<c n="Randolph" c="RANDOLPH"/>
<c n="South Sioux City" c="SOUTH SIOUX CITY"/>
<c n="Stanton" c="STANTON"/>
<c n="Wakefield" c="WAKEFIELD"/>
<c n="Wausa" c="WAUSA"/>
<c n="Wayne" c="WAYNE"/>
<c n="Winnebago" c="WINNEBAGO"/>
<c n="Alcester" c="ALCESTER"/>
<c n="Elk Point" c="ELK POINT"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="North Sioux City" c="NORTH SIOUX CITY"/>
<c n="Walthill" c="WALTHILL"/></dma>
    
    <dma code="637" title="Cedar Rapids-Waterloo-Iowa City, IA">
<c n="Ainsworth" c="AINSWORTH"/>
<c n="Alburnett" c="ALBURNETT"/>
<c n="Allison" c="ALLISON"/>
<c n="Amana" c="AMANA"/>
<c n="Anamosa" c="ANAMOSA"/>
<c n="Aplington" c="APLINGTON"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Belle Plaine" c="BELLE PLAINE"/>
<c n="Bennett" c="BENNETT"/>
<c n="Bernard" c="BERNARD"/>
<c n="Blairstown" c="BLAIRSTOWN"/>
<c n="Calmar" c="CALMAR"/>
<c n="Cascade" c="CASCADE"/>
<c n="Cedar Falls" c="CEDAR FALLS"/>
<c n="Cedar Rapids" c="CEDAR RAPIDS"/>
<c n="Center Junction" c="CENTER JUNCTION"/>
<c n="Center Point" c="CENTER POINT"/>
<c n="Central City" c="CENTRAL CITY"/>
<c n="Clarence" c="CLARENCE"/>
<c n="Clarksville" c="CLARKSVILLE"/>
<c n="Colesburg" c="COLESBURG"/>
<c n="Conrad" c="CONRAD"/>
<c n="Coralville" c="CORALVILLE"/>
<c n="Decorah" c="DECORAH"/>
<c n="Delhi" c="DELHI"/>
<c n="Denver" c="DENVER"/>
<c n="Dike" c="DIKE"/>
<c n="Dubuque" c="DUBUQUE"/>
<c n="Dumont" c="DUMONT"/>
<c n="Dunkerton" c="DUNKERTON"/>
<c n="Dyersville" c="DYERSVILLE"/>
<c n="Dysart" c="DYSART"/>
<c n="Edgewood" c="EDGEWOOD"/>
<c n="Elgin" c="ELGIN"/>
<c n="Elkader" c="ELKADER"/>
<c n="Epworth" c="EPWORTH"/>
<c n="Fairbank" c="FAIRBANK"/>
<c n="Farley" c="FARLEY"/>
<c n="Fayette" c="FAYETTE"/>
<c n="Fredericksburg" c="FREDERICKSBURG"/>
<c n="Garnavillo" c="GARNAVILLO"/>
<c n="Garwin" c="GARWIN"/>
<c n="Gladbrook" c="GLADBROOK"/>
<c n="Greene" c="GREENE"/>
<c n="Grundy Center" c="GRUNDY CENTER"/>
<c n="Guttenberg" c="GUTTENBERG"/>
<c n="Hiawatha" c="HIAWATHA"/>
<c n="Hills" c="HILLS"/>
<c n="Hudson" c="HUDSON"/>
<c n="Independence" c="INDEPENDENCE"/>
<c n="Iowa City" c="IOWA CITY"/>
<c n="Janesville" c="JANESVILLE"/>
<c n="Jesup" c="JESUP"/>
<c n="Kalona" c="KALONA"/>
<c n="Keota" c="KEOTA"/>
<c n="Keystone" c="KEYSTONE"/>
<c n="La Porte City" c="LA PORTE CITY"/>
<c n="Lansing" c="LANSING"/>
<c n="Lisbon" c="LISBON"/>
<c n="Lone Tree" c="LONE TREE"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Marengo" c="MARENGO"/>
<c n="Marion" c="MARION"/>
<c n="Martelle" c="MARTELLE"/>
<c n="Maynard" c="MAYNARD"/>
<c n="McGregor" c="MCGREGOR"/>
<c n="Mechanicsville" c="MECHANICSVILLE"/>
<c n="Millersburg" c="MILLERSBURG"/>
<c n="Monona" c="MONONA"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="New Hampton" c="NEW HAMPTON"/>
<c n="Newhall" c="NEWHALL"/>
<c n="North English" c="NORTH ENGLISH"/>
<c n="North Liberty" c="NORTH LIBERTY"/>
<c n="Norway" c="NORWAY"/>
<c n="Oakdale" c="OAKDALE"/>
<c n="Oelwein" c="OELWEIN"/>
<c n="Olin" c="OLIN"/>
<c n="Oran" c="ORAN"/>
<c n="Oxford" c="OXFORD"/>
<c n="Oxford Junction" c="OXFORD JUNCTION"/>
<c n="Palo" c="PALO"/>
<c n="Parkersburg" c="PARKERSBURG"/>
<c n="Peosta" c="PEOSTA"/>
<c n="Plainfield" c="PLAINFIELD"/>
<c n="Postville" c="POSTVILLE"/>
<c n="Readlyn" c="READLYN"/>
<c n="Reinbeck" c="REINBECK"/>
<c n="Richland" c="RICHLAND"/>
<c n="Riverside" c="RIVERSIDE"/>
<c n="Robins" c="ROBINS"/>
<c n="Shell Rock" c="SHELL ROCK"/>
<c n="Shellsburg" c="SHELLSBURG"/>
<c n="Sigourney" c="SIGOURNEY"/>
<c n="Solon" c="SOLON"/>
<c n="South English" c="SOUTH ENGLISH"/>
<c n="Spillville" c="SPILLVILLE"/>
<c n="Springville" c="SPRINGVILLE"/>
<c n="Stanwood" c="STANWOOD"/>
<c n="Strawberry Point" c="STRAWBERRY POINT"/>
<c n="Sumner" c="SUMNER"/>
<c n="Swisher" c="SWISHER"/>
<c n="Tama" c="TAMA"/>
<c n="Thornburg" c="THORNBURG"/>
<c n="Tiffin" c="TIFFIN"/>
<c n="Tipton" c="TIPTON"/>
<c n="Toledo" c="TOLEDO"/>
<c n="Traer" c="TRAER"/>
<c n="Tripoli" c="TRIPOLI"/>
<c n="Troy Mills" c="TROY MILLS"/>
<c n="Urbana" c="URBANA"/>
<c n="Van Horne" c="VAN HORNE"/>
<c n="Vinton" c="VINTON"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Waterloo" c="WATERLOO"/>
<c n="Waucoma" c="WAUCOMA"/>
<c n="Waukon" c="WAUKON"/>
<c n="Waverly" c="WAVERLY"/>
<c n="Wellman" c="WELLMAN"/>
<c n="Wellsburg" c="WELLSBURG"/>
<c n="West Branch" c="WEST BRANCH"/>
<c n="West Union" c="WEST UNION"/>
<c n="What Cheer" c="WHAT CHEER"/>
<c n="Williamsburg" c="WILLIAMSBURG"/>
<c n="Winthrop" c="WINTHROP"/>
<c n="Wyoming" c="WYOMING"/>
<c n="Ely" c="ELY"/></dma>
    
    <dma code="679" title="Des Moines-Ames, IA">
<c n="Ackley" c="ACKLEY"/>
<c n="Adair" c="ADAIR"/>
<c n="Adel" c="ADEL"/>
<c n="Afton" c="AFTON"/>
<c n="Albia" c="ALBIA"/>
<c n="Alden" c="ALDEN"/>
<c n="Alexander" c="ALEXANDER"/>
<c n="Algona" c="ALGONA"/>
<c n="Alleman" c="ALLEMAN"/>
<c n="Allerton" c="ALLERTON"/>
<c n="Altoona" c="ALTOONA"/>
<c n="Ames" c="AMES"/>
<c n="Ankeny" c="ANKENY"/>
<c n="Arcadia" c="ARCADIA"/>
<c n="Audubon" c="AUDUBON"/>
<c n="Badger" c="BADGER"/>
<c n="Baxter" c="BAXTER"/>
<c n="Bedford" c="BEDFORD"/>
<c n="Belmond" c="BELMOND"/>
<c n="Benton" c="BENTON"/>
<c n="Blairsburg" c="BLAIRSBURG"/>
<c n="Bode" c="BODE"/>
<c n="Bondurant" c="BONDURANT"/>
<c n="Boone" c="BOONE"/>
<c n="Boxholm" c="BOXHOLM"/>
<c n="Breda" c="BREDA"/>
<c n="Brooklyn" c="BROOKLYN"/>
<c n="Burnside" c="BURNSIDE"/>
<c n="Burt" c="BURT"/>
<c n="Bussey" c="BUSSEY"/>
<c n="Callender" c="CALLENDER"/>
<c n="Carlisle" c="CARLISLE"/>
<c n="Carroll" c="CARROLL"/>
<c n="Casey" c="CASEY"/>
<c n="Centerville" c="CENTERVILLE"/>
<c n="Chariton" c="CHARITON"/>
<c n="Churdan" c="CHURDAN"/>
<c n="Clarion" c="CLARION"/>
<c n="Clive" c="CLIVE"/>
<c n="Colfax" c="COLFAX"/>
<c n="Colo" c="COLO"/>
<c n="Coon Rapids" c="COON RAPIDS"/>
<c n="Corning" c="CORNING"/>
<c n="Corydon" c="CORYDON"/>
<c n="Creston" c="CRESTON"/>
<c n="Cumming" c="CUMMING"/>
<c n="Dakota City" c="DAKOTA CITY"/>
<c n="Melcher-Dallas" c="MELCHER-DALLAS"/>
<c n="Dallas Center" c="DALLAS CENTER"/>
<c n="De Soto" c="DE SOTO"/>
<c n="Decatur City" c="DECATUR CITY"/>
<c n="Des Moines" c="DES MOINES"/>
<c n="Dexter" c="DEXTER"/>
<c n="Diagonal" c="DIAGONAL"/>
<c n="Dows" c="DOWS"/>
<c n="Eagle Grove" c="EAGLE GROVE"/>
<c n="Earlham" c="EARLHAM"/>
<c n="Eldora" c="ELDORA"/>
<c n="Ellsworth" c="ELLSWORTH"/>
<c n="Exira" c="EXIRA"/>
<c n="Fenton" c="FENTON"/>
<c n="Ferguson" c="FERGUSON"/>
<c n="Fontanelle" c="FONTANELLE"/>
<c n="Fremont" c="FREMONT"/>
<c n="Fort Dodge" c="FORT DODGE"/>
<c n="Gilbert" c="GILBERT"/>
<c n="Gilman" c="GILMAN"/>
<c n="Glidden" c="GLIDDEN"/>
<c n="Goldfield" c="GOLDFIELD"/>
<c n="Gowrie" c="GOWRIE"/>
<c n="Grand Junction" c="GRAND JUNCTION"/>
<c n="Granger" c="GRANGER"/>
<c n="Greenfield" c="GREENFIELD"/>
<c n="Grimes" c="GRIMES"/>
<c n="Grinnell" c="GRINNELL"/>
<c n="Guthrie Center" c="GUTHRIE CENTER"/>
<c n="Hampton" c="HAMPTON"/>
<c n="Hartwick" c="HARTWICK"/>
<c n="Havelock" c="HAVELOCK"/>
<c n="Hubbard" c="HUBBARD"/>
<c n="Humboldt" c="HUMBOLDT"/>
<c n="Humeston" c="HUMESTON"/>
<c n="Huxley" c="HUXLEY"/>
<c n="Indianola" c="INDIANOLA"/>
<c n="Iowa Falls" c="IOWA FALLS"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Jewell" c="JEWELL"/>
<c n="Johnston" c="JOHNSTON"/>
<c n="Kamrar" c="KAMRAR"/>
<c n="Knoxville" c="KNOXVILLE"/>
<c n="Lake City" c="LAKE CITY"/>
<c n="Lamoni" c="LAMONI"/>
<c n="Latimer" c="LATIMER"/>
<c n="Laurel" c="LAUREL"/>
<c n="Laurens" c="LAURENS"/>
<c n="Lehigh" c="LEHIGH"/>
<c n="Lenox" c="LENOX"/>
<c n="Leon" c="LEON"/>
<c n="Liberty Center" c="LIBERTY CENTER"/>
<c n="Lineville" c="LINEVILLE"/>
<c n="Livermore" c="LIVERMORE"/>
<c n="Lovilia" c="LOVILIA"/>
<c n="Lu Verne" c="LU VERNE"/>
<c n="Lynnville" c="LYNNVILLE"/>
<c n="Madrid" c="MADRID"/>
<c n="Malcom" c="MALCOM"/>
<c n="Manning" c="MANNING"/>
<c n="Manson" c="MANSON"/>
<c n="Marshalltown" c="MARSHALLTOWN"/>
<c n="Martensdale" c="MARTENSDALE"/>
<c n="Maxwell" c="MAXWELL"/>
<c n="McCallsburg" c="MCCALLSBURG"/>
<c n="Melbourne" c="MELBOURNE"/>
<c n="Melcher-Dallas" c="MELCHER-DALLAS"/>
<c n="Minburn" c="MINBURN"/>
<c n="Mitchellville" c="MITCHELLVILLE"/>
<c n="Montezuma" c="MONTEZUMA"/>
<c n="Moulton" c="MOULTON"/>
<c n="Mount Ayr" c="MOUNT AYR"/>
<c n="Murray" c="MURRAY"/>
<c n="Nevada" c="NEVADA"/>
<c n="New Market" c="NEW MARKET"/>
<c n="New Sharon" c="NEW SHARON"/>
<c n="Newton" c="NEWTON"/>
<c n="Norwalk" c="NORWALK"/>
<c n="Ogden" c="OGDEN"/>
<c n="Orient" c="ORIENT"/>
<c n="Osceola" c="OSCEOLA"/>
<c n="Oskaloosa" c="OSKALOOSA"/>
<c n="Palmer" c="PALMER"/>
<c n="Panora" c="PANORA"/>
<c n="Patterson" c="PATTERSON"/>
<c n="Pella" c="PELLA"/>
<c n="Perry" c="PERRY"/>
<c n="Pleasantville" c="PLEASANTVILLE"/>
<c n="Pocahontas" c="POCAHONTAS"/>
<c n="Pomeroy" c="POMEROY"/>
<c n="Prairie City" c="PRAIRIE CITY"/>
<c n="Ralston" c="RALSTON"/>
<c n="Rockwell City" c="ROCKWELL CITY"/>
<c n="Runnells" c="RUNNELLS"/>
<c n="Scranton" c="SCRANTON"/>
<c n="Seymour" c="SEYMOUR"/>
<c n="Sheffield" c="SHEFFIELD"/>
<c n="Slater" c="SLATER"/>
<c n="St. Anthony" c="ST. ANTHONY"/>
<c n="St. Charles" c="ST. CHARLES"/>
<c n="Stanhope" c="STANHOPE"/>
<c n="State Center" c="STATE CENTER"/>
<c n="Story City" c="STORY CITY"/>
<c n="Stratford" c="STRATFORD"/>
<c n="Stuart" c="STUART"/>
<c n="Sully" c="SULLY"/>
<c n="Swea City" c="SWEA CITY"/>
<c n="Titonka" c="TITONKA"/>
<c n="Truro" c="TRURO"/>
<c n="Union" c="UNION"/>
<c n="Unionville" c="UNIONVILLE"/>
<c n="Urbandale" c="URBANDALE"/>
<c n="Van Meter" c="VAN METER"/>
<c n="Waukee" c="WAUKEE"/>
<c n="Webster City" c="WEBSTER CITY"/>
<c n="Wesley" c="WESLEY"/>
<c n="West Des Moines" c="WEST DES MOINES"/>
<c n="Winterset" c="WINTERSET"/>
<c n="Woodward" c="WOODWARD"/>
<c n="Woolstock" c="WOOLSTOCK"/>
<c n="Zearing" c="ZEARING"/>
<c n="Pleasant Hill" c="PLEASANT HILL"/></dma>
    
    <dma code="717" title="Quincy, IL-Hannibal, MO-Keokuk, IA">
<c n="Donnellson" c="DONNELLSON"/>
<c n="Fort Madison" c="FORT MADISON"/>
<c n="Keokuk" c="KEOKUK"/>
<c n="West Point" c="WEST POINT"/>
<c n="Augusta" c="AUGUSTA"/>
<c n="Barry" c="BARRY"/>
<c n="Bluffs" c="BLUFFS"/>
<c n="Bushnell" c="BUSHNELL"/>
<c n="Camden" c="CAMDEN"/>
<c n="Camp Point" c="CAMP POINT"/>
<c n="Carthage" c="CARTHAGE"/>
<c n="Colchester" c="COLCHESTER"/>
<c n="Golden" c="GOLDEN"/>
<c n="Griggsville" c="GRIGGSVILLE"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Industry" c="INDUSTRY"/>
<c n="Kinderhook" c="KINDERHOOK"/>
<c n="La Harpe" c="LA HARPE"/>
<c n="Liberty" c="LIBERTY"/>
<c n="Macomb" c="MACOMB"/>
<c n="Mendon" c="MENDON"/>
<c n="Mount Sterling" c="MOUNT STERLING"/>
<c n="Nauvoo" c="NAUVOO"/>
<c n="New Salem" c="NEW SALEM"/>
<c n="Perry" c="PERRY"/>
<c n="Pittsfield" c="PITTSFIELD"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Quincy" c="QUINCY"/>
<c n="Rushville" c="RUSHVILLE"/>
<c n="Sciota" c="SCIOTA"/>
<c n="Versailles" c="VERSAILLES"/>
<c n="Warsaw" c="WARSAW"/>
<c n="Winchester" c="WINCHESTER"/>
<c n="Canton" c="CANTON"/>
<c n="Center" c="CENTER"/>
<c n="Edina" c="EDINA"/>
<c n="Ewing" c="EWING"/>
<c n="South Gorin" c="SOUTH GORIN"/>
<c n="Hannibal" c="HANNIBAL"/>
<c n="Holliday" c="HOLLIDAY"/>
<c n="Hurdland" c="HURDLAND"/>
<c n="Kahoka" c="KAHOKA"/>
<c n="La Belle" c="LA BELLE"/>
<c n="La Grange" c="LA GRANGE"/>
<c n="Madison" c="MADISON"/>
<c n="Memphis" c="MEMPHIS"/>
<c n="Monroe City" c="MONROE CITY"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="New London" c="NEW LONDON"/>
<c n="Palmyra" c="PALMYRA"/>
<c n="Paris" c="PARIS"/>
<c n="Perry" c="PERRY"/>
<c n="Philadelphia" c="PHILADELPHIA"/>
<c n="Revere" c="REVERE"/>
<c n="Shelbina" c="SHELBINA"/>
<c n="Shelbyville" c="SHELBYVILLE"/>
<c n="Wyaconda" c="WYACONDA"/></dma>
    </state>
<state id="LA" full_name="Louisiana">
    <dma code="628" title="Monroe, LA-El Dorado, AR">
<c n="Crossett" c="CROSSETT"/>
<c n="El Dorado" c="EL DORADO"/>
<c n="Fountain Hill" c="FOUNTAIN HILL"/>
<c n="Hamburg" c="HAMBURG"/>
<c n="Mount Holly" c="MOUNT HOLLY"/>
<c n="Smackover" c="SMACKOVER"/>
<c n="Bastrop" c="BASTROP"/>
<c n="Calhoun" c="CALHOUN"/>
<c n="Collinston" c="COLLINSTON"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Downsville" c="DOWNSVILLE"/>
<c n="Enterprise" c="ENTERPRISE"/>
<c n="Farmerville" c="FARMERVILLE"/>
<c n="Ferriday" c="FERRIDAY"/>
<c n="Grambling" c="GRAMBLING"/>
<c n="Grayson" c="GRAYSON"/>
<c n="Harrisonburg" c="HARRISONBURG"/>
<c n="Jena" c="JENA"/>
<c n="Jonesboro" c="JONESBORO"/>
<c n="Jonesville" c="JONESVILLE"/>
<c n="Lake Providence" c="LAKE PROVIDENCE"/>
<c n="Lillie" c="LILLIE"/>
<c n="Monroe" c="MONROE"/>
<c n="Oak Grove" c="OAK GROVE"/>
<c n="Rayville" c="RAYVILLE"/>
<c n="Ruston" c="RUSTON"/>
<c n="Sicily Island" c="SICILY ISLAND"/>
<c n="St. Joseph" c="ST. JOSEPH"/>
<c n="Tallulah" c="TALLULAH"/>
<c n="Trout" c="TROUT"/>
<c n="Vidalia" c="VIDALIA"/>
<c n="Waterproof" c="WATERPROOF"/>
<c n="West Monroe" c="WEST MONROE"/>
<c n="Winnfield" c="WINNFIELD"/>
<c n="Winnsboro" c="WINNSBORO"/></dma>

    <dma code="612" title="Shreveport, LA">
<c n="Ashdown" c="ASHDOWN"/>
<c n="De Queen" c="DE QUEEN"/>
<c n="Gillham" c="GILLHAM"/>
<c n="Hope" c="HOPE"/>
<c n="Lockesburg" c="LOCKESBURG"/>
<c n="Magnolia" c="MAGNOLIA"/>
<c n="Nashville" c="NASHVILLE"/>
<c n="Saratoga" c="SARATOGA"/>
<c n="Stamps" c="STAMPS"/>
<c n="Texarkana" c="TEXARKANA"/>
<c n="Waldo" c="WALDO"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Arcadia" c="ARCADIA"/>
<c n="Barksdale AFB" c="BARKSDALE AFB"/>
<c n="Benton" c="BENTON"/>
<c n="Blanchard" c="BLANCHARD"/>
<c n="Bossier City" c="BOSSIER CITY"/>
<c n="Coushatta" c="COUSHATTA"/>
<c n="Elm Grove" c="ELM GROVE"/>
<c n="Greenwood" c="GREENWOOD"/>
<c n="Haughton" c="HAUGHTON"/>
<c n="Homer" c="HOMER"/>
<c n="Keithville" c="KEITHVILLE"/>
<c n="Logansport" c="LOGANSPORT"/>
<c n="Mansfield" c="MANSFIELD"/>
<c n="Many" c="MANY"/>
<c n="Minden" c="MINDEN"/>
<c n="Natchitoches" c="NATCHITOCHES"/>
<c n="Negreet" c="NEGREET"/>
<c n="Plain Dealing" c="PLAIN DEALING"/>
<c n="Shreveport" c="SHREVEPORT"/>
<c n="Springhill" c="SPRINGHILL"/>
<c n="Summerfield" c="SUMMERFIELD"/>
<c n="Vivian" c="VIVIAN"/>
<c n="Broken Bow" c="BROKEN BOW"/>
<c n="Haworth" c="HAWORTH"/>
<c n="Idabel" c="IDABEL"/>
<c n="Smithville" c="SMITHVILLE"/>
<c n="Valliant" c="VALLIANT"/>
<c n="Wright City" c="WRIGHT CITY"/>
<c n="Atlanta" c="ATLANTA"/>
<c n="Carthage" c="CARTHAGE"/>
<c n="Center" c="CENTER"/>
<c n="Daingerfield" c="DAINGERFIELD"/>
<c n="Hallsville" c="HALLSVILLE"/>
<c n="Hooks" c="HOOKS"/>
<c n="Hughes Springs" c="HUGHES SPRINGS"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Joaquin" c="JOAQUIN"/>
<c n="Karnack" c="KARNACK"/>
<c n="Linden" c="LINDEN"/>
<c n="Lone Star" c="LONE STAR"/>
<c n="Marshall" c="MARSHALL"/>
<c n="Mount Pleasant" c="MOUNT PLEASANT"/>
<c n="New Boston" c="NEW BOSTON"/>
<c n="Panola" c="PANOLA"/>
<c n="Queen City" c="QUEEN CITY"/>
<c n="Scottsville" c="SCOTTSVILLE"/>
<c n="Shelbyville" c="SHELBYVILLE"/>
<c n="Tenaha" c="TENAHA"/>
<c n="Texarkana" c="TEXARKANA"/>
<c n="Timpson" c="TIMPSON"/>
<c n="Waskom" c="WASKOM"/>
<c n="Wake Village" c="WAKE VILLAGE"/></dma>
    
    <dma code="622" title="New Orleans, LA">
<c n="Ama" c="AMA"/>
<c n="Amite" c="AMITE"/>
<c n="Arabi" c="ARABI"/>
<c n="Belle Chasse" c="BELLE CHASSE"/>
<c n="Bogalusa" c="BOGALUSA"/>
<c n="Boutte" c="BOUTTE"/>
<c n="Buras-Triumph" c="BURAS-TRIUMPH"/>
<c n="Chalmette" c="CHALMETTE"/>
<c n="Chauvin" c="CHAUVIN"/>
<c n="Convent" c="CONVENT"/>
<c n="Covington" c="COVINGTON"/>
<c n="Cut Off" c="CUT OFF"/>
<c n="Destrehan" c="DESTREHAN"/>
<c n="Empire" c="EMPIRE"/>
<c n="Folsom" c="FOLSOM"/>
<c n="Franklinton" c="FRANKLINTON"/>
<c n="Galliano" c="GALLIANO"/>
<c n="Golden Meadow" c="GOLDEN MEADOW"/>
<c n="Gretna" c="GRETNA"/>
<c n="Hahnville" c="HAHNVILLE"/>
<c n="Hammond" c="HAMMOND"/>
<c n="Harvey" c="HARVEY"/>
<c n="Houma" c="HOUMA"/>
<c n="Independence" c="INDEPENDENCE"/>
<c n="Kenner" c="KENNER"/>
<c n="Killona" c="KILLONA"/>
<c n="LaPlace" c="LAPLACE"/>
<c n="Larose" c="LAROSE"/>
<c n="Lockport" c="LOCKPORT"/>
<c n="Luling" c="LULING"/>
<c n="Lutcher" c="LUTCHER"/>
<c n="Mandeville" c="MANDEVILLE"/>
<c n="Marrero" c="MARRERO"/>
<c n="Mathews" c="MATHEWS"/>
<c n="Metairie" c="METAIRIE"/>
<c n="New Orleans" c="NEW ORLEANS"/>
<c n="Norco" c="NORCO"/>
<c n="Pearl River" c="PEARL RIVER"/>
<c n="Raceland" c="RACELAND"/>
<c n="Reserve" c="RESERVE"/>
<c n="Robert" c="ROBERT"/>
<c n="Slidell" c="SLIDELL"/>
<c n="Saint Bernard" c="SAINT BERNARD"/>
<c n="St. Rose" c="ST. ROSE"/>
<c n="Thibodaux" c="THIBODAUX"/>
<c n="Vacherie" c="VACHERIE"/>
<c n="Westwego" c="WESTWEGO"/>
<c n="Bay St. Louis" c="BAY ST. LOUIS"/>
<c n="Carriere" c="CARRIERE"/>
<c n="Diamondhead" c="DIAMONDHEAD"/>
<c n="Kiln" c="KILN"/>
<c n="Pearlington" c="PEARLINGTON"/>
<c n="Picayune" c="PICAYUNE"/>
<c n="Poplarville" c="POPLARVILLE"/>
<c n="John C. Stennis Space Center" c="JOHN C. STENNIS SPACE CENTER"/>
<c n="Waveland" c="WAVELAND"/>
<c n="Bayou Cane" c="BAYOU CANE"/>
<c n="Elmwood" c="ELMWOOD"/>
<c n="Estelle" c="ESTELLE"/>
<c n="Harahan" c="HARAHAN"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Lacombe" c="LACOMBE"/>
<c n="Madisonville" c="MADISONVILLE"/>
<c n="Ponchatoula" c="PONCHATOULA"/>
<c n="River Ridge" c="RIVER RIDGE"/>
<c n="Terrytown" c="TERRYTOWN"/>
<c n="Waggaman" c="WAGGAMAN"/></dma>
    
    <dma code="642" title="Lafayette, LA">
<c n="Abbeville" c="ABBEVILLE"/>
<c n="Arnaudville" c="ARNAUDVILLE"/>
<c n="Breaux Bridge" c="BREAUX BRIDGE"/>
<c n="Broussard" c="BROUSSARD"/>
<c n="Cade" c="CADE"/>
<c n="Carencro" c="CARENCRO"/>
<c n="Chataignier" c="CHATAIGNIER"/>
<c n="Crowley" c="CROWLEY"/>
<c n="Delcambre" c="DELCAMBRE"/>
<c n="Duson" c="DUSON"/>
<c n="Eunice" c="EUNICE"/>
<c n="Evangeline" c="EVANGELINE"/>
<c n="Grand Coteau" c="GRAND COTEAU"/>
<c n="Iota" c="IOTA"/>
<c n="Jennings" c="JENNINGS"/>
<c n="Kaplan" c="KAPLAN"/>
<c n="Lafayette" c="LAFAYETTE"/>
<c n="New Iberia" c="NEW IBERIA"/>
<c n="Opelousas" c="OPELOUSAS"/>
<c n="Rayne" c="RAYNE"/>
<c n="Scott" c="SCOTT"/>
<c n="Saint Martinville" c="SAINT MARTINVILLE"/>
<c n="Sunset" c="SUNSET"/>
<c n="Ville Platte" c="VILLE PLATTE"/>
<c n="Welsh" c="WELSH"/>
<c n="Youngsville" c="YOUNGSVILLE"/></dma>
    
    <dma code="643" title="Lake Charles, LA">
<c n="Cameron" c="CAMERON"/>
<c n="DeRidder" c="DERIDDER"/>
<c n="Kinder" c="KINDER"/>
<c n="Lake Charles" c="LAKE CHARLES"/>
<c n="Oakdale" c="OAKDALE"/>
<c n="Oberlin" c="OBERLIN"/>
<c n="Sulphur" c="SULPHUR"/>
<c n="Westlake" c="WESTLAKE"/>
<c n="Carlyss" c="CARLYSS"/>
<c n="Moss Bluff" c="MOSS BLUFF"/></dma>
    
    <dma code="644" title="Alexandria, LA">
<c n="Alexandria" c="ALEXANDRIA"/>
<c n="Ball" c="BALL"/>
<c n="Bunkie" c="BUNKIE"/>
<c n="Colfax" c="COLFAX"/>
<c n="Leesville" c="LEESVILLE"/>
<c n="Marksville" c="MARKSVILLE"/>
<c n="Pineville" c="PINEVILLE"/>
<c n="Fort Polk South" c="FORT POLK SOUTH"/></dma>
    
    <dma code="716" title="Baton Rouge, LA">
<c n="Addis" c="ADDIS"/>
<c n="Amelia" c="AMELIA"/>
<c n="Baker" c="BAKER"/>
<c n="Baton Rouge" c="BATON ROUGE"/>
<c n="Centerville" c="CENTERVILLE"/>
<c n="Clinton" c="CLINTON"/>
<c n="Denham Springs" c="DENHAM SPRINGS"/>
<c n="Donaldsonville" c="DONALDSONVILLE"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Geismar" c="GEISMAR"/>
<c n="Gonzales" c="GONZALES"/>
<c n="Greensburg" c="GREENSBURG"/>
<c n="Holden" c="HOLDEN"/>
<c n="Jackson" c="JACKSON"/>
<c n="Livingston" c="LIVINGSTON"/>
<c n="Maringouin" c="MARINGOUIN"/>
<c n="Morgan City" c="MORGAN CITY"/>
<c n="Napoleonville" c="NAPOLEONVILLE"/>
<c n="New Roads" c="NEW ROADS"/>
<c n="Plaquemine" c="PLAQUEMINE"/>
<c n="Plattenville" c="PLATTENVILLE"/>
<c n="Port Allen" c="PORT ALLEN"/>
<c n="Prairieville" c="PRAIRIEVILLE"/>
<c n="Slaughter" c="SLAUGHTER"/>
<c n="Sorrento" c="SORRENTO"/>
<c n="Sunshine" c="SUNSHINE"/>
<c n="Walker" c="WALKER"/>
<c n="Zachary" c="ZACHARY"/>
<c n="Centreville" c="CENTREVILLE"/>
<c n="Liberty" c="LIBERTY"/>
<c n="Central City" c="CENTRAL CITY"/>
<c n="Inniswold" c="INNISWOLD"/>
<c n="Livonia" c="LIVONIA"/>
<c n="Old Jefferson" c="OLD JEFFERSON"/>
<c n="Patterson" c="PATTERSON"/>
<c n="Pierre Part" c="PIERRE PART"/>
<c n="Shenandoah" c="SHENANDOAH"/>
<c n="St. Francisville" c="ST. FRANCISVILLE"/></dma>
    </state>
<state id="MN" full_name="Minnesota">
    <dma code="676" title="Duluth, MN-Superior, WI">
<c n="Ironwood" c="IRONWOOD"/>
<c n="Wakefield" c="WAKEFIELD"/>
<c n="Watersmeet" c="WATERSMEET"/>
<c n="Aurora" c="AURORA"/>
<c n="Barnum" c="BARNUM"/>
<c n="Bigfork" c="BIGFORK"/>
<c n="Brimson" c="BRIMSON"/>
<c n="Buhl" c="BUHL"/>
<c n="Carlton" c="CARLTON"/>
<c n="Chisholm" c="CHISHOLM"/>
<c n="Cloquet" c="CLOQUET"/>
<c n="Cohasset" c="COHASSET"/>
<c n="Coleraine" c="COLERAINE"/>
<c n="Cook" c="COOK"/>
<c n="Cromwell" c="CROMWELL"/>
<c n="Deer River" c="DEER RIVER"/>
<c n="Duluth" c="DULUTH"/>
<c n="Ely" c="ELY"/>
<c n="Esko" c="ESKO"/>
<c n="Eveleth" c="EVELETH"/>
<c n="Floodwood" c="FLOODWOOD"/>
<c n="Gilbert" c="GILBERT"/>
<c n="Grand Rapids" c="GRAND RAPIDS"/>
<c n="Grand Portage" c="GRAND PORTAGE"/>
<c n="Grand Rapids" c="GRAND RAPIDS"/>
<c n="Hibbing" c="HIBBING"/>
<c n="Hoyt Lakes" c="HOYT LAKES"/>
<c n="International Falls" c="INTERNATIONAL FALLS"/>
<c n="Keewatin" c="KEEWATIN"/>
<c n="Kettle River" c="KETTLE RIVER"/>
<c n="Knife River" c="KNIFE RIVER"/>
<c n="Littlefork" c="LITTLEFORK"/>
<c n="Meadowlands" c="MEADOWLANDS"/>
<c n="Moose Lake" c="MOOSE LAKE"/>
<c n="Mountain Iron" c="MOUNTAIN IRON"/>
<c n="Nashwauk" c="NASHWAUK"/>
<c n="Northome" c="NORTHOME"/>
<c n="Schroeder" c="SCHROEDER"/>
<c n="Silver Bay" c="SILVER BAY"/>
<c n="Swan River" c="SWAN RIVER"/>
<c n="Tofte" c="TOFTE"/>
<c n="Tower" c="TOWER"/>
<c n="Two Harbors" c="TWO HARBORS"/>
<c n="Virginia" c="VIRGINIA"/>
<c n="Wrenshall" c="WRENSHALL"/>
<c n="Wright" c="WRIGHT"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Bayfield" c="BAYFIELD"/>
<c n="Butternut" c="BUTTERNUT"/>
<c n="Cable" c="CABLE"/>
<c n="Drummond" c="DRUMMOND"/>
<c n="Glidden" c="GLIDDEN"/>
<c n="Hayward" c="HAYWARD"/>
<c n="Hurley" c="HURLEY"/>
<c n="Iron River" c="IRON RIVER"/>
<c n="Maple" c="MAPLE"/>
<c n="Mellen" c="MELLEN"/>
<c n="Mercer" c="MERCER"/>
<c n="Port Wing" c="PORT WING"/>
<c n="Solon Springs" c="SOLON SPRINGS"/>
<c n="Superior" c="SUPERIOR"/>
<c n="Washburn" c="WASHBURN"/>
<c n="Winter" c="WINTER"/>
<c n="Hermantown" c="HERMANTOWN"/></dma>

    <dma code="613" title="Minneapolis-St. Paul, MN">
<c n="Afton" c="AFTON"/>
<c n="Aitkin" c="AITKIN"/>
<c n="Albany" c="ALBANY"/>
<c n="Alberta" c="ALBERTA"/>
<c n="Albertville" c="ALBERTVILLE"/>
<c n="Alexandria" c="ALEXANDRIA"/>
<c n="Andover" c="ANDOVER"/>
<c n="Annandale" c="ANNANDALE"/>
<c n="Anoka" c="ANOKA"/>
<c n="Appleton" c="APPLETON"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Ashby" c="ASHBY"/>
<c n="Askov" c="ASKOV"/>
<c n="Atwater" c="ATWATER"/>
<c n="Avon" c="AVON"/>
<c n="Backus" c="BACKUS"/>
<c n="Balaton" c="BALATON"/>
<c n="Barrett" c="BARRETT"/>
<c n="Baxter" c="BAXTER"/>
<c n="Bayport" c="BAYPORT"/>
<c n="Beardsley" c="BEARDSLEY"/>
<c n="Becker" c="BECKER"/>
<c n="Belgrade" c="BELGRADE"/>
<c n="Belle Plaine" c="BELLE PLAINE"/>
<c n="Bellingham" c="BELLINGHAM"/>
<c n="Belview" c="BELVIEW"/>
<c n="Bemidji" c="BEMIDJI"/>
<c n="Benson" c="BENSON"/>
<c n="Bertha" c="BERTHA"/>
<c n="Bethel" c="BETHEL"/>
<c n="Big Lake" c="BIG LAKE"/>
<c n="Bird Island" c="BIRD ISLAND"/>
<c n="Blackduck" c="BLACKDUCK"/>
<c n="Blomkest" c="BLOMKEST"/>
<c n="Blooming Prairie" c="BLOOMING PRAIRIE"/>
<c n="Blue Earth" c="BLUE EARTH"/>
<c n="Braham" c="BRAHAM"/>
<c n="Brainerd" c="BRAINERD"/>
<c n="Brandon" c="BRANDON"/>
<c n="Bricelyn" c="BRICELYN"/>
<c n="Brooten" c="BROOTEN"/>
<c n="Browerville" c="BROWERVILLE"/>
<c n="Browns Valley" c="BROWNS VALLEY"/>
<c n="Brownton" c="BROWNTON"/>
<c n="Bruno" c="BRUNO"/>
<c n="Buffalo" c="BUFFALO"/>
<c n="Burnsville" c="BURNSVILLE"/>
<c n="Cambridge" c="CAMBRIDGE"/>
<c n="Canby" c="CANBY"/>
<c n="Cannon Falls" c="CANNON FALLS"/>
<c n="Carver" c="CARVER"/>
<c n="Cass Lake" c="CASS LAKE"/>
<c n="Center City" c="CENTER CITY"/>
<c n="Champlin" c="CHAMPLIN"/>
<c n="Chanhassen" c="CHANHASSEN"/>
<c n="Chaska" c="CHASKA"/>
<c n="Chisago City" c="CHISAGO CITY"/>
<c n="Chokio" c="CHOKIO"/>
<c n="Circle Pines" c="CIRCLE PINES"/>
<c n="Clara City" c="CLARA CITY"/>
<c n="Clarissa" c="CLARISSA"/>
<c n="Clarkfield" c="CLARKFIELD"/>
<c n="Clear Lake" c="CLEAR LAKE"/>
<c n="Clearwater" c="CLEARWATER"/>
<c n="Clements" c="CLEMENTS"/>
<c n="Cleveland" c="CLEVELAND"/>
<c n="Clinton" c="CLINTON"/>
<c n="Cokato" c="COKATO"/>
<c n="Cold Spring" c="COLD SPRING"/>
<c n="Collegeville" c="COLLEGEVILLE"/>
<c n="Cologne" c="COLOGNE"/>
<c n="Cosmos" c="COSMOS"/>
<c n="Cottage Grove" c="COTTAGE GROVE"/>
<c n="Cottonwood" c="COTTONWOOD"/>
<c n="Crosby" c="CROSBY"/>
<c n="Crystal Bay" c="CRYSTAL BAY"/>
<c n="Cyrus" c="CYRUS"/>
<c n="Danube" c="DANUBE"/>
<c n="Darwin" c="DARWIN"/>
<c n="Dassel" c="DASSEL"/>
<c n="Dawson" c="DAWSON"/>
<c n="Dayton" c="DAYTON"/>
<c n="Delano" c="DELANO"/>
<c n="Eagle Bend" c="EAGLE BEND"/>
<c n="Easton" c="EASTON"/>
<c n="Echo" c="ECHO"/>
<c n="Eden Prairie" c="EDEN PRAIRIE"/>
<c n="Eden Valley" c="EDEN VALLEY"/>
<c n="Elbow Lake" c="ELBOW LAKE"/>
<c n="Elgin" c="ELGIN"/>
<c n="Elk River" c="ELK RIVER"/>
<c n="Elysian" c="ELYSIAN"/>
<c n="Emily" c="EMILY"/>
<c n="Evansville" c="EVANSVILLE"/>
<c n="Excelsior" c="EXCELSIOR"/>
<c n="Fairfax" c="FAIRFAX"/>
<c n="Faribault" c="FARIBAULT"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Finlayson" c="FINLAYSON"/>
<c n="Foley" c="FOLEY"/>
<c n="Forest Lake" c="FOREST LAKE"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Garfield" c="GARFIELD"/>
<c n="Gaylord" c="GAYLORD"/>
<c n="Gibbon" c="GIBBON"/>
<c n="Glencoe" c="GLENCOE"/>
<c n="Glenwood" c="GLENWOOD"/>
<c n="Goodhue" c="GOODHUE"/>
<c n="Graceville" c="GRACEVILLE"/>
<c n="Grandy" c="GRANDY"/>
<c n="Granite Falls" c="GRANITE FALLS"/>
<c n="Grey Eagle" c="GREY EAGLE"/>
<c n="Grove City" c="GROVE CITY"/>
<c n="Hackensack" c="HACKENSACK"/>
<c n="Hamel" c="HAMEL"/>
<c n="Hancock" c="HANCOCK"/>
<c n="Hastings" c="HASTINGS"/>
<c n="Hector" c="HECTOR"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Herman" c="HERMAN"/>
<c n="Heron Lake" c="HERON LAKE"/>
<c n="Hewitt" c="HEWITT"/>
<c n="Hill City" c="HILL CITY"/>
<c n="Hinckley" c="HINCKLEY"/>
<c n="Hoffman" c="HOFFMAN"/>
<c n="Holdingford" c="HOLDINGFORD"/>
<c n="Hopkins" c="HOPKINS"/>
<c n="Howard Lake" c="HOWARD LAKE"/>
<c n="Hugo" c="HUGO"/>
<c n="Hutchinson" c="HUTCHINSON"/>
<c n="Inver Grove Heights" c="INVER GROVE HEIGHTS"/>
<c n="Ironton" c="IRONTON"/>
<c n="Isanti" c="ISANTI"/>
<c n="Isle" c="ISLE"/>
<c n="Jackson" c="JACKSON"/>
<c n="Janesville" c="JANESVILLE"/>
<c n="Jeffers" c="JEFFERS"/>
<c n="Jordan" c="JORDAN"/>
<c n="Kandiyohi" c="KANDIYOHI"/>
<c n="Kasota" c="KASOTA"/>
<c n="Kelliher" c="KELLIHER"/>
<c n="Kenyon" c="KENYON"/>
<c n="Kerkhoven" c="KERKHOVEN"/>
<c n="Kiester" c="KIESTER"/>
<c n="Kimball" c="KIMBALL"/>
<c n="Lafayette" c="LAFAYETTE"/>
<c n="Lake City" c="LAKE CITY"/>
<c n="Lake Elmo" c="LAKE ELMO"/>
<c n="Lake Lillian" c="LAKE LILLIAN"/>
<c n="Lakefield" c="LAKEFIELD"/>
<c n="Lakeville" c="LAKEVILLE"/>
<c n="Lamberton" c="LAMBERTON"/>
<c n="Laporte" c="LAPORTE"/>
<c n="Le Center" c="LE CENTER"/>
<c n="Le Sueur" c="LE SUEUR"/>
<c n="Lester Prairie" c="LESTER PRAIRIE"/>
<c n="Lindstrom" c="LINDSTROM"/>
<c n="Litchfield" c="LITCHFIELD"/>
<c n="Little Falls" c="LITTLE FALLS"/>
<c n="Long Lake" c="LONG LAKE"/>
<c n="Long Prairie" c="LONG PRAIRIE"/>
<c n="Longville" c="LONGVILLE"/>
<c n="Lonsdale" c="LONSDALE"/>
<c n="Loretto" c="LORETTO"/>
<c n="Lynd" c="LYND"/>
<c n="Madison" c="MADISON"/>
<c n="Maple Lake" c="MAPLE LAKE"/>
<c n="Maple Plain" c="MAPLE PLAIN"/>
<c n="Marshall" c="MARSHALL"/>
<c n="Maynard" c="MAYNARD"/>
<c n="Mazeppa" c="MAZEPPA"/>
<c n="McGregor" c="MCGREGOR"/>
<c n="Medford" c="MEDFORD"/>
<c n="Melrose" c="MELROSE"/>
<c n="Menahga" c="MENAHGA"/>
<c n="Milaca" c="MILACA"/>
<c n="Milan" c="MILAN"/>
<c n="Millville" c="MILLVILLE"/>
<c n="Milroy" c="MILROY"/>
<c n="Minneapolis" c="MINNEAPOLIS"/>
<c n="Minneota" c="MINNEOTA"/>
<c n="Minnesota Lake" c="MINNESOTA LAKE"/>
<c n="Minnetonka" c="MINNETONKA"/>
<c n="Montevideo" c="MONTEVIDEO"/>
<c n="Montgomery" c="MONTGOMERY"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="Montrose" c="MONTROSE"/>
<c n="Mora" c="MORA"/>
<c n="Morgan" c="MORGAN"/>
<c n="Morris" c="MORRIS"/>
<c n="Morristown" c="MORRISTOWN"/>
<c n="Motley" c="MOTLEY"/>
<c n="Mound" c="MOUND"/>
<c n="Mountain Lake" c="MOUNTAIN LAKE"/>
<c n="Nevis" c="NEVIS"/>
<c n="New London" c="NEW LONDON"/>
<c n="New Prague" c="NEW PRAGUE"/>
<c n="New Richland" c="NEW RICHLAND"/>
<c n="Newport" c="NEWPORT"/>
<c n="Nicollet" c="NICOLLET"/>
<c n="North Branch" c="NORTH BRANCH"/>
<c n="Northfield" c="NORTHFIELD"/>
<c n="Norwood Young America" c="NORWOOD YOUNG AMERICA"/>
<c n="Ogilvie" c="OGILVIE"/>
<c n="Okabena" c="OKABENA"/>
<c n="Olivia" c="OLIVIA"/>
<c n="Onamia" c="ONAMIA"/>
<c n="Ortonville" c="ORTONVILLE"/>
<c n="Osakis" c="OSAKIS"/>
<c n="Osseo" c="OSSEO"/>
<c n="Owatonna" c="OWATONNA"/>
<c n="Park Rapids" c="PARK RAPIDS"/>
<c n="Paynesville" c="PAYNESVILLE"/>
<c n="Pennington" c="PENNINGTON"/>
<c n="Pequot Lakes" c="PEQUOT LAKES"/>
<c n="Pierz" c="PIERZ"/>
<c n="Pillager" c="PILLAGER"/>
<c n="Pine City" c="PINE CITY"/>
<c n="Pine River" c="PINE RIVER"/>
<c n="Plainview" c="PLAINVIEW"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Prinsburg" c="PRINSBURG"/>
<c n="Prior Lake" c="PRIOR LAKE"/>
<c n="Randolph" c="RANDOLPH"/>
<c n="Raymond" c="RAYMOND"/>
<c n="Red Wing" c="RED WING"/>
<c n="Red Lake" c="RED LAKE"/>
<c n="Redwood Falls" c="REDWOOD FALLS"/>
<c n="Remer" c="REMER"/>
<c n="Renville" c="RENVILLE"/>
<c n="Rice" c="RICE"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Rockford" c="ROCKFORD"/>
<c n="Rogers" c="ROGERS"/>
<c n="Rosemount" c="ROSEMOUNT"/>
<c n="Royalton" c="ROYALTON"/>
<c n="Rush City" c="RUSH CITY"/>
<c n="Russell" c="RUSSELL"/>
<c n="Sacred Heart" c="SACRED HEART"/>
<c n="Sanborn" c="SANBORN"/>
<c n="Sandstone" c="SANDSTONE"/>
<c n="Sartell" c="SARTELL"/>
<c n="Sauk Centre" c="SAUK CENTRE"/>
<c n="Sauk Rapids" c="SAUK RAPIDS"/>
<c n="Savage" c="SAVAGE"/>
<c n="Sebeka" c="SEBEKA"/>
<c n="Shakopee" c="SHAKOPEE"/>
<c n="Silver Lake" c="SILVER LAKE"/>
<c n="South Haven" c="SOUTH HAVEN"/>
<c n="South Saint Paul" c="SOUTH SAINT PAUL"/>
<c n="Spicer" c="SPICER"/>
<c n="Spring Park" c="SPRING PARK"/>
<c n="St. Bonifacius" c="ST. BONIFACIUS"/>
<c n="Saint Cloud" c="SAINT CLOUD"/>
<c n="St. Francis" c="ST. FRANCIS"/>
<c n="St. Michael" c="ST. MICHAEL"/>
<c n="Saint Paul" c="SAINT PAUL"/>
<c n="St. Paul Park" c="ST. PAUL PARK"/>
<c n="Saint Peter" c="SAINT PETER"/>
<c n="Stacy" c="STACY"/>
<c n="Staples" c="STAPLES"/>
<c n="Starbuck" c="STARBUCK"/>
<c n="Stewart" c="STEWART"/>
<c n="Stillwater" c="STILLWATER"/>
<c n="Sturgeon Lake" c="STURGEON LAKE"/>
<c n="Swanville" c="SWANVILLE"/>
<c n="Tracy" c="TRACY"/>
<c n="Upsala" c="UPSALA"/>
<c n="Vermillion" c="VERMILLION"/>
<c n="Verndale" c="VERNDALE"/>
<c n="Vesta" c="VESTA"/>
<c n="Victoria" c="VICTORIA"/>
<c n="Wabasha" c="WABASHA"/>
<c n="Wabasso" c="WABASSO"/>
<c n="Waconia" c="WACONIA"/>
<c n="Wadena" c="WADENA"/>
<c n="Waite Park" c="WAITE PARK"/>
<c n="Walker" c="WALKER"/>
<c n="Walnut Grove" c="WALNUT GROVE"/>
<c n="Wanamingo" c="WANAMINGO"/>
<c n="Waseca" c="WASECA"/>
<c n="Watertown" c="WATERTOWN"/>
<c n="Waterville" c="WATERVILLE"/>
<c n="Waverly" c="WAVERLY"/>
<c n="Wayzata" c="WAYZATA"/>
<c n="Webster" c="WEBSTER"/>
<c n="Wells" c="WELLS"/>
<c n="Westbrook" c="WESTBROOK"/>
<c n="Wheaton" c="WHEATON"/>
<c n="Willmar" c="WILLMAR"/>
<c n="Willow River" c="WILLOW RIVER"/>
<c n="Windom" c="WINDOM"/>
<c n="Winnebago" c="WINNEBAGO"/>
<c n="Winsted" c="WINSTED"/>
<c n="Winthrop" c="WINTHROP"/>
<c n="Wood Lake" c="WOOD LAKE"/>
<c n="Wyoming" c="WYOMING"/>
<c n="Young America" c="YOUNG AMERICA"/>
<c n="Zimmerman" c="ZIMMERMAN"/>
<c n="Zumbrota" c="ZUMBROTA"/>
<c n="Amery" c="AMERY"/>
<c n="Baldwin" c="BALDWIN"/>
<c n="Balsam Lake" c="BALSAM LAKE"/>
<c n="Barron" c="BARRON"/>
<c n="Birchwood" c="BIRCHWOOD"/>
<c n="Boyceville" c="BOYCEVILLE"/>
<c n="Cameron" c="CAMERON"/>
<c n="Centuria" c="CENTURIA"/>
<c n="Chetek" c="CHETEK"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Clear Lake" c="CLEAR LAKE"/>
<c n="Colfax" c="COLFAX"/>
<c n="Cumberland" c="CUMBERLAND"/>
<c n="Dallas" c="DALLAS"/>
<c n="Downsville" c="DOWNSVILLE"/>
<c n="Dresser" c="DRESSER"/>
<c n="Elk Mound" c="ELK MOUND"/>
<c n="Ellsworth" c="ELLSWORTH"/>
<c n="Elmwood" c="ELMWOOD"/>
<c n="Frederic" c="FREDERIC"/>
<c n="Glenwood City" c="GLENWOOD CITY"/>
<c n="Grantsburg" c="GRANTSBURG"/>
<c n="Hammond" c="HAMMOND"/>
<c n="Hudson" c="HUDSON"/>
<c n="Luck" c="LUCK"/>
<c n="Menomonie" c="MENOMONIE"/>
<c n="Milltown" c="MILLTOWN"/>
<c n="Minong" c="MINONG"/>
<c n="New Richmond" c="NEW RICHMOND"/>
<c n="Osceola" c="OSCEOLA"/>
<c n="Plum City" c="PLUM CITY"/>
<c n="Prairie Farm" c="PRAIRIE FARM"/>
<c n="Prescott" c="PRESCOTT"/>
<c n="Rice Lake" c="RICE LAKE"/>
<c n="River Falls" c="RIVER FALLS"/>
<c n="Shell Lake" c="SHELL LAKE"/>
<c n="Siren" c="SIREN"/>
<c n="Somerset" c="SOMERSET"/>
<c n="Spooner" c="SPOONER"/>
<c n="Spring Valley" c="SPRING VALLEY"/>
<c n="St. Croix Falls" c="ST. CROIX FALLS"/>
<c n="Turtle Lake" c="TURTLE LAKE"/>
<c n="Webster" c="WEBSTER"/>
<c n="Wilson" c="WILSON"/>
<c n="Woodville" c="WOODVILLE"/>
<c n="Apple Valley" c="APPLE VALLEY"/>
<c n="Arden Hills" c="ARDEN HILLS"/>
<c n="Blaine" c="BLAINE"/>
<c n="Bloomington" c="BLOOMINGTON"/>
<c n="Breezy Point" c="BREEZY POINT"/>
<c n="Brooklyn Center" c="BROOKLYN CENTER"/>
<c n="Brooklyn Park" c="BROOKLYN PARK"/>
<c n="Columbia Heights" c="COLUMBIA HEIGHTS"/>
<c n="Coon Rapids" c="COON RAPIDS"/>
<c n="Crosslake" c="CROSSLAKE"/>
<c n="Crystal" c="CRYSTAL"/>
<c n="Eagan" c="EAGAN"/>
<c n="Edina" c="EDINA"/>
<c n="Elko New Market" c="ELKO NEW MARKET"/>
<c n="Falcon Heights" c="FALCON HEIGHTS"/>
<c n="Fridley" c="FRIDLEY"/>
<c n="Golden Valley" c="GOLDEN VALLEY"/>
<c n="Ham Lake" c="HAM LAKE"/>
<c n="Lino Lakes" c="LINO LAKES"/>
<c n="Mahtomedi" c="MAHTOMEDI"/>
<c n="Maple Grove" c="MAPLE GROVE"/>
<c n="Maplewood" c="MAPLEWOOD"/>
<c n="Mayer" c="MAYER"/>
<c n="Medina" c="MEDINA"/>
<c n="Mendota Heights" c="MENDOTA HEIGHTS"/>
<c n="Minnetrista" c="MINNETRISTA"/>
<c n="Mounds View" c="MOUNDS VIEW"/>
<c n="New Brighton" c="NEW BRIGHTON"/>
<c n="New Hope" c="NEW HOPE"/>
<c n="North St. Paul" c="NORTH ST. PAUL"/>
<c n="Oakdale" c="OAKDALE"/>
<c n="Orono" c="ORONO"/>
<c n="Otsego" c="OTSEGO"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Ramsey" c="RAMSEY"/>
<c n="Richfield" c="RICHFIELD"/>
<c n="Robbinsdale" c="ROBBINSDALE"/>
<c n="Roseville" c="ROSEVILLE"/>
<c n="Shoreview" c="SHOREVIEW"/>
<c n="Shorewood" c="SHOREWOOD"/>
<c n="Spring Lake Park" c="SPRING LAKE PARK"/>
<c n="St. Joseph" c="ST. JOSEPH"/>
<c n="Saint Louis Park" c="SAINT LOUIS PARK"/>
<c n="West St. Paul" c="WEST ST. PAUL"/>
<c n="White Bear Lake" c="WHITE BEAR LAKE"/>
<c n="Woodbury" c="WOODBURY"/></dma>
    
    <dma code="737" title="Mankato, MN">
<c n="Butterfield" c="BUTTERFIELD"/>
<c n="Eagle Lake" c="EAGLE LAKE"/>
<c n="Fairmont" c="FAIRMONT"/>
<c n="Good Thunder" c="GOOD THUNDER"/>
<c n="Granada" c="GRANADA"/>
<c n="Hanska" c="HANSKA"/>
<c n="Lake Crystal" c="LAKE CRYSTAL"/>
<c n="Lewisville" c="LEWISVILLE"/>
<c n="Madelia" c="MADELIA"/>
<c n="Mankato" c="MANKATO"/>
<c n="Mapleton" c="MAPLETON"/>
<c n="New Ulm" c="NEW ULM"/>
<c n="Odin" c="ODIN"/>
<c n="Sherburn" c="SHERBURN"/>
<c n="Sleepy Eye" c="SLEEPY EYE"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="St. Clair" c="ST. CLAIR"/>
<c n="Saint James" c="SAINT JAMES"/>
<c n="Trimont" c="TRIMONT"/>
<c n="Truman" c="TRUMAN"/>
<c n="Welcome" c="WELCOME"/></dma>
    </state>
<state id="WI" full_name="Wisconsin">
    <dma code="617" title="Milwaukee, WI">
<c n="Allenton" c="ALLENTON"/>
<c n="Ashippun" c="ASHIPPUN"/>
<c n="Bassett" c="BASSETT"/>
<c n="Beaver Dam" c="BEAVER DAM"/>
<c n="Belgium" c="BELGIUM"/>
<c n="Big Bend" c="BIG BEND"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Brookfield" c="BROOKFIELD"/>
<c n="Brownsville" c="BROWNSVILLE"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Butler" c="BUTLER"/>
<c n="Cascade" c="CASCADE"/>
<c n="Cedar Grove" c="CEDAR GROVE"/>
<c n="Cedarburg" c="CEDARBURG"/>
<c n="Cudahy" c="CUDAHY"/>
<c n="Delafield" c="DELAFIELD"/>
<c n="Delavan" c="DELAVAN"/>
<c n="Dousman" c="DOUSMAN"/>
<c n="Eagle" c="EAGLE"/>
<c n="East Troy" c="EAST TROY"/>
<c n="Elkhart Lake" c="ELKHART LAKE"/>
<c n="Elkhorn" c="ELKHORN"/>
<c n="Elm Grove" c="ELM GROVE"/>
<c n="Fontana-on-Geneva Lake" c="FONTANA-ON-GENEVA LAKE"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Franksville" c="FRANKSVILLE"/>
<c n="Fredonia" c="FREDONIA"/>
<c n="Fort Atkinson" c="FORT ATKINSON"/>
<c n="Germantown" c="GERMANTOWN"/>
<c n="Grafton" c="GRAFTON"/>
<c n="Greendale" c="GREENDALE"/>
<c n="Hales Corners" c="HALES CORNERS"/>
<c n="Hartford" c="HARTFORD"/>
<c n="Hartland" c="HARTLAND"/>
<c n="Helenville" c="HELENVILLE"/>
<c n="Horicon" c="HORICON"/>
<c n="Hubertus" c="HUBERTUS"/>
<c n="Hustisford" c="HUSTISFORD"/>
<c n="Iron Ridge" c="IRON RIDGE"/>
<c n="Jackson" c="JACKSON"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Johnson Creek" c="JOHNSON CREEK"/>
<c n="Juneau" c="JUNEAU"/>
<c n="Kenosha" c="KENOSHA"/>
<c n="Kewaskum" c="KEWASKUM"/>
<c n="Kohler" c="KOHLER"/>
<c n="Lake Geneva" c="LAKE GENEVA"/>
<c n="Lake Mills" c="LAKE MILLS"/>
<c n="Lannon" c="LANNON"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Lomira" c="LOMIRA"/>
<c n="Lowell" c="LOWELL"/>
<c n="Mayville" c="MAYVILLE"/>
<c n="Menomonee Falls" c="MENOMONEE FALLS"/>
<c n="Mequon" c="MEQUON"/>
<c n="Merton" c="MERTON"/>
<c n="Milwaukee" c="MILWAUKEE"/>
<c n="Mukwonago" c="MUKWONAGO"/>
<c n="Muskego" c="MUSKEGO"/>
<c n="Nashotah" c="NASHOTAH"/>
<c n="Neosho" c="NEOSHO"/>
<c n="New Berlin" c="NEW BERLIN"/>
<c n="Newburg" c="NEWBURG"/>
<c n="North Lake" c="NORTH LAKE"/>
<c n="North Prairie" c="NORTH PRAIRIE"/>
<c n="Oak Creek" c="OAK CREEK"/>
<c n="Oconomowoc" c="OCONOMOWOC"/>
<c n="Okauchee" c="OKAUCHEE"/>
<c n="Oostburg" c="OOSTBURG"/>
<c n="Palmyra" c="PALMYRA"/>
<c n="City of Pewaukee" c="CITY OF PEWAUKEE"/>
<c n="Pleasant Prairie" c="PLEASANT PRAIRIE"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Port Washington" c="PORT WASHINGTON"/>
<c n="Racine" c="RACINE"/>
<c n="Random Lake" c="RANDOM LAKE"/>
<c n="Richfield" c="RICHFIELD"/>
<c n="Rochester" c="ROCHESTER"/>
<c n="Rubicon" c="RUBICON"/>
<c n="Salem" c="SALEM"/>
<c n="Saukville" c="SAUKVILLE"/>
<c n="Sharon" c="SHARON"/>
<c n="Sheboygan" c="SHEBOYGAN"/>
<c n="Sheboygan Falls" c="SHEBOYGAN FALLS"/>
<c n="Silver Lake" c="SILVER LAKE"/>
<c n="Slinger" c="SLINGER"/>
<c n="South Milwaukee" c="SOUTH MILWAUKEE"/>
<c n="Sturtevant" c="STURTEVANT"/>
<c n="Sullivan" c="SULLIVAN"/>
<c n="Sussex" c="SUSSEX"/>
<c n="Thiensville" c="THIENSVILLE"/>
<c n="Trevor" c="TREVOR"/>
<c n="Twin Lakes" c="TWIN LAKES"/>
<c n="Union Grove" c="UNION GROVE"/>
<c n="Wales" c="WALES"/>
<c n="Walworth" c="WALWORTH"/>
<c n="Tichigan" c="TICHIGAN"/>
<c n="Waterloo" c="WATERLOO"/>
<c n="Watertown" c="WATERTOWN"/>
<c n="Waukesha" c="WAUKESHA"/>
<c n="West Bend" c="WEST BEND"/>
<c n="Whitewater" c="WHITEWATER"/>
<c n="Williams Bay" c="WILLIAMS BAY"/>
<c n="Wilmot" c="WILMOT"/>
<c n="Bayside" c="BAYSIDE"/>
<c n="Brown Deer" c="BROWN DEER"/>
<c n="Caledonia" c="CALEDONIA"/>
<c n="Camp Lake" c="CAMP LAKE"/>
<c n="Fox Point" c="FOX POINT"/>
<c n="Glendale" c="GLENDALE"/>
<c n="Greenfield" c="GREENFIELD"/>
<c n="Howards Grove" c="HOWARDS GROVE"/>
<c n="Mount Pleasant" c="MOUNT PLEASANT"/>
<c n="Paddock Lake" c="PADDOCK LAKE"/>
<c n="Pewaukee" c="PEWAUKEE"/>
<c n="Shorewood" c="SHOREWOOD"/>
<c n="St. Francis" c="ST. FRANCIS"/>
<c n="Wauwatosa" c="WAUWATOSA"/>
<c n="West Allis" c="WEST ALLIS"/>
<c n="West Milwaukee" c="WEST MILWAUKEE"/>
<c n="Whitefish Bay" c="WHITEFISH BAY"/></dma>
    
    <dma code="658" title="Green Bay-Appleton, WI">
<c n="Carney" c="CARNEY"/>
<c n="Menominee" c="MENOMINEE"/>
<c n="Stephenson" c="STEPHENSON"/>
<c n="Wallace" c="WALLACE"/>
<c n="Abrams" c="ABRAMS"/>
<c n="Algoma" c="ALGOMA"/>
<c n="Amberg" c="AMBERG"/>
<c n="Appleton" c="APPLETON"/>
<c n="Bear Creek" c="BEAR CREEK"/>
<c n="Berlin" c="BERLIN"/>
<c n="Bonduel" c="BONDUEL"/>
<c n="Bowler" c="BOWLER"/>
<c n="Brillion" c="BRILLION"/>
<c n="Brussels" c="BRUSSELS"/>
<c n="Campbellsport" c="CAMPBELLSPORT"/>
<c n="Casco" c="CASCO"/>
<c n="Chilton" c="CHILTON"/>
<c n="Cleveland" c="CLEVELAND"/>
<c n="Clintonville" c="CLINTONVILLE"/>
<c n="Coleman" c="COLEMAN"/>
<c n="Coloma" c="COLOMA"/>
<c n="Combined Locks" c="COMBINED LOCKS"/>
<c n="Crivitz" c="CRIVITZ"/>
<c n="De Pere" c="DE PERE"/>
<c n="Denmark" c="DENMARK"/>
<c n="Eden" c="EDEN"/>
<c n="Fairwater" c="FAIRWATER"/>
<c n="Fish Creek" c="FISH CREEK"/>
<c n="Florence" c="FLORENCE"/>
<c n="Fond du Lac" c="FOND DU LAC"/>
<c n="Forestville" c="FORESTVILLE"/>
<c n="Francis Creek" c="FRANCIS CREEK"/>
<c n="Freedom" c="FREEDOM"/>
<c n="Gillett" c="GILLETT"/>
<c n="Green Bay" c="GREEN BAY"/>
<c n="Green Lake" c="GREEN LAKE"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Hancock" c="HANCOCK"/>
<c n="Hilbert" c="HILBERT"/>
<c n="Hortonville" c="HORTONVILLE"/>
<c n="Iola" c="IOLA"/>
<c n="Kaukauna" c="KAUKAUNA"/>
<c n="Keshena" c="KESHENA"/>
<c n="Kewaunee" c="KEWAUNEE"/>
<c n="Kiel" c="KIEL"/>
<c n="Kimberly" c="KIMBERLY"/>
<c n="Lena" c="LENA"/>
<c n="Little Chute" c="LITTLE CHUTE"/>
<c n="Luxemburg" c="LUXEMBURG"/>
<c n="Manawa" c="MANAWA"/>
<c n="Manitowoc" c="MANITOWOC"/>
<c n="Marinette" c="MARINETTE"/>
<c n="Marion" c="MARION"/>
<c n="Markesan" c="MARKESAN"/>
<c n="Menasha" c="MENASHA"/>
<c n="Mishicot" c="MISHICOT"/>
<c n="Mount Calvary" c="MOUNT CALVARY"/>
<c n="Neenah" c="NEENAH"/>
<c n="New Franken" c="NEW FRANKEN"/>
<c n="New Holstein" c="NEW HOLSTEIN"/>
<c n="New London" c="NEW LONDON"/>
<c n="Newton" c="NEWTON"/>
<c n="Niagara" c="NIAGARA"/>
<c n="Oakfield" c="OAKFIELD"/>
<c n="Oconto" c="OCONTO"/>
<c n="Oconto Falls" c="OCONTO FALLS"/>
<c n="Omro" c="OMRO"/>
<c n="Oneida" c="ONEIDA"/>
<c n="Oshkosh" c="OSHKOSH"/>
<c n="Pembine" c="PEMBINE"/>
<c n="Peshtigo" c="PESHTIGO"/>
<c n="Pine River" c="PINE RIVER"/>
<c n="Plainfield" c="PLAINFIELD"/>
<c n="Potter" c="POTTER"/>
<c n="Poy Sippi" c="POY SIPPI"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Pulaski" c="PULASKI"/>
<c n="Redgranite" c="REDGRANITE"/>
<c n="Reedsville" c="REEDSVILLE"/>
<c n="Ripon" c="RIPON"/>
<c n="Rosendale" c="ROSENDALE"/>
<c n="Seymour" c="SEYMOUR"/>
<c n="Shawano" c="SHAWANO"/>
<c n="Sherwood" c="SHERWOOD"/>
<c n="Shiocton" c="SHIOCTON"/>
<c n="St. Cloud" c="ST. CLOUD"/>
<c n="Stockbridge" c="STOCKBRIDGE"/>
<c n="Sturgeon Bay" c="STURGEON BAY"/>
<c n="Suring" c="SURING"/>
<c n="Tigerton" c="TIGERTON"/>
<c n="Tisch Mills" c="TISCH MILLS"/>
<c n="Two Rivers" c="TWO RIVERS"/>
<c n="Valders" c="VALDERS"/>
<c n="Van Dyne" c="VAN DYNE"/>
<c n="Washington Island" c="WASHINGTON ISLAND"/>
<c n="Waupaca" c="WAUPACA"/>
<c n="Wausaukee" c="WAUSAUKEE"/>
<c n="Wautoma" c="WAUTOMA"/>
<c n="Weyauwega" c="WEYAUWEGA"/>
<c n="Whitelaw" c="WHITELAW"/>
<c n="Wild Rose" c="WILD ROSE"/>
<c n="Winneconne" c="WINNECONNE"/>
<c n="Wittenberg" c="WITTENBERG"/>
<c n="Wrightstown" c="WRIGHTSTOWN"/>
<c n="Allouez" c="ALLOUEZ"/>
<c n="Ashwaubenon" c="ASHWAUBENON"/>
<c n="Bellevue" c="BELLEVUE"/>
<c n="Howard" c="HOWARD"/>
<c n="Suamico" c="SUAMICO"/></dma>
    
    <dma code="669" title="Madison, WI">
<c n="Afton" c="AFTON"/>
<c n="Albany" c="ALBANY"/>
<c n="Arena" c="ARENA"/>
<c n="Argyle" c="ARGYLE"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Avoca" c="AVOCA"/>
<c n="Bagley" c="BAGLEY"/>
<c n="Baraboo" c="BARABOO"/>
<c n="Barneveld" c="BARNEVELD"/>
<c n="Belleville" c="BELLEVILLE"/>
<c n="Belmont" c="BELMONT"/>
<c n="Beloit" c="BELOIT"/>
<c n="Benton" c="BENTON"/>
<c n="Black Earth" c="BLACK EARTH"/>
<c n="Blanchardville" c="BLANCHARDVILLE"/>
<c n="Blue Mounds" c="BLUE MOUNDS"/>
<c n="Blue River" c="BLUE RIVER"/>
<c n="Boscobel" c="BOSCOBEL"/>
<c n="Briggsville" c="BRIGGSVILLE"/>
<c n="Brodhead" c="BRODHEAD"/>
<c n="Cambria" c="CAMBRIA"/>
<c n="Camp Douglas" c="CAMP DOUGLAS"/>
<c n="Cassville" c="CASSVILLE"/>
<c n="Cazenovia" c="CAZENOVIA"/>
<c n="Clinton" c="CLINTON"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Cottage Grove" c="COTTAGE GROVE"/>
<c n="Cross Plains" c="CROSS PLAINS"/>
<c n="Cuba City" c="CUBA CITY"/>
<c n="Darlington" c="DARLINGTON"/>
<c n="DeForest" c="DEFOREST"/>
<c n="Deerfield" c="DEERFIELD"/>
<c n="Dodgeville" c="DODGEVILLE"/>
<c n="Edgerton" c="EDGERTON"/>
<c n="Elroy" c="ELROY"/>
<c n="Endeavor" c="ENDEAVOR"/>
<c n="Evansville" c="EVANSVILLE"/>
<c n="Fall River" c="FALL RIVER"/>
<c n="Fennimore" c="FENNIMORE"/>
<c n="Hazel Green" c="HAZEL GREEN"/>
<c n="Highland" c="HIGHLAND"/>
<c n="Janesville" c="JANESVILLE"/>
<c n="Juda" c="JUDA"/>
<c n="La Valle" c="LA VALLE"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Livingston" c="LIVINGSTON"/>
<c n="Lodi" c="LODI"/>
<c n="Madison" c="MADISON"/>
<c n="Marshall" c="MARSHALL"/>
<c n="Mauston" c="MAUSTON"/>
<c n="Mazomanie" c="MAZOMANIE"/>
<c n="McFarland" c="MCFARLAND"/>
<c n="Merrimac" c="MERRIMAC"/>
<c n="Middleton" c="MIDDLETON"/>
<c n="Milton" c="MILTON"/>
<c n="Mineral Point" c="MINERAL POINT"/>
<c n="Monroe" c="MONROE"/>
<c n="Montello" c="MONTELLO"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="Mount Horeb" c="MOUNT HOREB"/>
<c n="Muscoda" c="MUSCODA"/>
<c n="Necedah" c="NECEDAH"/>
<c n="New Glarus" c="NEW GLARUS"/>
<c n="New Lisbon" c="NEW LISBON"/>
<c n="Oregon" c="OREGON"/>
<c n="Orfordville" c="ORFORDVILLE"/>
<c n="Oxford" c="OXFORD"/>
<c n="Packwaukee" c="PACKWAUKEE"/>
<c n="Pardeeville" c="PARDEEVILLE"/>
<c n="Patch Grove" c="PATCH GROVE"/>
<c n="Plain" c="PLAIN"/>
<c n="Platteville" c="PLATTEVILLE"/>
<c n="Portage" c="PORTAGE"/>
<c n="Potosi" c="POTOSI"/>
<c n="Poynette" c="POYNETTE"/>
<c n="Prairie du Sac" c="PRAIRIE DU SAC"/>
<c n="Reedsburg" c="REEDSBURG"/>
<c n="Richland Center" c="RICHLAND CENTER"/>
<c n="Rio" c="RIO"/>
<c n="Sauk City" c="SAUK CITY"/>
<c n="Shullsburg" c="SHULLSBURG"/>
<c n="Sinsinawa" c="SINSINAWA"/>
<c n="South Wayne" c="SOUTH WAYNE"/>
<c n="Spring Green" c="SPRING GREEN"/>
<c n="Stoughton" c="STOUGHTON"/>
<c n="Sun Prairie" c="SUN PRAIRIE"/>
<c n="Verona" c="VERONA"/>
<c n="Waunakee" c="WAUNAKEE"/>
<c n="Westfield" c="WESTFIELD"/>
<c n="Windsor" c="WINDSOR"/>
<c n="Wonewoc" c="WONEWOC"/>
<c n="Fitchburg" c="FITCHBURG"/>
<c n="Lake Delton" c="LAKE DELTON"/></dma>
    
    <dma code="676" title="Duluth, MN-Superior, WI">
<c n="Ironwood" c="IRONWOOD"/>
<c n="Wakefield" c="WAKEFIELD"/>
<c n="Watersmeet" c="WATERSMEET"/>
<c n="Aurora" c="AURORA"/>
<c n="Barnum" c="BARNUM"/>
<c n="Bigfork" c="BIGFORK"/>
<c n="Brimson" c="BRIMSON"/>
<c n="Buhl" c="BUHL"/>
<c n="Carlton" c="CARLTON"/>
<c n="Chisholm" c="CHISHOLM"/>
<c n="Cloquet" c="CLOQUET"/>
<c n="Cohasset" c="COHASSET"/>
<c n="Coleraine" c="COLERAINE"/>
<c n="Cook" c="COOK"/>
<c n="Cromwell" c="CROMWELL"/>
<c n="Deer River" c="DEER RIVER"/>
<c n="Duluth" c="DULUTH"/>
<c n="Ely" c="ELY"/>
<c n="Esko" c="ESKO"/>
<c n="Eveleth" c="EVELETH"/>
<c n="Floodwood" c="FLOODWOOD"/>
<c n="Gilbert" c="GILBERT"/>
<c n="Grand Rapids" c="GRAND RAPIDS"/>
<c n="Grand Portage" c="GRAND PORTAGE"/>
<c n="Grand Rapids" c="GRAND RAPIDS"/>
<c n="Hibbing" c="HIBBING"/>
<c n="Hoyt Lakes" c="HOYT LAKES"/>
<c n="International Falls" c="INTERNATIONAL FALLS"/>
<c n="Keewatin" c="KEEWATIN"/>
<c n="Kettle River" c="KETTLE RIVER"/>
<c n="Knife River" c="KNIFE RIVER"/>
<c n="Littlefork" c="LITTLEFORK"/>
<c n="Meadowlands" c="MEADOWLANDS"/>
<c n="Moose Lake" c="MOOSE LAKE"/>
<c n="Mountain Iron" c="MOUNTAIN IRON"/>
<c n="Nashwauk" c="NASHWAUK"/>
<c n="Northome" c="NORTHOME"/>
<c n="Schroeder" c="SCHROEDER"/>
<c n="Silver Bay" c="SILVER BAY"/>
<c n="Swan River" c="SWAN RIVER"/>
<c n="Tofte" c="TOFTE"/>
<c n="Tower" c="TOWER"/>
<c n="Two Harbors" c="TWO HARBORS"/>
<c n="Virginia" c="VIRGINIA"/>
<c n="Wrenshall" c="WRENSHALL"/>
<c n="Wright" c="WRIGHT"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Bayfield" c="BAYFIELD"/>
<c n="Butternut" c="BUTTERNUT"/>
<c n="Cable" c="CABLE"/>
<c n="Drummond" c="DRUMMOND"/>
<c n="Glidden" c="GLIDDEN"/>
<c n="Hayward" c="HAYWARD"/>
<c n="Hurley" c="HURLEY"/>
<c n="Iron River" c="IRON RIVER"/>
<c n="Maple" c="MAPLE"/>
<c n="Mellen" c="MELLEN"/>
<c n="Mercer" c="MERCER"/>
<c n="Port Wing" c="PORT WING"/>
<c n="Solon Springs" c="SOLON SPRINGS"/>
<c n="Superior" c="SUPERIOR"/>
<c n="Washburn" c="WASHBURN"/>
<c n="Winter" c="WINTER"/>
<c n="Hermantown" c="HERMANTOWN"/></dma>
    
    <dma code="702" title="La Crosse-Eau Claire, WI">
<c n="Altura" c="ALTURA"/>
<c n="Brownsville" c="BROWNSVILLE"/>
<c n="Caledonia" c="CALEDONIA"/>
<c n="Dakota" c="DAKOTA"/>
<c n="Eitzen" c="EITZEN"/>
<c n="Houston" c="HOUSTON"/>
<c n="La Crescent" c="LA CRESCENT"/>
<c n="Lewiston" c="LEWISTON"/>
<c n="Rollingstone" c="ROLLINGSTONE"/>
<c n="Spring Grove" c="SPRING GROVE"/>
<c n="St. Charles" c="ST. CHARLES"/>
<c n="Winona" c="WINONA"/>
<c n="Alma" c="ALMA"/>
<c n="Alma Center" c="ALMA CENTER"/>
<c n="Altoona" c="ALTOONA"/>
<c n="Arcadia" c="ARCADIA"/>
<c n="Augusta" c="AUGUSTA"/>
<c n="Bangor" c="BANGOR"/>
<c n="Black River Falls" c="BLACK RIVER FALLS"/>
<c n="Blair" c="BLAIR"/>
<c n="Bloomer" c="BLOOMER"/>
<c n="Bruce" c="BRUCE"/>
<c n="Cadott" c="CADOTT"/>
<c n="Cashton" c="CASHTON"/>
<c n="Chippewa Falls" c="CHIPPEWA FALLS"/>
<c n="Cochrane" c="COCHRANE"/>
<c n="Coon Valley" c="COON VALLEY"/>
<c n="Cornell" c="CORNELL"/>
<c n="De Soto" c="DE SOTO"/>
<c n="Durand" c="DURAND"/>
<c n="Eau Claire" c="EAU CLAIRE"/>
<c n="Eleva" c="ELEVA"/>
<c n="Fall Creek" c="FALL CREEK"/>
<c n="Fountain City" c="FOUNTAIN CITY"/>
<c n="Galesville" c="GALESVILLE"/>
<c n="Gays Mills" c="GAYS MILLS"/>
<c n="Gilmanton" c="GILMANTON"/>
<c n="Granton" c="GRANTON"/>
<c n="Greenwood" c="GREENWOOD"/>
<c n="Hawkins" c="HAWKINS"/>
<c n="Hillsboro" c="HILLSBORO"/>
<c n="Holcombe" c="HOLCOMBE"/>
<c n="Holmen" c="HOLMEN"/>
<c n="Independence" c="INDEPENDENCE"/>
<c n="La Crosse" c="LA CROSSE"/>
<c n="La Farge" c="LA FARGE"/>
<c n="Ladysmith" c="LADYSMITH"/>
<c n="Loyal" c="LOYAL"/>
<c n="Melrose" c="MELROSE"/>
<c n="Merrillan" c="MERRILLAN"/>
<c n="Mondovi" c="MONDOVI"/>
<c n="Neillsville" c="NEILLSVILLE"/>
<c n="Norwalk" c="NORWALK"/>
<c n="Oakdale" c="OAKDALE"/>
<c n="Onalaska" c="ONALASKA"/>
<c n="Ontario" c="ONTARIO"/>
<c n="Osseo" c="OSSEO"/>
<c n="Owen" c="OWEN"/>
<c n="Pepin" c="PEPIN"/>
<c n="Prairie du Chien" c="PRAIRIE DU CHIEN"/>
<c n="Seneca" c="SENECA"/>
<c n="Sparta" c="SPARTA"/>
<c n="Stanley" c="STANLEY"/>
<c n="Stockholm" c="STOCKHOLM"/>
<c n="Strum" c="STRUM"/>
<c n="Taylor" c="TAYLOR"/>
<c n="Thorp" c="THORP"/>
<c n="Tomah" c="TOMAH"/>
<c n="Tony" c="TONY"/>
<c n="Viroqua" c="VIROQUA"/>
<c n="Wauzeka" c="WAUZEKA"/>
<c n="West Salem" c="WEST SALEM"/>
<c n="Westby" c="WESTBY"/>
<c n="Weyerhaeuser" c="WEYERHAEUSER"/>
<c n="Whitehall" c="WHITEHALL"/></dma>
    
    <dma code="705" title="Wausau-Rhinelander, WI">
<c n="Adams" c="ADAMS"/>
<c n="Almond" c="ALMOND"/>
<c n="Amherst" c="AMHERST"/>
<c n="Antigo" c="ANTIGO"/>
<c n="Athens" c="ATHENS"/>
<c n="Auburndale" c="AUBURNDALE"/>
<c n="Blenker" c="BLENKER"/>
<c n="Boulder Junction" c="BOULDER JUNCTION"/>
<c n="Brokaw" c="BROKAW"/>
<c n="Crandon" c="CRANDON"/>
<c n="Eagle River" c="EAGLE RIVER"/>
<c n="Edgar" c="EDGAR"/>
<c n="Elcho" c="ELCHO"/>
<c n="Fifield" c="FIFIELD"/>
<c n="Friendship" c="FRIENDSHIP"/>
<c n="Gilman" c="GILMAN"/>
<c n="Grand Marsh" c="GRAND MARSH"/>
<c n="Hewitt" c="HEWITT"/>
<c n="Junction City" c="JUNCTION CITY"/>
<c n="Lac du Flambeau" c="LAC DU FLAMBEAU"/>
<c n="Land O Lakes" c="LAND O LAKES"/>
<c n="Laona" c="LAONA"/>
<c n="Manitowish Waters" c="MANITOWISH WATERS"/>
<c n="Marathon" c="MARATHON"/>
<c n="Marshfield" c="MARSHFIELD"/>
<c n="Medford" c="MEDFORD"/>
<c n="Merrill" c="MERRILL"/>
<c n="Minocqua" c="MINOCQUA"/>
<c n="Mosinee" c="MOSINEE"/>
<c n="Nekoosa" c="NEKOOSA"/>
<c n="Park Falls" c="PARK FALLS"/>
<c n="Phelps" c="PHELPS"/>
<c n="Phillips" c="PHILLIPS"/>
<c n="Pittsville" c="PITTSVILLE"/>
<c n="Plover" c="PLOVER"/>
<c n="Prentice" c="PRENTICE"/>
<c n="Rhinelander" c="RHINELANDER"/>
<c n="Rib Lake" c="RIB LAKE"/>
<c n="Rosholt" c="ROSHOLT"/>
<c n="Rothschild" c="ROTHSCHILD"/>
<c n="Schofield" c="SCHOFIELD"/>
<c n="Spencer" c="SPENCER"/>
<c n="Stevens Point" c="STEVENS POINT"/>
<c n="Stratford" c="STRATFORD"/>
<c n="Three Lakes" c="THREE LAKES"/>
<c n="Tomahawk" c="TOMAHAWK"/>
<c n="Vesper" c="VESPER"/>
<c n="Wabeno" c="WABENO"/>
<c n="Wausau" c="WAUSAU"/>
<c n="White Lake" c="WHITE LAKE"/>
<c n="Wisconsin Rapids" c="WISCONSIN RAPIDS"/>
<c n="Woodruff" c="WOODRUFF"/>
<c n="Kronenwetter" c="KRONENWETTER"/>
<c n="Weston" c="WESTON"/></dma>
    </state>
<state id="OK" full_name="Oklahoma">
    <dma code="627" title="Wichita Falls, TX &amp;Lawton, OK">
<c n="Altus" c="ALTUS"/>
<c n="Bray" c="BRAY"/>
<c n="Duncan" c="DUNCAN"/>
<c n="Eldorado" c="ELDORADO"/>
<c n="Fletcher" c="FLETCHER"/>
<c n="Frederick" c="FREDERICK"/>
<c n="Fort Sill" c="FORT SILL"/>
<c n="Geronimo" c="GERONIMO"/>
<c n="Indiahoma" c="INDIAHOMA"/>
<c n="Lawton" c="LAWTON"/>
<c n="Marlow" c="MARLOW"/>
<c n="Terral" c="TERRAL"/>
<c n="Velma" c="VELMA"/>
<c n="Walters" c="WALTERS"/>
<c n="Waurika" c="WAURIKA"/>
<c n="Archer City" c="ARCHER CITY"/>
<c n="Bowie" c="BOWIE"/>
<c n="Burkburnett" c="BURKBURNETT"/>
<c n="Byers" c="BYERS"/>
<c n="Crowell" c="CROWELL"/>
<c n="Electra" c="ELECTRA"/>
<c n="Graham" c="GRAHAM"/>
<c n="Guthrie" c="GUTHRIE"/>
<c n="Harrold" c="HARROLD"/>
<c n="Henrietta" c="HENRIETTA"/>
<c n="Iowa Park" c="IOWA PARK"/>
<c n="Loving" c="LOVING"/>
<c n="Montague" c="MONTAGUE"/>
<c n="Olney" c="OLNEY"/>
<c n="Quanah" c="QUANAH"/>
<c n="Seymour" c="SEYMOUR"/>
<c n="Sheppard AFB" c="SHEPPARD AFB"/>
<c n="Throckmorton" c="THROCKMORTON"/>
<c n="Vernon" c="VERNON"/>
<c n="Wichita Falls" c="WICHITA FALLS"/>
<c n="Elgin" c="ELGIN"/>
<c n="Windthorst" c="WINDTHORST"/></dma>
    
    <dma code="650" title="Oklahoma City, OK">
<c n="Agra" c="AGRA"/>
<c n="Alex" c="ALEX"/>
<c n="Alva" c="ALVA"/>
<c n="Anadarko" c="ANADARKO"/>
<c n="Apache" c="APACHE"/>
<c n="Arnett" c="ARNETT"/>
<c n="Asher" c="ASHER"/>
<c n="Bessie" c="BESSIE"/>
<c n="Bethany" c="BETHANY"/>
<c n="Billings" c="BILLINGS"/>
<c n="Binger" c="BINGER"/>
<c n="Blackwell" c="BLACKWELL"/>
<c n="Blanchard" c="BLANCHARD"/>
<c n="Buffalo" c="BUFFALO"/>
<c n="Burns Flat" c="BURNS FLAT"/>
<c n="Calumet" c="CALUMET"/>
<c n="Calvin" c="CALVIN"/>
<c n="Carnegie" c="CARNEGIE"/>
<c n="Cashion" c="CASHION"/>
<c n="Chandler" c="CHANDLER"/>
<c n="Cherokee" c="CHEROKEE"/>
<c n="Cheyenne" c="CHEYENNE"/>
<c n="Chickasha" c="CHICKASHA"/>
<c n="Choctaw" c="CHOCTAW"/>
<c n="Clinton" c="CLINTON"/>
<c n="New Cordell" c="NEW CORDELL"/>
<c n="Covington" c="COVINGTON"/>
<c n="Crescent" c="CRESCENT"/>
<c n="Cromwell" c="CROMWELL"/>
<c n="Cushing" c="CUSHING"/>
<c n="Cyril" c="CYRIL"/>
<c n="Dacoma" c="DACOMA"/>
<c n="Davenport" c="DAVENPORT"/>
<c n="Eakly" c="EAKLY"/>
<c n="Earlsboro" c="EARLSBORO"/>
<c n="Edmond" c="EDMOND"/>
<c n="El Reno" c="EL RENO"/>
<c n="Elk City" c="ELK CITY"/>
<c n="Enid" c="ENID"/>
<c n="Fairview" c="FAIRVIEW"/>
<c n="Freedom" c="FREEDOM"/>
<c n="Fort Cobb" c="FORT COBB"/>
<c n="Garber" c="GARBER"/>
<c n="Glencoe" c="GLENCOE"/>
<c n="Gracemont" c="GRACEMONT"/>
<c n="Guthrie" c="GUTHRIE"/>
<c n="Hammon" c="HAMMON"/>
<c n="Harrah" c="HARRAH"/>
<c n="Hennessey" c="HENNESSEY"/>
<c n="Hinton" c="HINTON"/>
<c n="Hobart" c="HOBART"/>
<c n="Holdenville" c="HOLDENVILLE"/>
<c n="Hollis" c="HOLLIS"/>
<c n="Kaw City" c="KAW CITY"/>
<c n="Kingfisher" c="KINGFISHER"/>
<c n="Konawa" c="KONAWA"/>
<c n="Kremlin" c="KREMLIN"/>
<c n="Lamont" c="LAMONT"/>
<c n="Langston" c="LANGSTON"/>
<c n="Laverne" c="LAVERNE"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Lindsay" c="LINDSAY"/>
<c n="Lone Wolf" c="LONE WOLF"/>
<c n="Lookeba" c="LOOKEBA"/>
<c n="Mangum" c="MANGUM"/>
<c n="Maud" c="MAUD"/>
<c n="McLoud" c="MCLOUD"/>
<c n="Medford" c="MEDFORD"/>
<c n="Mooreland" c="MOORELAND"/>
<c n="Morrison" c="MORRISON"/>
<c n="Mountain View" c="MOUNTAIN VIEW"/>
<c n="Mustang" c="MUSTANG"/>
<c n="Newcastle" c="NEWCASTLE"/>
<c n="Newkirk" c="NEWKIRK"/>
<c n="Noble" c="NOBLE"/>
<c n="Norman" c="NORMAN"/>
<c n="Okarche" c="OKARCHE"/>
<c n="Okeene" c="OKEENE"/>
<c n="Okemah" c="OKEMAH"/>
<c n="Oklahoma City" c="OKLAHOMA CITY"/>
<c n="Omega" c="OMEGA"/>
<c n="Paoli" c="PAOLI"/>
<c n="Pauls Valley" c="PAULS VALLEY"/>
<c n="Perkins" c="PERKINS"/>
<c n="Perry" c="PERRY"/>
<c n="Piedmont" c="PIEDMONT"/>
<c n="Ponca City" c="PONCA CITY"/>
<c n="Pond Creek" c="POND CREEK"/>
<c n="Purcell" c="PURCELL"/>
<c n="Red Rock" c="RED ROCK"/>
<c n="Ripley" c="RIPLEY"/>
<c n="Sayre" c="SAYRE"/>
<c n="Seminole" c="SEMINOLE"/>
<c n="Sentinel" c="SENTINEL"/>
<c n="Shattuck" c="SHATTUCK"/>
<c n="Shawnee" c="SHAWNEE"/>
<c n="Stillwater" c="STILLWATER"/>
<c n="Stuart" c="STUART"/>
<c n="Sulphur" c="SULPHUR"/>
<c n="Taloga" c="TALOGA"/>
<c n="Tonkawa" c="TONKAWA"/>
<c n="Vici" c="VICI"/>
<c n="Wakita" c="WAKITA"/>
<c n="Wanette" c="WANETTE"/>
<c n="Watonga" c="WATONGA"/>
<c n="Waukomis" c="WAUKOMIS"/>
<c n="Wayne" c="WAYNE"/>
<c n="Weatherford" c="WEATHERFORD"/>
<c n="Weleetka" c="WELEETKA"/>
<c n="Wellston" c="WELLSTON"/>
<c n="Wetumka" c="WETUMKA"/>
<c n="Wewoka" c="WEWOKA"/>
<c n="Woodward" c="WOODWARD"/>
<c n="Yale" c="YALE"/>
<c n="Yukon" c="YUKON"/>
<c n="Del City" c="DEL CITY"/>
<c n="Midwest City" c="MIDWEST CITY"/>
<c n="Moore" c="MOORE"/>
<c n="Prague" c="PRAGUE"/>
<c n="Snyder" c="SNYDER"/>
<c n="Tuttle" c="TUTTLE"/></dma>
    
    <dma code="657" title="Sherman, TX-Ada, OK">
<c n="Ada" c="ADA"/>
<c n="Antlers" c="ANTLERS"/>
<c n="Ardmore" c="ARDMORE"/>
<c n="Atoka" c="ATOKA"/>
<c n="Calera" c="CALERA"/>
<c n="Clarita" c="CLARITA"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Coalgate" c="COALGATE"/>
<c n="Coleman" c="COLEMAN"/>
<c n="Durant" c="DURANT"/>
<c n="Grant" c="GRANT"/>
<c n="Healdton" c="HEALDTON"/>
<c n="Hugo" c="HUGO"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Madill" c="MADILL"/>
<c n="Marietta" c="MARIETTA"/>
<c n="Rattan" c="RATTAN"/>
<c n="Stonewall" c="STONEWALL"/>
<c n="Stringtown" c="STRINGTOWN"/>
<c n="Tishomingo" c="TISHOMINGO"/>
<c n="Tupelo" c="TUPELO"/>
<c n="Bells" c="BELLS"/>
<c n="Collinsville" c="COLLINSVILLE"/>
<c n="Denison" c="DENISON"/>
<c n="Gunter" c="GUNTER"/>
<c n="Howe" c="HOWE"/>
<c n="Pottsboro" c="POTTSBORO"/>
<c n="Sadler" c="SADLER"/>
<c n="Sherman" c="SHERMAN"/>
<c n="Tioga" c="TIOGA"/>
<c n="Tom Bean" c="TOM BEAN"/>
<c n="Van Alstyne" c="VAN ALSTYNE"/>
<c n="Whitesboro" c="WHITESBORO"/>
<c n="Whitewright" c="WHITEWRIGHT"/>
<c n="Colbert" c="COLBERT"/></dma>
    
    <dma code="671" title="Tulsa, OK">
<c n="Cedar Vale" c="CEDAR VALE"/>
<c n="Cherryvale" c="CHERRYVALE"/>
<c n="Coffeyville" c="COFFEYVILLE"/>
<c n="Elk City" c="ELK CITY"/>
<c n="Independence" c="INDEPENDENCE"/>
<c n="Sedan" c="SEDAN"/>
<c n="Adair" c="ADAIR"/>
<c n="Barnsdall" c="BARNSDALL"/>
<c n="Bartlesville" c="BARTLESVILLE"/>
<c n="Beggs" c="BEGGS"/>
<c n="Bixby" c="BIXBY"/>
<c n="Bluejacket" c="BLUEJACKET"/>
<c n="Bristow" c="BRISTOW"/>
<c n="Broken Arrow" c="BROKEN ARROW"/>
<c n="Bunch" c="BUNCH"/>
<c n="Catoosa" c="CATOOSA"/>
<c n="Checotah" c="CHECOTAH"/>
<c n="Chelsea" c="CHELSEA"/>
<c n="Chouteau" c="CHOUTEAU"/>
<c n="Claremore" c="CLAREMORE"/>
<c n="Cleveland" c="CLEVELAND"/>
<c n="Colcord" c="COLCORD"/>
<c n="Collinsville" c="COLLINSVILLE"/>
<c n="Copan" c="COPAN"/>
<c n="Coweta" c="COWETA"/>
<c n="Crowder" c="CROWDER"/>
<c n="Dewar" c="DEWAR"/>
<c n="Dewey" c="DEWEY"/>
<c n="Drumright" c="DRUMRIGHT"/>
<c n="Eufaula" c="EUFAULA"/>
<c n="Fairfax" c="FAIRFAX"/>
<c n="Foyil" c="FOYIL"/>
<c n="Fort Gibson" c="FORT GIBSON"/>
<c n="Glenpool" c="GLENPOOL"/>
<c n="Grove" c="GROVE"/>
<c n="Haileyville" c="HAILEYVILLE"/>
<c n="Hanna" c="HANNA"/>
<c n="Hartshorne" c="HARTSHORNE"/>
<c n="Haskell" c="HASKELL"/>
<c n="Henryetta" c="HENRYETTA"/>
<c n="Hominy" c="HOMINY"/>
<c n="Hulbert" c="HULBERT"/>
<c n="Indianola" c="INDIANOLA"/>
<c n="Inola" c="INOLA"/>
<c n="Jay" c="JAY"/>
<c n="Jenks" c="JENKS"/>
<c n="Kellyville" c="KELLYVILLE"/>
<c n="Keota" c="KEOTA"/>
<c n="Ketchum" c="KETCHUM"/>
<c n="Kinta" c="KINTA"/>
<c n="Langley" c="LANGLEY"/>
<c n="Leonard" c="LEONARD"/>
<c n="Locust Grove" c="LOCUST GROVE"/>
<c n="Mannford" c="MANNFORD"/>
<c n="McAlester" c="MCALESTER"/>
<c n="Milfay" c="MILFAY"/>
<c n="Moodys" c="MOODYS"/>
<c n="Mounds" c="MOUNDS"/>
<c n="Muskogee" c="MUSKOGEE"/>
<c n="Nowata" c="NOWATA"/>
<c n="Oaks" c="OAKS"/>
<c n="Oilton" c="OILTON"/>
<c n="Okmulgee" c="OKMULGEE"/>
<c n="Oologah" c="OOLOGAH"/>
<c n="Owasso" c="OWASSO"/>
<c n="Park Hill" c="PARK HILL"/>
<c n="Pawhuska" c="PAWHUSKA"/>
<c n="Pawnee" c="PAWNEE"/>
<c n="Porum" c="PORUM"/>
<c n="Prue" c="PRUE"/>
<c n="Pryor" c="PRYOR"/>
<c n="Quinton" c="QUINTON"/>
<c n="Ramona" c="RAMONA"/>
<c n="Red Oak" c="RED OAK"/>
<c n="Salina" c="SALINA"/>
<c n="Sand Springs" c="SAND SPRINGS"/>
<c n="Sapulpa" c="SAPULPA"/>
<c n="Schulter" c="SCHULTER"/>
<c n="Shidler" c="SHIDLER"/>
<c n="Skiatook" c="SKIATOOK"/>
<c n="South Coffeyville" c="SOUTH COFFEYVILLE"/>
<c n="Sperry" c="SPERRY"/>
<c n="Stidham" c="STIDHAM"/>
<c n="Stigler" c="STIGLER"/>
<c n="Stilwell" c="STILWELL"/>
<c n="Tahlequah" c="TAHLEQUAH"/>
<c n="Tulsa" c="TULSA"/>
<c n="Vinita" c="VINITA"/>
<c n="Wagoner" c="WAGONER"/>
<c n="Warner" c="WARNER"/>
<c n="Watts" c="WATTS"/>
<c n="Webbers Falls" c="WEBBERS FALLS"/>
<c n="Westville" c="WESTVILLE"/>
<c n="Wilburton" c="WILBURTON"/>
<c n="Wynona" c="WYNONA"/></dma>
    </state>
<state id="AR" full_name="Arkansas">
    <dma code="628" title="Monroe, LA-El Dorado, AR">
<c n="Crossett" c="CROSSETT"/>
<c n="El Dorado" c="EL DORADO"/>
<c n="Fountain Hill" c="FOUNTAIN HILL"/>
<c n="Hamburg" c="HAMBURG"/>
<c n="Mount Holly" c="MOUNT HOLLY"/>
<c n="Smackover" c="SMACKOVER"/>
<c n="Bastrop" c="BASTROP"/>
<c n="Calhoun" c="CALHOUN"/>
<c n="Collinston" c="COLLINSTON"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Downsville" c="DOWNSVILLE"/>
<c n="Enterprise" c="ENTERPRISE"/>
<c n="Farmerville" c="FARMERVILLE"/>
<c n="Ferriday" c="FERRIDAY"/>
<c n="Grambling" c="GRAMBLING"/>
<c n="Grayson" c="GRAYSON"/>
<c n="Harrisonburg" c="HARRISONBURG"/>
<c n="Jena" c="JENA"/>
<c n="Jonesboro" c="JONESBORO"/>
<c n="Jonesville" c="JONESVILLE"/>
<c n="Lake Providence" c="LAKE PROVIDENCE"/>
<c n="Lillie" c="LILLIE"/>
<c n="Monroe" c="MONROE"/>
<c n="Oak Grove" c="OAK GROVE"/>
<c n="Rayville" c="RAYVILLE"/>
<c n="Ruston" c="RUSTON"/>
<c n="Sicily Island" c="SICILY ISLAND"/>
<c n="St. Joseph" c="ST. JOSEPH"/>
<c n="Tallulah" c="TALLULAH"/>
<c n="Trout" c="TROUT"/>
<c n="Vidalia" c="VIDALIA"/>
<c n="Waterproof" c="WATERPROOF"/>
<c n="West Monroe" c="WEST MONROE"/>
<c n="Winnfield" c="WINNFIELD"/>
<c n="Winnsboro" c="WINNSBORO"/></dma>
    
    <dma code="670" title="Ft Smith-Springdale, AR">
<c n="Alma" c="ALMA"/>
<c n="Barling" c="BARLING"/>
<c n="Bella Vista" c="BELLA VISTA"/>
<c n="Bentonville" c="BENTONVILLE"/>
<c n="Booneville" c="BOONEVILLE"/>
<c n="Branch" c="BRANCH"/>
<c n="Charleston" c="CHARLESTON"/>
<c n="Clarksville" c="CLARKSVILLE"/>
<c n="Decatur" c="DECATUR"/>
<c n="Elm Springs" c="ELM SPRINGS"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Fayetteville" c="FAYETTEVILLE"/>
<c n="Fort Smith" c="FORT SMITH"/>
<c n="Gentry" c="GENTRY"/>
<c n="Gravette" c="GRAVETTE"/>
<c n="Greenwood" c="GREENWOOD"/>
<c n="Hackett" c="HACKETT"/>
<c n="Hartford" c="HARTFORD"/>
<c n="Huntsville" c="HUNTSVILLE"/>
<c n="Lavaca" c="LAVACA"/>
<c n="Lowell" c="LOWELL"/>
<c n="Mansfield" c="MANSFIELD"/>
<c n="Mountainburg" c="MOUNTAINBURG"/>
<c n="Ozark" c="OZARK"/>
<c n="Paris" c="PARIS"/>
<c n="Pea Ridge" c="PEA RIDGE"/>
<c n="Prairie Grove" c="PRAIRIE GROVE"/>
<c n="Rogers" c="ROGERS"/>
<c n="Siloam Springs" c="SILOAM SPRINGS"/>
<c n="Springdale" c="SPRINGDALE"/>
<c n="Subiaco" c="SUBIACO"/>
<c n="Tontitown" c="TONTITOWN"/>
<c n="Van Buren" c="VAN BUREN"/>
<c n="Waldron" c="WALDRON"/>
<c n="West Fork" c="WEST FORK"/>
<c n="Winslow" c="WINSLOW"/>
<c n="Bokoshe" c="BOKOSHE"/>
<c n="Gans" c="GANS"/>
<c n="Gore" c="GORE"/>
<c n="Heavener" c="HEAVENER"/>
<c n="Le Flore" c="LE FLORE"/>
<c n="Panama" c="PANAMA"/>
<c n="Pocola" c="POCOLA"/>
<c n="Poteau" c="POTEAU"/>
<c n="Roland" c="ROLAND"/>
<c n="Sallisaw" c="SALLISAW"/>
<c n="Spiro" c="SPIRO"/>
<c n="Talihina" c="TALIHINA"/>
<c n="Vian" c="VIAN"/>
<c n="Lincoln" c="LINCOLN"/></dma>
    
    <dma code="693" title="Little Rock-Pine Bluff, AR">
<c n="Adona" c="ADONA"/>
<c n="Alexander" c="ALEXANDER"/>
<c n="Altheimer" c="ALTHEIMER"/>
<c n="Amity" c="AMITY"/>
<c n="Arkadelphia" c="ARKADELPHIA"/>
<c n="Augusta" c="AUGUSTA"/>
<c n="Bald Knob" c="BALD KNOB"/>
<c n="Batesville" c="BATESVILLE"/>
<c n="Bauxite" c="BAUXITE"/>
<c n="Beebe" c="BEEBE"/>
<c n="Benton" c="BENTON"/>
<c n="Bigelow" c="BIGELOW"/>
<c n="Bradford" c="BRADFORD"/>
<c n="Brinkley" c="BRINKLEY"/>
<c n="Brockwell" c="BROCKWELL"/>
<c n="Bryant" c="BRYANT"/>
<c n="Cabot" c="CABOT"/>
<c n="Calico Rock" c="CALICO ROCK"/>
<c n="Camden" c="CAMDEN"/>
<c n="Carlisle" c="CARLISLE"/>
<c n="Carthage" c="CARTHAGE"/>
<c n="Center Ridge" c="CENTER RIDGE"/>
<c n="Charlotte" c="CHARLOTTE"/>
<c n="Clarendon" c="CLARENDON"/>
<c n="Clinton" c="CLINTON"/>
<c n="Conway" c="CONWAY"/>
<c n="Danville" c="DANVILLE"/>
<c n="Dardanelle" c="DARDANELLE"/>
<c n="DeWitt" c="DEWITT"/>
<c n="Dermott" c="DERMOTT"/>
<c n="Des Arc" c="DES ARC"/>
<c n="Dumas" c="DUMAS"/>
<c n="England" c="ENGLAND"/>
<c n="Enola" c="ENOLA"/>
<c n="Fairfield Bay" c="FAIRFIELD BAY"/>
<c n="Floral" c="FLORAL"/>
<c n="Fordyce" c="FORDYCE"/>
<c n="Friendship" c="FRIENDSHIP"/>
<c n="Glenwood" c="GLENWOOD"/>
<c n="Gould" c="GOULD"/>
<c n="Grady" c="GRADY"/>
<c n="Greenbrier" c="GREENBRIER"/>
<c n="Guion" c="GUION"/>
<c n="Hattieville" c="HATTIEVILLE"/>
<c n="Hazen" c="HAZEN"/>
<c n="Heber Springs" c="HEBER SPRINGS"/>
<c n="Hector" c="HECTOR"/>
<c n="Higden" c="HIGDEN"/>
<c n="Hot Springs National Park" c="HOT SPRINGS NATIONAL PARK"/>
<c n="Hot Springs Village" c="HOT SPRINGS VILLAGE"/>
<c n="Humphrey" c="HUMPHREY"/>
<c n="Jacksonville" c="JACKSONVILLE"/>
<c n="Jessieville" c="JESSIEVILLE"/>
<c n="Kensett" c="KENSETT"/>
<c n="Lake Village" c="LAKE VILLAGE"/>
<c n="Leslie" c="LESLIE"/>
<c n="Little Rock" c="LITTLE ROCK"/>
<c n="Little Rock Air Force Base" c="LITTLE ROCK AIR FORCE BASE"/>
<c n="London" c="LONDON"/>
<c n="Lonoke" c="LONOKE"/>
<c n="Mabelvale" c="MABELVALE"/>
<c n="Malvern" c="MALVERN"/>
<c n="Marshall" c="MARSHALL"/>
<c n="Maumelle" c="MAUMELLE"/>
<c n="McCrory" c="MCCRORY"/>
<c n="McGehee" c="MCGEHEE"/>
<c n="McRae" c="MCRAE"/>
<c n="Melbourne" c="MELBOURNE"/>
<c n="Mena" c="MENA"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="Morrilton" c="MORRILTON"/>
<c n="Mount Ida" c="MOUNT IDA"/>
<c n="Mount Pleasant" c="MOUNT PLEASANT"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="Mountain View" c="MOUNTAIN VIEW"/>
<c n="Newark" c="NEWARK"/>
<c n="Newport" c="NEWPORT"/>
<c n="Norman" c="NORMAN"/>
<c n="North Little Rock" c="NORTH LITTLE ROCK"/>
<c n="Pearcy" c="PEARCY"/>
<c n="Pine Bluff" c="PINE BLUFF"/>
<c n="Plainview" c="PLAINVIEW"/>
<c n="Plumerville" c="PLUMERVILLE"/>
<c n="Pottsville" c="POTTSVILLE"/>
<c n="Prescott" c="PRESCOTT"/>
<c n="Quitman" c="QUITMAN"/>
<c n="Rison" c="RISON"/>
<c n="Romance" c="ROMANCE"/>
<c n="Rosston" c="ROSSTON"/>
<c n="Russellville" c="RUSSELLVILLE"/>
<c n="Scotland" c="SCOTLAND"/>
<c n="Searcy" c="SEARCY"/>
<c n="Sheridan" c="SHERIDAN"/>
<c n="Sherwood" c="SHERWOOD"/>
<c n="Star City" c="STAR CITY"/>
<c n="Stuttgart" c="STUTTGART"/>
<c n="Sulphur Rock" c="SULPHUR ROCK"/>
<c n="Swifton" c="SWIFTON"/>
<c n="Timbo" c="TIMBO"/>
<c n="Vilonia" c="VILONIA"/>
<c n="Ward" c="WARD"/>
<c n="Warren" c="WARREN"/>
<c n="White Hall" c="WHITE HALL"/>
<c n="Wiseman" c="WISEMAN"/>
<c n="Wrightsville" c="WRIGHTSVILLE"/>
<c n="Hampton" c="HAMPTON"/>
<c n="Hatfield" c="HATFIELD"/>
<c n="Hot Springs" c="HOT SPRINGS"/></dma>
    
    <dma code="734" title="Jonesboro, AR">
<c n="Bay" c="BAY"/>
<c n="Brookland" c="BROOKLAND"/>
<c n="Corning" c="CORNING"/>
<c n="Hoxie" c="HOXIE"/>
<c n="Imboden" c="IMBODEN"/>
<c n="Jonesboro" c="JONESBORO"/>
<c n="Lynn" c="LYNN"/>
<c n="Marmaduke" c="MARMADUKE"/>
<c n="Maynard" c="MAYNARD"/>
<c n="Paragould" c="PARAGOULD"/>
<c n="Piggott" c="PIGGOTT"/>
<c n="Pocahontas" c="POCAHONTAS"/>
<c n="Rector" c="RECTOR"/>
<c n="Arkansas State University" c="ARKANSAS STATE UNIVERSITY"/>
<c n="Walnut Ridge" c="WALNUT RIDGE"/></dma>
    </state>
<state id="MS" full_name="Mississippi">
    <dma code="647" title="Greenwood-Greenville, MS">
<c n="Benoit" c="BENOIT"/>
<c n="Carrollton" c="CARROLLTON"/>
<c n="Charleston" c="CHARLESTON"/>
<c n="Cleveland" c="CLEVELAND"/>
<c n="Elliott" c="ELLIOTT"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Greenwood" c="GREENWOOD"/>
<c n="Grenada" c="GRENADA"/>
<c n="Hollandale" c="HOLLANDALE"/>
<c n="Indianola" c="INDIANOLA"/>
<c n="Inverness" c="INVERNESS"/>
<c n="Itta Bena" c="ITTA BENA"/>
<c n="Leland" c="LELAND"/>
<c n="Moorhead" c="MOORHEAD"/>
<c n="Sunflower" c="SUNFLOWER"/>
<c n="Tie Plant" c="TIE PLANT"/></dma>
    
    <dma code="673" title="Columbus-Tupelo-West Point, MS">
<c n="Millport" c="MILLPORT"/>
<c n="Sulligent" c="SULLIGENT"/>
<c n="Vernon" c="VERNON"/>
<c n="Aberdeen" c="ABERDEEN"/>
<c n="Amory" c="AMORY"/>
<c n="Baldwyn" c="BALDWYN"/>
<c n="Booneville" c="BOONEVILLE"/>
<c n="Caledonia" c="CALEDONIA"/>
<c n="Calhoun City" c="CALHOUN CITY"/>
<c n="Coffeeville" c="COFFEEVILLE"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Ecru" c="ECRU"/>
<c n="Eupora" c="EUPORA"/>
<c n="Fulton" c="FULTON"/>
<c n="Golden" c="GOLDEN"/>
<c n="Guntown" c="GUNTOWN"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="New Houlka" c="NEW HOULKA"/>
<c n="Houston" c="HOUSTON"/>
<c n="Iuka" c="IUKA"/>
<c n="Louisville" c="LOUISVILLE"/>
<c n="Maben" c="MABEN"/>
<c n="Macon" c="MACON"/>
<c n="Mathiston" c="MATHISTON"/>
<c n="McCondy" c="MCCONDY"/>
<c n="Mississippi State University" c="MISSISSIPPI STATE UNIVERSITY"/>
<c n="New Albany" c="NEW ALBANY"/>
<c n="Okolona" c="OKOLONA"/>
<c n="Pontotoc" c="PONTOTOC"/>
<c n="Shannon" c="SHANNON"/>
<c n="Starkville" c="STARKVILLE"/>
<c n="Tupelo" c="TUPELO"/>
<c n="Water Valley" c="WATER VALLEY"/>
<c n="West Point" c="WEST POINT"/>
<c n="Winona" c="WINONA"/>
<c n="Ackerman" c="ACKERMAN"/></dma>
    
    <dma code="710" title="Hattiesburg-Laurel, MS">
<c n="Bay Springs" c="BAY SPRINGS"/>
<c n="Collins" c="COLLINS"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Ellisville" c="ELLISVILLE"/>
<c n="Hattiesburg" c="HATTIESBURG"/>
<c n="Heidelberg" c="HEIDELBERG"/>
<c n="Laurel" c="LAUREL"/>
<c n="Lumberton" c="LUMBERTON"/>
<c n="Purvis" c="PURVIS"/>
<c n="Richton" c="RICHTON"/>
<c n="Soso" c="SOSO"/>
<c n="Waynesboro" c="WAYNESBORO"/>
<c n="Petal" c="PETAL"/></dma>
    
    <dma code="711" title="Meridian, MS">
<c n="Butler" c="BUTLER"/>
<c n="Livingston" c="LIVINGSTON"/>
<c n="Pennington" c="PENNINGTON"/>
<c n="York" c="YORK"/>
<c n="Conehatta" c="CONEHATTA"/>
<c n="De Kalb" c="DE KALB"/>
<c n="Decatur" c="DECATUR"/>
<c n="Enterprise" c="ENTERPRISE"/>
<c n="Lauderdale" c="LAUDERDALE"/>
<c n="Meridian" c="MERIDIAN"/>
<c n="Philadelphia" c="PHILADELPHIA"/>
<c n="Quitman" c="QUITMAN"/>
<c n="Scooba" c="SCOOBA"/>
<c n="Union" c="UNION"/></dma>
    
    <dma code="718" title="Jackson, MS">
<c n="Belzoni" c="BELZONI"/>
<c n="Brandon" c="BRANDON"/>
<c n="Brookhaven" c="BROOKHAVEN"/>
<c n="Canton" c="CANTON"/>
<c n="Carthage" c="CARTHAGE"/>
<c n="Clinton" c="CLINTON"/>
<c n="Durant" c="DURANT"/>
<c n="Fayette" c="FAYETTE"/>
<c n="Flowood" c="FLOWOOD"/>
<c n="Forest" c="FOREST"/>
<c n="Goodman" c="GOODMAN"/>
<c n="Hazlehurst" c="HAZLEHURST"/>
<c n="Jackson" c="JACKSON"/>
<c n="Kosciusko" c="KOSCIUSKO"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Madison" c="MADISON"/>
<c n="Magee" c="MAGEE"/>
<c n="Magnolia" c="MAGNOLIA"/>
<c n="McComb" c="MCCOMB"/>
<c n="Mendenhall" c="MENDENHALL"/>
<c n="Morton" c="MORTON"/>
<c n="Natchez" c="NATCHEZ"/>
<c n="Osyka" c="OSYKA"/>
<c n="Port Gibson" c="PORT GIBSON"/>
<c n="Prentiss" c="PRENTISS"/>
<c n="Raleigh" c="RALEIGH"/>
<c n="Raymond" c="RAYMOND"/>
<c n="Richland" c="RICHLAND"/>
<c n="Ridgeland" c="RIDGELAND"/>
<c n="Rolling Fork" c="ROLLING FORK"/>
<c n="Star" c="STAR"/>
<c n="Summit" c="SUMMIT"/>
<c n="Tylertown" c="TYLERTOWN"/>
<c n="Vicksburg" c="VICKSBURG"/>
<c n="Wesson" c="WESSON"/>
<c n="Yazoo City" c="YAZOO CITY"/>
<c n="Byram" c="BYRAM"/>
<c n="Crystal Springs" c="CRYSTAL SPRINGS"/>
<c n="Florence" c="FLORENCE"/>
<c n="Meadville" c="MEADVILLE"/>
<c n="Pearl" c="PEARL"/></dma>
    
    <dma code="746" title="Biloxi-Gulfport, MS">
<c n="Biloxi" c="BILOXI"/>
<c n="Gautier" c="GAUTIER"/>
<c n="Gulfport" c="GULFPORT"/>
<c n="Hurley" c="HURLEY"/>
<c n="Long Beach" c="LONG BEACH"/>
<c n="Moss Point" c="MOSS POINT"/>
<c n="Ocean Springs" c="OCEAN SPRINGS"/>
<c n="Pascagoula" c="PASCAGOULA"/>
<c n="Pass Christian" c="PASS CHRISTIAN"/>
<c n="Perkinston" c="PERKINSTON"/>
<c n="Wiggins" c="WIGGINS"/>
<c n="D Iberville" c="D IBERVILLE"/>
<c n="Vancleave" c="VANCLEAVE"/></dma>
    </state>
<state id="NE" full_name="Nebraska">
    <dma code="652" title="Omaha, NE">
<c n="Anita" c="ANITA"/>
<c n="Atlantic" c="ATLANTIC"/>
<c n="Avoca" c="AVOCA"/>
<c n="Carson" c="CARSON"/>
<c n="Carter Lake" c="CARTER LAKE"/>
<c n="Charter Oak" c="CHARTER OAK"/>
<c n="Clarinda" c="CLARINDA"/>
<c n="Coin" c="COIN"/>
<c n="College Springs" c="COLLEGE SPRINGS"/>
<c n="Council Bluffs" c="COUNCIL BLUFFS"/>
<c n="Crescent" c="CRESCENT"/>
<c n="Cumberland" c="CUMBERLAND"/>
<c n="Defiance" c="DEFIANCE"/>
<c n="Denison" c="DENISON"/>
<c n="Dunlap" c="DUNLAP"/>
<c n="Earling" c="EARLING"/>
<c n="Elk Horn" c="ELK HORN"/>
<c n="Emerson" c="EMERSON"/>
<c n="Essex" c="ESSEX"/>
<c n="Farragut" c="FARRAGUT"/>
<c n="Glenwood" c="GLENWOOD"/>
<c n="Griswold" c="GRISWOLD"/>
<c n="Hamburg" c="HAMBURG"/>
<c n="Harlan" c="HARLAN"/>
<c n="Hastings" c="HASTINGS"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Logan" c="LOGAN"/>
<c n="Malvern" c="MALVERN"/>
<c n="Manilla" c="MANILLA"/>
<c n="Massena" c="MASSENA"/>
<c n="McClelland" c="MCCLELLAND"/>
<c n="Missouri Valley" c="MISSOURI VALLEY"/>
<c n="Mondamin" c="MONDAMIN"/>
<c n="Neola" c="NEOLA"/>
<c n="Oakland" c="OAKLAND"/>
<c n="Panama" c="PANAMA"/>
<c n="Red Oak" c="RED OAK"/>
<c n="Schleswig" c="SCHLESWIG"/>
<c n="Shelby" c="SHELBY"/>
<c n="Shenandoah" c="SHENANDOAH"/>
<c n="Sidney" c="SIDNEY"/>
<c n="Stanton" c="STANTON"/>
<c n="Tabor" c="TABOR"/>
<c n="Treynor" c="TREYNOR"/>
<c n="Underwood" c="UNDERWOOD"/>
<c n="Vail" c="VAIL"/>
<c n="Villisca" c="VILLISCA"/>
<c n="Walnut" c="WALNUT"/>
<c n="Westside" c="WESTSIDE"/>
<c n="Woodbine" c="WOODBINE"/>
<c n="Fairfax" c="FAIRFAX"/>
<c n="Rockport" c="ROCKPORT"/>
<c n="Tarkio" c="TARKIO"/>
<c n="Auburn" c="AUBURN"/>
<c n="Bellevue" c="BELLEVUE"/>
<c n="Blair" c="BLAIR"/>
<c n="Boys Town" c="BOYS TOWN"/>
<c n="Ceresco" c="CERESCO"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Dodge" c="DODGE"/>
<c n="Duncan" c="DUNCAN"/>
<c n="Eagle" c="EAGLE"/>
<c n="Elkhorn" c="ELKHORN"/>
<c n="Falls City" c="FALLS CITY"/>
<c n="Fremont" c="FREMONT"/>
<c n="Fort Calhoun" c="FORT CALHOUN"/>
<c n="Gretna" c="GRETNA"/>
<c n="Hooper" c="HOOPER"/>
<c n="Howells" c="HOWELLS"/>
<c n="Humboldt" c="HUMBOLDT"/>
<c n="Humphrey" c="HUMPHREY"/>
<c n="La Vista" c="LA VISTA"/>
<c n="Murdock" c="MURDOCK"/>
<c n="Murray" c="MURRAY"/>
<c n="Nebraska City" c="NEBRASKA CITY"/>
<c n="Oakland" c="OAKLAND"/>
<c n="Offutt Air Force Base" c="OFFUTT AIR FORCE BASE"/>
<c n="Omaha" c="OMAHA"/>
<c n="Papillion" c="PAPILLION"/>
<c n="Peru" c="PERU"/>
<c n="Plattsmouth" c="PLATTSMOUTH"/>
<c n="Prague" c="PRAGUE"/>
<c n="Schuyler" c="SCHUYLER"/>
<c n="Snyder" c="SNYDER"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="Sterling" c="STERLING"/>
<c n="Syracuse" c="SYRACUSE"/>
<c n="Tecumseh" c="TECUMSEH"/>
<c n="Tekamah" c="TEKAMAH"/>
<c n="Valley" c="VALLEY"/>
<c n="Wahoo" c="WAHOO"/>
<c n="Waterloo" c="WATERLOO"/>
<c n="Weeping Water" c="WEEPING WATER"/>
<c n="West Point" c="WEST POINT"/>
<c n="Wisner" c="WISNER"/>
<c n="Chalco" c="CHALCO"/></dma>
    
    <dma code="722" title="Lincoln &amp;Hastings-Kearney, NE">
<c n="Belleville" c="BELLEVILLE"/>
<c n="Kensington" c="KENSINGTON"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Logan" c="LOGAN"/>
<c n="Phillipsburg" c="PHILLIPSBURG"/>
<c n="Smith Center" c="SMITH CENTER"/>
<c n="Ainsworth" c="AINSWORTH"/>
<c n="Albion" c="ALBION"/>
<c n="Alda" c="ALDA"/>
<c n="Alma" c="ALMA"/>
<c n="Amherst" c="AMHERST"/>
<c n="Arapahoe" c="ARAPAHOE"/>
<c n="Arcadia" c="ARCADIA"/>
<c n="Arnold" c="ARNOLD"/>
<c n="Atkinson" c="ATKINSON"/>
<c n="Aurora" c="AURORA"/>
<c n="Axtell" c="AXTELL"/>
<c n="Bartlett" c="BARTLETT"/>
<c n="Bassett" c="BASSETT"/>
<c n="Beatrice" c="BEATRICE"/>
<c n="Beaver City" c="BEAVER CITY"/>
<c n="Bertrand" c="BERTRAND"/>
<c n="Blue Hill" c="BLUE HILL"/>
<c n="Brewster" c="BREWSTER"/>
<c n="Broken Bow" c="BROKEN BOW"/>
<c n="Burwell" c="BURWELL"/>
<c n="Butte" c="BUTTE"/>
<c n="Cairo" c="CAIRO"/>
<c n="Cambridge" c="CAMBRIDGE"/>
<c n="Cedar Rapids" c="CEDAR RAPIDS"/>
<c n="Central City" c="CENTRAL CITY"/>
<c n="Chambers" c="CHAMBERS"/>
<c n="Clay Center" c="CLAY CENTER"/>
<c n="Cozad" c="COZAD"/>
<c n="Crete" c="CRETE"/>
<c n="Curtis" c="CURTIS"/>
<c n="David City" c="DAVID CITY"/>
<c n="Deshler" c="DESHLER"/>
<c n="Diller" c="DILLER"/>
<c n="Doniphan" c="DONIPHAN"/>
<c n="Dunning" c="DUNNING"/>
<c n="Elba" c="ELBA"/>
<c n="Elm Creek" c="ELM CREEK"/>
<c n="Elwood" c="ELWOOD"/>
<c n="Eustis" c="EUSTIS"/>
<c n="Exeter" c="EXETER"/>
<c n="Fairbury" c="FAIRBURY"/>
<c n="Fairmont" c="FAIRMONT"/>
<c n="Franklin" c="FRANKLIN"/>
<c n="Fullerton" c="FULLERTON"/>
<c n="Geneva" c="GENEVA"/>
<c n="Genoa" c="GENOA"/>
<c n="Gibbon" c="GIBBON"/>
<c n="Gothenburg" c="GOTHENBURG"/>
<c n="Grand Island" c="GRAND ISLAND"/>
<c n="Grant" c="GRANT"/>
<c n="Greeley Center" c="GREELEY CENTER"/>
<c n="Hastings" c="HASTINGS"/>
<c n="Hayes Center" c="HAYES CENTER"/>
<c n="Hebron" c="HEBRON"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Holdrege" c="HOLDREGE"/>
<c n="Imperial" c="IMPERIAL"/>
<c n="Kearney" c="KEARNEY"/>
<c n="Lewiston" c="LEWISTON"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Litchfield" c="LITCHFIELD"/>
<c n="Long Pine" c="LONG PINE"/>
<c n="Loup City" c="LOUP CITY"/>
<c n="Lynch" c="LYNCH"/>
<c n="Malcolm" c="MALCOLM"/>
<c n="McCook" c="MCCOOK"/>
<c n="Merna" c="MERNA"/>
<c n="Milford" c="MILFORD"/>
<c n="Minden" c="MINDEN"/>
<c n="Neligh" c="NELIGH"/>
<c n="Nelson" c="NELSON"/>
<c n="Ohiowa" c="OHIOWA"/>
<c n="O Neill" c="O NEILL"/>
<c n="Ord" c="ORD"/>
<c n="Osceola" c="OSCEOLA"/>
<c n="Overton" c="OVERTON"/>
<c n="Oxford" c="OXFORD"/>
<c n="Pawnee City" c="PAWNEE CITY"/>
<c n="Petersburg" c="PETERSBURG"/>
<c n="Pleasanton" c="PLEASANTON"/>
<c n="Ravenna" c="RAVENNA"/>
<c n="Red Cloud" c="RED CLOUD"/>
<c n="Republican City" c="REPUBLICAN CITY"/>
<c n="Scotia" c="SCOTIA"/>
<c n="Seward" c="SEWARD"/>
<c n="Shelby" c="SHELBY"/>
<c n="Shelton" c="SHELTON"/>
<c n="Silver Creek" c="SILVER CREEK"/>
<c n="Spalding" c="SPALDING"/>
<c n="Spencer" c="SPENCER"/>
<c n="Springview" c="SPRINGVIEW"/>
<c n="St. Edward" c="ST. EDWARD"/>
<c n="St. Paul" c="ST. PAUL"/>
<c n="Stockville" c="STOCKVILLE"/>
<c n="Strang" c="STRANG"/>
<c n="Stuart" c="STUART"/>
<c n="Superior" c="SUPERIOR"/>
<c n="Taylor" c="TAYLOR"/>
<c n="Trenton" c="TRENTON"/>
<c n="Waverly" c="WAVERLY"/>
<c n="Wilber" c="WILBER"/>
<c n="Wilcox" c="WILCOX"/>
<c n="Wolbach" c="WOLBACH"/>
<c n="Wood River" c="WOOD RIVER"/>
<c n="Wymore" c="WYMORE"/>
<c n="York" c="YORK"/></dma>
    
    <dma code="740" title="North Platte, NE">
<c n="Hershey" c="HERSHEY"/>
<c n="North Platte" c="NORTH PLATTE"/>
<c n="Stapleton" c="STAPLETON"/>
<c n="Sutherland" c="SUTHERLAND"/>
<c n="Tryon" c="TRYON"/></dma>
    
    <dma code="759" title="Cheyenne, WY-Scottsbluff, NE">
<c n="Gering" c="GERING"/>
<c n="Mitchell" c="MITCHELL"/>
<c n="Scottsbluff" c="SCOTTSBLUFF"/>
<c n="Cheyenne" c="CHEYENNE"/>
<c n="Francis E. Warren Air Force Base" c="FRANCIS E. WARREN AIR FORCE BASE"/>
<c n="Pine Bluffs" c="PINE BLUFFS"/>
<c n="Torrington" c="TORRINGTON"/></dma>
    </state>
<state id="ND" full_name="North Dakota">
    <dma code="687" title="Minot-Bismarck-Dickinson, ND">
<c n="Bainville" c="BAINVILLE"/>
<c n="Baker" c="BAKER"/>
<c n="Brockton" c="BROCKTON"/>
<c n="Circle" c="CIRCLE"/>
<c n="Culbertson" c="CULBERTSON"/>
<c n="Fairview" c="FAIRVIEW"/>
<c n="Medicine Lake" c="MEDICINE LAKE"/>
<c n="Plentywood" c="PLENTYWOOD"/>
<c n="Poplar" c="POPLAR"/>
<c n="Savage" c="SAVAGE"/>
<c n="Sidney" c="SIDNEY"/>
<c n="Westby" c="WESTBY"/>
<c n="Wibaux" c="WIBAUX"/>
<c n="Wolf Point" c="WOLF POINT"/>
<c n="Alexander" c="ALEXANDER"/>
<c n="Amidon" c="AMIDON"/>
<c n="Anamoose" c="ANAMOOSE"/>
<c n="Ashley" c="ASHLEY"/>
<c n="Baldwin" c="BALDWIN"/>
<c n="Bantry" c="BANTRY"/>
<c n="Beach" c="BEACH"/>
<c n="Belcourt" c="BELCOURT"/>
<c n="Belfield" c="BELFIELD"/>
<c n="Berthold" c="BERTHOLD"/>
<c n="Beulah" c="BEULAH"/>
<c n="Bismarck" c="BISMARCK"/>
<c n="Bottineau" c="BOTTINEAU"/>
<c n="Bowbells" c="BOWBELLS"/>
<c n="Bowman" c="BOWMAN"/>
<c n="Butte" c="BUTTE"/>
<c n="Carson" c="CARSON"/>
<c n="Center" c="CENTER"/>
<c n="Crosby" c="CROSBY"/>
<c n="Des Lacs" c="DES LACS"/>
<c n="Dickinson" c="DICKINSON"/>
<c n="Drake" c="DRAKE"/>
<c n="Driscoll" c="DRISCOLL"/>
<c n="Dunseith" c="DUNSEITH"/>
<c n="Elgin" c="ELGIN"/>
<c n="Fessenden" c="FESSENDEN"/>
<c n="Flasher" c="FLASHER"/>
<c n="Fort Yates" c="FORT YATES"/>
<c n="Gackle" c="GACKLE"/>
<c n="Garrison" c="GARRISON"/>
<c n="Glen Ullin" c="GLEN ULLIN"/>
<c n="Glenburn" c="GLENBURN"/>
<c n="Golden Valley" c="GOLDEN VALLEY"/>
<c n="Goodrich" c="GOODRICH"/>
<c n="Granville" c="GRANVILLE"/>
<c n="Grenora" c="GRENORA"/>
<c n="Halliday" c="HALLIDAY"/>
<c n="Harvey" c="HARVEY"/>
<c n="Hazelton" c="HAZELTON"/>
<c n="Hazen" c="HAZEN"/>
<c n="Hebron" c="HEBRON"/>
<c n="Hettinger" c="HETTINGER"/>
<c n="Kenmare" c="KENMARE"/>
<c n="Killdeer" c="KILLDEER"/>
<c n="Lehr" c="LEHR"/>
<c n="Lignite" c="LIGNITE"/>
<c n="Linton" c="LINTON"/>
<c n="Makoti" c="MAKOTI"/>
<c n="Mandan" c="MANDAN"/>
<c n="Mandaree" c="MANDAREE"/>
<c n="Manning" c="MANNING"/>
<c n="Max" c="MAX"/>
<c n="McClusky" c="MCCLUSKY"/>
<c n="McKenzie" c="MCKENZIE"/>
<c n="Medora" c="MEDORA"/>
<c n="Menoken" c="MENOKEN"/>
<c n="Mercer" c="MERCER"/>
<c n="Minot" c="MINOT"/>
<c n="Minot AFB" c="MINOT AFB"/>
<c n="Mohall" c="MOHALL"/>
<c n="Mott" c="MOTT"/>
<c n="Napoleon" c="NAPOLEON"/>
<c n="New England" c="NEW ENGLAND"/>
<c n="New Salem" c="NEW SALEM"/>
<c n="New Town" c="NEW TOWN"/>
<c n="Newburg" c="NEWBURG"/>
<c n="Noonan" c="NOONAN"/>
<c n="Parshall" c="PARSHALL"/>
<c n="Plaza" c="PLAZA"/>
<c n="Portal" c="PORTAL"/>
<c n="Powers Lake" c="POWERS LAKE"/>
<c n="Raleigh" c="RALEIGH"/>
<c n="Ray" c="RAY"/>
<c n="Regent" c="REGENT"/>
<c n="Rhame" c="RHAME"/>
<c n="Richardton" c="RICHARDTON"/>
<c n="Rolette" c="ROLETTE"/>
<c n="Rolla" c="ROLLA"/>
<c n="Roseglen" c="ROSEGLEN"/>
<c n="Rugby" c="RUGBY"/>
<c n="Sawyer" c="SAWYER"/>
<c n="Scranton" c="SCRANTON"/>
<c n="Selfridge" c="SELFRIDGE"/>
<c n="Sherwood" c="SHERWOOD"/>
<c n="Solen" c="SOLEN"/>
<c n="South Heart" c="SOUTH HEART"/>
<c n="St. John" c="ST. JOHN"/>
<c n="Stanley" c="STANLEY"/>
<c n="Stanton" c="STANTON"/>
<c n="Steele" c="STEELE"/>
<c n="Strasburg" c="STRASBURG"/>
<c n="Surrey" c="SURREY"/>
<c n="Sykeston" c="SYKESTON"/>
<c n="Tappen" c="TAPPEN"/>
<c n="Taylor" c="TAYLOR"/>
<c n="Tioga" c="TIOGA"/>
<c n="Towner" c="TOWNER"/>
<c n="Trenton" c="TRENTON"/>
<c n="Turtle Lake" c="TURTLE LAKE"/>
<c n="Tuttle" c="TUTTLE"/>
<c n="Underwood" c="UNDERWOOD"/>
<c n="Upham" c="UPHAM"/>
<c n="Velva" c="VELVA"/>
<c n="Washburn" c="WASHBURN"/>
<c n="Watford City" c="WATFORD CITY"/>
<c n="Westhope" c="WESTHOPE"/>
<c n="Wildrose" c="WILDROSE"/>
<c n="Williston" c="WILLISTON"/>
<c n="Willow City" c="WILLOW CITY"/>
<c n="Wilton" c="WILTON"/>
<c n="Wing" c="WING"/>
<c n="Wishek" c="WISHEK"/>
<c n="Wolford" c="WOLFORD"/>
<c n="Zeeland" c="ZEELAND"/>
<c n="McIntosh" c="MCINTOSH"/>
<c n="McLaughlin" c="MCLAUGHLIN"/>
<c n="Wakpala" c="WAKPALA"/></dma>
    
    <dma code="724" title="Fargo-Valley City, ND">
<c n="Ada" c="ADA"/>
<c n="Argyle" c="ARGYLE"/>
<c n="Audubon" c="AUDUBON"/>
<c n="Badger" c="BADGER"/>
<c n="Bagley" c="BAGLEY"/>
<c n="Barnesville" c="BARNESVILLE"/>
<c n="Battle Lake" c="BATTLE LAKE"/>
<c n="Baudette" c="BAUDETTE"/>
<c n="Beltrami" c="BELTRAMI"/>
<c n="Borup" c="BORUP"/>
<c n="Breckenridge" c="BRECKENRIDGE"/>
<c n="Campbell" c="CAMPBELL"/>
<c n="Clearbrook" c="CLEARBROOK"/>
<c n="Climax" c="CLIMAX"/>
<c n="Crookston" c="CROOKSTON"/>
<c n="Detroit Lakes" c="DETROIT LAKES"/>
<c n="Dilworth" c="DILWORTH"/>
<c n="East Grand Forks" c="EAST GRAND FORKS"/>
<c n="Erskine" c="ERSKINE"/>
<c n="Fergus Falls" c="FERGUS FALLS"/>
<c n="Fertile" c="FERTILE"/>
<c n="Fisher" c="FISHER"/>
<c n="Fosston" c="FOSSTON"/>
<c n="Frazee" c="FRAZEE"/>
<c n="Glyndon" c="GLYNDON"/>
<c n="Goodridge" c="GOODRIDGE"/>
<c n="Greenbush" c="GREENBUSH"/>
<c n="Grygla" c="GRYGLA"/>
<c n="Hallock" c="HALLOCK"/>
<c n="Halstad" c="HALSTAD"/>
<c n="Hawley" c="HAWLEY"/>
<c n="Henning" c="HENNING"/>
<c n="Karlstad" c="KARLSTAD"/>
<c n="Lake Park" c="LAKE PARK"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Leonard" c="LEONARD"/>
<c n="Mahnomen" c="MAHNOMEN"/>
<c n="McIntosh" c="MCINTOSH"/>
<c n="Mentor" c="MENTOR"/>
<c n="Middle River" c="MIDDLE RIVER"/>
<c n="Moorhead" c="MOORHEAD"/>
<c n="Nashua" c="NASHUA"/>
<c n="New York Mills" c="NEW YORK MILLS"/>
<c n="Newfolden" c="NEWFOLDEN"/>
<c n="Oklee" c="OKLEE"/>
<c n="Oslo" c="OSLO"/>
<c n="Ottertail" c="OTTERTAIL"/>
<c n="Parkers Prairie" c="PARKERS PRAIRIE"/>
<c n="Pelican Rapids" c="PELICAN RAPIDS"/>
<c n="Perham" c="PERHAM"/>
<c n="Plummer" c="PLUMMER"/>
<c n="Red Lake Falls" c="RED LAKE FALLS"/>
<c n="Roseau" c="ROSEAU"/>
<c n="Rothsay" c="ROTHSAY"/>
<c n="Stephen" c="STEPHEN"/>
<c n="Swift" c="SWIFT"/>
<c n="Thief River Falls" c="THIEF RIVER FALLS"/>
<c n="Twin Valley" c="TWIN VALLEY"/>
<c n="Ulen" c="ULEN"/>
<c n="Underwood" c="UNDERWOOD"/>
<c n="Warren" c="WARREN"/>
<c n="Warroad" c="WARROAD"/>
<c n="Waubun" c="WAUBUN"/>
<c n="Wolverton" c="WOLVERTON"/>
<c n="Abercrombie" c="ABERCROMBIE"/>
<c n="Adams" c="ADAMS"/>
<c n="Argusville" c="ARGUSVILLE"/>
<c n="Barney" c="BARNEY"/>
<c n="Binford" c="BINFORD"/>
<c n="Bisbee" c="BISBEE"/>
<c n="Buxton" c="BUXTON"/>
<c n="Calvin" c="CALVIN"/>
<c n="Cando" c="CANDO"/>
<c n="Carrington" c="CARRINGTON"/>
<c n="Casselton" c="CASSELTON"/>
<c n="Cavalier" c="CAVALIER"/>
<c n="Colfax" c="COLFAX"/>
<c n="Cooperstown" c="COOPERSTOWN"/>
<c n="Devils Lake" c="DEVILS LAKE"/>
<c n="Dickey" c="DICKEY"/>
<c n="Drayton" c="DRAYTON"/>
<c n="Edgeley" c="EDGELEY"/>
<c n="Edinburg" c="EDINBURG"/>
<c n="Edmore" c="EDMORE"/>
<c n="Ellendale" c="ELLENDALE"/>
<c n="Emerado" c="EMERADO"/>
<c n="Enderlin" c="ENDERLIN"/>
<c n="Fairmount" c="FAIRMOUNT"/>
<c n="Fargo" c="FARGO"/>
<c n="Finley" c="FINLEY"/>
<c n="Fordville" c="FORDVILLE"/>
<c n="Forman" c="FORMAN"/>
<c n="Fort Totten" c="FORT TOTTEN"/>
<c n="Grafton" c="GRAFTON"/>
<c n="Grand Forks" c="GRAND FORKS"/>
<c n="Grand Forks AFB" c="GRAND FORKS AFB"/>
<c n="Gwinner" c="GWINNER"/>
<c n="Hankinson" c="HANKINSON"/>
<c n="Hatton" c="HATTON"/>
<c n="Hillsboro" c="HILLSBORO"/>
<c n="Hoople" c="HOOPLE"/>
<c n="Hope" c="HOPE"/>
<c n="Hunter" c="HUNTER"/>
<c n="Inkster" c="INKSTER"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Kensal" c="KENSAL"/>
<c n="Kindred" c="KINDRED"/>
<c n="Kulm" c="KULM"/>
<c n="Lakota" c="LAKOTA"/>
<c n="LaMoure" c="LAMOURE"/>
<c n="Langdon" c="LANGDON"/>
<c n="Larimore" c="LARIMORE"/>
<c n="Leeds" c="LEEDS"/>
<c n="Lidgerwood" c="LIDGERWOOD"/>
<c n="Lisbon" c="LISBON"/>
<c n="Litchville" c="LITCHVILLE"/>
<c n="Maddock" c="MADDOCK"/>
<c n="Manvel" c="MANVEL"/>
<c n="Marion" c="MARION"/>
<c n="Mayville" c="MAYVILLE"/>
<c n="McHenry" c="MCHENRY"/>
<c n="McVille" c="MCVILLE"/>
<c n="Medina" c="MEDINA"/>
<c n="Milnor" c="MILNOR"/>
<c n="Milton" c="MILTON"/>
<c n="Minnewaukan" c="MINNEWAUKAN"/>
<c n="Minto" c="MINTO"/>
<c n="Montpelier" c="MONTPELIER"/>
<c n="Munich" c="MUNICH"/>
<c n="Neche" c="NECHE"/>
<c n="New Rockford" c="NEW ROCKFORD"/>
<c n="Northwood" c="NORTHWOOD"/>
<c n="Oakes" c="OAKES"/>
<c n="Oriska" c="ORISKA"/>
<c n="Osnabrock" c="OSNABROCK"/>
<c n="Page" c="PAGE"/>
<c n="Park River" c="PARK RIVER"/>
<c n="Pembina" c="PEMBINA"/>
<c n="Pingree" c="PINGREE"/>
<c n="Rocklake" c="ROCKLAKE"/>
<c n="Rogers" c="ROGERS"/>
<c n="Sheyenne" c="SHEYENNE"/>
<c n="Saint Thomas" c="SAINT THOMAS"/>
<c n="Starkweather" c="STARKWEATHER"/>
<c n="Thompson" c="THOMPSON"/>
<c n="Tower City" c="TOWER CITY"/>
<c n="Valley City" c="VALLEY CITY"/>
<c n="Verona" c="VERONA"/>
<c n="Wahpeton" c="WAHPETON"/>
<c n="Walhalla" c="WALHALLA"/>
<c n="Warwick" c="WARWICK"/>
<c n="West Fargo" c="WEST FARGO"/>
<c n="Wimbledon" c="WIMBLEDON"/>
<c n="Wyndmere" c="WYNDMERE"/></dma>
    </state>
<state id="SD" full_name="South Dakota">
    <dma code="725" title="Sioux Falls(Mitchell), SD">
<c n="Doon" c="DOON"/>
<c n="George" c="GEORGE"/>
<c n="Inwood" c="INWOOD"/>
<c n="Ocheyedan" c="OCHEYEDAN"/>
<c n="Rock Rapids" c="ROCK RAPIDS"/>
<c n="Sibley" c="SIBLEY"/>
<c n="Adrian" c="ADRIAN"/>
<c n="Edgerton" c="EDGERTON"/>
<c n="Ellsworth" c="ELLSWORTH"/>
<c n="Fulda" c="FULDA"/>
<c n="Hills" c="HILLS"/>
<c n="Ivanhoe" c="IVANHOE"/>
<c n="Lake Benton" c="LAKE BENTON"/>
<c n="Luverne" c="LUVERNE"/>
<c n="Magnolia" c="MAGNOLIA"/>
<c n="Pipestone" c="PIPESTONE"/>
<c n="Round Lake" c="ROUND LAKE"/>
<c n="Ruthton" c="RUTHTON"/>
<c n="Slayton" c="SLAYTON"/>
<c n="Tyler" c="TYLER"/>
<c n="Worthington" c="WORTHINGTON"/>
<c n="Thedford" c="THEDFORD"/>
<c n="Valentine" c="VALENTINE"/>
<c n="Aberdeen" c="ABERDEEN"/>
<c n="Agar" c="AGAR"/>
<c n="Alexandria" c="ALEXANDRIA"/>
<c n="Alpena" c="ALPENA"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Armour" c="ARMOUR"/>
<c n="Artesian" c="ARTESIAN"/>
<c n="Astoria" c="ASTORIA"/>
<c n="Avon" c="AVON"/>
<c n="Baltic" c="BALTIC"/>
<c n="Barnard" c="BARNARD"/>
<c n="Bath" c="BATH"/>
<c n="Big Stone City" c="BIG STONE CITY"/>
<c n="Blunt" c="BLUNT"/>
<c n="Bonesteel" c="BONESTEEL"/>
<c n="Bowdle" c="BOWDLE"/>
<c n="Brandon" c="BRANDON"/>
<c n="Bridgewater" c="BRIDGEWATER"/>
<c n="Bristol" c="BRISTOL"/>
<c n="Britton" c="BRITTON"/>
<c n="Brookings" c="BROOKINGS"/>
<c n="Burke" c="BURKE"/>
<c n="Canistota" c="CANISTOTA"/>
<c n="Canton" c="CANTON"/>
<c n="Carthage" c="CARTHAGE"/>
<c n="Castlewood" c="CASTLEWOOD"/>
<c n="Cavour" c="CAVOUR"/>
<c n="Centerville" c="CENTERVILLE"/>
<c n="Chamberlain" c="CHAMBERLAIN"/>
<c n="Chancellor" c="CHANCELLOR"/>
<c n="Chester" c="CHESTER"/>
<c n="Clark" c="CLARK"/>
<c n="Clear Lake" c="CLEAR LAKE"/>
<c n="Colman" c="COLMAN"/>
<c n="Colome" c="COLOME"/>
<c n="Colton" c="COLTON"/>
<c n="Conde" c="CONDE"/>
<c n="Corsica" c="CORSICA"/>
<c n="Cresbard" c="CRESBARD"/>
<c n="De Smet" c="DE SMET"/>
<c n="Dell Rapids" c="DELL RAPIDS"/>
<c n="Delmont" c="DELMONT"/>
<c n="Doland" c="DOLAND"/>
<c n="Egan" c="EGAN"/>
<c n="Elkton" c="ELKTON"/>
<c n="Emery" c="EMERY"/>
<c n="Estelline" c="ESTELLINE"/>
<c n="Ethan" c="ETHAN"/>
<c n="Eureka" c="EUREKA"/>
<c n="Faulkton" c="FAULKTON"/>
<c n="Flandreau" c="FLANDREAU"/>
<c n="Florence" c="FLORENCE"/>
<c n="Frederick" c="FREDERICK"/>
<c n="Freeman" c="FREEMAN"/>
<c n="Fort Pierre" c="FORT PIERRE"/>
<c n="Fort Thompson" c="FORT THOMPSON"/>
<c n="Garretson" c="GARRETSON"/>
<c n="Gayville" c="GAYVILLE"/>
<c n="Geddes" c="GEDDES"/>
<c n="Gettysburg" c="GETTYSBURG"/>
<c n="Gregory" c="GREGORY"/>
<c n="Groton" c="GROTON"/>
<c n="Harrisburg" c="HARRISBURG"/>
<c n="Harrold" c="HARROLD"/>
<c n="Hartford" c="HARTFORD"/>
<c n="Hayti" c="HAYTI"/>
<c n="Hecla" c="HECLA"/>
<c n="Henry" c="HENRY"/>
<c n="Herreid" c="HERREID"/>
<c n="Highmore" c="HIGHMORE"/>
<c n="Hitchcock" c="HITCHCOCK"/>
<c n="Hosmer" c="HOSMER"/>
<c n="Hoven" c="HOVEN"/>
<c n="Howard" c="HOWARD"/>
<c n="Humboldt" c="HUMBOLDT"/>
<c n="Hurley" c="HURLEY"/>
<c n="Huron" c="HURON"/>
<c n="Ipswich" c="IPSWICH"/>
<c n="Irene" c="IRENE"/>
<c n="Iroquois" c="IROQUOIS"/>
<c n="Isabel" c="ISABEL"/>
<c n="Kennebec" c="KENNEBEC"/>
<c n="Kimball" c="KIMBALL"/>
<c n="LaBolt" c="LABOLT"/>
<c n="Lake Andes" c="LAKE ANDES"/>
<c n="Lake Preston" c="LAKE PRESTON"/>
<c n="Langford" c="LANGFORD"/>
<c n="Lennox" c="LENNOX"/>
<c n="Leola" c="LEOLA"/>
<c n="Lesterville" c="LESTERVILLE"/>
<c n="Letcher" c="LETCHER"/>
<c n="Madison" c="MADISON"/>
<c n="Marion" c="MARION"/>
<c n="Marty" c="MARTY"/>
<c n="Mellette" c="MELLETTE"/>
<c n="Menno" c="MENNO"/>
<c n="Milbank" c="MILBANK"/>
<c n="Miller" c="MILLER"/>
<c n="Mission" c="MISSION"/>
<c n="Mitchell" c="MITCHELL"/>
<c n="Mobridge" c="MOBRIDGE"/>
<c n="Montrose" c="MONTROSE"/>
<c n="Mound City" c="MOUND CITY"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="New Effington" c="NEW EFFINGTON"/>
<c n="Norris" c="NORRIS"/>
<c n="Okreek" c="OKREEK"/>
<c n="Oldham" c="OLDHAM"/>
<c n="Onida" c="ONIDA"/>
<c n="Orient" c="ORIENT"/>
<c n="Parker" c="PARKER"/>
<c n="Parkston" c="PARKSTON"/>
<c n="Parmelee" c="PARMELEE"/>
<c n="Pierre" c="PIERRE"/>
<c n="Plankinton" c="PLANKINTON"/>
<c n="Platte" c="PLATTE"/>
<c n="Pollock" c="POLLOCK"/>
<c n="Presho" c="PRESHO"/>
<c n="Ramona" c="RAMONA"/>
<c n="Redfield" c="REDFIELD"/>
<c n="Renner" c="RENNER"/>
<c n="Revillo" c="REVILLO"/>
<c n="Roscoe" c="ROSCOE"/>
<c n="Rosebud" c="ROSEBUD"/>
<c n="Rosholt" c="ROSHOLT"/>
<c n="Roslyn" c="ROSLYN"/>
<c n="Rutland" c="RUTLAND"/>
<c n="Salem" c="SALEM"/>
<c n="Scotland" c="SCOTLAND"/>
<c n="Selby" c="SELBY"/>
<c n="Sioux Falls" c="SIOUX FALLS"/>
<c n="Sisseton" c="SISSETON"/>
<c n="South Shore" c="SOUTH SHORE"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="Saint Francis" c="SAINT FRANCIS"/>
<c n="Stickney" c="STICKNEY"/>
<c n="Stockholm" c="STOCKHOLM"/>
<c n="Summit" c="SUMMIT"/>
<c n="Tabor" c="TABOR"/>
<c n="Tea" c="TEA"/>
<c n="Timber Lake" c="TIMBER LAKE"/>
<c n="Tolstoy" c="TOLSTOY"/>
<c n="Toronto" c="TORONTO"/>
<c n="Tripp" c="TRIPP"/>
<c n="Tulare" c="TULARE"/>
<c n="Tyndall" c="TYNDALL"/>
<c n="Valley Springs" c="VALLEY SPRINGS"/>
<c n="Veblen" c="VEBLEN"/>
<c n="Vermillion" c="VERMILLION"/>
<c n="Viborg" c="VIBORG"/>
<c n="Volga" c="VOLGA"/>
<c n="Wagner" c="WAGNER"/>
<c n="Wakonda" c="WAKONDA"/>
<c n="Warner" c="WARNER"/>
<c n="Watertown" c="WATERTOWN"/>
<c n="Waubay" c="WAUBAY"/>
<c n="Waverly" c="WAVERLY"/>
<c n="Webster" c="WEBSTER"/>
<c n="Wessington" c="WESSINGTON"/>
<c n="Wessington Springs" c="WESSINGTON SPRINGS"/>
<c n="White" c="WHITE"/>
<c n="White Lake" c="WHITE LAKE"/>
<c n="White River" c="WHITE RIVER"/>
<c n="Willow Lake" c="WILLOW LAKE"/>
<c n="Wilmot" c="WILMOT"/>
<c n="Winner" c="WINNER"/>
<c n="Witten" c="WITTEN"/>
<c n="Wolsey" c="WOLSEY"/>
<c n="Wood" c="WOOD"/>
<c n="Woonsocket" c="WOONSOCKET"/>
<c n="Worthing" c="WORTHING"/>
<c n="Yankton" c="YANKTON"/></dma>
    
    <dma code="764" title="Rapid City, SD">
<c n="Ekalaka" c="EKALAKA"/>
<c n="Harrison" c="HARRISON"/>
<c n="Batesland" c="BATESLAND"/>
<c n="Belle Fourche" c="BELLE FOURCHE"/>
<c n="Bison" c="BISON"/>
<c n="Box Elder" c="BOX ELDER"/>
<c n="Buffalo" c="BUFFALO"/>
<c n="Custer" c="CUSTER"/>
<c n="Deadwood" c="DEADWOOD"/>
<c n="Dupree" c="DUPREE"/>
<c n="Edgemont" c="EDGEMONT"/>
<c n="Ellsworth AFB" c="ELLSWORTH AFB"/>
<c n="Faith" c="FAITH"/>
<c n="Hermosa" c="HERMOSA"/>
<c n="Hill City" c="HILL CITY"/>
<c n="Hot Springs" c="HOT SPRINGS"/>
<c n="Howes" c="HOWES"/>
<c n="Interior" c="INTERIOR"/>
<c n="Kadoka" c="KADOKA"/>
<c n="Kyle" c="KYLE"/>
<c n="Lead" c="LEAD"/>
<c n="Lemmon" c="LEMMON"/>
<c n="Lodgepole" c="LODGEPOLE"/>
<c n="Long Valley" c="LONG VALLEY"/>
<c n="Martin" c="MARTIN"/>
<c n="Midland" c="MIDLAND"/>
<c n="Murdo" c="MURDO"/>
<c n="New Underwood" c="NEW UNDERWOOD"/>
<c n="Newell" c="NEWELL"/>
<c n="Oelrichs" c="OELRICHS"/>
<c n="Philip" c="PHILIP"/>
<c n="Pine Ridge" c="PINE RIDGE"/>
<c n="Porcupine" c="PORCUPINE"/>
<c n="Rapid City" c="RAPID CITY"/>
<c n="Spearfish" c="SPEARFISH"/>
<c n="Sturgis" c="STURGIS"/>
<c n="Wall" c="WALL"/>
<c n="Whitewood" c="WHITEWOOD"/>
<c n="Clearmont" c="CLEARMONT"/>
<c n="Newcastle" c="NEWCASTLE"/>
<c n="Ranchester" c="RANCHESTER"/>
<c n="Sheridan" c="SHERIDAN"/>
<c n="Story" c="STORY"/>
<c n="Sundance" c="SUNDANCE"/>
<c n="Upton" c="UPTON"/>
<c n="Keystone" c="KEYSTONE"/></dma>
    </state>
<state id="AK" full_name="Alaska">
    <dma code="743" title="Anchorage, AK">
<c n="Anchorage" c="ANCHORAGE"/>
<c n="Bethel" c="BETHEL"/>
<c n="Cordova" c="CORDOVA"/>
<c n="Dillingham" c="DILLINGHAM"/>
<c n="Eagle River" c="EAGLE RIVER"/>
<c n="Elmendorf Air Force Base" c="ELMENDORF AIR FORCE BASE"/>
<c n="Girdwood" c="GIRDWOOD"/>
<c n="Glennallen" c="GLENNALLEN"/>
<c n="Homer" c="HOMER"/>
<c n="Kenai" c="KENAI"/>
<c n="Kodiak" c="KODIAK"/>
<c n="Mountain Village" c="MOUNTAIN VILLAGE"/>
<c n="Nikiski" c="NIKISKI"/>
<c n="Palmer" c="PALMER"/>
<c n="Port Lions" c="PORT LIONS"/>
<c n="Seward" c="SEWARD"/>
<c n="Soldotna" c="SOLDOTNA"/>
<c n="Saint Paul Island" c="SAINT PAUL ISLAND"/>
<c n="Tununak" c="TUNUNAK"/>
<c n="Unalaska" c="UNALASKA"/>
<c n="Valdez" c="VALDEZ"/>
<c n="Wasilla" c="WASILLA"/>
<c n="Whittier" c="WHITTIER"/>
<c n="Knik-Fairview" c="KNIK-FAIRVIEW"/>
<c n="Kongiganak" c="KONGIGANAK"/>
<c n="Point MacKenzie" c="POINT MACKENZIE"/></dma>
    
    <dma code="745" title="Fairbanks, AK">
<c n="Anderson" c="ANDERSON"/>
<c n="Atqasuk" c="ATQASUK"/>
<c n="Barrow" c="BARROW"/>
<c n="Clear" c="CLEAR"/>
<c n="Delta Junction" c="DELTA JUNCTION"/>
<c n="Eielson AFB" c="EIELSON AFB"/>
<c n="Fairbanks" c="FAIRBANKS"/>
<c n="Galena" c="GALENA"/>
<c n="Healy" c="HEALY"/>
<c n="Kotzebue" c="KOTZEBUE"/>
<c n="McGrath" c="MCGRATH"/>
<c n="Nome" c="NOME"/>
<c n="North Pole" c="NORTH POLE"/>
<c n="Tanacross" c="TANACROSS"/>
<c n="Tok" c="TOK"/>
<c n="College" c="COLLEGE"/></dma>
    
    <dma code="747" title="Juneau, AK">
<c n="Angoon" c="ANGOON"/>
<c n="Craig" c="CRAIG"/>
<c n="Gustavus" c="GUSTAVUS"/>
<c n="Haines" c="HAINES"/>
<c n="Hoonah" c="HOONAH"/>
<c n="Juneau" c="JUNEAU"/>
<c n="Ketchikan" c="KETCHIKAN"/>
<c n="Klawock" c="KLAWOCK"/>
<c n="Metlakatla" c="METLAKATLA"/>
<c n="Pelican" c="PELICAN"/>
<c n="Petersburg" c="PETERSBURG"/>
<c n="Sitka" c="SITKA"/>
<c n="Skagway" c="SKAGWAY"/>
<c n="Thorne Bay" c="THORNE BAY"/>
<c n="Wrangell" c="WRANGELL"/>
<c n="Yakutat" c="YAKUTAT"/></dma>
    </state>
<state id="HI" full_name="Hawaii">
    <dma code="744" title="Honolulu, HI">
<c n="Aiea" c="AIEA"/>
<c n="Captain Cook" c="CAPTAIN COOK"/>
<c n="Eleele" c="ELEELE"/>
<c n="Ewa Beach" c="EWA BEACH"/>
<c n="Haiku-Pauwela" c="HAIKU-PAUWELA"/>
<c n="Haleiwa" c="HALEIWA"/>
<c n="Hana" c="HANA"/>
<c n="Hanalei" c="HANALEI"/>
<c n="Hickam AFB" c="HICKAM AFB"/>
<c n="Hilo" c="HILO"/>
<c n="Honokaa" c="HONOKAA"/>
<c n="Honolulu" c="HONOLULU"/>
<c n="Ho olehua" c="HO OLEHUA"/>
<c n="Kahului" c="KAHULUI"/>
<c n="Kailua" c="KAILUA"/>
<c n="Kailua-Kona" c="KAILUA-KONA"/>
<c n="Kalaheo" c="KALAHEO"/>
<c n="Waimea" c="WAIMEA"/>
<c n="Kaneohe" c="KANEOHE"/>
<c n="Kapaa" c="KAPAA"/>
<c n="Kapaau" c="KAPAAU"/>
<c n="Kapolei" c="KAPOLEI"/>
<c n="Kaunakakai" c="KAUNAKAKAI"/>
<c n="Keaau" c="KEAAU"/>
<c n="Kealakekua" c="KEALAKEKUA"/>
<c n="Kekaha" c="KEKAHA"/>
<c n="Kihei" c="KIHEI"/>
<c n="Kilauea" c="KILAUEA"/>
<c n="Koloa" c="KOLOA"/>
<c n="Kula" c="KULA"/>
<c n="Lahaina" c="LAHAINA"/>
<c n="Laie" c="LAIE"/>
<c n="Lanai City" c="LANAI CITY"/>
<c n="Lihue" c="LIHUE"/>
<c n="Makawao" c="MAKAWAO"/>
<c n="Maunaloa" c="MAUNALOA"/>
<c n="Mililani" c="MILILANI"/>
<c n="Mountain View" c="MOUNTAIN VIEW"/>
<c n="Naalehu" c="NAALEHU"/>
<c n="Pahala" c="PAHALA"/>
<c n="Pahoa" c="PAHOA"/>
<c n="Paia" c="PAIA"/>
<c n="Pearl City" c="PEARL CITY"/>
<c n="Pukalani" c="PUKALANI"/>
<c n="Puunene" c="PUUNENE"/>
<c n="Wahiawa" c="WAHIAWA"/>
<c n="Waialua" c="WAIALUA"/>
<c n="Waianae" c="WAIANAE"/>
<c n="Waikoloa Village" c="WAIKOLOA VILLAGE"/>
<c n="Wailuku" c="WAILUKU"/>
<c n="Waipahu" c="WAIPAHU"/>
<c n="Wheeler Army Airfield" c="WHEELER ARMY AIRFIELD"/>
<c n="Ewa Gentry" c="EWA GENTRY"/>
<c n="Ewa Villages" c="EWA VILLAGES"/>
<c n="Halawa" c="HALAWA"/>
<c n="Kaanapali" c="KAANAPALI"/>
<c n="Kalaoa" c="KALAOA"/>
<c n="Makakilo City" c="MAKAKILO CITY"/>
<c n="Marine Corps Base Hawaii" c="MARINE CORPS BASE HAWAII"/>
<c n="Nanakuli" c="NANAKULI"/>
<c n="Napili-Honokowai" c="NAPILI-HONOKOWAI"/>
<c n="Princeville" c="PRINCEVILLE"/>
<c n="Puako" c="PUAKO"/>
<c n="Pupukea" c="PUPUKEA"/>
<c n="Schofield Barracks" c="SCHOFIELD BARRACKS"/>
<c n="Village Park" c="VILLAGE PARK"/>
<c n="Wailea-Makena" c="WAILEA-MAKENA"/>
<c n="Wailua" c="WAILUA"/>
<c n="Waimalu" c="WAIMALU"/>
<c n="Waipio" c="WAIPIO"/></dma>
    </state>
<state id="CO" full_name="Colorado">
    <dma code="751" title="Denver, CO">
<c n="Agate" c="AGATE"/>
<c n="Akron" c="AKRON"/>
<c n="Alamosa" c="ALAMOSA"/>
<c n="Allenspark" c="ALLENSPARK"/>
<c n="Alma" c="ALMA"/>
<c n="Anton" c="ANTON"/>
<c n="Arapahoe" c="ARAPAHOE"/>
<c n="Arvada" c="ARVADA"/>
<c n="Aspen" c="ASPEN"/>
<c n="Ault" c="AULT"/>
<c n="Aurora" c="AURORA"/>
<c n="Austin" c="AUSTIN"/>
<c n="Avon" c="AVON"/>
<c n="Bailey" c="BAILEY"/>
<c n="Basalt" c="BASALT"/>
<c n="Bellvue" c="BELLVUE"/>
<c n="Bennett" c="BENNETT"/>
<c n="Berthoud" c="BERTHOUD"/>
<c n="Bethune" c="BETHUNE"/>
<c n="Black Hawk" c="BLACK HAWK"/>
<c n="Boulder" c="BOULDER"/>
<c n="Breckenridge" c="BRECKENRIDGE"/>
<c n="Briggsdale" c="BRIGGSDALE"/>
<c n="Brighton" c="BRIGHTON"/>
<c n="Broomfield" c="BROOMFIELD"/>
<c n="Brush" c="BRUSH"/>
<c n="Buena Vista" c="BUENA VISTA"/>
<c n="Buffalo Creek" c="BUFFALO CREEK"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Byers" c="BYERS"/>
<c n="Carbondale" c="CARBONDALE"/>
<c n="Castle Rock" c="CASTLE ROCK"/>
<c n="Cedaredge" c="CEDAREDGE"/>
<c n="Center" c="CENTER"/>
<c n="Central City" c="CENTRAL CITY"/>
<c n="Cheyenne Wells" c="CHEYENNE WELLS"/>
<c n="Commerce City" c="COMMERCE CITY"/>
<c n="Aspen Park" c="ASPEN PARK"/>
<c n="Craig" c="CRAIG"/>
<c n="Crawford" c="CRAWFORD"/>
<c n="Creede" c="CREEDE"/>
<c n="Crested Butte" c="CRESTED BUTTE"/>
<c n="Dacono" c="DACONO"/>
<c n="Deer Trail" c="DEER TRAIL"/>
<c n="Del Norte" c="DEL NORTE"/>
<c n="Delta" c="DELTA"/>
<c n="Denver" c="DENVER"/>
<c n="Dillon" c="DILLON"/>
<c n="Dinosaur" c="DINOSAUR"/>
<c n="Dove Creek" c="DOVE CREEK"/>
<c n="Dumont" c="DUMONT"/>
<c n="Dupont" c="DUPONT"/>
<c n="Eagle" c="EAGLE"/>
<c n="Eastlake" c="EASTLAKE"/>
<c n="Eaton" c="EATON"/>
<c n="Edwards" c="EDWARDS"/>
<c n="Elbert" c="ELBERT"/>
<c n="Eldorado Springs" c="ELDORADO SPRINGS"/>
<c n="Elizabeth" c="ELIZABETH"/>
<c n="Empire" c="EMPIRE"/>
<c n="Englewood" c="ENGLEWOOD"/>
<c n="Erie" c="ERIE"/>
<c n="Estes Park" c="ESTES PARK"/>
<c n="Evergreen" c="EVERGREEN"/>
<c n="Fairplay" c="FAIRPLAY"/>
<c n="Firestone" c="FIRESTONE"/>
<c n="Fleming" c="FLEMING"/>
<c n="Franktown" c="FRANKTOWN"/>
<c n="Frederick" c="FREDERICK"/>
<c n="Frisco" c="FRISCO"/>
<c n="Fort Collins" c="FORT COLLINS"/>
<c n="Fort Lupton" c="FORT LUPTON"/>
<c n="Fort Morgan" c="FORT MORGAN"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Gilcrest" c="GILCREST"/>
<c n="Glen Haven" c="GLEN HAVEN"/>
<c n="Glenwood Springs" c="GLENWOOD SPRINGS"/>
<c n="Golden" c="GOLDEN"/>
<c n="Granby" c="GRANBY"/>
<c n="Grand Lake" c="GRAND LAKE"/>
<c n="Grant" c="GRANT"/>
<c n="Greeley" c="GREELEY"/>
<c n="Grover" c="GROVER"/>
<c n="Guffey" c="GUFFEY"/>
<c n="Gunnison" c="GUNNISON"/>
<c n="Gypsum" c="GYPSUM"/>
<c n="Hartman" c="HARTMAN"/>
<c n="Haxtun" c="HAXTUN"/>
<c n="Hayden" c="HAYDEN"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Holyoke" c="HOLYOKE"/>
<c n="Hot Sulphur Springs" c="HOT SULPHUR SPRINGS"/>
<c n="Hotchkiss" c="HOTCHKISS"/>
<c n="Hudson" c="HUDSON"/>
<c n="Hugo" c="HUGO"/>
<c n="Hygiene" c="HYGIENE"/>
<c n="Idaho Springs" c="IDAHO SPRINGS"/>
<c n="Idledale" c="IDLEDALE"/>
<c n="Indian Hills" c="INDIAN HILLS"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="Joes" c="JOES"/>
<c n="Johnstown" c="JOHNSTOWN"/>
<c n="Julesburg" c="JULESBURG"/>
<c n="Keenesburg" c="KEENESBURG"/>
<c n="Kersey" c="KERSEY"/>
<c n="Kiowa" c="KIOWA"/>
<c n="Kittredge" c="KITTREDGE"/>
<c n="Kremmling" c="KREMMLING"/>
<c n="La Jara" c="LA JARA"/>
<c n="La Salle" c="LA SALLE"/>
<c n="Lafayette" c="LAFAYETTE"/>
<c n="Lamar" c="LAMAR"/>
<c n="Laporte" c="LAPORTE"/>
<c n="Larkspur" c="LARKSPUR"/>
<c n="Leadville" c="LEADVILLE"/>
<c n="Limon" c="LIMON"/>
<c n="Littleton" c="LITTLETON"/>
<c n="Livermore" c="LIVERMORE"/>
<c n="Longmont" c="LONGMONT"/>
<c n="Louisville" c="LOUISVILLE"/>
<c n="Louviers" c="LOUVIERS"/>
<c n="Loveland" c="LOVELAND"/>
<c n="Lyons" c="LYONS"/>
<c n="Mead" c="MEAD"/>
<c n="Meeker" c="MEEKER"/>
<c n="Merino" c="MERINO"/>
<c n="Minturn" c="MINTURN"/>
<c n="Moffat" c="MOFFAT"/>
<c n="Monte Vista" c="MONTE VISTA"/>
<c n="Morrison" c="MORRISON"/>
<c n="Mosca" c="MOSCA"/>
<c n="Nederland" c="NEDERLAND"/>
<c n="New Castle" c="NEW CASTLE"/>
<c n="Raymer" c="RAYMER"/>
<c n="Niwot" c="NIWOT"/>
<c n="Nunn" c="NUNN"/>
<c n="Oak Creek" c="OAK CREEK"/>
<c n="Otis" c="OTIS"/>
<c n="Ouray" c="OURAY"/>
<c n="Ovid" c="OVID"/>
<c n="Pagosa Springs" c="PAGOSA SPRINGS"/>
<c n="Paonia" c="PAONIA"/>
<c n="Parachute" c="PARACHUTE"/>
<c n="Parker" c="PARKER"/>
<c n="Peetz" c="PEETZ"/>
<c n="Pine" c="PINE"/>
<c n="Pinecliffe" c="PINECLIFFE"/>
<c n="Pitkin" c="PITKIN"/>
<c n="Platteville" c="PLATTEVILLE"/>
<c n="Rangely" c="RANGELY"/>
<c n="Red Feather Lakes" c="RED FEATHER LAKES"/>
<c n="Ridgway" c="RIDGWAY"/>
<c n="Rifle" c="RIFLE"/>
<c n="Roggen" c="ROGGEN"/>
<c n="Saguache" c="SAGUACHE"/>
<c n="Salida" c="SALIDA"/>
<c n="San Luis" c="SAN LUIS"/>
<c n="Sanford" c="SANFORD"/>
<c n="Sedalia" c="SEDALIA"/>
<c n="Shawnee" c="SHAWNEE"/>
<c n="Silt" c="SILT"/>
<c n="Silver Plume" c="SILVER PLUME"/>
<c n="Silverthorne" c="SILVERTHORNE"/>
<c n="Silverton" c="SILVERTON"/>
<c n="Simla" c="SIMLA"/>
<c n="Snowmass" c="SNOWMASS"/>
<c n="Somerset" c="SOMERSET"/>
<c n="Steamboat Springs" c="STEAMBOAT SPRINGS"/>
<c n="Sterling" c="STERLING"/>
<c n="Stoneham" c="STONEHAM"/>
<c n="Strasburg" c="STRASBURG"/>
<c n="Telluride" c="TELLURIDE"/>
<c n="Vail" c="VAIL"/>
<c n="Walden" c="WALDEN"/>
<c n="Ward" c="WARD"/>
<c n="Weldona" c="WELDONA"/>
<c n="Wellington" c="WELLINGTON"/>
<c n="Westminster" c="WESTMINSTER"/>
<c n="Wheat Ridge" c="WHEAT RIDGE"/>
<c n="Wiggins" c="WIGGINS"/>
<c n="Windsor" c="WINDSOR"/>
<c n="Winter Park" c="WINTER PARK"/>
<c n="Wolcott" c="WOLCOTT"/>
<c n="Woodrow" c="WOODROW"/>
<c n="Woody Creek" c="WOODY CREEK"/>
<c n="Wray" c="WRAY"/>
<c n="Yuma" c="YUMA"/>
<c n="Alliance" c="ALLIANCE"/>
<c n="Arthur" c="ARTHUR"/>
<c n="Benkelman" c="BENKELMAN"/>
<c n="Big Springs" c="BIG SPRINGS"/>
<c n="Bridgeport" c="BRIDGEPORT"/>
<c n="Chadron" c="CHADRON"/>
<c n="Chappell" c="CHAPPELL"/>
<c n="Dalton" c="DALTON"/>
<c n="Gordon" c="GORDON"/>
<c n="Harrisburg" c="HARRISBURG"/>
<c n="Hay Springs" c="HAY SPRINGS"/>
<c n="Hemingford" c="HEMINGFORD"/>
<c n="Hyannis" c="HYANNIS"/>
<c n="Keystone" c="KEYSTONE"/>
<c n="Kimball" c="KIMBALL"/>
<c n="Mullen" c="MULLEN"/>
<c n="Ogallala" c="OGALLALA"/>
<c n="Oshkosh" c="OSHKOSH"/>
<c n="Rushville" c="RUSHVILLE"/>
<c n="Sidney" c="SIDNEY"/>
<c n="Baggs" c="BAGGS"/>
<c n="Buffalo" c="BUFFALO"/>
<c n="Gillette" c="GILLETTE"/>
<c n="Guernsey" c="GUERNSEY"/>
<c n="Hanna" c="HANNA"/>
<c n="Laramie" c="LARAMIE"/>
<c n="Lusk" c="LUSK"/>
<c n="Rawlins" c="RAWLINS"/>
<c n="Rock River" c="ROCK RIVER"/>
<c n="Saratoga" c="SARATOGA"/>
<c n="Wheatland" c="WHEATLAND"/>
<c n="City of Castle Pines" c="CITY OF CASTLE PINES"/>
<c n="Centennial" c="CENTENNIAL"/>
<c n="Cherry Hills Village" c="CHERRY HILLS VILLAGE"/>
<c n="Columbine" c="COLUMBINE"/>
<c n="Flagler" c="FLAGLER"/>
<c n="Fraser" c="FRASER"/>
<c n="Glendale" c="GLENDALE"/>
<c n="Greenwood Village" c="GREENWOOD VILLAGE"/>
<c n="Highlands Ranch" c="HIGHLANDS RANCH"/>
<c n="Ken Caryl" c="KEN CARYL"/>
<c n="Keystone" c="KEYSTONE"/>
<c n="Lakewood" c="LAKEWOOD"/>
<c n="Lone Tree" c="LONE TREE"/>
<c n="North Washington" c="NORTH WASHINGTON"/>
<c n="Northglenn" c="NORTHGLENN"/>
<c n="Roxborough Park" c="ROXBOROUGH PARK"/>
<c n="Sherrelwood" c="SHERRELWOOD"/>
<c n="Superior" c="SUPERIOR"/>
<c n="The Pinery" c="THE PINERY"/>
<c n="Thornton" c="THORNTON"/>
<c n="West Pleasant View" c="WEST PLEASANT VIEW"/></dma>
    
    <dma code="752" title="Colorado Springs-Pueblo, CO">
<c n="Calhan" c="CALHAN"/>
<c n="Campo" c="CAMPO"/>
<c n="Canon City" c="CANON CITY"/>
<c n="Cheraw" c="CHERAW"/>
<c n="Coal Creek" c="COAL CREEK"/>
<c n="Colorado Springs" c="COLORADO SPRINGS"/>
<c n="Cripple Creek" c="CRIPPLE CREEK"/>
<c n="Divide" c="DIVIDE"/>
<c n="Florence" c="FLORENCE"/>
<c n="Florissant" c="FLORISSANT"/>
<c n="Fountain" c="FOUNTAIN"/>
<c n="La Junta" c="LA JUNTA"/>
<c n="Las Animas" c="LAS ANIMAS"/>
<c n="Manitou Springs" c="MANITOU SPRINGS"/>
<c n="Monument" c="MONUMENT"/>
<c n="Palmer Lake" c="PALMER LAKE"/>
<c n="Penrose" c="PENROSE"/>
<c n="Peyton" c="PEYTON"/>
<c n="Pueblo" c="PUEBLO"/>
<c n="Rocky Ford" c="ROCKY FORD"/>
<c n="Rye" c="RYE"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="Trinidad" c="TRINIDAD"/>
<c n="United States Air Force Academy" c="UNITED STATES AIR FORCE ACADEMY"/>
<c n="Victor" c="VICTOR"/>
<c n="Vilas" c="VILAS"/>
<c n="Walsenburg" c="WALSENBURG"/>
<c n="Westcliffe" c="WESTCLIFFE"/>
<c n="Woodland Park" c="WOODLAND PARK"/>
<c n="Black Forest" c="BLACK FOREST"/>
<c n="Colorado City" c="COLORADO CITY"/>
<c n="Fort Carson" c="FORT CARSON"/>
<c n="Pueblo West" c="PUEBLO WEST"/>
<c n="Security-Widefield" c="SECURITY-WIDEFIELD"/>
<c n="Woodmoor" c="WOODMOOR"/></dma>
    
    <dma code="773" title="Grand Junction-Montrose, CO">
<c n="Clifton" c="CLIFTON"/>
<c n="Collbran" c="COLLBRAN"/>
<c n="De Beque" c="DE BEQUE"/>
<c n="Fruita" c="FRUITA"/>
<c n="Grand Junction" c="GRAND JUNCTION"/>
<c n="Mesa" c="MESA"/>
<c n="Montrose" c="MONTROSE"/>
<c n="Nucla" c="NUCLA"/></dma>
    </state>
<state id="AZ" full_name="Arizona">
    <dma code="771" title="Yuma, AZ-El Centro, CA">
<c n="Dateland" c="DATELAND"/>
<c n="San Luis" c="SAN LUIS"/>
<c n="Somerton" c="SOMERTON"/>
<c n="Wellton" c="WELLTON"/>
<c n="Yuma" c="YUMA"/>
<c n="Brawley" c="BRAWLEY"/>
<c n="Calexico" c="CALEXICO"/>
<c n="Calipatria" c="CALIPATRIA"/>
<c n="El Centro" c="EL CENTRO"/>
<c n="Heber" c="HEBER"/>
<c n="Holtville" c="HOLTVILLE"/>
<c n="Imperial" c="IMPERIAL"/>
<c n="Westmorland" c="WESTMORLAND"/>
<c n="Winterhaven" c="WINTERHAVEN"/>
<c n="Fortuna Foothills" c="FORTUNA FOOTHILLS"/></dma>

    <dma code="753" title="Phoenix, AZ">
<c n="Alpine" c="ALPINE"/>
<c n="Apache Junction" c="APACHE JUNCTION"/>
<c n="Arizona City" c="ARIZONA CITY"/>
<c n="Ash Fork" c="ASH FORK"/>
<c n="Avondale" c="AVONDALE"/>
<c n="Buckeye" c="BUCKEYE"/>
<c n="Bullhead City" c="BULLHEAD CITY"/>
<c n="Camp Verde" c="CAMP VERDE"/>
<c n="Carefree" c="CAREFREE"/>
<c n="Casa Grande" c="CASA GRANDE"/>
<c n="Cave Creek" c="CAVE CREEK"/>
<c n="Central" c="CENTRAL"/>
<c n="Chandler" c="CHANDLER"/>
<c n="Chino Valley" c="CHINO VALLEY"/>
<c n="Clarkdale" c="CLARKDALE"/>
<c n="Clifton" c="CLIFTON"/>
<c n="Colorado City" c="COLORADO CITY"/>
<c n="Congress" c="CONGRESS"/>
<c n="Coolidge" c="COOLIDGE"/>
<c n="Cottonwood" c="COTTONWOOD"/>
<c n="Dewey" c="DEWEY"/>
<c n="Duncan" c="DUNCAN"/>
<c n="Ehrenberg" c="EHRENBERG"/>
<c n="El Mirage" c="EL MIRAGE"/>
<c n="Eloy" c="ELOY"/>
<c n="Flagstaff" c="FLAGSTAFF"/>
<c n="Florence" c="FLORENCE"/>
<c n="Fountain Hills" c="FOUNTAIN HILLS"/>
<c n="Fredonia" c="FREDONIA"/>
<c n="Fort Mohave" c="FORT MOHAVE"/>
<c n="Fort Thomas" c="FORT THOMAS"/>
<c n="Gila Bend" c="GILA BEND"/>
<c n="Gilbert" c="GILBERT"/>
<c n="Glendale" c="GLENDALE"/>
<c n="Globe" c="GLOBE"/>
<c n="Goodyear" c="GOODYEAR"/>
<c n="Grand Canyon National Park" c="GRAND CANYON NATIONAL PARK"/>
<c n="Hayden" c="HAYDEN"/>
<c n="Heber" c="HEBER"/>
<c n="Higley" c="HIGLEY"/>
<c n="Holbrook" c="HOLBROOK"/>
<c n="Hotevilla-Bacavi" c="HOTEVILLA-BACAVI"/>
<c n="Joseph City" c="JOSEPH CITY"/>
<c n="Kayenta" c="KAYENTA"/>
<c n="Keams Canyon" c="KEAMS CANYON"/>
<c n="Kearny" c="KEARNY"/>
<c n="Kingman" c="KINGMAN"/>
<c n="Kykotsmovi Village" c="KYKOTSMOVI VILLAGE"/>
<c n="Lake Havasu City" c="LAKE HAVASU CITY"/>
<c n="Lake Montezuma" c="LAKE MONTEZUMA"/>
<c n="Lakeside" c="LAKESIDE"/>
<c n="Laveen Village" c="LAVEEN VILLAGE"/>
<c n="Litchfield Park" c="LITCHFIELD PARK"/>
<c n="Littlefield" c="LITTLEFIELD"/>
<c n="Luke AFB" c="LUKE AFB"/>
<c n="Mammoth" c="MAMMOTH"/>
<c n="Maricopa" c="MARICOPA"/>
<c n="Mayer" c="MAYER"/>
<c n="Mesa" c="MESA"/>
<c n="Miami" c="MIAMI"/>
<c n="Mohave Valley" c="MOHAVE VALLEY"/>
<c n="Morenci" c="MORENCI"/>
<c n="Morristown" c="MORRISTOWN"/>
<c n="New River" c="NEW RIVER"/>
<c n="Oracle" c="ORACLE"/>
<c n="Page" c="PAGE"/>
<c n="Palo Verde" c="PALO VERDE"/>
<c n="Paradise Valley" c="PARADISE VALLEY"/>
<c n="Parker" c="PARKER"/>
<c n="Parks" c="PARKS"/>
<c n="Payson" c="PAYSON"/>
<c n="Peoria" c="PEORIA"/>
<c n="Phoenix" c="PHOENIX"/>
<c n="Pima" c="PIMA"/>
<c n="Pinetop" c="PINETOP"/>
<c n="Poston" c="POSTON"/>
<c n="Prescott" c="PRESCOTT"/>
<c n="Prescott Valley" c="PRESCOTT VALLEY"/>
<c n="Quartzsite" c="QUARTZSITE"/>
<c n="Queen Creek" c="QUEEN CREEK"/>
<c n="Red Rock" c="RED ROCK"/>
<c n="Rio Verde" c="RIO VERDE"/>
<c n="Sacaton" c="SACATON"/>
<c n="Safford" c="SAFFORD"/>
<c n="Salome" c="SALOME"/>
<c n="San Carlos" c="SAN CARLOS"/>
<c n="San Manuel" c="SAN MANUEL"/>
<c n="Scottsdale" c="SCOTTSDALE"/>
<c n="Sedona" c="SEDONA"/>
<c n="Seligman" c="SELIGMAN"/>
<c n="Show Low" c="SHOW LOW"/>
<c n="Skull Valley" c="SKULL VALLEY"/>
<c n="Snowflake" c="SNOWFLAKE"/>
<c n="Solomon" c="SOLOMON"/>
<c n="Springerville" c="SPRINGERVILLE"/>
<c n="St. Johns" c="ST. JOHNS"/>
<c n="Stanfield" c="STANFIELD"/>
<c n="Sun City" c="SUN CITY"/>
<c n="Sun City West" c="SUN CITY WEST"/>
<c n="Superior" c="SUPERIOR"/>
<c n="Surprise" c="SURPRISE"/>
<c n="Tempe" c="TEMPE"/>
<c n="Thatcher" c="THATCHER"/>
<c n="Tolleson" c="TOLLESON"/>
<c n="Tonopah" c="TONOPAH"/>
<c n="Tuba City" c="TUBA CITY"/>
<c n="Waddell" c="WADDELL"/>
<c n="Whiteriver" c="WHITERIVER"/>
<c n="Wickenburg" c="WICKENBURG"/>
<c n="Wikieup" c="WIKIEUP"/>
<c n="Williams" c="WILLIAMS"/>
<c n="Winkelman" c="WINKELMAN"/>
<c n="Winslow" c="WINSLOW"/>
<c n="Wittmann" c="WITTMANN"/>
<c n="Youngtown" c="YOUNGTOWN"/>
<c n="Gold Canyon" c="GOLD CANYON"/>
<c n="Grand Canyon Village" c="GRAND CANYON VILLAGE"/>
<c n="Pinetop-Lakeside" c="PINETOP-LAKESIDE"/>
<c n="San Tan Valley" c="SAN TAN VALLEY"/>
<c n="Sun Lakes" c="SUN LAKES"/>
<c n="Tusayan" c="TUSAYAN"/>
<c n="Big Park" c="BIG PARK"/></dma>
    
    <dma code="789" title="Tucson (Sierra Vista), AZ">
<c n="Ajo" c="AJO"/>
<c n="Amado" c="AMADO"/>
<c n="Benson" c="BENSON"/>
<c n="Bisbee" c="BISBEE"/>
<c n="Catalina" c="CATALINA"/>
<c n="Cochise" c="COCHISE"/>
<c n="Cortaro" c="CORTARO"/>
<c n="Douglas" c="DOUGLAS"/>
<c n="Elgin" c="ELGIN"/>
<c n="Fort Huachuca" c="FORT HUACHUCA"/>
<c n="Green Valley" c="GREEN VALLEY"/>
<c n="Marana" c="MARANA"/>
<c n="Naco" c="NACO"/>
<c n="Nogales" c="NOGALES"/>
<c n="Rio Rico" c="RIO RICO"/>
<c n="Sahuarita" c="SAHUARITA"/>
<c n="San Simon" c="SAN SIMON"/>
<c n="Sells" c="SELLS"/>
<c n="Sierra Vista" c="SIERRA VISTA"/>
<c n="St. David" c="ST. DAVID"/>
<c n="Tombstone" c="TOMBSTONE"/>
<c n="Topawa" c="TOPAWA"/>
<c n="Tucson" c="TUCSON"/>
<c n="Vail" c="VAIL"/>
<c n="Willcox" c="WILLCOX"/>
<c n="Casas Adobes" c="CASAS ADOBES"/>
<c n="Catalina Foothills" c="CATALINA FOOTHILLS"/>
<c n="Corona de Tucson" c="CORONA DE TUCSON"/>
<c n="Drexel Heights" c="DREXEL HEIGHTS"/>
<c n="Oro Valley" c="ORO VALLEY"/>
<c n="Tanque Verde" c="TANQUE VERDE"/>
<c n="Valencia West" c="VALENCIA WEST"/></dma>
    </state>
<state id="MT" full_name="Montana">
    <dma code="754" title="Butte-Bozeman, MT">
<c n="Anaconda" c="ANACONDA"/>
<c n="Belgrade" c="BELGRADE"/>
<c n="Big Sky" c="BIG SKY"/>
<c n="Boulder" c="BOULDER"/>
<c n="Bozeman" c="BOZEMAN"/>
<c n="Butte" c="BUTTE"/>
<c n="Clancy" c="CLANCY"/>
<c n="Deer Lodge" c="DEER LODGE"/>
<c n="Dillon" c="DILLON"/>
<c n="Manhattan" c="MANHATTAN"/>
<c n="Ovando" c="OVANDO"/>
<c n="Sheridan" c="SHERIDAN"/>
<c n="Three Forks" c="THREE FORKS"/>
<c n="Twin Bridges" c="TWIN BRIDGES"/>
<c n="Warm Springs" c="WARM SPRINGS"/>
<c n="West Yellowstone" c="WEST YELLOWSTONE"/>
<c n="Whitehall" c="WHITEHALL"/>
<c n="Willow Creek" c="WILLOW CREEK"/>
<c n="Ennis" c="ENNIS"/></dma>
    
    <dma code="755" title="Great Falls, MT">
<c n="Belt" c="BELT"/>
<c n="Black Eagle" c="BLACK EAGLE"/>
<c n="Box Elder" c="BOX ELDER"/>
<c n="Browning" c="BROWNING"/>
<c n="Cascade" c="CASCADE"/>
<c n="Chester" c="CHESTER"/>
<c n="Chinook" c="CHINOOK"/>
<c n="Choteau" c="CHOTEAU"/>
<c n="Conrad" c="CONRAD"/>
<c n="Cut Bank" c="CUT BANK"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Fort Benton" c="FORT BENTON"/>
<c n="Glasgow" c="GLASGOW"/>
<c n="Great Falls" c="GREAT FALLS"/>
<c n="Harlem" c="HARLEM"/>
<c n="Havre" c="HAVRE"/>
<c n="Heart Butte" c="HEART BUTTE"/>
<c n="Inverness" c="INVERNESS"/>
<c n="Joplin" c="JOPLIN"/>
<c n="Lewistown" c="LEWISTOWN"/>
<c n="Malmstrom AFB" c="MALMSTROM AFB"/>
<c n="Moore" c="MOORE"/>
<c n="Opheim" c="OPHEIM"/>
<c n="Roy" c="ROY"/>
<c n="Rudyard" c="RUDYARD"/>
<c n="Saco" c="SACO"/>
<c n="Sand Coulee" c="SAND COULEE"/>
<c n="Scobey" c="SCOBEY"/>
<c n="Shelby" c="SHELBY"/>
<c n="Turner" c="TURNER"/>
<c n="Winifred" c="WINIFRED"/>
<c n="Zortman" c="ZORTMAN"/></dma>
    
    <dma code="756" title="Billings, MT">
<c n="Absarokee" c="ABSAROKEE"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Big Timber" c="BIG TIMBER"/>
<c n="Billings" c="BILLINGS"/>
<c n="Bridger" c="BRIDGER"/>
<c n="Broadus" c="BROADUS"/>
<c n="Busby" c="BUSBY"/>
<c n="Colstrip" c="COLSTRIP"/>
<c n="Columbus" c="COLUMBUS"/>
<c n="Crow Agency" c="CROW AGENCY"/>
<c n="Emigrant" c="EMIGRANT"/>
<c n="Fishtail" c="FISHTAIL"/>
<c n="Forsyth" c="FORSYTH"/>
<c n="Fromberg" c="FROMBERG"/>
<c n="Gardiner" c="GARDINER"/>
<c n="Hardin" c="HARDIN"/>
<c n="Harlowton" c="HARLOWTON"/>
<c n="Huntley" c="HUNTLEY"/>
<c n="Hysham" c="HYSHAM"/>
<c n="Joliet" c="JOLIET"/>
<c n="Lame Deer" c="LAME DEER"/>
<c n="Laurel" c="LAUREL"/>
<c n="Livingston" c="LIVINGSTON"/>
<c n="Lodge Grass" c="LODGE GRASS"/>
<c n="Melstone" c="MELSTONE"/>
<c n="Miles City" c="MILES CITY"/>
<c n="Pryor" c="PRYOR"/>
<c n="Rapelje" c="RAPELJE"/>
<c n="Red Lodge" c="RED LODGE"/>
<c n="Reed Point" c="REED POINT"/>
<c n="Roundup" c="ROUNDUP"/>
<c n="Shepherd" c="SHEPHERD"/>
<c n="St. Xavier" c="ST. XAVIER"/>
<c n="White Sulphur Springs" c="WHITE SULPHUR SPRINGS"/>
<c n="Wilsall" c="WILSALL"/>
<c n="Winnett" c="WINNETT"/>
<c n="Basin" c="BASIN"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Cody" c="CODY"/>
<c n="Cowley" c="COWLEY"/>
<c n="Greybull" c="GREYBULL"/>
<c n="Lovell" c="LOVELL"/>
<c n="Meeteetse" c="MEETEETSE"/>
<c n="Powell" c="POWELL"/>
<c n="Wapiti" c="WAPITI"/></dma>
    
    <dma code="762" title="Missoula, MT">
<c n="Arlee" c="ARLEE"/>
<c n="Bigfork" c="BIGFORK"/>
<c n="Bonner" c="BONNER"/>
<c n="Columbia Falls" c="COLUMBIA FALLS"/>
<c n="Corvallis" c="CORVALLIS"/>
<c n="Darby" c="DARBY"/>
<c n="Florence" c="FLORENCE"/>
<c n="Frenchtown" c="FRENCHTOWN"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Hungry Horse" c="HUNGRY HORSE"/>
<c n="Kalispell" c="KALISPELL"/>
<c n="Kila" c="KILA"/>
<c n="Lakeside" c="LAKESIDE"/>
<c n="Lolo" c="LOLO"/>
<c n="Missoula" c="MISSOULA"/>
<c n="Pablo" c="PABLO"/>
<c n="Paradise" c="PARADISE"/>
<c n="Philipsburg" c="PHILIPSBURG"/>
<c n="Plains" c="PLAINS"/>
<c n="Polson" c="POLSON"/>
<c n="Ronan" c="RONAN"/>
<c n="Stevensville" c="STEVENSVILLE"/>
<c n="Superior" c="SUPERIOR"/>
<c n="Thompson Falls" c="THOMPSON FALLS"/>
<c n="Trout Creek" c="TROUT CREEK"/>
<c n="Victor" c="VICTOR"/>
<c n="Whitefish" c="WHITEFISH"/></dma>
    
    <dma code="766" title="Helena, MT">
<c n="Augusta" c="AUGUSTA"/>
<c n="East Helena" c="EAST HELENA"/>
<c n="Helena" c="HELENA"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Townsend" c="TOWNSEND"/></dma>
    
    <dma code="798" title="Glendive, MT">
<c n="Fallon" c="FALLON"/>
<c n="Glendive" c="GLENDIVE"/>
<c n="Terry" c="TERRY"/></dma>
    </state>
<state id="ID" full_name="Idaho">
    <dma code="757" title="Boise, ID">
<c n="Atlanta" c="ATLANTA"/>
<c n="Boise" c="BOISE"/>
<c n="Bruneau" c="BRUNEAU"/>
<c n="Caldwell" c="CALDWELL"/>
<c n="Cambridge" c="CAMBRIDGE"/>
<c n="Cascade" c="CASCADE"/>
<c n="Council" c="COUNCIL"/>
<c n="Eagle" c="EAGLE"/>
<c n="Emmett" c="EMMETT"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Fruitland" c="FRUITLAND"/>
<c n="Garden City" c="GARDEN CITY"/>
<c n="Garden Valley" c="GARDEN VALLEY"/>
<c n="Glenns Ferry" c="GLENNS FERRY"/>
<c n="Grand View" c="GRAND VIEW"/>
<c n="Homedale" c="HOMEDALE"/>
<c n="Horseshoe Bend" c="HORSESHOE BEND"/>
<c n="Idaho City" c="IDAHO CITY"/>
<c n="Kuna" c="KUNA"/>
<c n="Marsing" c="MARSING"/>
<c n="McCall" c="MCCALL"/>
<c n="Melba" c="MELBA"/>
<c n="Meridian" c="MERIDIAN"/>
<c n="Middleton" c="MIDDLETON"/>
<c n="Midvale" c="MIDVALE"/>
<c n="Mountain Home" c="MOUNTAIN HOME"/>
<c n="Mountain Home AFB" c="MOUNTAIN HOME AFB"/>
<c n="Murphy" c="MURPHY"/>
<c n="Nampa" c="NAMPA"/>
<c n="New Meadows" c="NEW MEADOWS"/>
<c n="New Plymouth" c="NEW PLYMOUTH"/>
<c n="Notus" c="NOTUS"/>
<c n="Parma" c="PARMA"/>
<c n="Payette" c="PAYETTE"/>
<c n="Weiser" c="WEISER"/>
<c n="Wilder" c="WILDER"/>
<c n="Adrian" c="ADRIAN"/>
<c n="Nyssa" c="NYSSA"/>
<c n="Ontario" c="ONTARIO"/>
<c n="Vale" c="VALE"/></dma>
    
    <dma code="758" title="Idaho Falls-Pocatello, ID">
<c n="Aberdeen" c="ABERDEEN"/>
<c n="American Falls" c="AMERICAN FALLS"/>
<c n="Arco" c="ARCO"/>
<c n="Arimo" c="ARIMO"/>
<c n="Bancroft" c="BANCROFT"/>
<c n="Blackfoot" c="BLACKFOOT"/>
<c n="Challis" c="CHALLIS"/>
<c n="Driggs" c="DRIGGS"/>
<c n="Firth" c="FIRTH"/>
<c n="Fort Hall" c="FORT HALL"/>
<c n="Gibbonsville" c="GIBBONSVILLE"/>
<c n="Grace" c="GRACE"/>
<c n="Idaho Falls" c="IDAHO FALLS"/>
<c n="Irwin" c="IRWIN"/>
<c n="Mackay" c="MACKAY"/>
<c n="McCammon" c="MCCAMMON"/>
<c n="Pocatello" c="POCATELLO"/>
<c n="Rexburg" c="REXBURG"/>
<c n="Rigby" c="RIGBY"/>
<c n="Ririe" c="RIRIE"/>
<c n="Rockland" c="ROCKLAND"/>
<c n="Salmon" c="SALMON"/>
<c n="Shelley" c="SHELLEY"/>
<c n="Soda Springs" c="SODA SPRINGS"/>
<c n="St. Anthony" c="ST. ANTHONY"/>
<c n="Sugar City" c="SUGAR CITY"/>
<c n="Jackson" c="JACKSON"/>
<c n="Kelly" c="KELLY"/>
<c n="Moran" c="MORAN"/>
<c n="Teton Village" c="TETON VILLAGE"/>
<c n="Wilson" c="WILSON"/>
<c n="Victor" c="VICTOR"/></dma>
    
    <dma code="760" title="Twin Falls, ID">
<c n="Bliss" c="BLISS"/>
<c n="Buhl" c="BUHL"/>
<c n="Burley" c="BURLEY"/>
<c n="Dietrich" c="DIETRICH"/>
<c n="Filer" c="FILER"/>
<c n="Gooding" c="GOODING"/>
<c n="Hagerman" c="HAGERMAN"/>
<c n="Hailey" c="HAILEY"/>
<c n="Hansen" c="HANSEN"/>
<c n="Hazelton" c="HAZELTON"/>
<c n="Jerome" c="JEROME"/>
<c n="Ketchum" c="KETCHUM"/>
<c n="Minidoka" c="MINIDOKA"/>
<c n="Murtaugh" c="MURTAUGH"/>
<c n="Paul" c="PAUL"/>
<c n="Rupert" c="RUPERT"/>
<c n="Shoshone" c="SHOSHONE"/>
<c n="Sun Valley" c="SUN VALLEY"/>
<c n="Twin Falls" c="TWIN FALLS"/>
<c n="Wendell" c="WENDELL"/></dma>
    </state>
<state id="WY" full_name="Wyoming">
    <dma code="767" title="Casper-Riverton, WY">
<c n="Arapahoe" c="ARAPAHOE"/>
<c n="Casper" c="CASPER"/>
<c n="Douglas" c="DOUGLAS"/>
<c n="Dubois" c="DUBOIS"/>
<c n="Evansville" c="EVANSVILLE"/>
<c n="Fort Washakie" c="FORT WASHAKIE"/>
<c n="Glenrock" c="GLENROCK"/>
<c n="Lander" c="LANDER"/>
<c n="Lost Springs" c="LOST SPRINGS"/>
<c n="Pavillion" c="PAVILLION"/>
<c n="Riverton" c="RIVERTON"/>
<c n="Shoshoni" c="SHOSHONI"/>
<c n="Ten Sleep" c="TEN SLEEP"/>
<c n="Thermopolis" c="THERMOPOLIS"/>
<c n="Worland" c="WORLAND"/></dma>
    </state>
<state id="UT" full_name="Utah">
    <dma code="770" title="Salt Lake City, UT">
<c n="Dayton" c="DAYTON"/>
<c n="Malad City" c="MALAD CITY"/>
<c n="Montpelier" c="MONTPELIER"/>
<c n="Paris" c="PARIS"/>
<c n="Preston" c="PRESTON"/>
<c n="Baker" c="BAKER"/>
<c n="Carlin" c="CARLIN"/>
<c n="Elko" c="ELKO"/>
<c n="Ely" c="ELY"/>
<c n="Eureka" c="EUREKA"/>
<c n="Jackpot" c="JACKPOT"/>
<c n="Lund" c="LUND"/>
<c n="West Wendover" c="WEST WENDOVER"/>
<c n="Alpine" c="ALPINE"/>
<c n="American Fork" c="AMERICAN FORK"/>
<c n="Bear River City" c="BEAR RIVER CITY"/>
<c n="Beaver" c="BEAVER"/>
<c n="Bicknell" c="BICKNELL"/>
<c n="Blanding" c="BLANDING"/>
<c n="Bluff" c="BLUFF"/>
<c n="Bountiful" c="BOUNTIFUL"/>
<c n="Brigham City" c="BRIGHAM CITY"/>
<c n="Castle Dale" c="CASTLE DALE"/>
<c n="Cedar City" c="CEDAR CITY"/>
<c n="Centerville" c="CENTERVILLE"/>
<c n="Central" c="CENTRAL"/>
<c n="Clearfield" c="CLEARFIELD"/>
<c n="Coalville" c="COALVILLE"/>
<c n="Corinne" c="CORINNE"/>
<c n="Dammeron Valley" c="DAMMERON VALLEY"/>
<c n="Delta" c="DELTA"/>
<c n="Draper" c="DRAPER"/>
<c n="Duchesne" c="DUCHESNE"/>
<c n="Dugway" c="DUGWAY"/>
<c n="Eden" c="EDEN"/>
<c n="Emery" c="EMERY"/>
<c n="Enterprise" c="ENTERPRISE"/>
<c n="Ephraim" c="EPHRAIM"/>
<c n="Escalante" c="ESCALANTE"/>
<c n="Eureka" c="EUREKA"/>
<c n="Fairview" c="FAIRVIEW"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Fillmore" c="FILLMORE"/>
<c n="Fort Duchesne" c="FORT DUCHESNE"/>
<c n="Grantsville" c="GRANTSVILLE"/>
<c n="Gunlock" c="GUNLOCK"/>
<c n="Heber City" c="HEBER CITY"/>
<c n="Hildale" c="HILDALE"/>
<c n="Hill AFB" c="HILL AFB"/>
<c n="Huntington" c="HUNTINGTON"/>
<c n="Hurricane" c="HURRICANE"/>
<c n="Hyrum" c="HYRUM"/>
<c n="Ivins" c="IVINS"/>
<c n="Junction" c="JUNCTION"/>
<c n="Kamas" c="KAMAS"/>
<c n="Kanab" c="KANAB"/>
<c n="Kaysville" c="KAYSVILLE"/>
<c n="La Verkin" c="LA VERKIN"/>
<c n="Layton" c="LAYTON"/>
<c n="Leeds" c="LEEDS"/>
<c n="Lehi" c="LEHI"/>
<c n="Lewiston" c="LEWISTON"/>
<c n="Lindon" c="LINDON"/>
<c n="Logan" c="LOGAN"/>
<c n="Magna" c="MAGNA"/>
<c n="Manila" c="MANILA"/>
<c n="Manti" c="MANTI"/>
<c n="Mantua" c="MANTUA"/>
<c n="Midvale" c="MIDVALE"/>
<c n="Midway" c="MIDWAY"/>
<c n="Milford" c="MILFORD"/>
<c n="Moab" c="MOAB"/>
<c n="Monroe" c="MONROE"/>
<c n="Monticello" c="MONTICELLO"/>
<c n="Morgan" c="MORGAN"/>
<c n="Mount Pleasant" c="MOUNT PLEASANT"/>
<c n="Nephi" c="NEPHI"/>
<c n="New Harmony" c="NEW HARMONY"/>
<c n="Newcastle" c="NEWCASTLE"/>
<c n="North Salt Lake" c="NORTH SALT LAKE"/>
<c n="Ogden" c="OGDEN"/>
<c n="Orangeville" c="ORANGEVILLE"/>
<c n="Orem" c="OREM"/>
<c n="Panguitch" c="PANGUITCH"/>
<c n="Park City" c="PARK CITY"/>
<c n="Parowan" c="PAROWAN"/>
<c n="Payson" c="PAYSON"/>
<c n="Pine Valley" c="PINE VALLEY"/>
<c n="Pleasant Grove" c="PLEASANT GROVE"/>
<c n="Price" c="PRICE"/>
<c n="Providence" c="PROVIDENCE"/>
<c n="Provo" c="PROVO"/>
<c n="Randolph" c="RANDOLPH"/>
<c n="Richfield" c="RICHFIELD"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Riverton" c="RIVERTON"/>
<c n="Rockville" c="ROCKVILLE"/>
<c n="Roosevelt" c="ROOSEVELT"/>
<c n="Roy" c="ROY"/>
<c n="Rush Valley" c="RUSH VALLEY"/>
<c n="Salem" c="SALEM"/>
<c n="Salt Lake City" c="SALT LAKE CITY"/>
<c n="Sandy" c="SANDY"/>
<c n="Santa Clara" c="SANTA CLARA"/>
<c n="Santaquin" c="SANTAQUIN"/>
<c n="Smithfield" c="SMITHFIELD"/>
<c n="South Jordan" c="SOUTH JORDAN"/>
<c n="Spanish Fork" c="SPANISH FORK"/>
<c n="Springdale" c="SPRINGDALE"/>
<c n="Springville" c="SPRINGVILLE"/>
<c n="St. George" c="ST. GEORGE"/>
<c n="Sterling" c="STERLING"/>
<c n="Syracuse" c="SYRACUSE"/>
<c n="Tooele" c="TOOELE"/>
<c n="Toquerville" c="TOQUERVILLE"/>
<c n="Tremonton" c="TREMONTON"/>
<c n="Vernal" c="VERNAL"/>
<c n="Veyo" c="VEYO"/>
<c n="Virgin" c="VIRGIN"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Wendover" c="WENDOVER"/>
<c n="West Jordan" c="WEST JORDAN"/>
<c n="Woodruff" c="WOODRUFF"/>
<c n="Woods Cross" c="WOODS CROSS"/>
<c n="Afton" c="AFTON"/>
<c n="Big Piney" c="BIG PINEY"/>
<c n="Bondurant" c="BONDURANT"/>
<c n="Diamondville" c="DIAMONDVILLE"/>
<c n="Evanston" c="EVANSTON"/>
<c n="Farson" c="FARSON"/>
<c n="Freedom" c="FREEDOM"/>
<c n="Green River" c="GREEN RIVER"/>
<c n="Kemmerer" c="KEMMERER"/>
<c n="Lyman" c="LYMAN"/>
<c n="Mountain View" c="MOUNTAIN VIEW"/>
<c n="Pinedale" c="PINEDALE"/>
<c n="Reliance" c="RELIANCE"/>
<c n="Rock Springs" c="ROCK SPRINGS"/>
<c n="Smoot" c="SMOOT"/>
<c n="Bluffdale" c="BLUFFDALE"/>
<c n="Cedar Hills" c="CEDAR HILLS"/>
<c n="Clinton" c="CLINTON"/>
<c n="Cottonwood Heights" c="COTTONWOOD HEIGHTS"/>
<c n="Eagle Mountain" c="EAGLE MOUNTAIN"/>
<c n="East Millcreek" c="EAST MILLCREEK"/>
<c n="Farr West" c="FARR WEST"/>
<c n="Green River" c="GREEN RIVER"/>
<c n="Gunnison" c="GUNNISON"/>
<c n="Herriman" c="HERRIMAN"/>
<c n="Highland" c="HIGHLAND"/>
<c n="Holladay" c="HOLLADAY"/>
<c n="Hooper" c="HOOPER"/>
<c n="Kearns" c="KEARNS"/>
<c n="Mapleton" c="MAPLETON"/>
<c n="Millcreek" c="MILLCREEK"/>
<c n="Murray" c="MURRAY"/>
<c n="North Ogden" c="NORTH OGDEN"/>
<c n="Plain City" c="PLAIN CITY"/>
<c n="Pleasant View" c="PLEASANT VIEW"/>
<c n="Riverdale" c="RIVERDALE"/>
<c n="Saratoga Springs" c="SARATOGA SPRINGS"/>
<c n="South Salt Lake" c="SOUTH SALT LAKE"/>
<c n="South Snyderville Basin" c="SOUTH SNYDERVILLE BASIN"/>
<c n="South Weber" c="SOUTH WEBER"/>
<c n="Stansbury Park" c="STANSBURY PARK"/>
<c n="Taylorsville" c="TAYLORSVILLE"/>
<c n="Torrey" c="TORREY"/>
<c n="Tropic" c="TROPIC"/>
<c n="West Bountiful" c="WEST BOUNTIFUL"/>
<c n="West Haven" c="WEST HAVEN"/>
<c n="West Valley City" c="WEST VALLEY CITY"/></dma>
    </state>
<state id="CA" full_name="California">
    <dma code="771" title="Yuma, AZ-El Centro, CA">
<c n="Dateland" c="DATELAND"/>
<c n="San Luis" c="SAN LUIS"/>
<c n="Somerton" c="SOMERTON"/>
<c n="Wellton" c="WELLTON"/>
<c n="Yuma" c="YUMA"/>
<c n="Brawley" c="BRAWLEY"/>
<c n="Calexico" c="CALEXICO"/>
<c n="Calipatria" c="CALIPATRIA"/>
<c n="El Centro" c="EL CENTRO"/>
<c n="Heber" c="HEBER"/>
<c n="Holtville" c="HOLTVILLE"/>
<c n="Imperial" c="IMPERIAL"/>
<c n="Westmorland" c="WESTMORLAND"/>
<c n="Winterhaven" c="WINTERHAVEN"/>
<c n="Fortuna Foothills" c="FORTUNA FOOTHILLS"/></dma>
    
    <dma code="800" title="Bakersfield, CA">
<c n="Arvin" c="ARVIN"/>
<c n="Bakersfield" c="BAKERSFIELD"/>
<c n="Buttonwillow" c="BUTTONWILLOW"/>
<c n="Delano" c="DELANO"/>
<c n="Edison" c="EDISON"/>
<c n="Frazier Park" c="FRAZIER PARK"/>
<c n="Glennville" c="GLENNVILLE"/>
<c n="Kernville" c="KERNVILLE"/>
<c n="Lake Isabella" c="LAKE ISABELLA"/>
<c n="Lebec" c="LEBEC"/>
<c n="Lost Hills" c="LOST HILLS"/>
<c n="McFarland" c="MCFARLAND"/>
<c n="McKittrick" c="MCKITTRICK"/>
<c n="Shafter" c="SHAFTER"/>
<c n="Taft" c="TAFT"/>
<c n="Tehachapi" c="TEHACHAPI"/>
<c n="Tupman" c="TUPMAN"/>
<c n="Wasco" c="WASCO"/>
<c n="Weldon" c="WELDON"/>
<c n="Oildale" c="OILDALE"/>
<c n="Pine Mountain Club" c="PINE MOUNTAIN CLUB"/></dma>
    
    <dma code="802" title="Eureka, CA">
<c n="Arcata" c="ARCATA"/>
<c n="Blue Lake" c="BLUE LAKE"/>
<c n="Bridgeville" c="BRIDGEVILLE"/>
<c n="Crescent City" c="CRESCENT CITY"/>
<c n="Eureka" c="EUREKA"/>
<c n="Ferndale" c="FERNDALE"/>
<c n="Fortuna" c="FORTUNA"/>
<c n="Garberville" c="GARBERVILLE"/>
<c n="Honeydew" c="HONEYDEW"/>
<c n="Hoopa" c="HOOPA"/>
<c n="Hydesville" c="HYDESVILLE"/>
<c n="Klamath" c="KLAMATH"/>
<c n="Kneeland" c="KNEELAND"/>
<c n="McKinleyville" c="MCKINLEYVILLE"/>
<c n="Miranda" c="MIRANDA"/>
<c n="Orleans" c="ORLEANS"/>
<c n="Petrolia" c="PETROLIA"/>
<c n="Phillipsville" c="PHILLIPSVILLE"/>
<c n="Rio Dell" c="RIO DELL"/>
<c n="Weott" c="WEOTT"/>
<c n="Whitethorn" c="WHITETHORN"/>
<c n="Willow Creek" c="WILLOW CREEK"/></dma>
    
    <dma code="803" title="Los Angeles, CA">
<c n="Acton" c="ACTON"/>
<c n="Adelanto" c="ADELANTO"/>
<c n="Agoura Hills" c="AGOURA HILLS"/>
<c n="Alhambra" c="ALHAMBRA"/>
<c n="Aliso Viejo" c="ALISO VIEJO"/>
<c n="Altadena" c="ALTADENA"/>
<c n="Anaheim" c="ANAHEIM"/>
<c n="Apple Valley" c="APPLE VALLEY"/>
<c n="Arcadia" c="ARCADIA"/>
<c n="Artesia" c="ARTESIA"/>
<c n="Avalon" c="AVALON"/>
<c n="Azusa" c="AZUSA"/>
<c n="Baker" c="BAKER"/>
<c n="Baldwin Park" c="BALDWIN PARK"/>
<c n="Banning" c="BANNING"/>
<c n="Barstow" c="BARSTOW"/>
<c n="Beaumont" c="BEAUMONT"/>
<c n="Bell" c="BELL"/>
<c n="Bell Gardens" c="BELL GARDENS"/>
<c n="Bellflower" c="BELLFLOWER"/>
<c n="Beverly Hills" c="BEVERLY HILLS"/>
<c n="Big Bear City" c="BIG BEAR CITY"/>
<c n="Big Bear Lake" c="BIG BEAR LAKE"/>
<c n="Big Pine" c="BIG PINE"/>
<c n="Bishop" c="BISHOP"/>
<c n="Bloomington" c="BLOOMINGTON"/>
<c n="Blue Jay" c="BLUE JAY"/>
<c n="Blythe" c="BLYTHE"/>
<c n="Boron" c="BORON"/>
<c n="Brea" c="BREA"/>
<c n="Buena Park" c="BUENA PARK"/>
<c n="Burbank" c="BURBANK"/>
<c n="Cabazon" c="CABAZON"/>
<c n="Calabasas" c="CALABASAS"/>
<c n="California City" c="CALIFORNIA CITY"/>
<c n="Calimesa" c="CALIMESA"/>
<c n="Camarillo" c="CAMARILLO"/>
<c n="Canoga Park" c="CANOGA PARK"/>
<c n="Canyon Country" c="CANYON COUNTRY"/>
<c n="Capistrano Beach" c="CAPISTRANO BEACH"/>
<c n="Carson" c="CARSON"/>
<c n="Castaic" c="CASTAIC"/>
<c n="Cedar Glen" c="CEDAR GLEN"/>
<c n="Cerritos" c="CERRITOS"/>
<c n="Chatsworth" c="CHATSWORTH"/>
<c n="Chino" c="CHINO"/>
<c n="Chino Hills" c="CHINO HILLS"/>
<c n="City of Industry" c="CITY OF INDUSTRY"/>
<c n="Claremont" c="CLAREMONT"/>
<c n="Colton" c="COLTON"/>
<c n="Compton" c="COMPTON"/>
<c n="Corona" c="CORONA"/>
<c n="Corona Del Mar" c="CORONA DEL MAR"/>
<c n="Costa Mesa" c="COSTA MESA"/>
<c n="Covina" c="COVINA"/>
<c n="Crestline" c="CRESTLINE"/>
<c n="Culver City" c="CULVER CITY"/>
<c n="Cypress" c="CYPRESS"/>
<c n="Daggett" c="DAGGETT"/>
<c n="Dana Point" c="DANA POINT"/>
<c n="Death Valley" c="DEATH VALLEY"/>
<c n="Desert Center" c="DESERT CENTER"/>
<c n="Diamond Bar" c="DIAMOND BAR"/>
<c n="Downey" c="DOWNEY"/>
<c n="Duarte" c="DUARTE"/>
<c n="Earp" c="EARP"/>
<c n="East Irvine" c="EAST IRVINE"/>
<c n="Edwards" c="EDWARDS"/>
<c n="El Monte" c="EL MONTE"/>
<c n="El Segundo" c="EL SEGUNDO"/>
<c n="Encino" c="ENCINO"/>
<c n="Fillmore" c="FILLMORE"/>
<c n="Fontana" c="FONTANA"/>
<c n="Foothill Ranch" c="FOOTHILL RANCH"/>
<c n="Fountain Valley" c="FOUNTAIN VALLEY"/>
<c n="Fort Irwin" c="FORT IRWIN"/>
<c n="Fullerton" c="FULLERTON"/>
<c n="Garden Grove" c="GARDEN GROVE"/>
<c n="Gardena" c="GARDENA"/>
<c n="Glendale" c="GLENDALE"/>
<c n="Glendora" c="GLENDORA"/>
<c n="Granada Hills" c="GRANADA HILLS"/>
<c n="Grand Terrace" c="GRAND TERRACE"/>
<c n="Hacienda Heights" c="HACIENDA HEIGHTS"/>
<c n="Harbor City" c="HARBOR CITY"/>
<c n="Hawthorne" c="HAWTHORNE"/>
<c n="Helendale" c="HELENDALE"/>
<c n="Hemet" c="HEMET"/>
<c n="Hermosa Beach" c="HERMOSA BEACH"/>
<c n="Hesperia" c="HESPERIA"/>
<c n="Highland" c="HIGHLAND"/>
<c n="Homeland" c="HOMELAND"/>
<c n="Huntington Beach" c="HUNTINGTON BEACH"/>
<c n="Huntington Park" c="HUNTINGTON PARK"/>
<c n="Idyllwild" c="IDYLLWILD"/>
<c n="Independence" c="INDEPENDENCE"/>
<c n="Inglewood" c="INGLEWOOD"/>
<c n="Irvine" c="IRVINE"/>
<c n="Joshua Tree" c="JOSHUA TREE"/>
<c n="La Canada Flintridge" c="LA CANADA FLINTRIDGE"/>
<c n="La Crescenta-Montrose" c="LA CRESCENTA-MONTROSE"/>
<c n="La Habra" c="LA HABRA"/>
<c n="La Mirada" c="LA MIRADA"/>
<c n="La Palma" c="LA PALMA"/>
<c n="La Puente" c="LA PUENTE"/>
<c n="La Verne" c="LA VERNE"/>
<c n="Ladera Ranch" c="LADERA RANCH"/>
<c n="Laguna Beach" c="LAGUNA BEACH"/>
<c n="Laguna Hills" c="LAGUNA HILLS"/>
<c n="Laguna Niguel" c="LAGUNA NIGUEL"/>
<c n="Lake Arrowhead" c="LAKE ARROWHEAD"/>
<c n="Lake Elsinore" c="LAKE ELSINORE"/>
<c n="Lake Forest" c="LAKE FOREST"/>
<c n="Lake Hughes" c="LAKE HUGHES"/>
<c n="Lakewood" c="LAKEWOOD"/>
<c n="Lancaster" c="LANCASTER"/>
<c n="Lawndale" c="LAWNDALE"/>
<c n="Littlerock" c="LITTLEROCK"/>
<c n="Loma Linda" c="LOMA LINDA"/>
<c n="Lomita" c="LOMITA"/>
<c n="Lone Pine" c="LONE PINE"/>
<c n="Long Beach" c="LONG BEACH"/>
<c n="Los Alamitos" c="LOS ALAMITOS"/>
<c n="Los Angeles" c="LOS ANGELES"/>
<c n="Lucerne Valley" c="LUCERNE VALLEY"/>
<c n="Lynwood" c="LYNWOOD"/>
<c n="Malibu" c="MALIBU"/>
<c n="Manhattan Beach" c="MANHATTAN BEACH"/>
<c n="March Air Reserve Base" c="MARCH AIR RESERVE BASE"/>
<c n="Marina del Rey" c="MARINA DEL REY"/>
<c n="Maywood" c="MAYWOOD"/>
<c n="Menifee" c="MENIFEE"/>
<c n="Mentone" c="MENTONE"/>
<c n="Midway City" c="MIDWAY CITY"/>
<c n="Mira Loma" c="MIRA LOMA"/>
<c n="Mission Hills" c="MISSION HILLS"/>
<c n="Mission Viejo" c="MISSION VIEJO"/>
<c n="Mojave" c="MOJAVE"/>
<c n="Monrovia" c="MONROVIA"/>
<c n="Montclair" c="MONTCLAIR"/>
<c n="Montebello" c="MONTEBELLO"/>
<c n="Monterey Park" c="MONTEREY PARK"/>
<c n="Moorpark" c="MOORPARK"/>
<c n="Moreno Valley" c="MORENO VALLEY"/>
<c n="Mount Baldy" c="MOUNT BALDY"/>
<c n="Mount Wilson" c="MOUNT WILSON"/>
<c n="Murrieta" c="MURRIETA"/>
<c n="Needles" c="NEEDLES"/>
<c n="Newberry Springs" c="NEWBERRY SPRINGS"/>
<c n="Newbury Park" c="NEWBURY PARK"/>
<c n="Newhall" c="NEWHALL"/>
<c n="Newport Beach" c="NEWPORT BEACH"/>
<c n="Newport Coast" c="NEWPORT COAST"/>
<c n="Norco" c="NORCO"/>
<c n="North Hills" c="NORTH HILLS"/>
<c n="North Hollywood" c="NORTH HOLLYWOOD"/>
<c n="Northridge" c="NORTHRIDGE"/>
<c n="Norwalk" c="NORWALK"/>
<c n="Nuevo" c="NUEVO"/>
<c n="Oak Park" c="OAK PARK"/>
<c n="Oak View" c="OAK VIEW"/>
<c n="Ojai" c="OJAI"/>
<c n="Olancha" c="OLANCHA"/>
<c n="Ontario" c="ONTARIO"/>
<c n="Orange" c="ORANGE"/>
<c n="Oro Grande" c="ORO GRANDE"/>
<c n="Oxnard" c="OXNARD"/>
<c n="Pacific Palisades" c="PACIFIC PALISADES"/>
<c n="Pacoima" c="PACOIMA"/>
<c n="Palmdale" c="PALMDALE"/>
<c n="Palos Verdes Peninsula" c="PALOS VERDES PENINSULA"/>
<c n="Panorama City" c="PANORAMA CITY"/>
<c n="Paramount" c="PARAMOUNT"/>
<c n="Parker Dam" c="PARKER DAM"/>
<c n="Pasadena" c="PASADENA"/>
<c n="Pearblossom" c="PEARBLOSSOM"/>
<c n="Perris" c="PERRIS"/>
<c n="Phelan" c="PHELAN"/>
<c n="Pico Rivera" c="PICO RIVERA"/>
<c n="Placentia" c="PLACENTIA"/>
<c n="Playa del Rey" c="PLAYA DEL REY"/>
<c n="Naval Air Station Point Mugu" c="NAVAL AIR STATION POINT MUGU"/>
<c n="Pomona" c="POMONA"/>
<c n="Port Hueneme" c="PORT HUENEME"/>
<c n="Naval Construction Battalion Center Port Hueneme" c="NAVAL CONSTRUCTION BATTALION CENTER PORT HUENEME"/>
<c n="Rancho Cucamonga" c="RANCHO CUCAMONGA"/>
<c n="Rancho Palos Verdes" c="RANCHO PALOS VERDES"/>
<c n="Rancho Santa Margarita" c="RANCHO SANTA MARGARITA"/>
<c n="Randsburg" c="RANDSBURG"/>
<c n="Redlands" c="REDLANDS"/>
<c n="Redondo Beach" c="REDONDO BEACH"/>
<c n="Reseda" c="RESEDA"/>
<c n="Rialto" c="RIALTO"/>
<c n="Ridgecrest" c="RIDGECREST"/>
<c n="Riverside" c="RIVERSIDE"/>
<c n="Rosamond" c="ROSAMOND"/>
<c n="Rosemead" c="ROSEMEAD"/>
<c n="Rowland Heights" c="ROWLAND HEIGHTS"/>
<c n="San Bernardino" c="SAN BERNARDINO"/>
<c n="San Clemente" c="SAN CLEMENTE"/>
<c n="San Dimas" c="SAN DIMAS"/>
<c n="San Fernando" c="SAN FERNANDO"/>
<c n="San Gabriel" c="SAN GABRIEL"/>
<c n="San Jacinto" c="SAN JACINTO"/>
<c n="San Juan Capistrano" c="SAN JUAN CAPISTRANO"/>
<c n="San Marino" c="SAN MARINO"/>
<c n="San Pedro" c="SAN PEDRO"/>
<c n="Santa Ana" c="SANTA ANA"/>
<c n="Santa Clarita" c="SANTA CLARITA"/>
<c n="Santa Fe Springs" c="SANTA FE SPRINGS"/>
<c n="Santa Monica" c="SANTA MONICA"/>
<c n="Santa Paula" c="SANTA PAULA"/>
<c n="Seal Beach" c="SEAL BEACH"/>
<c n="Sherman Oaks" c="SHERMAN OAKS"/>
<c n="Shoshone" c="SHOSHONE"/>
<c n="Sierra Madre" c="SIERRA MADRE"/>
<c n="Silverado" c="SILVERADO"/>
<c n="Simi Valley" c="SIMI VALLEY"/>
<c n="Somis" c="SOMIS"/>
<c n="South El Monte" c="SOUTH EL MONTE"/>
<c n="South Gate" c="SOUTH GATE"/>
<c n="South Pasadena" c="SOUTH PASADENA"/>
<c n="Stanton" c="STANTON"/>
<c n="Stevenson Ranch" c="STEVENSON RANCH"/>
<c n="Studio City" c="STUDIO CITY"/>
<c n="Sun City" c="SUN CITY"/>
<c n="Sun Valley" c="SUN VALLEY"/>
<c n="Sunland" c="SUNLAND"/>
<c n="Sunset Beach" c="SUNSET BEACH"/>
<c n="Sylmar" c="SYLMAR"/>
<c n="Tarzana" c="TARZANA"/>
<c n="Temecula" c="TEMECULA"/>
<c n="Temple City" c="TEMPLE CITY"/>
<c n="Thousand Oaks" c="THOUSAND OAKS"/>
<c n="Topanga" c="TOPANGA"/>
<c n="Torrance" c="TORRANCE"/>
<c n="Trabuco Canyon" c="TRABUCO CANYON"/>
<c n="Trona" c="TRONA"/>
<c n="Tujunga" c="TUJUNGA"/>
<c n="Tustin" c="TUSTIN"/>
<c n="Twentynine Palms" c="TWENTYNINE PALMS"/>
<c n="Twin Peaks" c="TWIN PEAKS"/>
<c n="Universal City" c="UNIVERSAL CITY"/>
<c n="Upland" c="UPLAND"/>
<c n="Valencia" c="VALENCIA"/>
<c n="Valley Village" c="VALLEY VILLAGE"/>
<c n="Van Nuys" c="VAN NUYS"/>
<c n="Venice" c="VENICE"/>
<c n="Ventura" c="VENTURA"/>
<c n="Victorville" c="VICTORVILLE"/>
<c n="Vidal" c="VIDAL"/>
<c n="Villa Park" c="VILLA PARK"/>
<c n="Walnut" c="WALNUT"/>
<c n="West Covina" c="WEST COVINA"/>
<c n="West Hills" c="WEST HILLS"/>
<c n="West Hollywood" c="WEST HOLLYWOOD"/>
<c n="Westlake Village" c="WESTLAKE VILLAGE"/>
<c n="Westminster" c="WESTMINSTER"/>
<c n="Whittier" c="WHITTIER"/>
<c n="Wildomar" c="WILDOMAR"/>
<c n="Wilmington" c="WILMINGTON"/>
<c n="Winchester" c="WINCHESTER"/>
<c n="Winnetka" c="WINNETKA"/>
<c n="Woodland Hills" c="WOODLAND HILLS"/>
<c n="Wrightwood" c="WRIGHTWOOD"/>
<c n="Yermo" c="YERMO"/>
<c n="Yorba Linda" c="YORBA LINDA"/>
<c n="Yucaipa" c="YUCAIPA"/>
<c n="Yucca Valley" c="YUCCA VALLEY"/>
<c n="Dyer" c="DYER"/>
<c n="Goldfield" c="GOLDFIELD"/>
<c n="Avocado Heights" c="AVOCADO HEIGHTS"/>
<c n="Canyon Lake" c="CANYON LAKE"/>
<c n="Commerce" c="COMMERCE"/>
<c n="Coto de Caza" c="COTO DE CAZA"/>
<c n="East La Mirada" c="EAST LA MIRADA"/>
<c n="East Los Angeles" c="EAST LOS ANGELES"/>
<c n="Eastvale" c="EASTVALE"/>
<c n="Edwards AFB" c="EDWARDS AFB"/>
<c n="El Camino Village" c="EL CAMINO VILLAGE"/>
<c n="Florence-Graham" c="FLORENCE-GRAHAM"/>
<c n="Furnace Creek" c="FURNACE CREEK"/>
<c n="Hawaiian Gardens" c="HAWAIIAN GARDENS"/>
<c n="Idyllwild-Pine Cove" c="IDYLLWILD-PINE COVE"/>
<c n="Irwindale" c="IRWINDALE"/>
<c n="Laguna Woods" c="LAGUNA WOODS"/>
<c n="North Tustin" c="NORTH TUSTIN"/>
<c n="Rossmoor" c="ROSSMOOR"/>
<c n="Signal Hill" c="SIGNAL HILL"/>
<c n="South Whittier" c="SOUTH WHITTIER"/>
<c n="Valle Vista" c="VALLE VISTA"/>
<c n="West Carson" c="WEST CARSON"/>
<c n="West Rancho Dominguez" c="WEST RANCHO DOMINGUEZ"/>
<c n="Willowbrook" c="WILLOWBROOK"/>
<c n="Woodcrest" c="WOODCREST"/></dma>
    
    <dma code="804" title="Palm Springs, CA">
<c n="Cathedral City" c="CATHEDRAL CITY"/>
<c n="Coachella" c="COACHELLA"/>
<c n="Desert Hot Springs" c="DESERT HOT SPRINGS"/>
<c n="Indian Wells" c="INDIAN WELLS"/>
<c n="Indio" c="INDIO"/>
<c n="La Quinta" c="LA QUINTA"/>
<c n="Mecca" c="MECCA"/>
<c n="Desert Hot Springs" c="DESERT HOT SPRINGS"/>
<c n="Palm Desert" c="PALM DESERT"/>
<c n="Palm Springs" c="PALM SPRINGS"/>
<c n="Rancho Mirage" c="RANCHO MIRAGE"/>
<c n="Thermal" c="THERMAL"/>
<c n="Thousand Palms" c="THOUSAND PALMS"/></dma>
    
    <dma code="807" title="San Francisco-Oakland-San Jose, CA">
<c n="Alameda" c="ALAMEDA"/>
<c n="Alamo" c="ALAMO"/>
<c n="Albany" c="ALBANY"/>
<c n="Albion" c="ALBION"/>
<c n="Alviso" c="ALVISO"/>
<c n="American Canyon" c="AMERICAN CANYON"/>
<c n="Angwin" c="ANGWIN"/>
<c n="Annapolis" c="ANNAPOLIS"/>
<c n="Antioch" c="ANTIOCH"/>
<c n="Atherton" c="ATHERTON"/>
<c n="Belmont" c="BELMONT"/>
<c n="Belvedere Tiburon" c="BELVEDERE TIBURON"/>
<c n="Benicia" c="BENICIA"/>
<c n="Berkeley" c="BERKELEY"/>
<c n="Bethel Island" c="BETHEL ISLAND"/>
<c n="Bodega Bay" c="BODEGA BAY"/>
<c n="Bolinas" c="BOLINAS"/>
<c n="Boonville" c="BOONVILLE"/>
<c n="Boyes Hot Springs" c="BOYES HOT SPRINGS"/>
<c n="Brentwood" c="BRENTWOOD"/>
<c n="Brisbane" c="BRISBANE"/>
<c n="Burlingame" c="BURLINGAME"/>
<c n="Byron" c="BYRON"/>
<c n="Calistoga" c="CALISTOGA"/>
<c n="Calpella" c="CALPELLA"/>
<c n="Campbell" c="CAMPBELL"/>
<c n="Canyon" c="CANYON"/>
<c n="Castro Valley" c="CASTRO VALLEY"/>
<c n="Cazadero" c="CAZADERO"/>
<c n="Clayton" c="CLAYTON"/>
<c n="Clearlake" c="CLEARLAKE"/>
<c n="Clearlake Oaks" c="CLEARLAKE OAKS"/>
<c n="Cloverdale" c="CLOVERDALE"/>
<c n="Cobb" c="COBB"/>
<c n="Concord" c="CONCORD"/>
<c n="Corte Madera" c="CORTE MADERA"/>
<c n="Covelo" c="COVELO"/>
<c n="Crockett" c="CROCKETT"/>
<c n="Cupertino" c="CUPERTINO"/>
<c n="Daly City" c="DALY CITY"/>
<c n="Danville" c="DANVILLE"/>
<c n="Deer Park" c="DEER PARK"/>
<c n="Diablo" c="DIABLO"/>
<c n="Dublin" c="DUBLIN"/>
<c n="El Cerrito" c="EL CERRITO"/>
<c n="El Granada" c="EL GRANADA"/>
<c n="El Sobrante" c="EL SOBRANTE"/>
<c n="Eldridge" c="ELDRIDGE"/>
<c n="Elk" c="ELK"/>
<c n="Emeryville" c="EMERYVILLE"/>
<c n="Fairfax" c="FAIRFAX"/>
<c n="Forest Knolls" c="FOREST KNOLLS"/>
<c n="Forestville" c="FORESTVILLE"/>
<c n="Fremont" c="FREMONT"/>
<c n="Fort Bragg" c="FORT BRAGG"/>
<c n="Fulton" c="FULTON"/>
<c n="Geyserville" c="GEYSERVILLE"/>
<c n="Gilroy" c="GILROY"/>
<c n="Glen Ellen" c="GLEN ELLEN"/>
<c n="Greenbrae" c="GREENBRAE"/>
<c n="Gualala" c="GUALALA"/>
<c n="Guerneville" c="GUERNEVILLE"/>
<c n="Half Moon Bay" c="HALF MOON BAY"/>
<c n="Hayward" c="HAYWARD"/>
<c n="Healdsburg" c="HEALDSBURG"/>
<c n="Hercules" c="HERCULES"/>
<c n="Inverness" c="INVERNESS"/>
<c n="Jenner" c="JENNER"/>
<c n="Kelseyville" c="KELSEYVILLE"/>
<c n="Kentfield" c="KENTFIELD"/>
<c n="Kenwood" c="KENWOOD"/>
<c n="Knightsen" c="KNIGHTSEN"/>
<c n="La Honda" c="LA HONDA"/>
<c n="Lafayette" c="LAFAYETTE"/>
<c n="Forbestown" c="FORBESTOWN"/>
<c n="Larkspur" c="LARKSPUR"/>
<c n="Laytonville" c="LAYTONVILLE"/>
<c n="Leggett" c="LEGGETT"/>
<c n="Livermore" c="LIVERMORE"/>
<c n="Los Altos" c="LOS ALTOS"/>
<c n="Los Gatos" c="LOS GATOS"/>
<c n="Lower Lake" c="LOWER LAKE"/>
<c n="Lucerne" c="LUCERNE"/>
<c n="Marshall" c="MARSHALL"/>
<c n="Martinez" c="MARTINEZ"/>
<c n="Mendocino" c="MENDOCINO"/>
<c n="Menlo Park" c="MENLO PARK"/>
<c n="Middletown" c="MIDDLETOWN"/>
<c n="Mill Valley" c="MILL VALLEY"/>
<c n="Millbrae" c="MILLBRAE"/>
<c n="Milpitas" c="MILPITAS"/>
<c n="Montara" c="MONTARA"/>
<c n="Monte Rio" c="MONTE RIO"/>
<c n="Moraga" c="MORAGA"/>
<c n="Morgan Hill" c="MORGAN HILL"/>
<c n="Moss Beach" c="MOSS BEACH"/>
<c n="Mount Hamilton" c="MOUNT HAMILTON"/>
<c n="Mountain View" c="MOUNTAIN VIEW"/>
<c n="Napa" c="NAPA"/>
<c n="Navarro" c="NAVARRO"/>
<c n="Newark" c="NEWARK"/>
<c n="Nicasio" c="NICASIO"/>
<c n="Novato" c="NOVATO"/>
<c n="Oakland" c="OAKLAND"/>
<c n="Oakley" c="OAKLEY"/>
<c n="Oakville" c="OAKVILLE"/>
<c n="Occidental" c="OCCIDENTAL"/>
<c n="Orinda" c="ORINDA"/>
<c n="Pacifica" c="PACIFICA"/>
<c n="Palo Alto" c="PALO ALTO"/>
<c n="Penngrove" c="PENNGROVE"/>
<c n="Pescadero" c="PESCADERO"/>
<c n="Petaluma" c="PETALUMA"/>
<c n="Piedmont" c="PIEDMONT"/>
<c n="Piercy" c="PIERCY"/>
<c n="Pinole" c="PINOLE"/>
<c n="Pittsburg" c="PITTSBURG"/>
<c n="Pleasant Hill" c="PLEASANT HILL"/>
<c n="Pleasanton" c="PLEASANTON"/>
<c n="Point Arena" c="POINT ARENA"/>
<c n="Point Reyes Station" c="POINT REYES STATION"/>
<c n="Port Costa" c="PORT COSTA"/>
<c n="Portola Valley" c="PORTOLA VALLEY"/>
<c n="Redwood City" c="REDWOOD CITY"/>
<c n="Redwood Estates" c="REDWOOD ESTATES"/>
<c n="Redwood Valley" c="REDWOOD VALLEY"/>
<c n="Richmond" c="RICHMOND"/>
<c n="Rodeo" c="RODEO"/>
<c n="Rohnert Park" c="ROHNERT PARK"/>
<c n="Ross" c="ROSS"/>
<c n="San Anselmo" c="SAN ANSELMO"/>
<c n="San Bruno" c="SAN BRUNO"/>
<c n="San Carlos" c="SAN CARLOS"/>
<c n="San Francisco" c="SAN FRANCISCO"/>
<c n="San Gregorio" c="SAN GREGORIO"/>
<c n="San Jose" c="SAN JOSE"/>
<c n="San Leandro" c="SAN LEANDRO"/>
<c n="San Lorenzo" c="SAN LORENZO"/>
<c n="San Martin" c="SAN MARTIN"/>
<c n="San Mateo" c="SAN MATEO"/>
<c n="San Pablo" c="SAN PABLO"/>
<c n="San Quentin" c="SAN QUENTIN"/>
<c n="San Rafael" c="SAN RAFAEL"/>
<c n="San Ramon" c="SAN RAMON"/>
<c n="Santa Clara" c="SANTA CLARA"/>
<c n="Santa Rosa" c="SANTA ROSA"/>
<c n="Saratoga" c="SARATOGA"/>
<c n="Sausalito" c="SAUSALITO"/>
<c n="Sebastopol" c="SEBASTOPOL"/>
<c n="Sonoma" c="SONOMA"/>
<c n="South San Francisco" c="SOUTH SAN FRANCISCO"/>
<c n="Saint Helena" c="SAINT HELENA"/>
<c n="Stanford" c="STANFORD"/>
<c n="Stinson Beach" c="STINSON BEACH"/>
<c n="Sunnyvale" c="SUNNYVALE"/>
<c n="Sunol" c="SUNOL"/>
<c n="Tomales" c="TOMALES"/>
<c n="Ukiah" c="UKIAH"/>
<c n="Union City" c="UNION CITY"/>
<c n="Upper Lake" c="UPPER LAKE"/>
<c n="Vallejo" c="VALLEJO"/>
<c n="Walnut Creek" c="WALNUT CREEK"/>
<c n="Willits" c="WILLITS"/>
<c n="Windsor" c="WINDSOR"/>
<c n="Woodacre" c="WOODACRE"/>
<c n="Yountville" c="YOUNTVILLE"/>
<c n="Bay Point" c="BAY POINT"/>
<c n="Blackhawk" c="BLACKHAWK"/>
<c n="Cotati" c="COTATI"/>
<c n="Discovery Bay" c="DISCOVERY BAY"/>
<c n="East Palo Alto" c="EAST PALO ALTO"/>
<c n="Foster City" c="FOSTER CITY"/>
<c n="Graton" c="GRATON"/>
<c n="Hillsborough" c="HILLSBOROUGH"/>
<c n="Los Altos Hills" c="LOS ALTOS HILLS"/>
<c n="Lucas Valley-Marinwood" c="LUCAS VALLEY-MARINWOOD"/>
<c n="Tamalpais-Homestead Valley" c="TAMALPAIS-HOMESTEAD VALLEY"/>
<c n="Woodside" c="WOODSIDE"/></dma>
    
    <dma code="825" title="San Diego, CA">
<c n="Alpine" c="ALPINE"/>
<c n="Bonita Long Canyon" c="BONITA LONG CANYON"/>
<c n="Bonsall" c="BONSALL"/>
<c n="Borrego Springs" c="BORREGO SPRINGS"/>
<c n="Camp Pendleton North" c="CAMP PENDLETON NORTH"/>
<c n="Campo" c="CAMPO"/>
<c n="Cardiff-by-the-Sea" c="CARDIFF-BY-THE-SEA"/>
<c n="Carlsbad" c="CARLSBAD"/>
<c n="Chula Vista" c="CHULA VISTA"/>
<c n="Coronado" c="CORONADO"/>
<c n="Del Mar" c="DEL MAR"/>
<c n="El Cajon" c="EL CAJON"/>
<c n="Encinitas" c="ENCINITAS"/>
<c n="Escondido" c="ESCONDIDO"/>
<c n="Fallbrook" c="FALLBROOK"/>
<c n="Imperial Beach" c="IMPERIAL BEACH"/>
<c n="Jacumba" c="JACUMBA"/>
<c n="Jamul" c="JAMUL"/>
<c n="Julian" c="JULIAN"/>
<c n="Country Club" c="COUNTRY CLUB"/>
<c n="La Mesa" c="LA MESA"/>
<c n="Lakeside" c="LAKESIDE"/>
<c n="Lemon Grove" c="LEMON GROVE"/>
<c n="Mount Laguna" c="MOUNT LAGUNA"/>
<c n="National City" c="NATIONAL CITY"/>
<c n="Oceanside" c="OCEANSIDE"/>
<c n="Pala" c="PALA"/>
<c n="Palomar Mountain" c="PALOMAR MOUNTAIN"/>
<c n="Pine Valley" c="PINE VALLEY"/>
<c n="Poway" c="POWAY"/>
<c n="Ramona" c="RAMONA"/>
<c n="Rancho Santa Fe" c="RANCHO SANTA FE"/>
<c n="San Diego" c="SAN DIEGO"/>
<c n="San Luis Rey" c="SAN LUIS REY"/>
<c n="San Marcos" c="SAN MARCOS"/>
<c n="San Ysidro" c="SAN YSIDRO"/>
<c n="Santee" c="SANTEE"/>
<c n="Solana Beach" c="SOLANA BEACH"/>
<c n="Spring Valley" c="SPRING VALLEY"/>
<c n="Valley Center" c="VALLEY CENTER"/>
<c n="Vista" c="VISTA"/>
<c n="Warner Springs" c="WARNER SPRINGS"/>
<c n="Bonita" c="BONITA"/>
<c n="Camp Pendleton South" c="CAMP PENDLETON SOUTH"/>
<c n="Hidden Meadows" c="HIDDEN MEADOWS"/>
<c n="Rainbow" c="RAINBOW"/>
<c n="Rancho San Diego" c="RANCHO SAN DIEGO"/></dma>
    
    <dma code="828" title="Monterey-Salinas, CA">
<c n="Aptos" c="APTOS"/>
<c n="Aromas" c="AROMAS"/>
<c n="Ben Lomond" c="BEN LOMOND"/>
<c n="Big Sur" c="BIG SUR"/>
<c n="Boulder Creek" c="BOULDER CREEK"/>
<c n="Bradley" c="BRADLEY"/>
<c n="Brookdale" c="BROOKDALE"/>
<c n="Capitola" c="CAPITOLA"/>
<c n="Carmel" c="CARMEL"/>
<c n="Carmel Valley" c="CARMEL VALLEY"/>
<c n="Castroville" c="CASTROVILLE"/>
<c n="Chualar" c="CHUALAR"/>
<c n="Felton" c="FELTON"/>
<c n="Freedom" c="FREEDOM"/>
<c n="Gonzales" c="GONZALES"/>
<c n="Greenfield" c="GREENFIELD"/>
<c n="Hollister" c="HOLLISTER"/>
<c n="King City" c="KING CITY"/>
<c n="Marina" c="MARINA"/>
<c n="Monterey" c="MONTEREY"/>
<c n="Moss Landing" c="MOSS LANDING"/>
<c n="Pacific Grove" c="PACIFIC GROVE"/>
<c n="Paicines" c="PAICINES"/>
<c n="Pebble Beach" c="PEBBLE BEACH"/>
<c n="Salinas" c="SALINAS"/>
<c n="San Ardo" c="SAN ARDO"/>
<c n="San Juan Bautista" c="SAN JUAN BAUTISTA"/>
<c n="San Lucas" c="SAN LUCAS"/>
<c n="Santa Cruz" c="SANTA CRUZ"/>
<c n="Scotts Valley" c="SCOTTS VALLEY"/>
<c n="Seaside" c="SEASIDE"/>
<c n="Soledad" c="SOLEDAD"/>
<c n="Soquel" c="SOQUEL"/>
<c n="Spreckels" c="SPRECKELS"/>
<c n="Watsonville" c="WATSONVILLE"/>
<c n="Del Monte Forest" c="DEL MONTE FOREST"/>
<c n="Live Oak" c="LIVE OAK"/>
<c n="Prunedale" c="PRUNEDALE"/></dma>
    
    <dma code="855" title="Santa Barbara-San Luis Obispo, CA">
<c n="Arroyo Grande" c="ARROYO GRANDE"/>
<c n="Atascadero" c="ATASCADERO"/>
<c n="Avila Beach" c="AVILA BEACH"/>
<c n="Buellton" c="BUELLTON"/>
<c n="Cambria" c="CAMBRIA"/>
<c n="Carpinteria" c="CARPINTERIA"/>
<c n="Cayucos" c="CAYUCOS"/>
<c n="Goleta" c="GOLETA"/>
<c n="Grover Beach" c="GROVER BEACH"/>
<c n="Guadalupe" c="GUADALUPE"/>
<c n="Lompoc" c="LOMPOC"/>
<c n="Los Olivos" c="LOS OLIVOS"/>
<c n="Los Osos" c="LOS OSOS"/>
<c n="Morro Bay" c="MORRO BAY"/>
<c n="New Cuyama" c="NEW CUYAMA"/>
<c n="Nipomo" c="NIPOMO"/>
<c n="Oceano" c="OCEANO"/>
<c n="Paso Robles" c="PASO ROBLES"/>
<c n="Pismo Beach" c="PISMO BEACH"/>
<c n="San Luis Obispo" c="SAN LUIS OBISPO"/>
<c n="San Miguel" c="SAN MIGUEL"/>
<c n="San Simeon" c="SAN SIMEON"/>
<c n="Santa Barbara" c="SANTA BARBARA"/>
<c n="Santa Margarita" c="SANTA MARGARITA"/>
<c n="Santa Maria" c="SANTA MARIA"/>
<c n="Santa Ynez" c="SANTA YNEZ"/>
<c n="Shandon" c="SHANDON"/>
<c n="Solvang" c="SOLVANG"/>
<c n="Templeton" c="TEMPLETON"/>
<c n="Baywood-Los Osos" c="BAYWOOD-LOS OSOS"/>
<c n="Isla Vista" c="ISLA VISTA"/>
<c n="Montecito" c="MONTECITO"/>
<c n="Orcutt" c="ORCUTT"/>
<c n="Vandenberg Air Force Base" c="VANDENBERG AIR FORCE BASE"/></dma>
    
    <dma code="862" title="Sacramento-Stockton-Modesto, CA">
<c n="Alleghany" c="ALLEGHANY"/>
<c n="Alta" c="ALTA"/>
<c n="Altaville" c="ALTAVILLE"/>
<c n="Angels Camp" c="ANGELS CAMP"/>
<c n="Antelope" c="ANTELOPE"/>
<c n="Arbuckle" c="ARBUCKLE"/>
<c n="Arnold" c="ARNOLD"/>
<c n="Auburn" c="AUBURN"/>
<c n="Beale AFB" c="BEALE AFB"/>
<c n="Groveland-Big Oak Flat" c="GROVELAND-BIG OAK FLAT"/>
<c n="Blairsden-Graeagle" c="BLAIRSDEN-GRAEAGLE"/>
<c n="Brooks" c="BROOKS"/>
<c n="Camino" c="CAMINO"/>
<c n="Camptonville" c="CAMPTONVILLE"/>
<c n="Carmichael" c="CARMICHAEL"/>
<c n="Ceres" c="CERES"/>
<c n="Challenge" c="CHALLENGE"/>
<c n="Chester" c="CHESTER"/>
<c n="Chicago Park" c="CHICAGO PARK"/>
<c n="Chinese Camp" c="CHINESE CAMP"/>
<c n="Citrus Heights" c="CITRUS HEIGHTS"/>
<c n="Clements" c="CLEMENTS"/>
<c n="Colfax" c="COLFAX"/>
<c n="Coloma" c="COLOMA"/>
<c n="Columbia" c="COLUMBIA"/>
<c n="Colusa" c="COLUSA"/>
<c n="Copperopolis" c="COPPEROPOLIS"/>
<c n="Crows Landing" c="CROWS LANDING"/>
<c n="Davis" c="DAVIS"/>
<c n="Del Rio" c="DEL RIO"/>
<c n="Diamond Springs" c="DIAMOND SPRINGS"/>
<c n="Dixon" c="DIXON"/>
<c n="Downieville" c="DOWNIEVILLE"/>
<c n="Dunnigan" c="DUNNIGAN"/>
<c n="Dutch Flat" c="DUTCH FLAT"/>
<c n="El Dorado" c="EL DORADO"/>
<c n="El Dorado Hills" c="EL DORADO HILLS"/>
<c n="Elk Grove" c="ELK GROVE"/>
<c n="Elmira" c="ELMIRA"/>
<c n="Elverta" c="ELVERTA"/>
<c n="Empire" c="EMPIRE"/>
<c n="Escalon" c="ESCALON"/>
<c n="Esparto" c="ESPARTO"/>
<c n="Fair Oaks" c="FAIR OAKS"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Fiddletown" c="FIDDLETOWN"/>
<c n="Folsom" c="FOLSOM"/>
<c n="Foresthill" c="FORESTHILL"/>
<c n="Galt" c="GALT"/>
<c n="Georgetown" c="GEORGETOWN"/>
<c n="Grass Valley" c="GRASS VALLEY"/>
<c n="Greenville" c="GREENVILLE"/>
<c n="Greenwood" c="GREENWOOD"/>
<c n="Grizzly Flats" c="GRIZZLY FLATS"/>
<c n="Groveland" c="GROVELAND"/>
<c n="Guinda" c="GUINDA"/>
<c n="Herald" c="HERALD"/>
<c n="Hickman" c="HICKMAN"/>
<c n="Homewood" c="HOMEWOOD"/>
<c n="Hughson" c="HUGHSON"/>
<c n="Ione" c="IONE"/>
<c n="Isleton" c="ISLETON"/>
<c n="Jackson" c="JACKSON"/>
<c n="Jamestown" c="JAMESTOWN"/>
<c n="Kings Beach" c="KINGS BEACH"/>
<c n="Knights Landing" c="KNIGHTS LANDING"/>
<c n="Lathrop" c="LATHROP"/>
<c n="Lincoln" c="LINCOLN"/>
<c n="Linden" c="LINDEN"/>
<c n="Live Oak" c="LIVE OAK"/>
<c n="Lockeford" c="LOCKEFORD"/>
<c n="Lodi" c="LODI"/>
<c n="Loomis" c="LOOMIS"/>
<c n="Loyalton" c="LOYALTON"/>
<c n="Lyoth" c="LYOTH"/>
<c n="Manteca" c="MANTECA"/>
<c n="Marysville" c="MARYSVILLE"/>
<c n="Mather" c="MATHER"/>
<c n="Maxwell" c="MAXWELL"/>
<c n="McClellan Air Force Base" c="MCCLELLAN AIR FORCE BASE"/>
<c n="Meadow Vista" c="MEADOW VISTA"/>
<c n="Meridian" c="MERIDIAN"/>
<c n="Mi-Wuk Village" c="MI-WUK VILLAGE"/>
<c n="Moccasin" c="MOCCASIN"/>
<c n="Modesto" c="MODESTO"/>
<c n="Mokelumne Hill" c="MOKELUMNE HILL"/>
<c n="Aukum" c="AUKUM"/>
<c n="Nevada City" c="NEVADA CITY"/>
<c n="Newcastle" c="NEWCASTLE"/>
<c n="Newman" c="NEWMAN"/>
<c n="Nicolaus" c="NICOLAUS"/>
<c n="Norden" c="NORDEN"/>
<c n="North Highlands" c="NORTH HIGHLANDS"/>
<c n="North San Juan" c="NORTH SAN JUAN"/>
<c n="Oakdale" c="OAKDALE"/>
<c n="Olympic Valley" c="OLYMPIC VALLEY"/>
<c n="Orangevale" c="ORANGEVALE"/>
<c n="Patterson" c="PATTERSON"/>
<c n="Penn Valley" c="PENN VALLEY"/>
<c n="Penryn" c="PENRYN"/>
<c n="Pine Grove" c="PINE GROVE"/>
<c n="Pinecrest" c="PINECREST"/>
<c n="Placerville" c="PLACERVILLE"/>
<c n="Pleasant Grove" c="PLEASANT GROVE"/>
<c n="Plymouth" c="PLYMOUTH"/>
<c n="Pollock Pines" c="POLLOCK PINES"/>
<c n="Portola" c="PORTOLA"/>
<c n="Quincy" c="QUINCY"/>
<c n="Rancho Cordova" c="RANCHO CORDOVA"/>
<c n="Represa" c="REPRESA"/>
<c n="Rescue" c="RESCUE"/>
<c n="Rio Linda" c="RIO LINDA"/>
<c n="Rio Oso" c="RIO OSO"/>
<c n="Rio Vista" c="RIO VISTA"/>
<c n="Ripon" c="RIPON"/>
<c n="Riverbank" c="RIVERBANK"/>
<c n="Robbins" c="ROBBINS"/>
<c n="Rocklin" c="ROCKLIN"/>
<c n="Roseville" c="ROSEVILLE"/>
<c n="Rough and Ready" c="ROUGH AND READY"/>
<c n="Sacramento" c="SACRAMENTO"/>
<c n="Salida" c="SALIDA"/>
<c n="San Andreas" c="SAN ANDREAS"/>
<c n="Sheep Ranch" c="SHEEP RANCH"/>
<c n="Shingle Springs" c="SHINGLE SPRINGS"/>
<c n="Sierraville" c="SIERRAVILLE"/>
<c n="Sloughhouse" c="SLOUGHHOUSE"/>
<c n="Smartsville" c="SMARTSVILLE"/>
<c n="Soda Springs" c="SODA SPRINGS"/>
<c n="Sonora" c="SONORA"/>
<c n="Stockton" c="STOCKTON"/>
<c n="Stonyford" c="STONYFORD"/>
<c n="Suisun City" c="SUISUN CITY"/>
<c n="Sutter" c="SUTTER"/>
<c n="Sutter Creek" c="SUTTER CREEK"/>
<c n="Tahoe City" c="TAHOE CITY"/>
<c n="Tahoe Vista" c="TAHOE VISTA"/>
<c n="Thornton" c="THORNTON"/>
<c n="Tracy" c="TRACY"/>
<c n="Travis Air Force Base" c="TRAVIS AIR FORCE BASE"/>
<c n="Truckee" c="TRUCKEE"/>
<c n="Turlock" c="TURLOCK"/>
<c n="Twain Harte" c="TWAIN HARTE"/>
<c n="Vacaville" c="VACAVILLE"/>
<c n="Valley Springs" c="VALLEY SPRINGS"/>
<c n="Wallace" c="WALLACE"/>
<c n="Washington" c="WASHINGTON"/>
<c n="Waterford" c="WATERFORD"/>
<c n="West Sacramento" c="WEST SACRAMENTO"/>
<c n="Westley" c="WESTLEY"/>
<c n="Wheatland" c="WHEATLAND"/>
<c n="Williams" c="WILLIAMS"/>
<c n="Wilton" c="WILTON"/>
<c n="Winters" c="WINTERS"/>
<c n="Woodbridge" c="WOODBRIDGE"/>
<c n="Woodland" c="WOODLAND"/>
<c n="Yolo" c="YOLO"/>
<c n="Yuba City" c="YUBA CITY"/>
<c n="Alta Sierra" c="ALTA SIERRA"/>
<c n="Arden-Arcade" c="ARDEN-ARCADE"/>
<c n="Cameron Park" c="CAMERON PARK"/>
<c n="Florin" c="FLORIN"/>
<c n="Foothill Farms" c="FOOTHILL FARMS"/>
<c n="Gold River" c="GOLD RIVER"/>
<c n="Granite Bay" c="GRANITE BAY"/>
<c n="La Riviera" c="LA RIVIERA"/>
<c n="Lake of the Pines" c="LAKE OF THE PINES"/>
<c n="Linda" c="LINDA"/>
<c n="Olivehurst" c="OLIVEHURST"/>
<c n="Rancho Calaveras" c="RANCHO CALAVERAS"/>
<c n="Rancho Murieta" c="RANCHO MURIETA"/>
<c n="Rosemont" c="ROSEMONT"/>
<c n="Vineyard" c="VINEYARD"/>
<c n="West Point" c="WEST POINT"/></dma>
    
    <dma code="866" title="Fresno-Visalia, CA">
<c n="Alpaugh" c="ALPAUGH"/>
<c n="Atwater" c="ATWATER"/>
<c n="Auberry" c="AUBERRY"/>
<c n="Avenal" c="AVENAL"/>
<c n="Badger" c="BADGER"/>
<c n="Big Creek" c="BIG CREEK"/>
<c n="Burrel" c="BURREL"/>
<c n="California Hot Springs" c="CALIFORNIA HOT SPRINGS"/>
<c n="Caruthers" c="CARUTHERS"/>
<c n="Chowchilla" c="CHOWCHILLA"/>
<c n="Clovis" c="CLOVIS"/>
<c n="Coalinga" c="COALINGA"/>
<c n="Corcoran" c="CORCORAN"/>
<c n="Coulterville" c="COULTERVILLE"/>
<c n="Delhi" c="DELHI"/>
<c n="Dinuba" c="DINUBA"/>
<c n="Dos Palos" c="DOS PALOS"/>
<c n="Ducor" c="DUCOR"/>
<c n="Earlimart" c="EARLIMART"/>
<c n="Exeter" c="EXETER"/>
<c n="Farmersville" c="FARMERSVILLE"/>
<c n="Firebaugh" c="FIREBAUGH"/>
<c n="Five Points" c="FIVE POINTS"/>
<c n="Fowler" c="FOWLER"/>
<c n="Fresno" c="FRESNO"/>
<c n="Friant" c="FRIANT"/>
<c n="Gustine" c="GUSTINE"/>
<c n="Hanford" c="HANFORD"/>
<c n="Hilmar" c="HILMAR"/>
<c n="Huron" c="HURON"/>
<c n="Ivanhoe" c="IVANHOE"/>
<c n="Kerman" c="KERMAN"/>
<c n="Kings Canyon National Park" c="KINGS CANYON NATIONAL PARK"/>
<c n="Kingsburg" c="KINGSBURG"/>
<c n="Laton" c="LATON"/>
<c n="Le Grand" c="LE GRAND"/>
<c n="Lemon Cove" c="LEMON COVE"/>
<c n="Lemoore" c="LEMOORE"/>
<c n="Lindsay" c="LINDSAY"/>
<c n="Livingston" c="LIVINGSTON"/>
<c n="Los Banos" c="LOS BANOS"/>
<c n="Madera" c="MADERA"/>
<c n="Mariposa" c="MARIPOSA"/>
<c n="Mendota" c="MENDOTA"/>
<c n="Merced" c="MERCED"/>
<c n="Miramonte" c="MIRAMONTE"/>
<c n="North Fork" c="NORTH FORK"/>
<c n="O Neals" c="O NEALS"/>
<c n="Oakhurst" c="OAKHURST"/>
<c n="Orosi" c="OROSI"/>
<c n="Parlier" c="PARLIER"/>
<c n="Pixley" c="PIXLEY"/>
<c n="Planada" c="PLANADA"/>
<c n="Porterville" c="PORTERVILLE"/>
<c n="Raisin City" c="RAISIN CITY"/>
<c n="Raymond" c="RAYMOND"/>
<c n="Reedley" c="REEDLEY"/>
<c n="Richgrove" c="RICHGROVE"/>
<c n="Riverdale" c="RIVERDALE"/>
<c n="San Joaquin" c="SAN JOAQUIN"/>
<c n="Sanger" c="SANGER"/>
<c n="Selma" c="SELMA"/>
<c n="Sequoia National Park" c="SEQUOIA NATIONAL PARK"/>
<c n="Snelling" c="SNELLING"/>
<c n="Springville" c="SPRINGVILLE"/>
<c n="Squaw Valley" c="SQUAW VALLEY"/>
<c n="Stevinson" c="STEVINSON"/>
<c n="Strathmore" c="STRATHMORE"/>
<c n="Sultana" c="SULTANA"/>
<c n="Three Rivers" c="THREE RIVERS"/>
<c n="Tipton" c="TIPTON"/>
<c n="Tollhouse" c="TOLLHOUSE"/>
<c n="Tranquillity" c="TRANQUILLITY"/>
<c n="Traver" c="TRAVER"/>
<c n="Tulare" c="TULARE"/>
<c n="Visalia" c="VISALIA"/>
<c n="Waukena" c="WAUKENA"/>
<c n="Woodlake" c="WOODLAKE"/>
<c n="Yosemite Valley" c="YOSEMITE VALLEY"/>
<c n="Orange Cove" c="ORANGE COVE"/>
<c n="Yosemite Lakes" c="YOSEMITE LAKES"/></dma>
    
    <dma code="868" title="Chico-Redding, CA">
<c n="Alturas" c="ALTURAS"/>
<c n="Anderson" c="ANDERSON"/>
<c n="Bangor" c="BANGOR"/>
<c n="Bella Vista" c="BELLA VISTA"/>
<c n="Big Bend" c="BIG BEND"/>
<c n="Biggs" c="BIGGS"/>
<c n="Burney" c="BURNEY"/>
<c n="Butte City" c="BUTTE CITY"/>
<c n="Chico" c="CHICO"/>
<c n="Corning" c="CORNING"/>
<c n="Cottonwood" c="COTTONWOOD"/>
<c n="Durham" c="DURHAM"/>
<c n="Elk Creek" c="ELK CREEK"/>
<c n="Fall River Mills" c="FALL RIVER MILLS"/>
<c n="Forbestown" c="FORBESTOWN"/>
<c n="Forest Ranch" c="FOREST RANCH"/>
<c n="French Gulch" c="FRENCH GULCH"/>
<c n="Gridley" c="GRIDLEY"/>
<c n="Hayfork" c="HAYFORK"/>
<c n="Igo" c="IGO"/>
<c n="Lewiston" c="LEWISTON"/>
<c n="Los Molinos" c="LOS MOLINOS"/>
<c n="Mad River" c="MAD RIVER"/>
<c n="Magalia" c="MAGALIA"/>
<c n="Millville" c="MILLVILLE"/>
<c n="Orland" c="ORLAND"/>
<c n="Oroville" c="OROVILLE"/>
<c n="Palo Cedro" c="PALO CEDRO"/>
<c n="Paradise" c="PARADISE"/>
<c n="Paskenta" c="PASKENTA"/>
<c n="Red Bluff" c="RED BLUFF"/>
<c n="Redding" c="REDDING"/>
<c n="Richvale" c="RICHVALE"/>
<c n="Shasta" c="SHASTA"/>
<c n="Shasta Lake" c="SHASTA LAKE"/>
<c n="Weaverville" c="WEAVERVILLE"/>
<c n="Willows" c="WILLOWS"/>
<c n="Happy Valley" c="HAPPY VALLEY"/></dma>
    </state>
<state id="NM" full_name="New Mexico">
    <dma code="790" title="Albuquerque-Santa Fe, NM">
<c n="Chinle" c="CHINLE"/>
<c n="Fort Defiance" c="FORT DEFIANCE"/>
<c n="Ganado" c="GANADO"/>
<c n="Many Farms" c="MANY FARMS"/>
<c n="Sanders" c="SANDERS"/>
<c n="St. Michaels" c="ST. MICHAELS"/>
<c n="Teec Nos Pos" c="TEEC NOS POS"/>
<c n="Window Rock" c="WINDOW ROCK"/>
<c n="Bayfield" c="BAYFIELD"/>
<c n="Cortez" c="CORTEZ"/>
<c n="Dolores" c="DOLORES"/>
<c n="Durango" c="DURANGO"/>
<c n="Ignacio" c="IGNACIO"/>
<c n="Mancos" c="MANCOS"/>
<c n="Pleasant View" c="PLEASANT VIEW"/>
<c n="Towaoc" c="TOWAOC"/>
<c n="Alamogordo" c="ALAMOGORDO"/>
<c n="Albuquerque" c="ALBUQUERQUE"/>
<c n="Algodones" c="ALGODONES"/>
<c n="Alto" c="ALTO"/>
<c n="Angel Fire" c="ANGEL FIRE"/>
<c n="Animas" c="ANIMAS"/>
<c n="Artesia" c="ARTESIA"/>
<c n="Aztec" c="AZTEC"/>
<c n="Bayard" c="BAYARD"/>
<c n="Belen" c="BELEN"/>
<c n="Bernalillo" c="BERNALILLO"/>
<c n="Bloomfield" c="BLOOMFIELD"/>
<c n="Bosque" c="BOSQUE"/>
<c n="Bosque Farms" c="BOSQUE FARMS"/>
<c n="Buena Vista" c="BUENA VISTA"/>
<c n="Capitan" c="CAPITAN"/>
<c n="Carlsbad" c="CARLSBAD"/>
<c n="Carrizozo" c="CARRIZOZO"/>
<c n="Cedar Crest" c="CEDAR CREST"/>
<c n="Los Cerrillos" c="LOS CERRILLOS"/>
<c n="Chama" c="CHAMA"/>
<c n="Church Rock" c="CHURCH ROCK"/>
<c n="Cloudcroft" c="CLOUDCROFT"/>
<c n="Corrales" c="CORRALES"/>
<c n="Crownpoint" c="CROWNPOINT"/>
<c n="Cuba" c="CUBA"/>
<c n="Datil" c="DATIL"/>
<c n="Deming" c="DEMING"/>
<c n="Dulce" c="DULCE"/>
<c n="Edgewood" c="EDGEWOOD"/>
<c n="El Rito" c="EL RITO"/>
<c n="Espanola" c="ESPANOLA"/>
<c n="Estancia" c="ESTANCIA"/>
<c n="Farmington" c="FARMINGTON"/>
<c n="Fence Lake" c="FENCE LAKE"/>
<c n="Flora Vista" c="FLORA VISTA"/>
<c n="Ft Sumner" c="FT SUMNER"/>
<c n="Gallup" c="GALLUP"/>
<c n="Grants" c="GRANTS"/>
<c n="Hobbs" c="HOBBS"/>
<c n="Holloman AFB" c="HOLLOMAN AFB"/>
<c n="Jemez Springs" c="JEMEZ SPRINGS"/>
<c n="Kirtland" c="KIRTLAND"/>
<c n="Kirtland Air Force Base" c="KIRTLAND AIR FORCE BASE"/>
<c n="Laguna" c="LAGUNA"/>
<c n="Las Vegas" c="LAS VEGAS"/>
<c n="Lordsburg" c="LORDSBURG"/>
<c n="Los Alamos" c="LOS ALAMOS"/>
<c n="Los Lunas" c="LOS LUNAS"/>
<c n="Los Ojos" c="LOS OJOS"/>
<c n="Lovington" c="LOVINGTON"/>
<c n="Magdalena" c="MAGDALENA"/>
<c n="Maxwell" c="MAXWELL"/>
<c n="Mescalero" c="MESCALERO"/>
<c n="Montezuma" c="MONTEZUMA"/>
<c n="Mora" c="MORA"/>
<c n="Moriarty" c="MORIARTY"/>
<c n="Mosquero" c="MOSQUERO"/>
<c n="Mountainair" c="MOUNTAINAIR"/>
<c n="Ojo Caliente" c="OJO CALIENTE"/>
<c n="Penasco" c="PENASCO"/>
<c n="Peralta" c="PERALTA"/>
<c n="Mountain View" c="MOUNTAIN VIEW"/>
<c n="Placitas" c="PLACITAS"/>
<c n="Ramah" c="RAMAH"/>
<c n="Raton" c="RATON"/>
<c n="Red River" c="RED RIVER"/>
<c n="Rehoboth" c="REHOBOTH"/>
<c n="Reserve" c="RESERVE"/>
<c n="Rio Rancho" c="RIO RANCHO"/>
<c n="Rociada" c="ROCIADA"/>
<c n="Roswell" c="ROSWELL"/>
<c n="Roy" c="ROY"/>
<c n="Ruidoso" c="RUIDOSO"/>
<c n="Sandia Park" c="SANDIA PARK"/>
<c n="Santa Cruz" c="SANTA CRUZ"/>
<c n="Santa Fe" c="SANTA FE"/>
<c n="Santa Rosa" c="SANTA ROSA"/>
<c n="Shiprock" c="SHIPROCK"/>
<c n="Silver City" c="SILVER CITY"/>
<c n="Socorro" c="SOCORRO"/>
<c n="Springer" c="SPRINGER"/>
<c n="Sunspot" c="SUNSPOT"/>
<c n="Taos" c="TAOS"/>
<c n="Tesuque" c="TESUQUE"/>
<c n="Thoreau" c="THOREAU"/>
<c n="Tierra Amarilla" c="TIERRA AMARILLA"/>
<c n="Tijeras" c="TIJERAS"/>
<c n="Tohatchi" c="TOHATCHI"/>
<c n="Truth or Consequences" c="TRUTH OR CONSEQUENCES"/>
<c n="Tularosa" c="TULAROSA"/>
<c n="Vanderwagen" c="VANDERWAGEN"/>
<c n="Vaughn" c="VAUGHN"/>
<c n="Villanueva" c="VILLANUEVA"/>
<c n="Waterflow" c="WATERFLOW"/>
<c n="Watrous" c="WATROUS"/>
<c n="Zuni Pueblo" c="ZUNI PUEBLO"/>
<c n="Pecos" c="PECOS"/>
<c n="Cuyamungue" c="CUYAMUNGUE"/>
<c n="South Valley" c="SOUTH VALLEY"/></dma>
    </state>
<state id="OR" full_name="Oregon">
    <dma code="801" title="Eugene, OR">
<c n="Bandon" c="BANDON"/>
<c n="Blachly" c="BLACHLY"/>
<c n="Camas Valley" c="CAMAS VALLEY"/>
<c n="Canyonville" c="CANYONVILLE"/>
<c n="Coos Bay" c="COOS BAY"/>
<c n="Coquille" c="COQUILLE"/>
<c n="Corvallis" c="CORVALLIS"/>
<c n="Cottage Grove" c="COTTAGE GROVE"/>
<c n="Creswell" c="CRESWELL"/>
<c n="Days Creek" c="DAYS CREEK"/>
<c n="Drain" c="DRAIN"/>
<c n="Elkton" c="ELKTON"/>
<c n="Elmira" c="ELMIRA"/>
<c n="Eugene" c="EUGENE"/>
<c n="Florence" c="FLORENCE"/>
<c n="Gardiner" c="GARDINER"/>
<c n="Glendale" c="GLENDALE"/>
<c n="Glide" c="GLIDE"/>
<c n="Junction City" c="JUNCTION CITY"/>
<c n="Lakeside" c="LAKESIDE"/>
<c n="Lowell" c="LOWELL"/>
<c n="Mapleton" c="MAPLETON"/>
<c n="Marcola" c="MARCOLA"/>
<c n="Monroe" c="MONROE"/>
<c n="Myrtle Creek" c="MYRTLE CREEK"/>
<c n="Myrtle Point" c="MYRTLE POINT"/>
<c n="North Bend" c="NORTH BEND"/>
<c n="Oakland" c="OAKLAND"/>
<c n="Oakridge" c="OAKRIDGE"/>
<c n="Philomath" c="PHILOMATH"/>
<c n="Pleasant Hill" c="PLEASANT HILL"/>
<c n="Powers" c="POWERS"/>
<c n="Reedsport" c="REEDSPORT"/>
<c n="Riddle" c="RIDDLE"/>
<c n="Roseburg" c="ROSEBURG"/>
<c n="Springfield" c="SPRINGFIELD"/>
<c n="Sutherlin" c="SUTHERLIN"/>
<c n="Veneta" c="VENETA"/>
<c n="Vida" c="VIDA"/>
<c n="Winston" c="WINSTON"/>
<c n="Yoncalla" c="YONCALLA"/></dma>
    
    <dma code="813" title="Medford-Klamath Falls, OR">
<c n="Dorris" c="DORRIS"/>
<c n="Dunsmuir" c="DUNSMUIR"/>
<c n="Etna" c="ETNA"/>
<c n="Gazelle" c="GAZELLE"/>
<c n="Grenada" c="GRENADA"/>
<c n="Happy Camp" c="HAPPY CAMP"/>
<c n="Hornbrook" c="HORNBROOK"/>
<c n="Montague" c="MONTAGUE"/>
<c n="Mount Shasta" c="MOUNT SHASTA"/>
<c n="Tulelake" c="TULELAKE"/>
<c n="Weed" c="WEED"/>
<c n="Yreka" c="YREKA"/>
<c n="Agness" c="AGNESS"/>
<c n="Ashland" c="ASHLAND"/>
<c n="Bly" c="BLY"/>
<c n="Brookings" c="BROOKINGS"/>
<c n="Butte Falls" c="BUTTE FALLS"/>
<c n="Cave Junction" c="CAVE JUNCTION"/>
<c n="Central Point" c="CENTRAL POINT"/>
<c n="Chemult" c="CHEMULT"/>
<c n="Chiloquin" c="CHILOQUIN"/>
<c n="Christmas Valley" c="CHRISTMAS VALLEY"/>
<c n="Eagle Point" c="EAGLE POINT"/>
<c n="Gold Beach" c="GOLD BEACH"/>
<c n="Grants Pass" c="GRANTS PASS"/>
<c n="Jacksonville" c="JACKSONVILLE"/>
<c n="Keno" c="KENO"/>
<c n="Klamath Falls" c="KLAMATH FALLS"/>
<c n="Lakeview" c="LAKEVIEW"/>
<c n="Langlois" c="LANGLOIS"/>
<c n="Medford" c="MEDFORD"/>
<c n="Merlin" c="MERLIN"/>
<c n="Murphy" c="MURPHY"/>
<c n="New Pine Creek" c="NEW PINE CREEK"/>
<c n="Paisley" c="PAISLEY"/>
<c n="Phoenix" c="PHOENIX"/>
<c n="Port Orford" c="PORT ORFORD"/>
<c n="Prospect" c="PROSPECT"/>
<c n="Rogue River" c="ROGUE RIVER"/>
<c n="Selma" c="SELMA"/>
<c n="Silver Lake" c="SILVER LAKE"/>
<c n="Talent" c="TALENT"/>
<c n="White City" c="WHITE CITY"/>
<c n="Williams" c="WILLIAMS"/></dma>
    
    <dma code="820" title="Portland, OR">
<c n="Amity" c="AMITY"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Astoria" c="ASTORIA"/>
<c n="Aumsville" c="AUMSVILLE"/>
<c n="Aurora" c="AURORA"/>
<c n="Baker City" c="BAKER CITY"/>
<c n="Banks" c="BANKS"/>
<c n="Beavercreek" c="BEAVERCREEK"/>
<c n="Beaverton" c="BEAVERTON"/>
<c n="Boardman" c="BOARDMAN"/>
<c n="Boring" c="BORING"/>
<c n="Brownsville" c="BROWNSVILLE"/>
<c n="Burns" c="BURNS"/>
<c n="Camp Sherman" c="CAMP SHERMAN"/>
<c n="Canby" c="CANBY"/>
<c n="Cannon Beach" c="CANNON BEACH"/>
<c n="Cascade Locks" c="CASCADE LOCKS"/>
<c n="Clackamas" c="CLACKAMAS"/>
<c n="Clatskanie" c="CLATSKANIE"/>
<c n="Colton" c="COLTON"/>
<c n="Condon" c="CONDON"/>
<c n="Corbett" c="CORBETT"/>
<c n="Cornelius" c="CORNELIUS"/>
<c n="Cove" c="COVE"/>
<c n="Crabtree" c="CRABTREE"/>
<c n="Crane" c="CRANE"/>
<c n="Culver" c="CULVER"/>
<c n="Dallas" c="DALLAS"/>
<c n="Dayton" c="DAYTON"/>
<c n="Deer Island" c="DEER ISLAND"/>
<c n="Depoe Bay" c="DEPOE BAY"/>
<c n="Diamond" c="DIAMOND"/>
<c n="Dufur" c="DUFUR"/>
<c n="Dundee" c="DUNDEE"/>
<c n="Eagle Creek" c="EAGLE CREEK"/>
<c n="Elgin" c="ELGIN"/>
<c n="Estacada" c="ESTACADA"/>
<c n="Fairview" c="FAIRVIEW"/>
<c n="Falls City" c="FALLS CITY"/>
<c n="Fields" c="FIELDS"/>
<c n="Forest Grove" c="FOREST GROVE"/>
<c n="Fossil" c="FOSSIL"/>
<c n="Gaston" c="GASTON"/>
<c n="Gervais" c="GERVAIS"/>
<c n="Gladstone" c="GLADSTONE"/>
<c n="Gleneden Beach" c="GLENEDEN BEACH"/>
<c n="Grand Ronde" c="GRAND RONDE"/>
<c n="Grass Valley" c="GRASS VALLEY"/>
<c n="Gresham" c="GRESHAM"/>
<c n="Halfway" c="HALFWAY"/>
<c n="Halsey" c="HALSEY"/>
<c n="Harrisburg" c="HARRISBURG"/>
<c n="Hebo" c="HEBO"/>
<c n="Heppner" c="HEPPNER"/>
<c n="Hillsboro" c="HILLSBORO"/>
<c n="Hines" c="HINES"/>
<c n="Hood River" c="HOOD RIVER"/>
<c n="Hubbard" c="HUBBARD"/>
<c n="Imbler" c="IMBLER"/>
<c n="Independence" c="INDEPENDENCE"/>
<c n="Jefferson" c="JEFFERSON"/>
<c n="John Day" c="JOHN DAY"/>
<c n="Keizer" c="KEIZER"/>
<c n="La Grande" c="LA GRANDE"/>
<c n="Lake Oswego" c="LAKE OSWEGO"/>
<c n="Lebanon" c="LEBANON"/>
<c n="Lexington" c="LEXINGTON"/>
<c n="Lincoln City" c="LINCOLN CITY"/>
<c n="Lyons" c="LYONS"/>
<c n="Madras" c="MADRAS"/>
<c n="Marion" c="MARION"/>
<c n="Marylhurst" c="MARYLHURST"/>
<c n="McMinnville" c="MCMINNVILLE"/>
<c n="Mill City" c="MILL CITY"/>
<c n="Mitchell" c="MITCHELL"/>
<c n="Molalla" c="MOLALLA"/>
<c n="Mosier" c="MOSIER"/>
<c n="Mount Angel" c="MOUNT ANGEL"/>
<c n="Mount Hood Parkdale" c="MOUNT HOOD PARKDALE"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="Newberg" c="NEWBERG"/>
<c n="Newport" c="NEWPORT"/>
<c n="North Plains" c="NORTH PLAINS"/>
<c n="North Powder" c="NORTH POWDER"/>
<c n="Oregon City" c="OREGON CITY"/>
<c n="Portland" c="PORTLAND"/>
<c n="Prineville" c="PRINEVILLE"/>
<c n="Rainier" c="RAINIER"/>
<c n="Rockaway Beach" c="ROCKAWAY BEACH"/>
<c n="Rufus" c="RUFUS"/>
<c n="Salem" c="SALEM"/>
<c n="Sandy" c="SANDY"/>
<c n="Scappoose" c="SCAPPOOSE"/>
<c n="Scio" c="SCIO"/>
<c n="Seal Rock" c="SEAL ROCK"/>
<c n="Seaside" c="SEASIDE"/>
<c n="Sheridan" c="SHERIDAN"/>
<c n="Sherwood" c="SHERWOOD"/>
<c n="Silverton" c="SILVERTON"/>
<c n="South Beach" c="SOUTH BEACH"/>
<c n="Spray" c="SPRAY"/>
<c n="Saint Benedict" c="SAINT BENEDICT"/>
<c n="Saint Helens" c="SAINT HELENS"/>
<c n="St. Paul" c="ST. PAUL"/>
<c n="Stayton" c="STAYTON"/>
<c n="Sweet Home" c="SWEET HOME"/>
<c n="Tangent" c="TANGENT"/>
<c n="The Dalles" c="THE DALLES"/>
<c n="Tillamook" c="TILLAMOOK"/>
<c n="Troutdale" c="TROUTDALE"/>
<c n="Tualatin" c="TUALATIN"/>
<c n="Turner" c="TURNER"/>
<c n="Union" c="UNION"/>
<c n="Vernonia" c="VERNONIA"/>
<c n="Warm Springs" c="WARM SPRINGS"/>
<c n="Warrenton" c="WARRENTON"/>
<c n="Wasco" c="WASCO"/>
<c n="Welches" c="WELCHES"/>
<c n="West Linn" c="WEST LINN"/>
<c n="Wheeler" c="WHEELER"/>
<c n="Willamina" c="WILLAMINA"/>
<c n="Wilsonville" c="WILSONVILLE"/>
<c n="Woodburn" c="WOODBURN"/>
<c n="Yachats" c="YACHATS"/>
<c n="Yamhill" c="YAMHILL"/>
<c n="Battle Ground" c="BATTLE GROUND"/>
<c n="Bickleton" c="BICKLETON"/>
<c n="Bingen" c="BINGEN"/>
<c n="Brush Prairie" c="BRUSH PRAIRIE"/>
<c n="Camas" c="CAMAS"/>
<c n="Castle Rock" c="CASTLE ROCK"/>
<c n="Cathlamet" c="CATHLAMET"/>
<c n="Centerville" c="CENTERVILLE"/>
<c n="Dallesport" c="DALLESPORT"/>
<c n="Goldendale" c="GOLDENDALE"/>
<c n="Kalama" c="KALAMA"/>
<c n="Kelso" c="KELSO"/>
<c n="La Center" c="LA CENTER"/>
<c n="Longview" c="LONGVIEW"/>
<c n="Lyle" c="LYLE"/>
<c n="Ridgefield" c="RIDGEFIELD"/>
<c n="Roosevelt" c="ROOSEVELT"/>
<c n="Silver Lake" c="SILVER LAKE"/>
<c n="Stevenson" c="STEVENSON"/>
<c n="Toutle" c="TOUTLE"/>
<c n="Trout Lake" c="TROUT LAKE"/>
<c n="Vancouver" c="VANCOUVER"/>
<c n="Washougal" c="WASHOUGAL"/>
<c n="Wishram" c="WISHRAM"/>
<c n="Woodland" c="WOODLAND"/>
<c n="Aloha" c="ALOHA"/>
<c n="Damascus" c="DAMASCUS"/>
<c n="Five Corners" c="FIVE CORNERS"/>
<c n="Happy Valley" c="HAPPY VALLEY"/>
<c n="Hazel Dell North" c="HAZEL DELL NORTH"/>
<c n="Manzanita" c="MANZANITA"/>
<c n="Milwaukie" c="MILWAUKIE"/>
<c n="Monmouth" c="MONMOUTH"/>
<c n="Mulino" c="MULINO"/>
<c n="Oak Grove" c="OAK GROVE"/>
<c n="Oatfield" c="OATFIELD"/>
<c n="Salmon Creek" c="SALMON CREEK"/>
<c n="Sunnyside" c="SUNNYSIDE"/>
<c n="Tigard" c="TIGARD"/>
<c n="Waldport" c="WALDPORT"/>
<c n="West Haven-Sylvan" c="WEST HAVEN-SYLVAN"/>
<c n="White Salmon" c="WHITE SALMON"/></dma>
    
    <dma code="821" title="Bend, OR">
<c n="Bend" c="BEND"/>
<c n="Brothers" c="BROTHERS"/>
<c n="La Pine" c="LA PINE"/>
<c n="Redmond" c="REDMOND"/>
<c n="Sisters" c="SISTERS"/>
<c n="Three Rivers" c="THREE RIVERS"/></dma>
    </state>
<state id="WA" full_name="Washington">
    <dma code="810" title="Yakima-Pasco-Richland-Kennewick, WA">
<c n="Adams" c="ADAMS"/>
<c n="Athena" c="ATHENA"/>
<c n="Echo" c="ECHO"/>
<c n="Helix" c="HELIX"/>
<c n="Hermiston" c="HERMISTON"/>
<c n="Milton-Freewater" c="MILTON-FREEWATER"/>
<c n="Pendleton" c="PENDLETON"/>
<c n="Pilot Rock" c="PILOT ROCK"/>
<c n="Stanfield" c="STANFIELD"/>
<c n="Ukiah" c="UKIAH"/>
<c n="Umatilla" c="UMATILLA"/>
<c n="Weston" c="WESTON"/>
<c n="Benton City" c="BENTON CITY"/>
<c n="Buena" c="BUENA"/>
<c n="Burbank" c="BURBANK"/>
<c n="Cle Elum" c="CLE ELUM"/>
<c n="College Place" c="COLLEGE PLACE"/>
<c n="Connell" c="CONNELL"/>
<c n="Cowiche" c="COWICHE"/>
<c n="Dixie" c="DIXIE"/>
<c n="Easton" c="EASTON"/>
<c n="Ellensburg" c="ELLENSBURG"/>
<c n="Grandview" c="GRANDVIEW"/>
<c n="Granger" c="GRANGER"/>
<c n="Kahlotus" c="KAHLOTUS"/>
<c n="Kennewick" c="KENNEWICK"/>
<c n="Kittitas" c="KITTITAS"/>
<c n="Mabton" c="MABTON"/>
<c n="Moxee" c="MOXEE"/>
<c n="Naches" c="NACHES"/>
<c n="Parker" c="PARKER"/>
<c n="Pasco" c="PASCO"/>
<c n="Paterson" c="PATERSON"/>
<c n="Prescott" c="PRESCOTT"/>
<c n="Prosser" c="PROSSER"/>
<c n="Richland" c="RICHLAND"/>
<c n="Roslyn" c="ROSLYN"/>
<c n="Selah" c="SELAH"/>
<c n="Snoqualmie Pass" c="SNOQUALMIE PASS"/>
<c n="Sunnyside" c="SUNNYSIDE"/>
<c n="Toppenish" c="TOPPENISH"/>
<c n="Touchet" c="TOUCHET"/>
<c n="Waitsburg" c="WAITSBURG"/>
<c n="Walla Walla" c="WALLA WALLA"/>
<c n="Wapato" c="WAPATO"/>
<c n="White Swan" c="WHITE SWAN"/>
<c n="Yakima" c="YAKIMA"/>
<c n="Zillah" c="ZILLAH"/>
<c n="West Richland" c="WEST RICHLAND"/></dma>
    
    <dma code="819" title="Seattle-Tacoma, WA">
<c n="Aberdeen" c="ABERDEEN"/>
<c n="Acme" c="ACME"/>
<c n="Adna" c="ADNA"/>
<c n="Amanda Park" c="AMANDA PARK"/>
<c n="Anacortes" c="ANACORTES"/>
<c n="Arlington" c="ARLINGTON"/>
<c n="Auburn" c="AUBURN"/>
<c n="Bainbridge Island" c="BAINBRIDGE ISLAND"/>
<c n="Belfair" c="BELFAIR"/>
<c n="Bellevue" c="BELLEVUE"/>
<c n="Bellingham" c="BELLINGHAM"/>
<c n="Black Diamond" c="BLACK DIAMOND"/>
<c n="Blaine" c="BLAINE"/>
<c n="Bothell" c="BOTHELL"/>
<c n="Bow" c="BOW"/>
<c n="Bremerton" c="BREMERTON"/>
<c n="Bridgeport" c="BRIDGEPORT"/>
<c n="Brinnon" c="BRINNON"/>
<c n="Buckley" c="BUCKLEY"/>
<c n="Burlington" c="BURLINGTON"/>
<c n="Burton" c="BURTON"/>
<c n="Carbonado" c="CARBONADO"/>
<c n="Carnation" c="CARNATION"/>
<c n="Cashmere" c="CASHMERE"/>
<c n="Centralia" c="CENTRALIA"/>
<c n="Chehalis" c="CHEHALIS"/>
<c n="Chelan" c="CHELAN"/>
<c n="Chimacum" c="CHIMACUM"/>
<c n="Clear Lake" c="CLEAR LAKE"/>
<c n="Clinton" c="CLINTON"/>
<c n="Concrete" c="CONCRETE"/>
<c n="Conway" c="CONWAY"/>
<c n="Cosmopolis" c="COSMOPOLIS"/>
<c n="Coupeville" c="COUPEVILLE"/>
<c n="Custer" c="CUSTER"/>
<c n="Darrington" c="DARRINGTON"/>
<c n="Deming" c="DEMING"/>
<c n="DuPont" c="DUPONT"/>
<c n="Duvall" c="DUVALL"/>
<c n="East Wenatchee" c="EAST WENATCHEE"/>
<c n="Eastsound" c="EASTSOUND"/>
<c n="Eatonville" c="EATONVILLE"/>
<c n="Edmonds" c="EDMONDS"/>
<c n="Elma" c="ELMA"/>
<c n="Entiat" c="ENTIAT"/>
<c n="Enumclaw" c="ENUMCLAW"/>
<c n="Everett" c="EVERETT"/>
<c n="Everson" c="EVERSON"/>
<c n="Fall City" c="FALL CITY"/>
<c n="Federal Way" c="FEDERAL WAY"/>
<c n="Ferndale" c="FERNDALE"/>
<c n="Forks" c="FORKS"/>
<c n="Freeland" c="FREELAND"/>
<c n="Friday Harbor" c="FRIDAY HARBOR"/>
<c n="Gig Harbor" c="GIG HARBOR"/>
<c n="Gold Bar" c="GOLD BAR"/>
<c n="Graham" c="GRAHAM"/>
<c n="Granite Falls" c="GRANITE FALLS"/>
<c n="Greenbank" c="GREENBANK"/>
<c n="Hamilton" c="HAMILTON"/>
<c n="Hoodsport" c="HOODSPORT"/>
<c n="Hoquiam" c="HOQUIAM"/>
<c n="Ilwaco" c="ILWACO"/>
<c n="Index" c="INDEX"/>
<c n="Issaquah" c="ISSAQUAH"/>
<c n="Joyce" c="JOYCE"/>
<c n="Kenmore" c="KENMORE"/>
<c n="Kent" c="KENT"/>
<c n="Keyport" c="KEYPORT"/>
<c n="Kingston" c="KINGSTON"/>
<c n="Kirkland" c="KIRKLAND"/>
<c n="La Conner" c="LA CONNER"/>
<c n="La Push" c="LA PUSH"/>
<c n="Lacey" c="LACEY"/>
<c n="Lake Stevens" c="LAKE STEVENS"/>
<c n="Lakewood" c="LAKEWOOD"/>
<c n="Langley" c="LANGLEY"/>
<c n="Leavenworth" c="LEAVENWORTH"/>
<c n="Long Beach" c="LONG BEACH"/>
<c n="Lopez Island" c="LOPEZ ISLAND"/>
<c n="Lummi Island" c="LUMMI ISLAND"/>
<c n="Lynden" c="LYNDEN"/>
<c n="Lynnwood" c="LYNNWOOD"/>
<c n="Manchester" c="MANCHESTER"/>
<c n="Mansfield" c="MANSFIELD"/>
<c n="Manson" c="MANSON"/>
<c n="Maple Falls" c="MAPLE FALLS"/>
<c n="Maple Valley" c="MAPLE VALLEY"/>
<c n="Marysville" c="MARYSVILLE"/>
<c n="McCleary" c="MCCLEARY"/>
<c n="McKenna" c="MCKENNA"/>
<c n="Medina" c="MEDINA"/>
<c n="Menlo" c="MENLO"/>
<c n="Mercer Island" c="MERCER ISLAND"/>
<c n="Milton" c="MILTON"/>
<c n="Monroe" c="MONROE"/>
<c n="Montesano" c="MONTESANO"/>
<c n="Morton" c="MORTON"/>
<c n="Mossyrock" c="MOSSYROCK"/>
<c n="Mount Vernon" c="MOUNT VERNON"/>
<c n="Mountlake Terrace" c="MOUNTLAKE TERRACE"/>
<c n="Mukilteo" c="MUKILTEO"/>
<c n="Napavine" c="NAPAVINE"/>
<c n="Naselle" c="NASELLE"/>
<c n="Nooksack" c="NOOKSACK"/>
<c n="North Bend" c="NORTH BEND"/>
<c n="Lakewood" c="LAKEWOOD"/>
<c n="Oak Harbor" c="OAK HARBOR"/>
<c n="Oakville" c="OAKVILLE"/>
<c n="Ocean Park" c="OCEAN PARK"/>
<c n="Ocean Shores" c="OCEAN SHORES"/>
<c n="Olalla" c="OLALLA"/>
<c n="Olympia" c="OLYMPIA"/>
<c n="Onalaska" c="ONALASKA"/>
<c n="Orondo" c="ORONDO"/>
<c n="Orting" c="ORTING"/>
<c n="Pacific" c="PACIFIC"/>
<c n="Palisades" c="PALISADES"/>
<c n="Pe Ell" c="PE ELL"/>
<c n="Point Roberts" c="POINT ROBERTS"/>
<c n="Port Angeles" c="PORT ANGELES"/>
<c n="Port Hadlock-Irondale" c="PORT HADLOCK-IRONDALE"/>
<c n="Port Ludlow" c="PORT LUDLOW"/>
<c n="Port Orchard" c="PORT ORCHARD"/>
<c n="Port Townsend" c="PORT TOWNSEND"/>
<c n="Poulsbo" c="POULSBO"/>
<c n="Preston" c="PRESTON"/>
<c n="Puyallup" c="PUYALLUP"/>
<c n="Quilcene" c="QUILCENE"/>
<c n="Rainier" c="RAINIER"/>
<c n="Randle" c="RANDLE"/>
<c n="Raymond" c="RAYMOND"/>
<c n="Redmond" c="REDMOND"/>
<c n="Renton" c="RENTON"/>
<c n="Rochester" c="ROCHESTER"/>
<c n="Roy" c="ROY"/>
<c n="Salkum" c="SALKUM"/>
<c n="Sammamish" c="SAMMAMISH"/>
<c n="Satsop" c="SATSOP"/>
<c n="Seahurst" c="SEAHURST"/>
<c n="Seattle" c="SEATTLE"/>
<c n="Sedro Woolley" c="SEDRO WOOLLEY"/>
<c n="Sekiu" c="SEKIU"/>
<c n="Sequim" c="SEQUIM"/>
<c n="Shaw Island" c="SHAW ISLAND"/>
<c n="Shelton" c="SHELTON"/>
<c n="Silverdale" c="SILVERDALE"/>
<c n="Snohomish" c="SNOHOMISH"/>
<c n="Snoqualmie" c="SNOQUALMIE"/>
<c n="South Bend" c="SOUTH BEND"/>
<c n="Southworth" c="SOUTHWORTH"/>
<c n="Spanaway" c="SPANAWAY"/>
<c n="Stanwood" c="STANWOOD"/>
<c n="Steilacoom" c="STEILACOOM"/>
<c n="Sultan" c="SULTAN"/>
<c n="Sumas" c="SUMAS"/>
<c n="Sumner" c="SUMNER"/>
<c n="Tacoma" c="TACOMA"/>
<c n="Taholah" c="TAHOLAH"/>
<c n="Tenino" c="TENINO"/>
<c n="Toledo" c="TOLEDO"/>
<c n="Tracyton" c="TRACYTON"/>
<c n="Tumwater" c="TUMWATER"/>
<c n="Union" c="UNION"/>
<c n="University Place" c="UNIVERSITY PLACE"/>
<c n="Vashon" c="VASHON"/>
<c n="Waterville" c="WATERVILLE"/>
<c n="Wenatchee" c="WENATCHEE"/>
<c n="Westport" c="WESTPORT"/>
<c n="Wilkeson" c="WILKESON"/>
<c n="Winlock" c="WINLOCK"/>
<c n="Woodinville" c="WOODINVILLE"/>
<c n="Yelm" c="YELM"/>
<c n="Alderwood Manor" c="ALDERWOOD MANOR"/>
<c n="Artondale" c="ARTONDALE"/>
<c n="Bonney Lake" c="BONNEY LAKE"/>
<c n="Burien" c="BURIEN"/>
<c n="Camano Island" c="CAMANO ISLAND"/>
<c n="Cascade-Fairwood" c="CASCADE-FAIRWOOD"/>
<c n="Cottage Lake" c="COTTAGE LAKE"/>
<c n="Covington" c="COVINGTON"/>
<c n="Des Moines" c="DES MOINES"/>
<c n="East Hill-Meridian" c="EAST HILL-MERIDIAN"/>
<c n="East Renton Highlands" c="EAST RENTON HIGHLANDS"/>
<c n="Edgewood" c="EDGEWOOD"/>
<c n="Elk Plain" c="ELK PLAIN"/>
<c n="Fife" c="FIFE"/>
<c n="Inglewood-Finn Hill" c="INGLEWOOD-FINN HILL"/>
<c n="Lakeland North" c="LAKELAND NORTH"/>
<c n="Maltby" c="MALTBY"/>
<c n="Martha Lake" c="MARTHA LAKE"/>
<c n="Mill Creek" c="MILL CREEK"/>
<c n="Mirrormont" c="MIRRORMONT"/>
<c n="North Creek" c="NORTH CREEK"/>
<c n="Paine Field-Lake Stickney" c="PAINE FIELD-LAKE STICKNEY"/>
<c n="Parkland" c="PARKLAND"/>
<c n="Parkwood" c="PARKWOOD"/>
<c n="Picnic Point-North Lynnwood" c="PICNIC POINT-NORTH LYNNWOOD"/>
<c n="SeaTac" c="SEATAC"/>
<c n="Shoreline" c="SHORELINE"/>
<c n="South Hill" c="SOUTH HILL"/>
<c n="Three Lakes" c="THREE LAKES"/>
<c n="Tukwila" c="TUKWILA"/>
<c n="Union Hill-Novelty Hill" c="UNION HILL-NOVELTY HILL"/>
<c n="White Center" c="WHITE CENTER"/></dma>
    
    <dma code="881" title="Spokane, WA">
<c n="Athol" c="ATHOL"/>
<c n="Avery" c="AVERY"/>
<c n="Bonners Ferry" c="BONNERS FERRY"/>
<c n="Coeur d Alene" c="COEUR D ALENE"/>
<c n="Cottonwood" c="COTTONWOOD"/>
<c n="Craigmont" c="CRAIGMONT"/>
<c n="Culdesac" c="CULDESAC"/>
<c n="De Smet" c="DE SMET"/>
<c n="Grangeville" c="GRANGEVILLE"/>
<c n="Harrison" c="HARRISON"/>
<c n="Hayden" c="HAYDEN"/>
<c n="Kamiah" c="KAMIAH"/>
<c n="Kellogg" c="KELLOGG"/>
<c n="Kendrick" c="KENDRICK"/>
<c n="Kootenai" c="KOOTENAI"/>
<c n="Laclede" c="LACLEDE"/>
<c n="Lapwai" c="LAPWAI"/>
<c n="Lewiston" c="LEWISTON"/>
<c n="Moscow" c="MOSCOW"/>
<c n="Mullan" c="MULLAN"/>
<c n="Naples" c="NAPLES"/>
<c n="Nezperce" c="NEZPERCE"/>
<c n="Orofino" c="OROFINO"/>
<c n="Osburn" c="OSBURN"/>
<c n="Pierce" c="PIERCE"/>
<c n="Plummer" c="PLUMMER"/>
<c n="Porthill" c="PORTHILL"/>
<c n="Post Falls" c="POST FALLS"/>
<c n="Potlatch" c="POTLATCH"/>
<c n="Priest River" c="PRIEST RIVER"/>
<c n="Princeton" c="PRINCETON"/>
<c n="Rathdrum" c="RATHDRUM"/>
<c n="Sagle" c="SAGLE"/>
<c n="Sandpoint" c="SANDPOINT"/>
<c n="Smelterville" c="SMELTERVILLE"/>
<c n="Spirit Lake" c="SPIRIT LAKE"/>
<c n="St. Maries" c="ST. MARIES"/>
<c n="Troy" c="TROY"/>
<c n="Wallace" c="WALLACE"/>
<c n="Weippe" c="WEIPPE"/>
<c n="Worley" c="WORLEY"/>
<c n="Eureka" c="EUREKA"/>
<c n="Libby" c="LIBBY"/>
<c n="Rexford" c="REXFORD"/>
<c n="Enterprise" c="ENTERPRISE"/>
<c n="Joseph" c="JOSEPH"/>
<c n="Wallowa" c="WALLOWA"/>
<c n="Addy" c="ADDY"/>
<c n="Airway Heights" c="AIRWAY HEIGHTS"/>
<c n="Almira" c="ALMIRA"/>
<c n="Anatone" c="ANATONE"/>
<c n="Asotin" c="ASOTIN"/>
<c n="Benge" c="BENGE"/>
<c n="Brewster" c="BREWSTER"/>
<c n="Cheney" c="CHENEY"/>
<c n="Chewelah" c="CHEWELAH"/>
<c n="Clarkston" c="CLARKSTON"/>
<c n="Colfax" c="COLFAX"/>
<c n="Colton" c="COLTON"/>
<c n="Colville" c="COLVILLE"/>
<c n="Coulee City" c="COULEE CITY"/>
<c n="Creston" c="CRESTON"/>
<c n="Curlew" c="CURLEW"/>
<c n="Cusick" c="CUSICK"/>
<c n="Danville" c="DANVILLE"/>
<c n="Davenport" c="DAVENPORT"/>
<c n="Dayton" c="DAYTON"/>
<c n="Deer Park" c="DEER PARK"/>
<c n="Endicott" c="ENDICOTT"/>
<c n="Ephrata" c="EPHRATA"/>
<c n="Fairchild AFB" c="FAIRCHILD AFB"/>
<c n="Fairfield" c="FAIRFIELD"/>
<c n="Garfield" c="GARFIELD"/>
<c n="George" c="GEORGE"/>
<c n="Grand Coulee" c="GRAND COULEE"/>
<c n="Greenacres" c="GREENACRES"/>
<c n="Harrington" c="HARRINGTON"/>
<c n="Hartline" c="HARTLINE"/>
<c n="Hay" c="HAY"/>
<c n="Hunters" c="HUNTERS"/>
<c n="Inchelium" c="INCHELIUM"/>
<c n="Keller" c="KELLER"/>
<c n="Kettle Falls" c="KETTLE FALLS"/>
<c n="LaCrosse" c="LACROSSE"/>
<c n="Lamont" c="LAMONT"/>
<c n="Liberty Lake" c="LIBERTY LAKE"/>
<c n="Lind" c="LIND"/>
<c n="Mattawa" c="MATTAWA"/>
<c n="Mead" c="MEAD"/>
<c n="Medical Lake" c="MEDICAL LAKE"/>
<c n="Moses Lake" c="MOSES LAKE"/>
<c n="Nespelem" c="NESPELEM"/>
<c n="Newman Lake" c="NEWMAN LAKE"/>
<c n="Newport" c="NEWPORT"/>
<c n="Nine Mile Falls" c="NINE MILE FALLS"/>
<c n="Oakesdale" c="OAKESDALE"/>
<c n="Odessa" c="ODESSA"/>
<c n="Okanogan" c="OKANOGAN"/>
<c n="Omak" c="OMAK"/>
<c n="Orient" c="ORIENT"/>
<c n="Oroville" c="OROVILLE"/>
<c n="Othello" c="OTHELLO"/>
<c n="Otis Orchards" c="OTIS ORCHARDS"/>
<c n="Palouse" c="PALOUSE"/>
<c n="Pomeroy" c="POMEROY"/>
<c n="Pullman" c="PULLMAN"/>
<c n="Quincy" c="QUINCY"/>
<c n="Republic" c="REPUBLIC"/>
<c n="Rice" c="RICE"/>
<c n="Ritzville" c="RITZVILLE"/>
<c n="Riverside" c="RIVERSIDE"/>
<c n="Rockford" c="ROCKFORD"/>
<c n="Rosalia" c="ROSALIA"/>
<c n="Royal City" c="ROYAL CITY"/>
<c n="Spangle" c="SPANGLE"/>
<c n="Spokane" c="SPOKANE"/>
<c n="Sprague" c="SPRAGUE"/>
<c n="Springdale" c="SPRINGDALE"/>
<c n="St. John" c="ST. JOHN"/>
<c n="Starbuck" c="STARBUCK"/>
<c n="Steptoe" c="STEPTOE"/>
<c n="Tekoa" c="TEKOA"/>
<c n="Tonasket" c="TONASKET"/>
<c n="Twisp" c="TWISP"/>
<c n="Valley" c="VALLEY"/>
<c n="Valleyford" c="VALLEYFORD"/>
<c n="Veradale" c="VERADALE"/>
<c n="Warden" c="WARDEN"/>
<c n="Washtucna" c="WASHTUCNA"/>
<c n="Wellpinit" c="WELLPINIT"/>
<c n="Wilbur" c="WILBUR"/>
<c n="Winthrop" c="WINTHROP"/>
<c n="Country Homes" c="COUNTRY HOMES"/>
<c n="Spokane Valley" c="SPOKANE VALLEY"/></dma>
    </state>
<state id="NV" full_name="Nevada">
    <dma code="811" title="Reno, NV">
<c n="Bridgeport" c="BRIDGEPORT"/>
<c n="Coleville" c="COLEVILLE"/>
<c n="Herlong" c="HERLONG"/>
<c n="June Lake" c="JUNE LAKE"/>
<c n="Lee Vining" c="LEE VINING"/>
<c n="Mammoth Lakes" c="MAMMOTH LAKES"/>
<c n="Markleeville" c="MARKLEEVILLE"/>
<c n="South Lake Tahoe" c="SOUTH LAKE TAHOE"/>
<c n="Susanville" c="SUSANVILLE"/>
<c n="Westwood" c="WESTWOOD"/>
<c n="Battle Mountain" c="BATTLE MOUNTAIN"/>
<c n="Carson City" c="CARSON CITY"/>
<c n="Crystal Bay" c="CRYSTAL BAY"/>
<c n="Dayton" c="DAYTON"/>
<c n="Fallon" c="FALLON"/>
<c n="Fernley" c="FERNLEY"/>
<c n="Gardnerville" c="GARDNERVILLE"/>
<c n="Gerlach" c="GERLACH"/>
<c n="Glenbrook" c="GLENBROOK"/>
<c n="Hawthorne" c="HAWTHORNE"/>
<c n="Incline Village" c="INCLINE VILLAGE"/>
<c n="Lovelock" c="LOVELOCK"/>
<c n="McDermitt" c="MCDERMITT"/>
<c n="Mina" c="MINA"/>
<c n="Minden" c="MINDEN"/>
<c n="Nixon" c="NIXON"/>
<c n="Reno" c="RENO"/>
<c n="Schurz" c="SCHURZ"/>
<c n="Silver Springs" c="SILVER SPRINGS"/>
<c n="Sparks" c="SPARKS"/>
<c n="Stateline" c="STATELINE"/>
<c n="Sun Valley" c="SUN VALLEY"/>
<c n="Verdi" c="VERDI"/>
<c n="Virginia City" c="VIRGINIA CITY"/>
<c n="New Washoe City" c="NEW WASHOE CITY"/>
<c n="Winnemucca" c="WINNEMUCCA"/>
<c n="Yerington" c="YERINGTON"/>
<c n="Zephyr Cove-Round Hill Village" c="ZEPHYR COVE-ROUND HILL VILLAGE"/>
<c n="Gardnerville Ranchos" c="GARDNERVILLE RANCHOS"/>
<c n="Janesville" c="JANESVILLE"/>
<c n="Johnson Lane" c="JOHNSON LANE"/>
<c n="Spanish Springs" c="SPANISH SPRINGS"/></dma>
    
    <dma code="839" title="Las Vegas, NV">
<c n="Amargosa Valley" c="AMARGOSA VALLEY"/>
<c n="Boulder City" c="BOULDER CITY"/>
<c n="Bunkerville" c="BUNKERVILLE"/>
<c n="Cal-Nev-Ari" c="CAL-NEV-ARI"/>
<c n="Caliente" c="CALIENTE"/>
<c n="Gabbs" c="GABBS"/>
<c n="Henderson" c="HENDERSON"/>
<c n="Indian Springs" c="INDIAN SPRINGS"/>
<c n="Las Vegas" c="LAS VEGAS"/>
<c n="Laughlin" c="LAUGHLIN"/>
<c n="Mesquite" c="MESQUITE"/>
<c n="Nellis AFB" c="NELLIS AFB"/>
<c n="North Las Vegas" c="NORTH LAS VEGAS"/>
<c n="Overton" c="OVERTON"/>
<c n="Pahrump" c="PAHRUMP"/>
<c n="Pioche" c="PIOCHE"/>
<c n="Tonopah" c="TONOPAH"/>
<c n="Enterprise" c="ENTERPRISE"/>
<c n="Moapa Valley" c="MOAPA VALLEY"/>
<c n="Paradise" c="PARADISE"/>
<c n="Spring Valley" c="SPRING VALLEY"/>
<c n="Summerlin South" c="SUMMERLIN SOUTH"/>
<c n="Sunrise Manor" c="SUNRISE MANOR"/>
<c n="Whitney" c="WHITNEY"/>
<c n="Winchester" c="WINCHESTER"/></dma>
    </state>
 
</xsl:variable>
<xsl:variable name="usa_dma_short">
<state id="ME">
    <dma code="500" title="Portland-Auburn, ME"></dma>
    <dma code="537" title="Bangor, ME"></dma>
    <dma code="552" title="Presque Isle, ME"></dma>
</state>
<state id="NY">
    <dma code="501" title="New York, NY"></dma>
    <dma code="502" title="Binghamton, NY"></dma>
    <dma code="514" title="Buffalo, NY"></dma>
    <dma code="523" title="Burlington, VT-Plattsburgh, NY"></dma>
    <dma code="526" title="Utica, NY"></dma>
    <dma code="532" title="Albany-Schenectady-Troy, NY"></dma>
    <dma code="538" title="Rochester, NY"></dma>
    <dma code="549" title="Watertown, NY"></dma>
    <dma code="555" title="Syracuse, NY"></dma>
    <dma code="565" title="Elmira, NY"></dma>
</state>
<state id="GA">
    <dma code="503" title="Macon, GA"></dma>
    <dma code="507" title="Savannah, GA"></dma>
    <dma code="520" title="Augusta, GA"></dma>
    <dma code="522" title="Columbus, GA"></dma>
    <dma code="524" title="Atlanta, GA"></dma>
    <dma code="525" title="Albany, GA"></dma>
    <dma code="530" title="Tallahassee, FL-Thomasville, GA"></dma>
</state>
<state id="PA">
    <dma code="504" title="Philadelphia, PA"></dma>
    <dma code="508" title="Pittsburgh, PA"></dma>
    <dma code="516" title="Erie, PA"></dma>
    <dma code="566" title="Harrisburg-Lancaster-York, PA"></dma>
    <dma code="574" title="Johnstown-Altoona, PA"></dma>
    <dma code="577" title="Wilkes Barre-Scranton, PA"></dma>
</state>
<state id="MI">
    <dma code="505" title="Detroit, MI"></dma>
    <dma code="513" title="Flint-Saginaw-Bay City, MI"></dma>
    <dma code="540" title="Traverse City-Cadillac, MI"></dma>
    <dma code="551" title="Lansing, MI"></dma>
    <dma code="553" title="Marquette, MI"></dma>
    <dma code="563" title="Grand Rapids-Kalamazoo, MI"></dma>
    <dma code="583" title="Alpena, MI"></dma>
</state>
<state id="NH">
    <dma code="506" title="Boston, MA-Manchester, NH"></dma>
</state>
<state id="IN">
    <dma code="509" title="Ft. Wayne, IN"></dma>
    <dma code="527" title="Indianapolis, IN"></dma>
    <dma code="581" title="Terre Haute, IN"></dma>
    <dma code="582" title="Lafayette, IN"></dma>
    <dma code="588" title="South Bend-Elkhart, IN"></dma>
    <dma code="649" title="Evansville, IN"></dma>
</state>
<state id="OH">
    <dma code="510" title="Cleveland-Akron (Canton), OH"></dma>
    <dma code="515" title="Cincinnati, OH"></dma>
    <dma code="535" title="Columbus, OH"></dma>
    <dma code="536" title="Youngstown, OH"></dma>
    <dma code="542" title="Dayton, OH"></dma>
    <dma code="547" title="Toledo, OH"></dma>
    <dma code="554" title="Wheeling, WV-Steubenville, OH"></dma>
    <dma code="558" title="Lima, OH"></dma>
    <dma code="596" title="Zanesville, OH"></dma>
</state>
<state id="MD">
    <dma code="511" title="Washington, DC (Hagerstown, MD)"></dma>
</state>
<state id="MD">
    <dma code="512" title="Baltimore, MD"></dma>
    <dma code="576" title="Salisbury, MD"></dma>
</state>
<state id="NC">
    <dma code="517" title="Charlotte, NC"></dma>
    <dma code="518" title="Greensboro-Winston Salem, NC"></dma>
    <dma code="545" title="Greenville-New Bern-Washington, NC"></dma>
    <dma code="550" title="Wilmington, NC"></dma>
    <dma code="560" title="Raleigh-Durham (Fayetteville), NC"></dma>
</state>
<state id="SC">
    <dma code="519" title="Charleston, SC"></dma>
    <dma code="546" title="Columbia, SC"></dma>
    <dma code="567" title="Greenville-Spartanburg, SC"></dma>
    <dma code="570" title="Florence-Myrtle Beach, SC"></dma>
</state>
<state id="MA">
    <dma code="521" title="Providence, RI-New Bedford, MA"></dma>
    <dma code="543" title="Springfield-Holyoke, MA"></dma>
</state>
<state id="FL">
    <dma code="528" title="Miami-Ft. Lauderdale, FL"></dma>
    <dma code="534" title="Orlando-Daytona Beach, FL"></dma>
    <dma code="539" title="Tampa-St Petersburg (Sarasota), FL"></dma>
    <dma code="548" title="West Palm Beach-Ft. Pierce, FL"></dma>
    <dma code="561" title="Jacksonville, FL"></dma>
    <dma code="571" title="Ft. Myers-Naples, FL"></dma>
    <dma code="592" title="Gainesville, FL"></dma>
    <dma code="656" title="Panama City, FL"></dma>
    <dma code="686" title="Mobile, AL-Pensacola, FL"></dma>
</state>
<state id="KY">
    <dma code="529" title="Louisville, KY"></dma>
    <dma code="541" title="Lexington, KY"></dma>
    <dma code="736" title="Bowling Green, KY"></dma>
</state>
<state id="VA">
    <dma code="531" title="Tri-Cities, TN-VA"></dma>
    <dma code="544" title="Norfolk-Portsmouth-Newport News,VA"></dma>
    <dma code="556" title="Richmond-Petersburg, VA"></dma>
    <dma code="569" title="Harrisonburg, VA"></dma>
    <dma code="573" title="Roanoke-Lynchburg, VA"></dma>
    <dma code="584" title="Charlottesville, VA"></dma>
</state>
<state id="CT">
    <dma code="533" title="Hartford &amp;New Haven, CT"></dma>
</state>
<state id="TN">
    <dma code="557" title="Knoxville, TN"></dma>
    <dma code="575" title="Chattanooga, TN"></dma>
    <dma code="639" title="Jackson, TN"></dma>
    <dma code="640" title="Memphis, TN"></dma>
    <dma code="659" title="Nashville, TN"></dma>
</state>
<state id="WV">
    <dma code="559" title="Bluefield-Beckley-Oak Hill, WV"></dma>
    <dma code="564" title="Charleston-Huntington, WV"></dma>
    <dma code="597" title="Parkersburg, WV"></dma>
    <dma code="598" title="Clarksburg-Weston, WV"></dma>
</state>
<state id="TX">
    <dma code="600" title="Corpus Christi, TX"></dma>
    <dma code="618" title="Houston, TX"></dma>
    <dma code="623" title="Dallas-Ft. Worth, TX"></dma>
    <dma code="625" title="Waco-Temple-Bryan, TX"></dma>
    <dma code="626" title="Victoria, TX"></dma>
    <dma code="633" title="Odessa-Midland, TX"></dma>
    <dma code="634" title="Amarillo, TX"></dma>
    <dma code="635" title="Austin, TX"></dma>
    <dma code="636" title="Harlingen-Weslaco-McAllen, TX"></dma>
    <dma code="641" title="San Antonio, TX"></dma>
    <dma code="651" title="Lubbock, TX"></dma>
    <dma code="661" title="San Angelo, TX"></dma>
    <dma code="662" title="Abilene-Sweetwater, TX"></dma>
    <dma code="692" title="Beaumont-Port Arthur, TX"></dma>
    <dma code="709" title="Tyler-Longview(Nacogdoches), TX"></dma>
    <dma code="749" title="Laredo, TX"></dma>
    <dma code="765" title="El Paso, TX"></dma>
</state>
<state id="IL">
    <dma code="602" title="Chicago, IL"></dma>
    <dma code="610" title="Rockford, IL"></dma>
    <dma code="632" title="Paducah, KY-Harrisburg, IL"></dma>
    <dma code="648" title="Champaign &amp;Springfield-Decatur,IL"></dma>
    <dma code="675" title="Peoria-Bloomington, IL"></dma>
    <dma code="682" title="Davenport,IA-Rock Island-Moline,IL"></dma>
</state>
<state id="KS">
    <dma code="603" title="Joplin, MO-Pittsburg, KS"></dma>
    <dma code="605" title="Topeka, KS"></dma>
    <dma code="678" title="Wichita-Hutchinson, KS"></dma>
</state>
<state id="MO">
    <dma code="604" title="Columbia-Jefferson City, MO"></dma>
    <dma code="609" title="St. Louis, MO"></dma>
    <dma code="616" title="Kansas City, MO"></dma>
    <dma code="619" title="Springfield, MO"></dma>
    <dma code="631" title="Ottumwa, IA-Kirksville, MO"></dma>
    <dma code="638" title="St. Joseph, MO"></dma>
</state>
<state id="AL">
    <dma code="606" title="Dothan, AL"></dma>
    <dma code="630" title="Birmingham, AL"></dma>
    <dma code="691" title="Huntsville-Decatur (Florence), AL"></dma>
    <dma code="698" title="Montgomery (Selma), AL"></dma>
</state>
<state id="IA">
    <dma code="611" title="Rochester-Austin, MN-Mason City, IA"></dma>
    <dma code="624" title="Sioux City, IA"></dma>
    <dma code="637" title="Cedar Rapids-Waterloo-Iowa City, IA"></dma>
    <dma code="679" title="Des Moines-Ames, IA"></dma>
    <dma code="717" title="Quincy, IL-Hannibal, MO-Keokuk, IA"></dma>
</state>
<state id="LA">
    <dma code="612" title="Shreveport, LA"></dma>
    <dma code="622" title="New Orleans, LA"></dma>
    <dma code="642" title="Lafayette, LA"></dma>
    <dma code="643" title="Lake Charles, LA"></dma>
    <dma code="644" title="Alexandria, LA"></dma>
    <dma code="716" title="Baton Rouge, LA"></dma>
</state>
<state id="MN">
    <dma code="613" title="Minneapolis-St. Paul, MN"></dma>
    <dma code="737" title="Mankato, MN"></dma>
</state>
<state id="WI">
    <dma code="617" title="Milwaukee, WI"></dma>
    <dma code="658" title="Green Bay-Appleton, WI"></dma>
    <dma code="669" title="Madison, WI"></dma>
    <dma code="676" title="Duluth, MN-Superior, WI"></dma>
    <dma code="702" title="La Crosse-Eau Claire, WI"></dma>
    <dma code="705" title="Wausau-Rhinelander, WI"></dma>
</state>
<state id="OK">
    <dma code="627" title="Wichita Falls, TX &amp;Lawton, OK"></dma>
    <dma code="650" title="Oklahoma City, OK"></dma>
    <dma code="657" title="Sherman, TX-Ada, OK"></dma>
    <dma code="671" title="Tulsa, OK"></dma>
</state>
<state id="AR">
    <dma code="628" title="Monroe, LA-El Dorado, AR"></dma>
    <dma code="670" title="Ft Smith-Springdale, AR"></dma>
    <dma code="693" title="Little Rock-Pine Bluff, AR"></dma>
    <dma code="734" title="Jonesboro, AR"></dma>
</state>
<state id="MS">
    <dma code="647" title="Greenwood-Greenville, MS"></dma>
    <dma code="673" title="Columbus-Tupelo-West Point, MS"></dma>
    <dma code="710" title="Hattiesburg-Laurel, MS"></dma>
    <dma code="711" title="Meridian, MS"></dma>
    <dma code="718" title="Jackson, MS"></dma>
    <dma code="746" title="Biloxi-Gulfport, MS"></dma>
</state>
<state id="NE">
    <dma code="652" title="Omaha, NE"></dma>
    <dma code="722" title="Lincoln &amp;Hastings-Kearney, NE"></dma>
    <dma code="740" title="North Platte, NE"></dma>
    <dma code="759" title="Cheyenne, WY-Scottsbluff, NE"></dma>
</state>
<state id="ND">
    <dma code="687" title="Minot-Bismarck-Dickinson, ND"></dma>
    <dma code="724" title="Fargo-Valley City, ND"></dma>
</state>
<state id="SD">
    <dma code="725" title="Sioux Falls(Mitchell), SD"></dma>
    <dma code="764" title="Rapid City, SD"></dma>
</state>
<state id="AK">
    <dma code="743" title="Anchorage, AK"></dma>
    <dma code="745" title="Fairbanks, AK"></dma>
    <dma code="747" title="Juneau, AK"></dma>
</state>
<state id="HI">
    <dma code="744" title="Honolulu, HI"></dma>
</state>
<state id="CO">
    <dma code="751" title="Denver, CO"></dma>
    <dma code="752" title="Colorado Springs-Pueblo, CO"></dma>
    <dma code="773" title="Grand Junction-Montrose, CO"></dma>
</state>
<state id="AZ">
    <dma code="753" title="Phoenix, AZ"></dma>
    <dma code="789" title="Tucson (Sierra Vista), AZ"></dma>
</state>
<state id="MT">
    <dma code="754" title="Butte-Bozeman, MT"></dma>
    <dma code="755" title="Great Falls, MT"></dma>
    <dma code="756" title="Billings, MT"></dma>
    <dma code="762" title="Missoula, MT"></dma>
    <dma code="766" title="Helena, MT"></dma>
    <dma code="798" title="Glendive, MT"></dma>
</state>
<state id="ID">
    <dma code="757" title="Boise, ID"></dma>
    <dma code="758" title="Idaho Falls-Pocatello, ID"></dma>
    <dma code="760" title="Twin Falls, ID"></dma>
</state>
<state id="WY">
    <dma code="767" title="Casper-Riverton, WY"></dma>
</state>
<state id="UT">
    <dma code="770" title="Salt Lake City, UT"></dma>
</state>
<state id="CA">
    <dma code="771" title="Yuma, AZ-El Centro, CA"></dma>
    <dma code="800" title="Bakersfield, CA"></dma>
    <dma code="802" title="Eureka, CA"></dma>
    <dma code="803" title="Los Angeles, CA"></dma>
    <dma code="804" title="Palm Springs, CA"></dma>
    <dma code="807" title="San Francisco-Oakland-San Jose, CA"></dma>
    <dma code="825" title="San Diego, CA"></dma>
    <dma code="828" title="Monterey-Salinas, CA"></dma>
    <dma code="855" title="Santa Barbara-San Luis Obispo, CA"></dma>
    <dma code="862" title="Sacramento-Stockton-Modesto, CA"></dma>
    <dma code="866" title="Fresno-Visalia, CA"></dma>
    <dma code="868" title="Chico-Redding, CA"></dma>
</state>
<state id="NM">
    <dma code="790" title="Albuquerque-Santa Fe, NM"></dma>
</state>
<state id="OR">
    <dma code="801" title="Eugene, OR"></dma>
    <dma code="813" title="Medford-Klamath Falls, OR"></dma>
    <dma code="820" title="Portland, OR"></dma>
    <dma code="821" title="Bend, OR"></dma>
</state>
<state id="WA">
    <dma code="810" title="Yakima-Pasco-Richland-Kennewick, WA"></dma>
    <dma code="819" title="Seattle-Tacoma, WA"></dma>
    <dma code="881" title="Spokane, WA"></dma>
</state>
<state id="NV">
    <dma code="811" title="Reno, NV"></dma>
    <dma code="839" title="Las Vegas, NV"></dma>
</state>
</xsl:variable>



 
 <xsl:key name="kRegionByKeys" match="order"
      use="concat(generate-id(..), translate(concat(addresses/address[1]/country_id, '+',addresses/address[1]/region, '+',normalize-space(addresses/address[1]/city)),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'))"/>

 <xsl:key name="kCountryByKeys" match="order"
      use="concat(generate-id(..), addresses/address[1]/country_id)"/>

 <xsl:template match="node()|@*">
    <xsl:apply-templates select="node()|@*"/>
 </xsl:template>

<xsl:template match="orders">



<xsl:variable name="report_range">
<h3><xsl:text>US Metropoliten area sales chart.</xsl:text></h3><hr /><b style="color: #333333;
    font:normal Tahoma,sans-serif,Verdana;">
<xsl:if test="/orders/@date_from or /orders/@date_to">
<xsl:text>Report range:  </xsl:text> 
<xsl:if test="/orders/@date_from">
<xsl:text> from : </xsl:text><xsl:value-of select="/orders/@date_from" disable-output-escaping="yes"/>
</xsl:if>
<xsl:if test="/orders/@date_to">
<xsl:text> to : </xsl:text><xsl:value-of select="/orders/@date_to" disable-output-escaping="yes"/>
</xsl:if>
</xsl:if>
<xsl:if test="not(/orders/@date_from) and not(/orders/@date_to)">
<xsl:text>Report range: all time</xsl:text>
</xsl:if>
</b>
</xsl:variable>







<!--Collect product list-->
<xsl:variable name="unsorted_cities">
    <xsl:for-each select="order[normalize-space(addresses/address[1]/country_id)='US' and generate-id() =  generate-id(key('kCountryByKeys',concat(generate-id(..), addresses/address[1]/country_id))[1])]">
      <xsl:variable name="countrykeyGroup" select=
       "key('kCountryByKeys', concat(generate-id(..), addresses/address[1]/country_id))"/>
        <xsl:if test="sum($countrykeyGroup/fields[total_invoiced>0]/total_invoiced)>0">
            <xsl:for-each select="/orders/order[addresses/address[1]/country_id=current()/addresses/address[1]/country_id and generate-id() =  generate-id(key('kRegionByKeys',concat(generate-id(..), translate(concat(addresses/address[1]/country_id, '+',addresses/address[1]/region, '+',normalize-space(addresses/address[1]/city)),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')))[1])]">
<!--                <xsl:if test="sum($countrykeyGroup[substring(addresses/address[1]/region,1,3)=substring(current()/addresses/address[1]/region,1,3)]/fields[total_invoiced>0]/total_invoiced)>0">
-->                    
                <xsl:variable name="citykeyGroup" select=
                    "key('kRegionByKeys', concat(generate-id(..), translate(concat(addresses/address[1]/country_id,'+',addresses/address[1]/region,'+',normalize-space(addresses/address[1]/city)),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')))"/>

                <city name="{normalize-space(addresses/address[1]/city)}" postcode="{normalize-space(addresses/address[1]/postcode)}" region="{normalize-space(exsl:node-set($usa_dma)/state[normalize-space(current()/addresses/address[1]/region)=@full_name]/dma[c/@c=normalize-space(translate(current()/addresses/address[1]/city,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'))]/@code)}" dma="{normalize-space(exsl:node-set($usa_dma)/state[normalize-space(current()/addresses/address[1]/region)=@full_name]/dma[c/@c=normalize-space(translate(current()/addresses/address[1]/city,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'))]/@title)}" city="{addresses/address[1]/city}" amount="{sum($citykeyGroup/fields[total_invoiced>0]/total_invoiced)}" amount_new="{sum($citykeyGroup/fields[total_invoiced>0 and first_order=1]/total_invoiced)}" amount_returning="{sum($citykeyGroup/fields[total_invoiced>0 and not(first_order=1)]/total_invoiced)}" count="{count($citykeyGroup/fields[total_invoiced>0]/total_invoiced)}" currency="{normalize-space(fields/order_currency_code)}"/>
<!--                    <region name="{normalize-space(addresses/address[1]/region)}" postcode="{normalize-space(addresses/address[1]/postcode)}" region="{normalize-space(addresses/address[1]/region)}" amount="{sum($countrykeyGroup[addresses/address[1]/region=current()/addresses/address[1]/region]/fields[total_invoiced>0]/total_invoiced)}" count="{count($countrykeyGroup[addresses/address[1]/region=current()/addresses/address[1]/region]/fields[total_invoiced>0]/total_invoiced)}" currency="{normalize-space(fields/order_currency_code)}"/>
-->                
<!--                </xsl:if>-->
            </xsl:for-each>
        </xsl:if>
      </xsl:for-each>
</xsl:variable>
<!-- end of collect product list-->


<xsl:variable name="cities">
  <xsl:for-each select="exsl:node-set($unsorted_cities)/city">
    <xsl:sort data-type="number" select="@amount" order="descending"/>
    <xsl:copy-of select="." />
  </xsl:for-each>
</xsl:variable>



<xsl:variable name="countries">
<country id="US">
    <xsl:for-each select="exsl:node-set($usa_dma_short)/state/dma">
        <xsl:if test="sum(exsl:node-set($cities)/city[@region=current()/@code]/@amount)>0">
            <region name="{@title}" region="{@code}" dma="{@title}" amount="{sum(exsl:node-set($cities)/city[@region=current()/@code]/@amount)}" amount_new="{sum(exsl:node-set($cities)/city[@region=current()/@code]/@amount_new)}" amount_returning="{sum(exsl:node-set($cities)/city[@region=current()/@code]/@amount_returning)}" count="{sum(exsl:node-set($cities)/city[@region=current()/@code]/@count)}">
                <xsl:for-each select="exsl:node-set($cities)/city[@region=current()/@code]">
                    <xsl:if test="position()&lt;=10">
                        <city name="{@name}" amount="{@amount}"/>
                    </xsl:if>
                </xsl:for-each>
            </region>
            
        </xsl:if>
    </xsl:for-each>
</country>
</xsl:variable>




<xsl:variable name="apos"><xsl:text>'</xsl:text></xsl:variable>
<xsl:variable name="double_quote"><xsl:text>`</xsl:text></xsl:variable>

<!--<xsl:copy-of select="$countries" />-->


<html>
  <head>
  <title>Sale by USA DMA</title>
    <script type='text/javascript' src='https://www.google.com/jsapi'><xsl:text><![CDATA[ ]]></xsl:text></script>
    <script type='text/javascript'><xsl:text>
     google.load('visualization', '1', {'packages': ['geochart','table']});
</xsl:text>

<xsl:for-each select="exsl:node-set($countries)/country">
<!--<xsl:value-of select="current()/@id" />
<xsl:value-of select="position()" />-->
<xsl:if test="position() &lt;= 5" >
     <xsl:text>
     google.setOnLoadCallback(drawRegionsMap</xsl:text><xsl:value-of select="normalize-space(current()/@id)" /><xsl:text>);
      function drawRegionsMap</xsl:text><xsl:value-of select="normalize-space(current()/@id)" /><xsl:text>() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Region');
        data.addColumn('number', 'Orders Amount');
        data.addColumn('number', 'Orders QTY');
        data.addColumn({type: 'string', role: 'tooltip', 'p': {'html': true}});
        data.addRows([            
</xsl:text>
    
    
    
    <xsl:for-each select="region">
    <xsl:if test="position()&gt;1"><xsl:text>,</xsl:text></xsl:if>
    <xsl:text>[{v:'</xsl:text><xsl:value-of select="normalize-space(current()/@region)" disable-output-escaping="yes"/><xsl:text>',f:'</xsl:text><xsl:value-of select="normalize-space(current()/@dma)" disable-output-escaping="yes"/>
    <xsl:text>'},{v:</xsl:text><xsl:value-of select="format-number(sum(exsl:node-set($countries)/country/region[@region=current()/@region]/@amount),'#.00')"/><xsl:text>,f:'</xsl:text><xsl:value-of select="current()/@currency"/><xsl:text> </xsl:text><xsl:value-of select="format-number(sum(exsl:node-set($countries)/country/region[@region=current()/@region]/@amount),'###,###.00')"/>
    <xsl:text>'},</xsl:text><xsl:value-of select="sum(exsl:node-set($countries)/country/region[@region=current()/@region]/@count)"/>
    <xsl:text>,'&lt;p style=&quot;font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;b&gt;Amount:&lt;/b&gt; </xsl:text><xsl:value-of select="current()/@currency"/><xsl:text> </xsl:text><xsl:value-of select="format-number(sum(exsl:node-set($countries)/country/region[@region=current()/@region]/@amount),'###,###.00')"/>
    <xsl:text>&lt;br /&gt;&lt;b&gt;Orders QTY:&lt;/b&gt; </xsl:text><xsl:value-of select="sum(exsl:node-set($countries)/country/region[@region=current()/@region]/@count)"/>
    <xsl:text>&lt;br /&gt;&lt;b&gt;New customers amount:&lt;/b&gt; </xsl:text><xsl:value-of select="current()/@currency"/><xsl:text> </xsl:text><xsl:value-of select="format-number(sum(exsl:node-set($countries)/country/region[@region=current()/@region]/@amount_new),'###,###.00')"/>
    <xsl:text>&lt;br /&gt;&lt;b&gt;Returning customers amount:&lt;/b&gt; </xsl:text><xsl:value-of select="current()/@currency"/><xsl:text> </xsl:text><xsl:value-of select="format-number(sum(exsl:node-set($countries)/country/region[@region=current()/@region]/@amount_returning),'###,###.00')"/>
    <xsl:text>&lt;br /&gt;&lt;br /&gt;&lt;b&gt;Top Cities:&lt;/b&gt;&lt;br /&gt;    </xsl:text>
    <xsl:for-each select="city">
    <xsl:value-of select="position()"/><xsl:text>. </xsl:text><xsl:value-of select="@name"/><xsl:text> - </xsl:text><xsl:value-of select="format-number(@amount,'###,###.00')"/><xsl:text>&lt;br /&gt;</xsl:text>
    </xsl:for-each>
    <xsl:text>&lt;/p&gt;']
    </xsl:text>
    </xsl:for-each>
<xsl:text>
 ]);

        var options = {
        tooltip: {isHtml: true,textStyle:{color: 'green', fontName: 'Arial', fontSize: '14'}},
        region: '</xsl:text><xsl:value-of select="normalize-space(current()/@id)" /><xsl:text>',
        resolution: 'metros',
        displayMode: 'regions',
        colorAxis: {colors: ['yellow', 'red']},
      };


        var chart = new google.visualization.GeoChart(document.getElementById('chart_div</xsl:text><xsl:value-of select="normalize-space(current()/@id)" /><xsl:text>'));
        chart.draw(data, options);
    };</xsl:text>

</xsl:if>
</xsl:for-each>

    </script>

  </head>
  <body>
    <xsl:copy-of select="$report_range"/>
    <xsl:for-each select="exsl:node-set($countries)/country">
        <xsl:if test="position() &lt;= 5" >
            <div id="chart_div{normalize-space(current()/@id)}" style="width: 900px; height: 500px;"><xsl:text><![CDATA[ ]]></xsl:text></div>
        </xsl:if>
    </xsl:for-each>
    
  </body>
</html>    
</xsl:template>
</xsl:stylesheet>