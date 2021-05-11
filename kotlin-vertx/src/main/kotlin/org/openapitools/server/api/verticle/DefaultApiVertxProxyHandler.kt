package org.openapitools.server.api.verticle

import io.vertx.core.Vertx
import io.vertx.core.eventbus.Message
import io.vertx.core.json.JsonObject
import io.vertx.ext.web.api.OperationRequest
import io.vertx.ext.web.api.OperationResponse
import io.vertx.ext.web.api.generator.ApiHandlerUtils
import io.vertx.serviceproxy.ProxyHandler
import io.vertx.serviceproxy.ServiceException
import io.vertx.serviceproxy.ServiceExceptionMessageCodec
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import io.vertx.kotlin.coroutines.dispatcher
import io.vertx.core.json.Json
import io.vertx.core.json.JsonArray
import com.google.gson.reflect.TypeToken
import com.google.gson.Gson
import org.openapitools.server.api.model.RequestRoutes
import org.openapitools.server.api.model.RequestSupportedLocations
import org.openapitools.server.api.model.RequestTimeFilter
import org.openapitools.server.api.model.RequestTimeFilterFast
import org.openapitools.server.api.model.RequestTimeFilterPostcodeDistricts
import org.openapitools.server.api.model.RequestTimeFilterPostcodeSectors
import org.openapitools.server.api.model.RequestTimeFilterPostcodes
import org.openapitools.server.api.model.RequestTimeMap
import org.openapitools.server.api.model.ResponseError
import org.openapitools.server.api.model.ResponseGeocoding
import org.openapitools.server.api.model.ResponseMapInfo
import org.openapitools.server.api.model.ResponseRoutes
import org.openapitools.server.api.model.ResponseSupportedLocations
import org.openapitools.server.api.model.ResponseTimeFilter
import org.openapitools.server.api.model.ResponseTimeFilterFast
import org.openapitools.server.api.model.ResponseTimeFilterPostcodeDistricts
import org.openapitools.server.api.model.ResponseTimeFilterPostcodeSectors
import org.openapitools.server.api.model.ResponseTimeFilterPostcodes
import org.openapitools.server.api.model.ResponseTimeMap

class DefaultApiVertxProxyHandler(private val vertx: Vertx, private val service: DefaultApi, topLevel: Boolean, private val timeoutSeconds: Long) : ProxyHandler() {
    private val timerID: Long
    private var lastAccessed: Long = 0
    init {
        try {
            this.vertx.eventBus().registerDefaultCodec(ServiceException::class.java,
            ServiceExceptionMessageCodec())
        } catch (ex: IllegalStateException) {}

        if (timeoutSeconds != (-1).toLong() && !topLevel) {
            var period = timeoutSeconds * 1000 / 2
            if (period > 10000) {
                period = 10000
            }
            this.timerID = vertx.setPeriodic(period) { this.checkTimedOut(it) }
        } else {
            this.timerID = -1
        }
        accessed()
    }
    private fun checkTimedOut(id: Long) {
        val now = System.nanoTime()
        if (now - lastAccessed > timeoutSeconds * 1000000000) {
            close()
        }
    }

    override fun close() {
        if (timerID != (-1).toLong()) {
            vertx.cancelTimer(timerID)
        }
        super.close()
    }

