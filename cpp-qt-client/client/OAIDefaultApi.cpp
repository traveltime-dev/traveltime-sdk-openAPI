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

#include "OAIDefaultApi.h"
#include "OAIServerConfiguration.h"
#include <QJsonArray>
#include <QJsonDocument>

namespace OpenAPI {

OAIDefaultApi::OAIDefaultApi(const int timeOut)
    : _timeOut(timeOut),
      _manager(nullptr),
      isResponseCompressionEnabled(false),
      isRequestCompressionEnabled(false) {
    initializeServerConfigs();
}

OAIDefaultApi::~OAIDefaultApi() {
}

void OAIDefaultApi::initializeServerConfigs(){
    //Default server
    QList<OAIServerConfiguration> defaultConf = QList<OAIServerConfiguration>();
    //varying endpoint server
    QList<OAIServerConfiguration> serverConf = QList<OAIServerConfiguration>();
    defaultConf.append(OAIServerConfiguration(
    QUrl("https://api.traveltimeapp.com"),
    "No description provided",
    QMap<QString, OAIServerVariable>()));
    _serverConfigs.insert("geocodingReverseSearch", defaultConf);
    _serverIndices.insert("geocodingReverseSearch", 0);
    _serverConfigs.insert("geocodingSearch", defaultConf);
    _serverIndices.insert("geocodingSearch", 0);
    _serverConfigs.insert("mapInfo", defaultConf);
    _serverIndices.insert("mapInfo", 0);
    _serverConfigs.insert("routes", defaultConf);
    _serverIndices.insert("routes", 0);
    _serverConfigs.insert("supportedLocations", defaultConf);
    _serverIndices.insert("supportedLocations", 0);
    _serverConfigs.insert("timeFilter", defaultConf);
    _serverIndices.insert("timeFilter", 0);
    _serverConfigs.insert("timeFilterFast", defaultConf);
    _serverIndices.insert("timeFilterFast", 0);
    _serverConfigs.insert("timeFilterPostcodeDistricts", defaultConf);
    _serverIndices.insert("timeFilterPostcodeDistricts", 0);
    _serverConfigs.insert("timeFilterPostcodeSectors", defaultConf);
    _serverIndices.insert("timeFilterPostcodeSectors", 0);
    _serverConfigs.insert("timeFilterPostcodes", defaultConf);
    _serverIndices.insert("timeFilterPostcodes", 0);
    _serverConfigs.insert("timeMap", defaultConf);
    _serverIndices.insert("timeMap", 0);
}

/**
* returns 0 on success and -1, -2 or -3 on failure.
* -1 when the variable does not exist and -2 if the value is not defined in the enum and -3 if the operation or server index is not found
*/
int OAIDefaultApi::setDefaultServerValue(int serverIndex, const QString &operation, const QString &variable, const QString &value){
    auto it = _serverConfigs.find(operation);
    if(it != _serverConfigs.end() && serverIndex < it.value().size() ){
      return _serverConfigs[operation][serverIndex].setDefaultValue(variable,value);
    }
    return -3;
}
void OAIDefaultApi::setServerIndex(const QString &operation, int serverIndex){
    if(_serverIndices.contains(operation) && serverIndex < _serverConfigs.find(operation).value().size() )
        _serverIndices[operation] = serverIndex;
}

void OAIDefaultApi::setApiKey(const QString &apiKeyName, const QString &apiKey){
    _apiKeys.insert(apiKeyName,apiKey);
}

void OAIDefaultApi::setBearerToken(const QString &token){
    _bearerToken = token;
}

void OAIDefaultApi::setUsername(const QString &username) {
    _username = username;
}

void OAIDefaultApi::setPassword(const QString &password) {
    _password = password;
}


void OAIDefaultApi::setTimeOut(const int timeOut) {
    _timeOut = timeOut;
}

void OAIDefaultApi::setWorkingDirectory(const QString &path) {
    _workingDirectory = path;
}

void OAIDefaultApi::setNetworkAccessManager(QNetworkAccessManager* manager) {
    _manager = manager;
}

/**
    * Appends a new ServerConfiguration to the config map for a specific operation.
    * @param operation The id to the target operation.
    * @param url A string that contains the URL of the server
    * @param description A String that describes the server
    * @param variables A map between a variable name and its value. The value is used for substitution in the server's URL template.
    * returns the index of the new server config on success and -1 if the operation is not found
    */
int OAIDefaultApi::addServerConfiguration(const QString &operation, const QUrl &url, const QString &description, const QMap<QString, OAIServerVariable> &variables){
    if(_serverConfigs.contains(operation)){
        _serverConfigs[operation].append(OAIServerConfiguration(
                    url,
                    description,
                    variables));
        return _serverConfigs[operation].size()-1;
    }else{
        return -1;
    }
}

/**
    * Appends a new ServerConfiguration to the config map for a all operations and sets the index to that server.
    * @param url A string that contains the URL of the server
    * @param description A String that describes the server
    * @param variables A map between a variable name and its value. The value is used for substitution in the server's URL template.
    */
void OAIDefaultApi::setNewServerForAllOperations(const QUrl &url, const QString &description, const QMap<QString, OAIServerVariable> &variables){
    for(auto e : _serverIndices.keys()){
        setServerIndex(e, addServerConfiguration(e, url, description, variables));
    }
}

/**
    * Appends a new ServerConfiguration to the config map for an operations and sets the index to that server.
    * @param URL A string that contains the URL of the server
    * @param description A String that describes the server
    * @param variables A map between a variable name and its value. The value is used for substitution in the server's URL template.
    */
void OAIDefaultApi::setNewServer(const QString &operation, const QUrl &url, const QString &description, const QMap<QString, OAIServerVariable> &variables){
    setServerIndex(operation, addServerConfiguration(operation, url, description, variables));
}

void OAIDefaultApi::addHeaders(const QString &key, const QString &value) {
    defaultHeaders.insert(key, value);
}

void OAIDefaultApi::enableRequestCompression() {
    isRequestCompressionEnabled = true;
}

void OAIDefaultApi::enableResponseCompression() {
    isResponseCompressionEnabled = true;
}

void OAIDefaultApi::abortRequests(){
    emit abortRequestsSignal();
}

QString OAIDefaultApi::getParamStylePrefix(QString style){
    if(style == "matrix"){
        return ";";
    }else if(style == "label"){
        return ".";
    }else if(style == "form"){
        return "&";
    }else if(style == "simple"){
        return "";
    }else if(style == "spaceDelimited"){
        return "&";
    }else if(style == "pipeDelimited"){
        return "&";
    }else{
        return "none";
    }
}

QString OAIDefaultApi::getParamStyleSuffix(QString style){
    if(style == "matrix"){
        return "=";
    }else if(style == "label"){
        return "";
    }else if(style == "form"){
        return "=";
    }else if(style == "simple"){
        return "";
    }else if(style == "spaceDelimited"){
        return "=";
    }else if(style == "pipeDelimited"){
        return "=";
    }else{
        return "none";
    }
}

QString OAIDefaultApi::getParamStyleDelimiter(QString style, QString name, bool isExplode){

    if(style == "matrix"){
        return (isExplode) ? ";" + name + "=" : ",";

    }else if(style == "label"){
        return (isExplode) ? "." : ",";

    }else if(style == "form"){
        return (isExplode) ? "&" + name + "=" : ",";

    }else if(style == "simple"){
        return ",";
    }else if(style == "spaceDelimited"){
        return (isExplode) ? "&" + name + "=" : " ";

    }else if(style == "pipeDelimited"){
        return (isExplode) ? "&" + name + "=" : "|";

    }else if(style == "deepObject"){
        return (isExplode) ? "&" : "none";

    }else {
        return "none";
    }
}

void OAIDefaultApi::geocodingReverseSearch(const double &lat, const double &lng, const ::OpenAPI::OptionalParam<QString> &within_country) {
    QString fullPath = QString(_serverConfigs["geocodingReverseSearch"][_serverIndices.value("geocodingReverseSearch")].URL()+"/v4/geocoding/reverse");
    
    if(_apiKeys.contains("ApiKey")){
        addHeaders("ApiKey",_apiKeys.find("ApiKey").value());
    }
    
    if(_apiKeys.contains("ApplicationId")){
        addHeaders("ApplicationId",_apiKeys.find("ApplicationId").value());
    }
    
    QString queryPrefix, querySuffix, queryDelimiter, queryStyle;
    
    {
        queryStyle = "form";
        if(queryStyle == "")
            queryStyle = "form";
        queryPrefix = getParamStylePrefix(queryStyle);
        querySuffix = getParamStyleSuffix(queryStyle);
        queryDelimiter = getParamStyleDelimiter(queryStyle, "lat", true);
        if (fullPath.indexOf("?") > 0)
            fullPath.append(queryPrefix);
        else
            fullPath.append("?");

        fullPath.append(QUrl::toPercentEncoding("lat")).append(querySuffix).append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(lat)));
    }
    
    {
        queryStyle = "form";
        if(queryStyle == "")
            queryStyle = "form";
        queryPrefix = getParamStylePrefix(queryStyle);
        querySuffix = getParamStyleSuffix(queryStyle);
        queryDelimiter = getParamStyleDelimiter(queryStyle, "lng", true);
        if (fullPath.indexOf("?") > 0)
            fullPath.append(queryPrefix);
        else
            fullPath.append("?");

        fullPath.append(QUrl::toPercentEncoding("lng")).append(querySuffix).append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(lng)));
    }
    if(within_country.hasValue())
    {
        queryStyle = "form";
        if(queryStyle == "")
            queryStyle = "form";
        queryPrefix = getParamStylePrefix(queryStyle);
        querySuffix = getParamStyleSuffix(queryStyle);
        queryDelimiter = getParamStyleDelimiter(queryStyle, "within.country", true);
        if (fullPath.indexOf("?") > 0)
            fullPath.append(queryPrefix);
        else
            fullPath.append("?");

        fullPath.append(QUrl::toPercentEncoding("within.country")).append(querySuffix).append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(within_country.value())));
    }
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this, _manager);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "GET");


    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIDefaultApi::geocodingReverseSearchCallback);
    connect(this, &OAIDefaultApi::abortRequestsSignal, worker, &QObject::deleteLater);
    connect(worker, &QObject::destroyed, [this](){
        if(findChildren<OAIHttpRequestWorker*>().count() == 0){
            emit allPendingRequestsCompleted();
        }
    });

    worker->execute(&input);
}

