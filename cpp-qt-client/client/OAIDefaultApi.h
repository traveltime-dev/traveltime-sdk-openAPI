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

#ifndef OAI_OAIDefaultApi_H
#define OAI_OAIDefaultApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"

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

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAIDefaultApi : public QObject {
    Q_OBJECT

public:
    OAIDefaultApi(const int timeOut = 0);
    ~OAIDefaultApi();

    void initializeServerConfigs();
    int setDefaultServerValue(int serverIndex,const QString &operation, const QString &variable,const QString &val);
    void setServerIndex(const QString &operation, int serverIndex);
    void setApiKey(const QString &apiKeyName, const QString &apiKey);
    void setBearerToken(const QString &token);
    void setUsername(const QString &username);
    void setPassword(const QString &password);
    void setTimeOut(const int timeOut);
    void setWorkingDirectory(const QString &path);
    void setNetworkAccessManager(QNetworkAccessManager* manager);
    int addServerConfiguration(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables = QMap<QString, OAIServerVariable>());
    void setNewServerForAllOperations(const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void setNewServer(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void addHeaders(const QString &key, const QString &value);
    void enableRequestCompression();
    void enableResponseCompression();
    void abortRequests();
    QString getParamStylePrefix(QString style);
    QString getParamStyleSuffix(QString style);
    QString getParamStyleDelimiter(QString style, QString name, bool isExplode);

    /**
    * @param[in]  lat double [required]
    * @param[in]  lng double [required]
    * @param[in]  within_country QString [optional]
    */
    void geocodingReverseSearch(const double &lat, const double &lng, const ::OpenAPI::OptionalParam<QString> &within_country = ::OpenAPI::OptionalParam<QString>());

    /**
    * @param[in]  query QString [required]
    * @param[in]  focus_lat double [optional]
    * @param[in]  focus_lng double [optional]
    * @param[in]  within_country QString [optional]
    */
    void geocodingSearch(const QString &query, const ::OpenAPI::OptionalParam<double> &focus_lat = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<double> &focus_lng = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<QString> &within_country = ::OpenAPI::OptionalParam<QString>());


    void mapInfo();

    /**
    * @param[in]  oai_request_routes OAIRequestRoutes [required]
    */
    void routes(const OAIRequestRoutes &oai_request_routes);

    /**
    * @param[in]  oai_request_supported_locations OAIRequestSupportedLocations [required]
    */
    void supportedLocations(const OAIRequestSupportedLocations &oai_request_supported_locations);

    /**
    * @param[in]  oai_request_time_filter OAIRequestTimeFilter [required]
    */
    void timeFilter(const OAIRequestTimeFilter &oai_request_time_filter);

    /**
    * @param[in]  oai_request_time_filter_fast OAIRequestTimeFilterFast [required]
    */
    void timeFilterFast(const OAIRequestTimeFilterFast &oai_request_time_filter_fast);

    /**
    * @param[in]  oai_request_time_filter_postcode_districts OAIRequestTimeFilterPostcodeDistricts [required]
    */
    void timeFilterPostcodeDistricts(const OAIRequestTimeFilterPostcodeDistricts &oai_request_time_filter_postcode_districts);

    /**
    * @param[in]  oai_request_time_filter_postcode_sectors OAIRequestTimeFilterPostcodeSectors [required]
    */
    void timeFilterPostcodeSectors(const OAIRequestTimeFilterPostcodeSectors &oai_request_time_filter_postcode_sectors);

    /**
    * @param[in]  oai_request_time_filter_postcodes OAIRequestTimeFilterPostcodes [required]
    */
    void timeFilterPostcodes(const OAIRequestTimeFilterPostcodes &oai_request_time_filter_postcodes);

    /**
    * @param[in]  oai_request_time_map OAIRequestTimeMap [required]
    */
    void timeMap(const OAIRequestTimeMap &oai_request_time_map);


private:
    QMap<QString,int> _serverIndices;
    QMap<QString,QList<OAIServerConfiguration>> _serverConfigs;
    QMap<QString, QString> _apiKeys;
    QString _bearerToken;
    QString _username;
    QString _password;
    int _timeOut;
    QString _workingDirectory;
    QNetworkAccessManager* _manager;
    QMap<QString, QString> defaultHeaders;
    bool isResponseCompressionEnabled;
    bool isRequestCompressionEnabled;

    void geocodingReverseSearchCallback(OAIHttpRequestWorker *worker);
    void geocodingSearchCallback(OAIHttpRequestWorker *worker);
    void mapInfoCallback(OAIHttpRequestWorker *worker);
    void routesCallback(OAIHttpRequestWorker *worker);
    void supportedLocationsCallback(OAIHttpRequestWorker *worker);
    void timeFilterCallback(OAIHttpRequestWorker *worker);
    void timeFilterFastCallback(OAIHttpRequestWorker *worker);
    void timeFilterPostcodeDistrictsCallback(OAIHttpRequestWorker *worker);
    void timeFilterPostcodeSectorsCallback(OAIHttpRequestWorker *worker);
    void timeFilterPostcodesCallback(OAIHttpRequestWorker *worker);
    void timeMapCallback(OAIHttpRequestWorker *worker);

signals:

    void geocodingReverseSearchSignal(OAIResponseGeocoding summary);
    void geocodingSearchSignal(OAIResponseGeocoding summary);
    void mapInfoSignal(OAIResponseMapInfo summary);
    void routesSignal(OAIResponseRoutes summary);
    void supportedLocationsSignal(OAIResponseSupportedLocations summary);
    void timeFilterSignal(OAIResponseTimeFilter summary);
    void timeFilterFastSignal(OAIResponseTimeFilterFast summary);
    void timeFilterPostcodeDistrictsSignal(OAIResponseTimeFilterPostcodeDistricts summary);
    void timeFilterPostcodeSectorsSignal(OAIResponseTimeFilterPostcodeSectors summary);
    void timeFilterPostcodesSignal(OAIResponseTimeFilterPostcodes summary);
    void timeMapSignal(OAIResponseTimeMap summary);

    void geocodingReverseSearchSignalFull(OAIHttpRequestWorker *worker, OAIResponseGeocoding summary);
    void geocodingSearchSignalFull(OAIHttpRequestWorker *worker, OAIResponseGeocoding summary);
    void mapInfoSignalFull(OAIHttpRequestWorker *worker, OAIResponseMapInfo summary);
    void routesSignalFull(OAIHttpRequestWorker *worker, OAIResponseRoutes summary);
    void supportedLocationsSignalFull(OAIHttpRequestWorker *worker, OAIResponseSupportedLocations summary);
    void timeFilterSignalFull(OAIHttpRequestWorker *worker, OAIResponseTimeFilter summary);
    void timeFilterFastSignalFull(OAIHttpRequestWorker *worker, OAIResponseTimeFilterFast summary);
    void timeFilterPostcodeDistrictsSignalFull(OAIHttpRequestWorker *worker, OAIResponseTimeFilterPostcodeDistricts summary);
    void timeFilterPostcodeSectorsSignalFull(OAIHttpRequestWorker *worker, OAIResponseTimeFilterPostcodeSectors summary);
    void timeFilterPostcodesSignalFull(OAIHttpRequestWorker *worker, OAIResponseTimeFilterPostcodes summary);
    void timeMapSignalFull(OAIHttpRequestWorker *worker, OAIResponseTimeMap summary);

    void geocodingReverseSearchSignalE(OAIResponseGeocoding summary, QNetworkReply::NetworkError error_type, QString error_str);
    void geocodingSearchSignalE(OAIResponseGeocoding summary, QNetworkReply::NetworkError error_type, QString error_str);
    void mapInfoSignalE(OAIResponseMapInfo summary, QNetworkReply::NetworkError error_type, QString error_str);
    void routesSignalE(OAIResponseRoutes summary, QNetworkReply::NetworkError error_type, QString error_str);
    void supportedLocationsSignalE(OAIResponseSupportedLocations summary, QNetworkReply::NetworkError error_type, QString error_str);
    void timeFilterSignalE(OAIResponseTimeFilter summary, QNetworkReply::NetworkError error_type, QString error_str);
    void timeFilterFastSignalE(OAIResponseTimeFilterFast summary, QNetworkReply::NetworkError error_type, QString error_str);
    void timeFilterPostcodeDistrictsSignalE(OAIResponseTimeFilterPostcodeDistricts summary, QNetworkReply::NetworkError error_type, QString error_str);
    void timeFilterPostcodeSectorsSignalE(OAIResponseTimeFilterPostcodeSectors summary, QNetworkReply::NetworkError error_type, QString error_str);
    void timeFilterPostcodesSignalE(OAIResponseTimeFilterPostcodes summary, QNetworkReply::NetworkError error_type, QString error_str);
    void timeMapSignalE(OAIResponseTimeMap summary, QNetworkReply::NetworkError error_type, QString error_str);

    void geocodingReverseSearchSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void geocodingSearchSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void mapInfoSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void routesSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void supportedLocationsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void timeFilterSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void timeFilterFastSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void timeFilterPostcodeDistrictsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void timeFilterPostcodeSectorsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void timeFilterPostcodesSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void timeMapSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();
};

} // namespace OpenAPI
#endif
