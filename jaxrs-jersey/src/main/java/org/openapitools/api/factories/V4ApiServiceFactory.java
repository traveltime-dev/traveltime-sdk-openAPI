package org.openapitools.api.factories;

import org.openapitools.api.V4ApiService;
import org.openapitools.api.impl.V4ApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2021-05-11T08:38:13.963Z[Etc/UTC]")
public class V4ApiServiceFactory {
    private static final V4ApiService service = new V4ApiServiceImpl();

    public static V4ApiService getV4Api() {
        return service;
    }
}