void OAIDefaultApi::geocodingReverseSearchCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    OAIResponseGeocoding output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit geocodingReverseSearchSignal(output);
        emit geocodingReverseSearchSignalFull(worker, output);
    } else {
        emit geocodingReverseSearchSignalE(output, error_type, error_str);
        emit geocodingReverseSearchSignalEFull(worker, error_type, error_str);
    }
}

void OAIDefaultApi::geocodingSearch(const QString &query, const ::OpenAPI::OptionalParam<double> &focus_lat, const ::OpenAPI::OptionalParam<double> &focus_lng, const ::OpenAPI::OptionalParam<QString> &within_country) {
    QString fullPath = QString(_serverConfigs["geocodingSearch"][_serverIndices.value("geocodingSearch")].URL()+"/v4/geocoding/search");
    
    if(_apiKeys.contains("ApiKey")){
        addHeaders("ApiKey",_apiKeys.find("ApiKey").value());
    }
    
    if(_apiKeys.contains("ApplicationId")){
        addHeaders("ApplicationId",_apiKeys.find("ApplicationId").value());
    }
    
    QString queryPrefix, querySuffix, queryDelimiter, queryStyle;
    
    {
        queryStyle = "form";
        if(queryStyle == "")
            queryStyle = "form";
        queryPrefix = getParamStylePrefix(queryStyle);
        querySuffix = getParamStyleSuffix(queryStyle);
        queryDelimiter = getParamStyleDelimiter(queryStyle, "query", true);
        if (fullPath.indexOf("?") > 0)
            fullPath.append(queryPrefix);
        else
            fullPath.append("?");

        fullPath.append(QUrl::toPercentEncoding("query")).append(querySuffix).append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(query)));
    }
    if(focus_lat.hasValue())
    {
        queryStyle = "form";
        if(queryStyle == "")
            queryStyle = "form";
        queryPrefix = getParamStylePrefix(queryStyle);
        querySuffix = getParamStyleSuffix(queryStyle);
        queryDelimiter = getParamStyleDelimiter(queryStyle, "focus.lat", true);
        if (fullPath.indexOf("?") > 0)
            fullPath.append(queryPrefix);
        else
            fullPath.append("?");

        fullPath.append(QUrl::toPercentEncoding("focus.lat")).append(querySuffix).append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(focus_lat.value())));
    }
    if(focus_lng.hasValue())
    {
        queryStyle = "form";
        if(queryStyle == "")
            queryStyle = "form";
        queryPrefix = getParamStylePrefix(queryStyle);
        querySuffix = getParamStyleSuffix(queryStyle);
        queryDelimiter = getParamStyleDelimiter(queryStyle, "focus.lng", true);
        if (fullPath.indexOf("?") > 0)
            fullPath.append(queryPrefix);
        else
            fullPath.append("?");

        fullPath.append(QUrl::toPercentEncoding("focus.lng")).append(querySuffix).append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(focus_lng.value())));
    }
    if(within_country.hasValue())
    {
        queryStyle = "form";
        if(queryStyle == "")
            queryStyle = "form";
        queryPrefix = getParamStylePrefix(queryStyle);
        querySuffix = getParamStyleSuffix(queryStyle);
        queryDelimiter = getParamStyleDelimiter(queryStyle, "within.country", true);
        if (fullPath.indexOf("?") > 0)
            fullPath.append(queryPrefix);
        else
            fullPath.append("?");

        fullPath.append(QUrl::toPercentEncoding("within.country")).append(querySuffix).append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(within_country.value())));
    }
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this, _manager);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "GET");


    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIDefaultApi::geocodingSearchCallback);
    connect(this, &OAIDefaultApi::abortRequestsSignal, worker, &QObject::deleteLater);
    connect(worker, &QObject::destroyed, [this](){
        if(findChildren<OAIHttpRequestWorker*>().count() == 0){
            emit allPendingRequestsCompleted();
        }
    });

    worker->execute(&input);
}

