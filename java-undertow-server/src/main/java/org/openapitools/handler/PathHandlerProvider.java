package org.openapitools.handler;

import com.networknt.config.Config;
import com.networknt.server.HandlerProvider;
import io.undertow.Handlers;
import io.undertow.server.HttpHandler;
import io.undertow.server.HttpServerExchange;
import io.undertow.util.Methods;

public class PathHandlerProvider implements HandlerProvider {

    public HttpHandler getHandler() {
        HttpHandler handler = Handlers.routing()


            .add(Methods.GET, "/v4/geocoding/reverse", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("geocodingReverseSearch");
                        }
                    })


            .add(Methods.GET, "/v4/geocoding/search", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("geocodingSearch");
                        }
                    })


            .add(Methods.GET, "/v4/map-info", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("mapInfo");
                        }
                    })


            .add(Methods.POST, "/v4/routes", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("routes");
                        }
                    })


            .add(Methods.POST, "/v4/supported-locations", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("supportedLocations");
                        }
                    })


            .add(Methods.POST, "/v4/time-filter", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("timeFilter");
                        }
                    })


            .add(Methods.POST, "/v4/time-filter/fast", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("timeFilterFast");
                        }
                    })


            .add(Methods.POST, "/v4/time-filter/postcode-districts", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("timeFilterPostcodeDistricts");
                        }
                    })


            .add(Methods.POST, "/v4/time-filter/postcode-sectors", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("timeFilterPostcodeSectors");
                        }
                    })


            .add(Methods.POST, "/v4/time-filter/postcodes", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("timeFilterPostcodes");
                        }
                    })


            .add(Methods.POST, "/v4/time-map", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("timeMap");
                        }
                    })

        ;
        return handler;
    }
}

