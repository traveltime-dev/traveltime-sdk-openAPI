organization := ""
version      := ""
name         := ""
scalaVersion := "2.12.6"

enablePlugins(PlayScala)

libraryDependencies ++= Seq(
  guice,
  ws,
  "org.webjars" % "swagger-ui" % "3.1.5",
  "javax.annotation" % "javax.annotation-api" % "1.3.2" % "compile",
  "org.scalatest"          %% "scalatest"          % "3.0.4" % Test,
  "org.scalatestplus.play" %% "scalatestplus-play" % "3.1.2" % Test
)
