package org.openapitools.api;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2021-05-11T08:38:13.963Z[Etc/UTC]")
public class NotFoundException extends ApiException {
    private int code;
    public NotFoundException (int code, String msg) {
        super(code, msg);
        this.code = code;
    }
}
