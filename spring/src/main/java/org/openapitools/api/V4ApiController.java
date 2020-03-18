package org.openapitools.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.NativeWebRequest;
import java.util.Optional;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2020-03-18T08:51:54.244Z[Etc/UTC]")

@Controller
@RequestMapping("${openapi.travelTimePlatform.base-path:}")
public class V4ApiController implements V4Api {

    private final NativeWebRequest request;

    @org.springframework.beans.factory.annotation.Autowired
    public V4ApiController(NativeWebRequest request) {
        this.request = request;
    }

    @Override
    public Optional<NativeWebRequest> getRequest() {
        return Optional.ofNullable(request);
    }

}
