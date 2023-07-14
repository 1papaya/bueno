OUTPUT_DIR="../data/prefeitura"
INPUT_KML="../data/prefeitura/Mapa Turístico Bueno Brandão.kml"

## cachoeiras
ogr2ogr -sql "SELECT \
    Name as nome, \
    Endere__o as endereço, \
    Bairro as bairro, \
    Telefone as telefone, \
    Com_Infraestrutura as com_infraestrutura, \
    WhatsApp as whatsapp, \
    email as email, \
    Site as site, \
    Rede_Social as rede_social, \
    Descri____o as descrição \

    FROM Cachoeiras" \
    -f GeoJSON \
    "${OUTPUT_DIR}/cachoeiras.geojson" \
    "${INPUT_KML}"

## hospedagens
ogr2ogr -sql "SELECT \
    Name as nome, \
    Endere__o as endereço, \
    Bairro as bairro, \
    Telefone as telefone, \
    WhatsApp as whatsapp, \
    WhatsApp1 as whatsapp1, \
    WhatsApp2 as whatsapp2, \
    e_mail as email, \
    Site as site, \
    RedeSocial as rede_social \

    FROM Hospedagens" \
    -f GeoJSON \
    "${OUTPUT_DIR}/hospedagens.geojson" \
    "${INPUT_KML}"