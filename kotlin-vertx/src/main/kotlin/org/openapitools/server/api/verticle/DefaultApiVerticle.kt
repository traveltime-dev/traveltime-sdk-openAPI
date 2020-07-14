package org.openapitools.server.api.verticle
import io.vertx.core.Vertx
import io.vertx.core.AbstractVerticle
import io.vertx.serviceproxy.ServiceBinder

fun main(){
    Vertx.vertx().deployVerticle(DefaultApiVerticle())
}

class DefaultApiVerticle:AbstractVerticle() {

    override fun start() {
        val instance = (javaClass.classLoader.loadClass("org.openapitools.server.api.verticle.DefaultApiImpl").newInstance() as DefaultApi)
        instance.init(vertx,config())
        ServiceBinder(vertx)
            .setAddress(DefaultApi.address)
            .register(DefaultApi::class.java,instance)
    }
}