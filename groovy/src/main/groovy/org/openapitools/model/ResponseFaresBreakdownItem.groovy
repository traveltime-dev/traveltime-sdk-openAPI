package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseFareTicket;
import org.openapitools.model.ResponseTransportationMode;

@Canonical
class ResponseFaresBreakdownItem {
    List<ResponseTransportationMode> modes = new ArrayList<ResponseTransportationMode>()

    List<Integer> routePartIds = new ArrayList<Integer>()

    List<ResponseFareTicket> tickets = new ArrayList<ResponseFareTicket>()

}