void OAIDefaultApi::geocodingSearchCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    OAIResponseGeocoding output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit geocodingSearchSignal(output);
        emit geocodingSearchSignalFull(worker, output);
    } else {
        emit geocodingSearchSignalE(output, error_type, error_str);
        emit geocodingSearchSignalEFull(worker, error_type, error_str);
    }
}

void OAIDefaultApi::mapInfo() {
    QString fullPath = QString(_serverConfigs["mapInfo"][_serverIndices.value("mapInfo")].URL()+"/v4/map-info");
    
    if(_apiKeys.contains("ApiKey")){
        addHeaders("ApiKey",_apiKeys.find("ApiKey").value());
    }
    
    if(_apiKeys.contains("ApplicationId")){
        addHeaders("ApplicationId",_apiKeys.find("ApplicationId").value());
    }
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this, _manager);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "GET");


    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIDefaultApi::mapInfoCallback);
    connect(this, &OAIDefaultApi::abortRequestsSignal, worker, &QObject::deleteLater);
    connect(worker, &QObject::destroyed, [this](){
        if(findChildren<OAIHttpRequestWorker*>().count() == 0){
            emit allPendingRequestsCompleted();
        }
    });

    worker->execute(&input);
}

void OAIDefaultApi::mapInfoCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    OAIResponseMapInfo output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit mapInfoSignal(output);
        emit mapInfoSignalFull(worker, output);
    } else {
        emit mapInfoSignalE(output, error_type, error_str);
        emit mapInfoSignalEFull(worker, error_type, error_str);
    }
}

