package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Coords;

@Canonical
class ResponseShape {
    List<Coords> shell = new ArrayList<Coords>()

    List<List<Coords>> holes = new ArrayList<List<Coords>>()

}
