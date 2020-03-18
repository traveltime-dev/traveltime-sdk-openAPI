
package org.openapitools.client.model


case class ResponseGeocodingProperties (
    _name: String,
    _label: String,
    _score: Option[Double],
    _houseNumber: Option[String],
    _street: Option[String],
    _region: Option[String],
    _regionCode: Option[String],
    _neighbourhood: Option[String],
    _county: Option[String],
    _macroregion: Option[String],
    _city: Option[String],
    _country: Option[String],
    _countryCode: Option[String],
    _continent: Option[String],
    _postcode: Option[String],
    _features: Option[ResponseMapInfoFeatures]
)
object ResponseGeocodingProperties {
    def toStringBody(var_name: Object, var_label: Object, var_score: Object, var_houseNumber: Object, var_street: Object, var_region: Object, var_regionCode: Object, var_neighbourhood: Object, var_county: Object, var_macroregion: Object, var_city: Object, var_country: Object, var_countryCode: Object, var_continent: Object, var_postcode: Object, var_features: Object) =
        s"""
        | {
        | "name":$var_name,"label":$var_label,"score":$var_score,"houseNumber":$var_houseNumber,"street":$var_street,"region":$var_region,"regionCode":$var_regionCode,"neighbourhood":$var_neighbourhood,"county":$var_county,"macroregion":$var_macroregion,"city":$var_city,"country":$var_country,"countryCode":$var_countryCode,"continent":$var_continent,"postcode":$var_postcode,"features":$var_features
        | }
        """.stripMargin
}
