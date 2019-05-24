package org.openapitools.api.factories;

import org.openapitools.api.V4ApiService;
import org.openapitools.api.impl.V4ApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2019-05-24T09:07:05.199Z[Etc/UTC]")
public class V4ApiServiceFactory {
    private final static V4ApiService service = new V4ApiServiceImpl();

    public static V4ApiService getV4Api() {
        return service;
    }
}
