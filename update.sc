import ammonite.ops._

val swaggerCodegenVersion = "v3.3.4"
lazy val codegenDir = pwd/"openapi-generator"
lazy val sdkOut = codegenDir/"out"
// lazy val defaultSpecLocation = "https://raw.githubusercontent.com/igeolise/traveltime-platform-openapi-specification/master/traveltime-spec.yml"
lazy val defaultSpecLocation = "https://raw.githubusercontent.com/igeolise/traveltime-platform-openapi-specification/migration/openApiGenerator/traveltime-spec.yml"
val languages = List(
  "ada",
  "ada-server",
  "android",
  "apache2",
  "apex",
  "aspnetcore",
  "bash",
  "c",
  "clojure",
  "cwiki",
  "cpp-qt5",
  "cpp-qt5-qhttpengine-server",
  "cpp-pistache-server",
  "cpp-restbed-server",
  "cpp-restsdk",
  "cpp-tizen",
  "csharp",
  "csharp-refactor",
  "csharp-dotnet2",
  "csharp-nancyfx",
  "dart",
  "dart-jaguar",
  "eiffel",
  "elixir",
  "elm",
  "erlang-client",
  "erlang-proper",
  "erlang-server",
  "flash",
  "scala-finch",
  "go",
  "go-server",
  "go-gin-server",
  "groovy",
  "kotlin",
  "kotlin-server",
  "kotlin-spring",
  "haskell-http-client",
  "haskell",
  "java",
  "jaxrs-cxf-client",
  "java-inflector",
  "java-msf4j",
  "java-pkmst",
  "java-play-framework",
  "java-undertow-server",
  "java-vertx",
  "jaxrs-cxf",
  "jaxrs-cxf-cdi",
  "jaxrs-jersey",
  "jaxrs-resteasy",
  "jaxrs-resteasy-eap",
  "jaxrs-spec",
  "javascript",
  "javascript-flowtyped",
  "javascript-closure-angular",
  "jmeter",
  "lua",
  "mysql-schema",
  "nodejs-server",
  "objc",
  "openapi",
  "openapi-yaml",
  "perl",
  "php",
  "php-laravel",
  "php-lumen",
  "php-slim",
  "php-silex",
  "php-symfony",
  "php-ze-ph",
  "powershell",
  "python",
  "python-flask",
  "r",
  "ruby",
  "ruby-on-rails",
  "ruby-sinatra",
  "rust",
  "rust-server",
  "scalatra",
  "scala-akka",
  "scala-httpclient",
  "scala-gatling",
  "scala-lagom-server",
  "scalaz",
  "spring",
  "dynamic-html",
  "html",
  "html2",
  "swift2-deprecated",
  "swift3",
  "swift4",
  "typescript-angular",
  "typescript-angularjs",
  "typescript-aurelia",
  "typescript-axios",
  "typescript-fetch",
  "typescript-inversify",
  "typescript-jquery",
  "typescript-node"
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
    "-l", language,
    "-o", s"/gen/out/$language",
    "-DpackageName=traveltimeplatform")(codegenDir)
  rm! pwd/language
  cp(sdkOut/language, pwd/language)
}

def setupSwaggerCodegen(): Unit = {
  rm! codegenDir
  %('git, 'clone, "https://github.com/openapitools/openapi-generator")(pwd)
  %('git, 'checkout, swaggerCodegenVersion)(codegenDir)
  rm! codegenDir/".git" // we do this to prevent accidental commits to swagger-codegen, since we patch docker-entrypoint.sh
  cp.over(pwd/"docker-entrypoint.sh", codegenDir/"docker-entrypoint.sh")
  %("./run-in-docker.sh", 'mvn, 'package, "-DskipTests")(codegenDir)
}
