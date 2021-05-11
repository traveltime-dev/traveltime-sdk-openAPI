package org.openapitools.api.factories;

import org.openapitools.api.V4ApiService;
import org.openapitools.api.impl.V4ApiServiceImpl;

public class V4ApiServiceFactory {
    private static final V4ApiService service = new V4ApiServiceImpl();

    public static V4ApiService getV4Api() {
        return service;
    }
}
