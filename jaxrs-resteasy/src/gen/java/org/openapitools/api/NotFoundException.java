package org.openapitools.api;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2021-05-11T08:38:16.330Z[Etc/UTC]")
public class NotFoundException extends ApiException {
    private int code;
    public NotFoundException (int code, String msg) {
        super(code, msg);
        this.code = code;
    }
}