void OAIDefaultApi::routes(const OAIRequestRoutes &oai_request_routes) {
    QString fullPath = QString(_serverConfigs["routes"][_serverIndices.value("routes")].URL()+"/v4/routes");
    
    if(_apiKeys.contains("ApiKey")){
        addHeaders("ApiKey",_apiKeys.find("ApiKey").value());
    }
    
    if(_apiKeys.contains("ApplicationId")){
        addHeaders("ApplicationId",_apiKeys.find("ApplicationId").value());
    }
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this, _manager);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "POST");

    {

        QByteArray output = oai_request_routes.asJson().toUtf8();
        input.request_body.append(output);
    }
    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIDefaultApi::routesCallback);
    connect(this, &OAIDefaultApi::abortRequestsSignal, worker, &QObject::deleteLater);
    connect(worker, &QObject::destroyed, [this](){
        if(findChildren<OAIHttpRequestWorker*>().count() == 0){
            emit allPendingRequestsCompleted();
        }
    });

    worker->execute(&input);
}

void OAIDefaultApi::routesCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    OAIResponseRoutes output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit routesSignal(output);
        emit routesSignalFull(worker, output);
    } else {
        emit routesSignalE(output, error_type, error_str);
        emit routesSignalEFull(worker, error_type, error_str);
    }
}

