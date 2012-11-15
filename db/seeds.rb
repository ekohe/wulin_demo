# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Seed countries
# encoding: utf-8
countries = <<-DATA
AFG,Afghanistan
AIA,Anguilla
ALB,Albania
ALG,Algeria
AND,Andorra
ANG,Angola
ANT,Netherlands Antilles
ARG,Argentina
ARM,Armenia
ARU,Aruba
ASA,American Samoa
ATG,Antigua and Barbuda
AUS,Australia
AUT,Austria
AZE,Azerbaijan
BAH,The Bahamas
BAN,Bangladesh
BDI,Burundi
BEL,Belgium
BEN,Benin
BER,Bermuda
BFA,Burkina Faso
BHR,Bahrain
BHU,Bhutan
BIH,Bosnia Herzegovina
BLR,Belarus
BLZ,Belize
BOL,Bolivia
BOT,Botswana
BRA,Brazil
BRB,Barbados
BRU,Brunei
BUL,Bulgaria
CAM,Cambodia
CAN,Canada
CAY,Cayman Islands
CGO,Congo, Republic of
CHA,Chad
CHI,Chile
CHN,China
CIV,Cote d'Ivoire
CMR,Cameroon
COD,Congo (Democratic Republic)
COK,Cook Islands
COL,Colombia
COM,Comoros
CPV,Cape Verde
CRC,Costa Rica
CRO,Croatia
CTA,Central African Republic
CUB,Cuba
CYP,Cyprus
CZE,Czech Republic
DEN,Denmark
DJI,Djibouti
DMA,Dominica
DOM,Dominican Republic
ECU,Ecuador
EGY,Egypt
ENG,England
EQG,Equatorial Guinea
ERI,Eritrea
ESP,Spain
EST,Estonia
ETH,Ethiopia
FIJ,Fiji
FIN,Finland
FRA,France
FRO,Faroe Islands
GAB,Gabon
GAM,The Gambia
GEO,Georgia
GER,Germany
GHA,Ghana
GNB,Guinea-Bissau
GRE,Greece
GRN,Grenada
GUA,Guatemala
GUI,Guinea
GUM,Guam
GUY,Guyana
HAI,Haiti
HKG,Hong Kong
HON,Honduras
HUN,Hungary
IDN,Indonesia
IND,India
IRL,Ireland
IRN,Iran
IRQ,Iraq
ISL,Iceland
ISR,Israel
ITA,Italy
JAM,Jamaica
JOR,Jordan
JPN,Japan
KAZ,Kazakhstan
KEN,Kenya
KGZ,Kyrgyzstan
KOR,South Korea
KSA,Saudi Arabia
KUW,Kuwait
LAO,Laos
LBR,Liberia
LBY,Libya
LCA,Saint Lucia
LES,Lesotho
LIB,Lebanon
LIE,Liechtenstein
LTU,Lithuania
LUX,Luxembourg
LVA,Latvia
MAC,Macau
MAD,Madagascar
MAR,Morocco
MAS,Malaysia
MDA,Moldova
MDV,Maldives
MEX,Mexico
MGL,Mongolia
MKD,Macedonia
MLI,Mali
MLT,Malta
MNE,Montenegro
MOZ,Mozambique
MRI,Mauritius
MSR,Montserrat
MTN,Mauritania
MWI,Malawi
MYA,Myanmar
NAM,Namibia
NCA,Nicaragua
NCL,New Caledonia
NED,Netherlands
NEP,Nepal
NGA,Nigeria
NIG,Niger
NIR,Northern Ireland
NOR,Norway
NZL,New Zealand
OMA,Oman
PAK,Pakistan
PAN,Panama
PAR,Paraguay
PER,Peru
PHI,Philippines
PLE,Palestinian Authority
PNG,Papua New Guinea
POL,Poland
POR,Portugal
PRK,North Korea
PUR,Puerto Rico
QAT,Qatar
ROU,Romania
RSA,South Africa
RUS,Russia
RWA,Rwanda
SAM,Samoa
SCO,Scotland
SEN,Senegal
SEY,Seychelles
SIN,Singapore
SKN,Saint Kitts and Nevis
SLE,Sierra Leone
SLV,El Salvador
SMR,San Marino
SOL,Solomon Islands
SOM,Somalia
SRB,Serbia
SRI,Sri Lanka
SUD,Sudan
SUI,Switzerland
SUR,Suriname
SVK,Slovakia
SVN,Slovenia
SWE,Sweden
SWZ,Swaziland
SYR,Syria
TAH,French Polynesia
TAN,Tanzania
TCA,Turks and Caicos
TGA,Tonga
THA,Thailand
TJK,Tajikistan
TKM,Turkmenistan
TLS,Timor-Leste
TOG,Togo
TPE,Taiwan
TRI,Trinidad and Tobago
TUN,Tunisia
TUR,Turkey
UAE,United Arab Emirates
UGA,Uganda
UKR,Ukraine
URU,Uruguay
USA,United States
UZB,Uzbekistan
VAN,Vanuatu
VEN,Venezuela
VGB,British Virgin Islands
VIE,Vietnam
VIN,Saint Vincent
VIR,Virgin Islands
WAL,Wales
YEM,Yemen
ZAM,Zambia
ZIM,Zimbabwe
DATA

puts "Creating countries..."
Country.delete_all
countries.each_line do |country|
  pays = country.split(",")
  Country.create(:code => pays[0].strip, :name => pays[1].strip)
  puts "."
end
puts ''

