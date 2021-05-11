package org.openapitools.server.api.verticle

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
import io.vertx.core.Vertx
import io.vertx.core.json.JsonObject
import io.vertx.core.json.JsonArray
import com.github.wooyme.openapi.Response
import io.vertx.ext.web.api.OperationRequest
import io.vertx.kotlin.ext.web.api.contract.openapi3.OpenAPI3RouterFactory
import io.vertx.serviceproxy.ServiceBinder
import io.vertx.ext.web.handler.CookieHandler
import io.vertx.ext.web.handler.SessionHandler
import io.vertx.ext.web.sstore.LocalSessionStore
import java.util.List
import java.util.Map


interface DefaultApi  {
    fun init(vertx:Vertx,config:JsonObject)
    /* geocodingReverseSearch
     *  */
    suspend fun geocodingReverseSearch(lat:kotlin.Double?,lng:kotlin.Double?,withinCountry:kotlin.String?,context:OperationRequest):Response<ResponseGeocoding>
    /* geocodingSearch
     *  */
    suspend fun geocodingSearch(query:kotlin.String?,focusLat:kotlin.Double?,focusLng:kotlin.Double?,withinCountry:kotlin.String?,context:OperationRequest):Response<ResponseGeocoding>
    /* mapInfo
     *  */
    suspend fun mapInfo(context:OperationRequest):Response<ResponseMapInfo>
    /* routes
     *  */
    suspend fun routes(requestRoutes:RequestRoutes?,context:OperationRequest):Response<ResponseRoutes>
    /* supportedLocations
     *  */
    suspend fun supportedLocations(requestSupportedLocations:RequestSupportedLocations?,context:OperationRequest):Response<ResponseSupportedLocations>
    /* timeFilter
     *  */
    suspend fun timeFilter(requestTimeFilter:RequestTimeFilter?,context:OperationRequest):Response<ResponseTimeFilter>
    /* timeFilterFast
     *  */
    suspend fun timeFilterFast(requestTimeFilterFast:RequestTimeFilterFast?,context:OperationRequest):Response<ResponseTimeFilterFast>
    /* timeFilterPostcodeDistricts
     *  */
    suspend fun timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts:RequestTimeFilterPostcodeDistricts?,context:OperationRequest):Response<ResponseTimeFilterPostcodeDistricts>
    /* timeFilterPostcodeSectors
     *  */
    suspend fun timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors:RequestTimeFilterPostcodeSectors?,context:OperationRequest):Response<ResponseTimeFilterPostcodeSectors>
    /* timeFilterPostcodes
     *  */
    suspend fun timeFilterPostcodes(requestTimeFilterPostcodes:RequestTimeFilterPostcodes?,context:OperationRequest):Response<ResponseTimeFilterPostcodes>
    /* timeMap
     *  */
    suspend fun timeMap(requestTimeMap:RequestTimeMap?,context:OperationRequest):Response<ResponseTimeMap>
    companion object {
        const val address = "DefaultApi-service"
        suspend fun createRouterFactory(vertx: Vertx,path:String): io.vertx.ext.web.api.contract.openapi3.OpenAPI3RouterFactory {
            val routerFactory = OpenAPI3RouterFactory.createAwait(vertx,path)
            routerFactory.addGlobalHandler(CookieHandler.create())
            routerFactory.addGlobalHandler(SessionHandler.create(LocalSessionStore.create(vertx)))
            routerFactory.setExtraOperationContextPayloadMapper{
                JsonObject().put("files",JsonArray(it.fileUploads().map { it.uploadedFileName() }))
            }
            val opf = routerFactory::class.java.getDeclaredField("operations")
            opf.isAccessible = true
            val operations = opf.get(routerFactory) as Map<String, Any>
            for (m in DefaultApi::class.java.methods) {
                val methodName = m.name
                val op = operations[methodName]
                if (op != null) {
                    val method = op::class.java.getDeclaredMethod("mountRouteToService",String::class.java,String::class.java)
                    method.isAccessible = true
                    method.invoke(op,address,methodName)
                }
            }
            routerFactory.mountServiceInterface(DefaultApi::class.java, address)
            return routerFactory
        }
    }
}