void OAIDefaultApi::supportedLocations(const OAIRequestSupportedLocations &oai_request_supported_locations) {
    QString fullPath = QString(_serverConfigs["supportedLocations"][_serverIndices.value("supportedLocations")].URL()+"/v4/supported-locations");
    
    if(_apiKeys.contains("ApiKey")){
        addHeaders("ApiKey",_apiKeys.find("ApiKey").value());
    }
    
    if(_apiKeys.contains("ApplicationId")){
        addHeaders("ApplicationId",_apiKeys.find("ApplicationId").value());
    }
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this, _manager);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "POST");

    {

        QByteArray output = oai_request_supported_locations.asJson().toUtf8();
        input.request_body.append(output);
    }
    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIDefaultApi::supportedLocationsCallback);
    connect(this, &OAIDefaultApi::abortRequestsSignal, worker, &QObject::deleteLater);
    connect(worker, &QObject::destroyed, [this](){
        if(findChildren<OAIHttpRequestWorker*>().count() == 0){
            emit allPendingRequestsCompleted();
        }
    });

    worker->execute(&input);
}

void OAIDefaultApi::supportedLocationsCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    OAIResponseSupportedLocations output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit supportedLocationsSignal(output);
        emit supportedLocationsSignalFull(worker, output);
    } else {
        emit supportedLocationsSignalE(output, error_type, error_str);
        emit supportedLocationsSignalEFull(worker, error_type, error_str);
    }
}

void OAIDefaultApi::timeFilter(const OAIRequestTimeFilter &oai_request_time_filter) {
    QString fullPath = QString(_serverConfigs["timeFilter"][_serverIndices.value("timeFilter")].URL()+"/v4/time-filter");
    
    if(_apiKeys.contains("ApiKey")){
        addHeaders("ApiKey",_apiKeys.find("ApiKey").value());
    }
    
    if(_apiKeys.contains("ApplicationId")){
        addHeaders("ApplicationId",_apiKeys.find("ApplicationId").value());
    }
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this, _manager);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "POST");

    {

        QByteArray output = oai_request_time_filter.asJson().toUtf8();
        input.request_body.append(output);
    }
    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIDefaultApi::timeFilterCallback);
    connect(this, &OAIDefaultApi::abortRequestsSignal, worker, &QObject::deleteLater);
    connect(worker, &QObject::destroyed, [this](){
        if(findChildren<OAIHttpRequestWorker*>().count() == 0){
            emit allPendingRequestsCompleted();
        }
    });

    worker->execute(&input);
}

