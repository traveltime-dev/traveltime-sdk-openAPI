package org.openapitools.api.factories;

import org.openapitools.api.V4ApiService;
import org.openapitools.api.impl.V4ApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2021-05-26T18:50:23.522Z[Etc/UTC]")
public class V4ApiServiceFactory {
    private static final V4ApiService service = new V4ApiServiceImpl();

    public static V4ApiService getV4Api() {
        return service;
    }
}
