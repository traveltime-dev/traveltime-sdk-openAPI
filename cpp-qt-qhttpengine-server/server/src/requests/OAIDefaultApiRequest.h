/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_OAIDefaultApiRequest_H
#define OAI_OAIDefaultApiRequest_H

#include <QObject>
#include <QStringList>
#include <QMultiMap>
#include <QNetworkReply>
#include <QSharedPointer>

#include <qhttpengine/socket.h>
#include "OAIRequestRoutes.h"
#include "OAIRequestSupportedLocations.h"
#include "OAIRequestTimeFilter.h"
#include "OAIRequestTimeFilterFast.h"
#include "OAIRequestTimeFilterPostcodeDistricts.h"
#include "OAIRequestTimeFilterPostcodeSectors.h"
#include "OAIRequestTimeFilterPostcodes.h"
#include "OAIRequestTimeMap.h"
#include "OAIResponseError.h"
#include "OAIResponseGeocoding.h"
#include "OAIResponseMapInfo.h"
#include "OAIResponseRoutes.h"
#include "OAIResponseSupportedLocations.h"
#include "OAIResponseTimeFilter.h"
#include "OAIResponseTimeFilterFast.h"
#include "OAIResponseTimeFilterPostcodeDistricts.h"
#include "OAIResponseTimeFilterPostcodeSectors.h"
#include "OAIResponseTimeFilterPostcodes.h"
#include "OAIResponseTimeMap.h"
#include <QString>
#include "OAIDefaultApiHandler.h"

namespace OpenAPI {

class OAIDefaultApiRequest : public QObject
{
    Q_OBJECT

public:
    OAIDefaultApiRequest(QHttpEngine::Socket *s, QSharedPointer<OAIDefaultApiHandler> handler);
    virtual ~OAIDefaultApiRequest();

    void geocodingReverseSearchRequest();
    void geocodingSearchRequest();
    void mapInfoRequest();
    void routesRequest();
    void supportedLocationsRequest();
    void timeFilterRequest();
    void timeFilterFastRequest();
    void timeFilterPostcodeDistrictsRequest();
    void timeFilterPostcodeSectorsRequest();
    void timeFilterPostcodesRequest();
    void timeMapRequest();
    

    void geocodingReverseSearchResponse(const OAIResponseGeocoding& res);
    void geocodingSearchResponse(const OAIResponseGeocoding& res);
    void mapInfoResponse(const OAIResponseMapInfo& res);
    void routesResponse(const OAIResponseRoutes& res);
    void supportedLocationsResponse(const OAIResponseSupportedLocations& res);
    void timeFilterResponse(const OAIResponseTimeFilter& res);
    void timeFilterFastResponse(const OAIResponseTimeFilterFast& res);
    void timeFilterPostcodeDistrictsResponse(const OAIResponseTimeFilterPostcodeDistricts& res);
    void timeFilterPostcodeSectorsResponse(const OAIResponseTimeFilterPostcodeSectors& res);
    void timeFilterPostcodesResponse(const OAIResponseTimeFilterPostcodes& res);
    void timeMapResponse(const OAIResponseTimeMap& res);
    

    void geocodingReverseSearchError(const OAIResponseGeocoding& res, QNetworkReply::NetworkError error_type, QString& error_str);
    void geocodingSearchError(const OAIResponseGeocoding& res, QNetworkReply::NetworkError error_type, QString& error_str);
    void mapInfoError(const OAIResponseMapInfo& res, QNetworkReply::NetworkError error_type, QString& error_str);
    void routesError(const OAIResponseRoutes& res, QNetworkReply::NetworkError error_type, QString& error_str);
    void supportedLocationsError(const OAIResponseSupportedLocations& res, QNetworkReply::NetworkError error_type, QString& error_str);
    void timeFilterError(const OAIResponseTimeFilter& res, QNetworkReply::NetworkError error_type, QString& error_str);
    void timeFilterFastError(const OAIResponseTimeFilterFast& res, QNetworkReply::NetworkError error_type, QString& error_str);
    void timeFilterPostcodeDistrictsError(const OAIResponseTimeFilterPostcodeDistricts& res, QNetworkReply::NetworkError error_type, QString& error_str);
    void timeFilterPostcodeSectorsError(const OAIResponseTimeFilterPostcodeSectors& res, QNetworkReply::NetworkError error_type, QString& error_str);
    void timeFilterPostcodesError(const OAIResponseTimeFilterPostcodes& res, QNetworkReply::NetworkError error_type, QString& error_str);
    void timeMapError(const OAIResponseTimeMap& res, QNetworkReply::NetworkError error_type, QString& error_str);
    

    void sendCustomResponse(QByteArray & res, QNetworkReply::NetworkError error_type);

    void sendCustomResponse(QIODevice *res, QNetworkReply::NetworkError error_type);

    QMap<QString, QString> getRequestHeaders() const;

    QHttpEngine::Socket* getRawSocket();

    void setResponseHeaders(const QMultiMap<QString,QString>& headers);

signals:
    void geocodingReverseSearch(double lat, double lng, QString within_country);
    void geocodingSearch(QString query, double focus_lat, double focus_lng, QString within_country);
    void mapInfo();
    void routes(OAIRequestRoutes oai_request_routes);
    void supportedLocations(OAIRequestSupportedLocations oai_request_supported_locations);
    void timeFilter(OAIRequestTimeFilter oai_request_time_filter);
    void timeFilterFast(OAIRequestTimeFilterFast oai_request_time_filter_fast);
    void timeFilterPostcodeDistricts(OAIRequestTimeFilterPostcodeDistricts oai_request_time_filter_postcode_districts);
    void timeFilterPostcodeSectors(OAIRequestTimeFilterPostcodeSectors oai_request_time_filter_postcode_sectors);
    void timeFilterPostcodes(OAIRequestTimeFilterPostcodes oai_request_time_filter_postcodes);
    void timeMap(OAIRequestTimeMap oai_request_time_map);
    

private:
    QMap<QString, QString> requestHeaders;
    QMap<QString, QString> responseHeaders;
    QHttpEngine::Socket  *socket;
    QSharedPointer<OAIDefaultApiHandler> handler;

    inline void setSocketResponseHeaders(){
        QHttpEngine::Socket::HeaderMap resHeaders;
        for(auto itr = responseHeaders.begin(); itr != responseHeaders.end(); ++itr) {
            resHeaders.insert(itr.key().toUtf8(), itr.value().toUtf8());
        }
        socket->setHeaders(resHeaders);
    }
};

}

#endif // OAI_OAIDefaultApiRequest_H