void OAIDefaultApi::timeFilterCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    OAIResponseTimeFilter output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit timeFilterSignal(output);
        emit timeFilterSignalFull(worker, output);
    } else {
        emit timeFilterSignalE(output, error_type, error_str);
        emit timeFilterSignalEFull(worker, error_type, error_str);
    }
}

void OAIDefaultApi::timeFilterFast(const OAIRequestTimeFilterFast &oai_request_time_filter_fast) {
    QString fullPath = QString(_serverConfigs["timeFilterFast"][_serverIndices.value("timeFilterFast")].URL()+"/v4/time-filter/fast");
    
    if(_apiKeys.contains("ApiKey")){
        addHeaders("ApiKey",_apiKeys.find("ApiKey").value());
    }
    
    if(_apiKeys.contains("ApplicationId")){
        addHeaders("ApplicationId",_apiKeys.find("ApplicationId").value());
    }
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this, _manager);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "POST");

    {

        QByteArray output = oai_request_time_filter_fast.asJson().toUtf8();
        input.request_body.append(output);
    }
    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIDefaultApi::timeFilterFastCallback);
    connect(this, &OAIDefaultApi::abortRequestsSignal, worker, &QObject::deleteLater);
    connect(worker, &QObject::destroyed, [this](){
        if(findChildren<OAIHttpRequestWorker*>().count() == 0){
            emit allPendingRequestsCompleted();
        }
    });

    worker->execute(&input);
}

void OAIDefaultApi::timeFilterFastCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    OAIResponseTimeFilterFast output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit timeFilterFastSignal(output);
        emit timeFilterFastSignalFull(worker, output);
    } else {
        emit timeFilterFastSignalE(output, error_type, error_str);
        emit timeFilterFastSignalEFull(worker, error_type, error_str);
    }
}

void OAIDefaultApi::timeFilterPostcodeDistricts(const OAIRequestTimeFilterPostcodeDistricts &oai_request_time_filter_postcode_districts) {
    QString fullPath = QString(_serverConfigs["timeFilterPostcodeDistricts"][_serverIndices.value("timeFilterPostcodeDistricts")].URL()+"/v4/time-filter/postcode-districts");
    
    if(_apiKeys.contains("ApiKey")){
        addHeaders("ApiKey",_apiKeys.find("ApiKey").value());
    }
    
    if(_apiKeys.contains("ApplicationId")){
        addHeaders("ApplicationId",_apiKeys.find("ApplicationId").value());
    }
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this, _manager);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "POST");

    {

        QByteArray output = oai_request_time_filter_postcode_districts.asJson().toUtf8();
        input.request_body.append(output);
    }
    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIDefaultApi::timeFilterPostcodeDistrictsCallback);
    connect(this, &OAIDefaultApi::abortRequestsSignal, worker, &QObject::deleteLater);
    connect(worker, &QObject::destroyed, [this](){
        if(findChildren<OAIHttpRequestWorker*>().count() == 0){
            emit allPendingRequestsCompleted();
        }
    });

    worker->execute(&input);
}

void OAIDefaultApi::timeFilterPostcodeDistrictsCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    OAIResponseTimeFilterPostcodeDistricts output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit timeFilterPostcodeDistrictsSignal(output);
        emit timeFilterPostcodeDistrictsSignalFull(worker, output);
    } else {
        emit timeFilterPostcodeDistrictsSignalE(output, error_type, error_str);
        emit timeFilterPostcodeDistrictsSignalEFull(worker, error_type, error_str);
    }
}

void OAIDefaultApi::timeFilterPostcodeSectors(const OAIRequestTimeFilterPostcodeSectors &oai_request_time_filter_postcode_sectors) {
    QString fullPath = QString(_serverConfigs["timeFilterPostcodeSectors"][_serverIndices.value("timeFilterPostcodeSectors")].URL()+"/v4/time-filter/postcode-sectors");
    
    if(_apiKeys.contains("ApiKey")){
        addHeaders("ApiKey",_apiKeys.find("ApiKey").value());
    }
    
    if(_apiKeys.contains("ApplicationId")){
        addHeaders("ApplicationId",_apiKeys.find("ApplicationId").value());
    }
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this, _manager);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "POST");

    {

        QByteArray output = oai_request_time_filter_postcode_sectors.asJson().toUtf8();
        input.request_body.append(output);
    }
    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIDefaultApi::timeFilterPostcodeSectorsCallback);
    connect(this, &OAIDefaultApi::abortRequestsSignal, worker, &QObject::deleteLater);
    connect(worker, &QObject::destroyed, [this](){
        if(findChildren<OAIHttpRequestWorker*>().count() == 0){
            emit allPendingRequestsCompleted();
        }
    });

    worker->execute(&input);
}

