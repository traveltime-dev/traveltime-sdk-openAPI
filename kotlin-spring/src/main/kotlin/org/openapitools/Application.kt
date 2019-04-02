package org.openapitools

import org.springframework.boot.runApplication
import org.springframework.context.annotation.ComponentScan
import org.springframework.boot.autoconfigure.SpringBootApplication


@SpringBootApplication
@ComponentScan(basePackages = ["org.openapitools", "traveltimeplatform.apis", "traveltimeplatform.models"])
class Application

fun main(args: Array<String>) {
    runApplication<Application>(*args)
}
