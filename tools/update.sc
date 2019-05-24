import ammonite.ops._

val swaggerCodegenVersion = "v4.0.0"
lazy val toolsDir = pwd/"tools"
lazy val codegenDir = toolsDir/"openapi-generator"
lazy val sdkOut = codegenDir/"out"
lazy val defaultSpecLocation = "https://raw.githubusercontent.com/igeolise/traveltime-platform-openapi-specification/v1.1.1/traveltime-spec.yml"

val languages = List(
  "ada",
  "android",
  "apex",
  "bash",
  "c",
  "clojure",
  "cpp-qt5-client",
  "cpp-restsdk",
  "cpp-tizen",
  "csharp",
  "csharp-netcore",
  "dart",
  "dart-jaguar",
  "eiffel",
  "elixir",
  "elm",
  "erlang-client",
  "erlang-proper",
  "flash",
  "go",
  "groovy",
  "haskell-http-client",
  "java",
  "javascript",
  "javascript-closure-angular",
  "javascript-flowtyped",
  "jaxrs-cxf-client",
  "jmeter",
  "kotlin",
  "lua",
  "objc",
  "perl",
  "php",
  "powershell",
  "python",
  "r",
  "ruby",
  "rust",
  "scala-akka",
  "scala-gatling",
  "scalaz",
  "swift4",
  "typescript-angular",
  "typescript-angularjs",
  "typescript-aurelia",
  "typescript-axios",
  "typescript-fetch",
  "typescript-inversify",
  "typescript-jquery",
  "typescript-node",
  "typescript-rxjs",
  "ada-server",
  "aspnetcore",
  "cpp-pistache-server",
  "cpp-qt5-qhttpengine-server",
  "cpp-restbed-server",
  "csharp-nancyfx",
  "erlang-server",
  "fsharp-giraffe-server",
  "go-gin-server",
  "go-server",
  "graphql-nodejs-express-server",
  "haskell",
  "java-inflector",
  "java-msf4j",
  "java-pkmst",
  "java-play-framework",
  "java-undertow-server",
  "java-vertx",
  "jaxrs-cxf",
  "jaxrs-cxf-cdi",
  "jaxrs-cxf-extended",
  "jaxrs-jersey",
  "jaxrs-resteasy",
  "jaxrs-resteasy-eap",
  "jaxrs-spec",
  "kotlin-server",
  "kotlin-spring",
  "nodejs-server",
  "php-laravel",
  "php-lumen",
  "php-silex",
  "php-slim",
  "php-symfony",
  "php-ze-ph",
  "python-aiohttp",
  "python-blueplanet",
  "python-flask",
  "ruby-on-rails",
  "ruby-sinatra",
  "rust-server",
  "scala-finch",
  "scala-lagom-server",
  "scala-play-server",
  "scalatra",
  "spring"
)

@main
def main(skipCodegenSetup: Boolean = false, specLocation: String = defaultSpecLocation): Unit = {
  if(!skipCodegenSetup) {
    setupSwaggerCodegen()
  }
  generateSdks(specLocation)
}

def generateSdks(specLocation: String): Unit = {
  rm! sdkOut
  languages.foreach(l => generateSingleSdk(specLocation, l))
}

def generateSingleSdk(specLocation: String, language: String): Unit = {
  %("./run-in-docker.sh", 'generate,
    "-i", specLocation,
    "-g", language,
    "-o", s"/gen/out/$language",
    "-DpackageName=traveltimeplatform")(codegenDir)
  rm! pwd/language
  cp(sdkOut/language, pwd/language)
}

def setupSwaggerCodegen(): Unit = {
  rm! codegenDir
  %('git, 'clone, "https://github.com/openapitools/openapi-generator")(toolsDir)
  %('git, 'checkout, swaggerCodegenVersion)(codegenDir)
  rm! codegenDir/".git" // we do this to prevent accidental commits to swagger-codegen, since we patch docker-entrypoint.sh
  cp.over(toolsDir/"docker-entrypoint.sh", codegenDir/"docker-entrypoint.sh")
  %("./run-in-docker.sh", 'mvn, 'package, "-DskipTests")(codegenDir)
}