void OAIDefaultApi::timeFilterPostcodeSectorsCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    OAIResponseTimeFilterPostcodeSectors output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit timeFilterPostcodeSectorsSignal(output);
        emit timeFilterPostcodeSectorsSignalFull(worker, output);
    } else {
        emit timeFilterPostcodeSectorsSignalE(output, error_type, error_str);
        emit timeFilterPostcodeSectorsSignalEFull(worker, error_type, error_str);
    }
}

void OAIDefaultApi::timeFilterPostcodes(const OAIRequestTimeFilterPostcodes &oai_request_time_filter_postcodes) {
    QString fullPath = QString(_serverConfigs["timeFilterPostcodes"][_serverIndices.value("timeFilterPostcodes")].URL()+"/v4/time-filter/postcodes");
    
    if(_apiKeys.contains("ApiKey")){
        addHeaders("ApiKey",_apiKeys.find("ApiKey").value());
    }
    
    if(_apiKeys.contains("ApplicationId")){
        addHeaders("ApplicationId",_apiKeys.find("ApplicationId").value());
    }
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this, _manager);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "POST");

    {

        QByteArray output = oai_request_time_filter_postcodes.asJson().toUtf8();
        input.request_body.append(output);
    }
    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIDefaultApi::timeFilterPostcodesCallback);
    connect(this, &OAIDefaultApi::abortRequestsSignal, worker, &QObject::deleteLater);
    connect(worker, &QObject::destroyed, [this](){
        if(findChildren<OAIHttpRequestWorker*>().count() == 0){
            emit allPendingRequestsCompleted();
        }
    });

    worker->execute(&input);
}

void OAIDefaultApi::timeFilterPostcodesCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    OAIResponseTimeFilterPostcodes output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit timeFilterPostcodesSignal(output);
        emit timeFilterPostcodesSignalFull(worker, output);
    } else {
        emit timeFilterPostcodesSignalE(output, error_type, error_str);
        emit timeFilterPostcodesSignalEFull(worker, error_type, error_str);
    }
}

void OAIDefaultApi::timeMap(const OAIRequestTimeMap &oai_request_time_map) {
    QString fullPath = QString(_serverConfigs["timeMap"][_serverIndices.value("timeMap")].URL()+"/v4/time-map");
    
    if(_apiKeys.contains("ApiKey")){
        addHeaders("ApiKey",_apiKeys.find("ApiKey").value());
    }
    
    if(_apiKeys.contains("ApplicationId")){
        addHeaders("ApplicationId",_apiKeys.find("ApplicationId").value());
    }
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this, _manager);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "POST");

    {

        QByteArray output = oai_request_time_map.asJson().toUtf8();
        input.request_body.append(output);
    }
    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIDefaultApi::timeMapCallback);
    connect(this, &OAIDefaultApi::abortRequestsSignal, worker, &QObject::deleteLater);
    connect(worker, &QObject::destroyed, [this](){
        if(findChildren<OAIHttpRequestWorker*>().count() == 0){
            emit allPendingRequestsCompleted();
        }
    });

    worker->execute(&input);
}

void OAIDefaultApi::timeMapCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    OAIResponseTimeMap output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit timeMapSignal(output);
        emit timeMapSignalFull(worker, output);
    } else {
        emit timeMapSignalE(output, error_type, error_str);
        emit timeMapSignalEFull(worker, error_type, error_str);
    }
}

} // namespace OpenAPI
