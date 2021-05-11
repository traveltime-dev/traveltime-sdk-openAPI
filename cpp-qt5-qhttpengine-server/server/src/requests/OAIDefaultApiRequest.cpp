/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QVariantMap>
#include <QDebug>

#include "OAIHelpers.h"
#include "OAIDefaultApiRequest.h"

namespace OpenAPI {

OAIDefaultApiRequest::OAIDefaultApiRequest(QHttpEngine::Socket *s, QSharedPointer<OAIDefaultApiHandler> hdl) : QObject(s), socket(s), handler(hdl) {
    auto headers = s->headers();
    for(auto itr = headers.begin(); itr != headers.end(); itr++) {
        requestHeaders.insert(QString(itr.key()), QString(itr.value()));
    }
}

OAIDefaultApiRequest::~OAIDefaultApiRequest(){
    disconnect(this, nullptr, nullptr, nullptr);
    qDebug() << "OAIDefaultApiRequest::~OAIDefaultApiRequest()";
}

QMap<QString, QString>
OAIDefaultApiRequest::getRequestHeaders() const {
    return requestHeaders;
}

void OAIDefaultApiRequest::setResponseHeaders(const QMultiMap<QString, QString>& headers){
    for(auto itr = headers.begin(); itr != headers.end(); ++itr) {
        responseHeaders.insert(itr.key(), itr.value());
    }
}


QHttpEngine::Socket* OAIDefaultApiRequest::getRawSocket(){
    return socket;
}


void OAIDefaultApiRequest::geocodingReverseSearchRequest(){
    qDebug() << "/v4/geocoding/reverse";
    connect(this, &OAIDefaultApiRequest::geocodingReverseSearch, handler.data(), &OAIDefaultApiHandler::geocodingReverseSearch);

    
    double lat;
    if(socket->queryString().keys().contains("lat")){
        fromStringValue(socket->queryString().value("lat"), lat);
    }
    
    double lng;
    if(socket->queryString().keys().contains("lng")){
        fromStringValue(socket->queryString().value("lng"), lng);
    }
    
    QString within_country;
    if(socket->queryString().keys().contains("within_country")){
        fromStringValue(socket->queryString().value("within_country"), within_country);
    }
    


    emit geocodingReverseSearch(lat, lng, within_country);
}


void OAIDefaultApiRequest::geocodingSearchRequest(){
    qDebug() << "/v4/geocoding/search";
    connect(this, &OAIDefaultApiRequest::geocodingSearch, handler.data(), &OAIDefaultApiHandler::geocodingSearch);

    
    QString query;
    if(socket->queryString().keys().contains("query")){
        fromStringValue(socket->queryString().value("query"), query);
    }
    
    double focus_lat;
    if(socket->queryString().keys().contains("focus_lat")){
        fromStringValue(socket->queryString().value("focus_lat"), focus_lat);
    }
    
    double focus_lng;
    if(socket->queryString().keys().contains("focus_lng")){
        fromStringValue(socket->queryString().value("focus_lng"), focus_lng);
    }
    
    QString within_country;
    if(socket->queryString().keys().contains("within_country")){
        fromStringValue(socket->queryString().value("within_country"), within_country);
    }
    


    emit geocodingSearch(query, focus_lat, focus_lng, within_country);
}


void OAIDefaultApiRequest::mapInfoRequest(){
    qDebug() << "/v4/map-info";
    connect(this, &OAIDefaultApiRequest::mapInfo, handler.data(), &OAIDefaultApiHandler::mapInfo);

    


    emit mapInfo();
}


void OAIDefaultApiRequest::routesRequest(){
    qDebug() << "/v4/routes";
    connect(this, &OAIDefaultApiRequest::routes, handler.data(), &OAIDefaultApiHandler::routes);

    
 
    
    QJsonDocument doc;
    socket->readJson(doc);
    QJsonObject obj = doc.object();
    OAIRequestRoutes oai_request_routes;
    ::OpenAPI::fromJsonValue(oai_request_routes, obj);
    

    emit routes(oai_request_routes);
}


void OAIDefaultApiRequest::supportedLocationsRequest(){
    qDebug() << "/v4/supported-locations";
    connect(this, &OAIDefaultApiRequest::supportedLocations, handler.data(), &OAIDefaultApiHandler::supportedLocations);

    
 
    
    QJsonDocument doc;
    socket->readJson(doc);
    QJsonObject obj = doc.object();
    OAIRequestSupportedLocations oai_request_supported_locations;
    ::OpenAPI::fromJsonValue(oai_request_supported_locations, obj);
    

    emit supportedLocations(oai_request_supported_locations);
}


void OAIDefaultApiRequest::timeFilterRequest(){
    qDebug() << "/v4/time-filter";
    connect(this, &OAIDefaultApiRequest::timeFilter, handler.data(), &OAIDefaultApiHandler::timeFilter);

    
 
    
    QJsonDocument doc;
    socket->readJson(doc);
    QJsonObject obj = doc.object();
    OAIRequestTimeFilter oai_request_time_filter;
    ::OpenAPI::fromJsonValue(oai_request_time_filter, obj);
    

    emit timeFilter(oai_request_time_filter);
}


void OAIDefaultApiRequest::timeFilterFastRequest(){
    qDebug() << "/v4/time-filter/fast";
    connect(this, &OAIDefaultApiRequest::timeFilterFast, handler.data(), &OAIDefaultApiHandler::timeFilterFast);

    
 
    
    QJsonDocument doc;
    socket->readJson(doc);
    QJsonObject obj = doc.object();
    OAIRequestTimeFilterFast oai_request_time_filter_fast;
    ::OpenAPI::fromJsonValue(oai_request_time_filter_fast, obj);
    

    emit timeFilterFast(oai_request_time_filter_fast);
}


void OAIDefaultApiRequest::timeFilterPostcodeDistrictsRequest(){
    qDebug() << "/v4/time-filter/postcode-districts";
    connect(this, &OAIDefaultApiRequest::timeFilterPostcodeDistricts, handler.data(), &OAIDefaultApiHandler::timeFilterPostcodeDistricts);

    
 
    
    QJsonDocument doc;
    socket->readJson(doc);
    QJsonObject obj = doc.object();
    OAIRequestTimeFilterPostcodeDistricts oai_request_time_filter_postcode_districts;
    ::OpenAPI::fromJsonValue(oai_request_time_filter_postcode_districts, obj);
    

    emit timeFilterPostcodeDistricts(oai_request_time_filter_postcode_districts);
}


void OAIDefaultApiRequest::timeFilterPostcodeSectorsRequest(){
    qDebug() << "/v4/time-filter/postcode-sectors";
    connect(this, &OAIDefaultApiRequest::timeFilterPostcodeSectors, handler.data(), &OAIDefaultApiHandler::timeFilterPostcodeSectors);

    
 
    
    QJsonDocument doc;
    socket->readJson(doc);
    QJsonObject obj = doc.object();
    OAIRequestTimeFilterPostcodeSectors oai_request_time_filter_postcode_sectors;
    ::OpenAPI::fromJsonValue(oai_request_time_filter_postcode_sectors, obj);
    

    emit timeFilterPostcodeSectors(oai_request_time_filter_postcode_sectors);
}


void OAIDefaultApiRequest::timeFilterPostcodesRequest(){
    qDebug() << "/v4/time-filter/postcodes";
    connect(this, &OAIDefaultApiRequest::timeFilterPostcodes, handler.data(), &OAIDefaultApiHandler::timeFilterPostcodes);

    
 
    
    QJsonDocument doc;
    socket->readJson(doc);
    QJsonObject obj = doc.object();
    OAIRequestTimeFilterPostcodes oai_request_time_filter_postcodes;
    ::OpenAPI::fromJsonValue(oai_request_time_filter_postcodes, obj);
    

    emit timeFilterPostcodes(oai_request_time_filter_postcodes);
}


void OAIDefaultApiRequest::timeMapRequest(){
    qDebug() << "/v4/time-map";
    connect(this, &OAIDefaultApiRequest::timeMap, handler.data(), &OAIDefaultApiHandler::timeMap);

    
 
    
    QJsonDocument doc;
    socket->readJson(doc);
    QJsonObject obj = doc.object();
    OAIRequestTimeMap oai_request_time_map;
    ::OpenAPI::fromJsonValue(oai_request_time_map, obj);
    

    emit timeMap(oai_request_time_map);
}



void OAIDefaultApiRequest::geocodingReverseSearchResponse(const OAIResponseGeocoding& res){
    setSocketResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::geocodingSearchResponse(const OAIResponseGeocoding& res){
    setSocketResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::mapInfoResponse(const OAIResponseMapInfo& res){
    setSocketResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::routesResponse(const OAIResponseRoutes& res){
    setSocketResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::supportedLocationsResponse(const OAIResponseSupportedLocations& res){
    setSocketResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::timeFilterResponse(const OAIResponseTimeFilter& res){
    setSocketResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::timeFilterFastResponse(const OAIResponseTimeFilterFast& res){
    setSocketResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::timeFilterPostcodeDistrictsResponse(const OAIResponseTimeFilterPostcodeDistricts& res){
    setSocketResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::timeFilterPostcodeSectorsResponse(const OAIResponseTimeFilterPostcodeSectors& res){
    setSocketResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::timeFilterPostcodesResponse(const OAIResponseTimeFilterPostcodes& res){
    setSocketResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::timeMapResponse(const OAIResponseTimeMap& res){
    setSocketResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}


void OAIDefaultApiRequest::geocodingReverseSearchError(const OAIResponseGeocoding& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    setSocketResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::geocodingSearchError(const OAIResponseGeocoding& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    setSocketResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::mapInfoError(const OAIResponseMapInfo& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    setSocketResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::routesError(const OAIResponseRoutes& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    setSocketResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::supportedLocationsError(const OAIResponseSupportedLocations& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    setSocketResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::timeFilterError(const OAIResponseTimeFilter& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    setSocketResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::timeFilterFastError(const OAIResponseTimeFilterFast& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    setSocketResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::timeFilterPostcodeDistrictsError(const OAIResponseTimeFilterPostcodeDistricts& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    setSocketResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::timeFilterPostcodeSectorsError(const OAIResponseTimeFilterPostcodeSectors& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    setSocketResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::timeFilterPostcodesError(const OAIResponseTimeFilterPostcodes& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    setSocketResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIDefaultApiRequest::timeMapError(const OAIResponseTimeMap& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    setSocketResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}


void OAIDefaultApiRequest::sendCustomResponse(QByteArray & res, QNetworkReply::NetworkError error_type){
    Q_UNUSED(error_type); // TODO
    socket->write(res);
    if(socket->isOpen()){
        socket->close();
    }    
}

void OAIDefaultApiRequest::sendCustomResponse(QIODevice *res, QNetworkReply::NetworkError error_type){
    Q_UNUSED(error_type);  // TODO
    socket->write(res->readAll());
    if(socket->isOpen()){
        socket->close();
    }
}

}
