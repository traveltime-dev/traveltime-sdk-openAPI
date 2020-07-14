import ammonite.ops._

val swaggerCodegenVersion = "master" //5.0.0
lazy val toolsDir = pwd/"tools"
lazy val codegenDir = toolsDir/"openapi-generator"
lazy val sdkOut = codegenDir/"out"
lazy val defaultSpecLocation = "https://raw.githubusercontent.com/traveltime-dev/traveltime-openapi-specification/v1.2.1/traveltime-spec.yml"

val languages = List(
  "ada",
  "ada-server",
  "android",
  "apache2",
  "apex",
  "asciidoc",
  "aspnetcore",
  "avro-schema",
  "bash",
  "c",
  "clojure",
  "cwiki",
  "cpp-qt5-client",
  "cpp-qt5-qhttpengine-server",
  "cpp-pistache-server",
  "cpp-restbed-server",
  "cpp-restsdk",
  "cpp-tizen",
  "cpp-ue4",
  "csharp",
  "csharp-netcore",
  "csharp-dotnet2",
  "csharp-nancyfx",
  "dart",
  "dart-dio",
  "dart-jaguar",
  "eiffel",
  "elixir",
  "elm",
  "erlang-client",
  "erlang-proper",
  "erlang-server",
  "flash",
  "fsharp-functions",
  "fsharp-giraffe-server",
  "go",
  "go-experimental",
  "go-server",
  "go-gin-server",
  "graphql-schema",
  "graphql-nodejs-express-server",
  "groovy",
  "kotlin",
  "kotlin-server",
  "kotlin-spring",
  "kotlin-vertx",
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
  "java-vertx-web",
  "jaxrs-cxf",
  "jaxrs-cxf-extended",
  "jaxrs-cxf-cdi",
  "jaxrs-jersey",
  "jaxrs-resteasy",
  "jaxrs-resteasy-eap",
  "jaxrs-spec",
  "javascript",
  "javascript-apollo",
  "javascript-flowtyped",
  "javascript-closure-angular",
  "jmeter",
  "k6",
  "lua",
  "markdown",
  "mysql-schema",
  "nim",
  "nodejs-express-server",
  "objc",
  "ocaml",
  "openapi",
  "openapi-yaml",
  "plantuml",
  "perl",
  "php",
  "php-laravel",
  "php-lumen",
  "php-slim4",
  "php-symfony",
  "php-ze-ph",
  "powershell",
  "protobuf-schema",
  "python",
  "python-flask",
  "python-aiohttp",
  "python-blueplanet",
  "r",
  "ruby",
  "ruby-on-rails",
  "ruby-sinatra",
  "rust",
  "rust-server",
  "scalatra",
  "scala-akka",
  "scala-akka-http-server",
  "scala-finch",
  "scala-gatling",
  "scala-lagom-server",
  "scala-play-server",
  "scala-sttp",
  "scalaz",
  "spring",
  "dynamic-html",
  "html",
  "html2",
  "swift5",
  "typescript",
  "typescript-angular",
  "typescript-aurelia",
  "typescript-axios",
  "typescript-fetch",
  "typescript-inversify",
  "typescript-jquery",
  "typescript-node",
  "typescript-redux-query",
  "typescript-rxjs"
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
    "-o", s"/gen/out/$language")(codegenDir)
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