    private fun accessed() {
        this.lastAccessed = System.nanoTime()
    }
    override fun handle(msg: Message<JsonObject>) {
        try {
            val json = msg.body()
            val action = msg.headers().get("action") ?: throw IllegalStateException("action not specified")
            accessed()
            val contextSerialized = json.getJsonObject("context") ?: throw IllegalStateException("Received action $action without OperationRequest \"context\"")
            val context = OperationRequest(contextSerialized)
            when (action) {
        
                "geocodingReverseSearch" -> {
                    val params = context.params
                    val lat = ApiHandlerUtils.searchDoubleInJson(params,"lat")
                    if(lat == null){
                        throw IllegalArgumentException("lat is required")
                    }
                    val lng = ApiHandlerUtils.searchDoubleInJson(params,"lng")
                    if(lng == null){
                        throw IllegalArgumentException("lng is required")
                    }
                    val withinCountry = ApiHandlerUtils.searchStringInJson(params,"within.country")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.geocodingReverseSearch(lat,lng,withinCountry,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "geocodingSearch" -> {
                    val params = context.params
                    val query = ApiHandlerUtils.searchStringInJson(params,"query")
                    if(query == null){
                        throw IllegalArgumentException("query is required")
                    }
                    val focusLat = ApiHandlerUtils.searchDoubleInJson(params,"focus.lat")
                    val focusLng = ApiHandlerUtils.searchDoubleInJson(params,"focus.lng")
                    val withinCountry = ApiHandlerUtils.searchStringInJson(params,"within.country")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.geocodingSearch(query,focusLat,focusLng,withinCountry,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "mapInfo" -> {
                }
        
                "routes" -> {
                    val params = context.params
                    val requestRoutesParam = ApiHandlerUtils.searchJsonObjectInJson(params,"body")
                    if (requestRoutesParam == null) {
                        throw IllegalArgumentException("requestRoutes is required")
                    }
                    val requestRoutes = Gson().fromJson(requestRoutesParam.encode(), RequestRoutes::class.java)
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.routes(requestRoutes,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "supportedLocations" -> {
                    val params = context.params
                    val requestSupportedLocationsParam = ApiHandlerUtils.searchJsonObjectInJson(params,"body")
                    if (requestSupportedLocationsParam == null) {
                        throw IllegalArgumentException("requestSupportedLocations is required")
                    }
                    val requestSupportedLocations = Gson().fromJson(requestSupportedLocationsParam.encode(), RequestSupportedLocations::class.java)
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.supportedLocations(requestSupportedLocations,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "timeFilter" -> {
                    val params = context.params
                    val requestTimeFilterParam = ApiHandlerUtils.searchJsonObjectInJson(params,"body")
                    if (requestTimeFilterParam == null) {
                        throw IllegalArgumentException("requestTimeFilter is required")
                    }
                    val requestTimeFilter = Gson().fromJson(requestTimeFilterParam.encode(), RequestTimeFilter::class.java)
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.timeFilter(requestTimeFilter,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "timeFilterFast" -> {
                    val params = context.params
                    val requestTimeFilterFastParam = ApiHandlerUtils.searchJsonObjectInJson(params,"body")
                    if (requestTimeFilterFastParam == null) {
                        throw IllegalArgumentException("requestTimeFilterFast is required")
                    }
                    val requestTimeFilterFast = Gson().fromJson(requestTimeFilterFastParam.encode(), RequestTimeFilterFast::class.java)
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.timeFilterFast(requestTimeFilterFast,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "timeFilterPostcodeDistricts" -> {
                    val params = context.params
                    val requestTimeFilterPostcodeDistrictsParam = ApiHandlerUtils.searchJsonObjectInJson(params,"body")
                    if (requestTimeFilterPostcodeDistrictsParam == null) {
                        throw IllegalArgumentException("requestTimeFilterPostcodeDistricts is required")
                    }
                    val requestTimeFilterPostcodeDistricts = Gson().fromJson(requestTimeFilterPostcodeDistrictsParam.encode(), RequestTimeFilterPostcodeDistricts::class.java)
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "timeFilterPostcodeSectors" -> {
                    val params = context.params
                    val requestTimeFilterPostcodeSectorsParam = ApiHandlerUtils.searchJsonObjectInJson(params,"body")
                    if (requestTimeFilterPostcodeSectorsParam == null) {
                        throw IllegalArgumentException("requestTimeFilterPostcodeSectors is required")
                    }
                    val requestTimeFilterPostcodeSectors = Gson().fromJson(requestTimeFilterPostcodeSectorsParam.encode(), RequestTimeFilterPostcodeSectors::class.java)
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "timeFilterPostcodes" -> {
                    val params = context.params
                    val requestTimeFilterPostcodesParam = ApiHandlerUtils.searchJsonObjectInJson(params,"body")
                    if (requestTimeFilterPostcodesParam == null) {
                        throw IllegalArgumentException("requestTimeFilterPostcodes is required")
                    }
                    val requestTimeFilterPostcodes = Gson().fromJson(requestTimeFilterPostcodesParam.encode(), RequestTimeFilterPostcodes::class.java)
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.timeFilterPostcodes(requestTimeFilterPostcodes,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "timeMap" -> {
                    val params = context.params
                    val requestTimeMapParam = ApiHandlerUtils.searchJsonObjectInJson(params,"body")
                    if (requestTimeMapParam == null) {
                        throw IllegalArgumentException("requestTimeMap is required")
                    }
                    val requestTimeMap = Gson().fromJson(requestTimeMapParam.encode(), RequestTimeMap::class.java)
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.timeMap(requestTimeMap,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
            }
        }catch (t: Throwable) {
            msg.reply(ServiceException(500, t.message))
            throw t
        }
    }
}
