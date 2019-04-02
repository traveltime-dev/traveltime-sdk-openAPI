package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseFareTicket;
import org.openapitools.model.ResponseFaresBreakdownItem;

@Canonical
class ResponseFares {
    List<ResponseFaresBreakdownItem> breakdown = new ArrayList<ResponseFaresBreakdownItem>()

    List<ResponseFareTicket> ticketsTotal = new ArrayList<ResponseFareTicket>()

}
