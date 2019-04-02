package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.Valid
import javax.validation.constraints.*

/**
* 
* Values: isOnlyWalking
*/
enum class RequestTimeMapProperty(val value: String) {

    isOnlyWalking("is_only_walking");

}

