
package org.openapitools.client.model


case class ResponseGeocodingProperties (
    _name: String,
    _label: String,
    _score: Option[Double],
    _houseUnderscorenumber: Option[String],
    _street: Option[String],
    _region: Option[String],
    _regionUnderscorecode: Option[String],
    _neighbourhood: Option[String],
    _county: Option[String],
    _macroregion: Option[String],
    _city: Option[String],
    _country: Option[String],
    _countryUnderscorecode: Option[String],
    _continent: Option[String],
    _postcode: Option[String],
    _features: Option[ResponseMapInfoFeatures]
)
object ResponseGeocodingProperties {
    def toStringBody(var_name: Object, var_label: Object, var_score: Object, var_houseUnderscorenumber: Object, var_street: Object, var_region: Object, var_regionUnderscorecode: Object, var_neighbourhood: Object, var_county: Object, var_macroregion: Object, var_city: Object, var_country: Object, var_countryUnderscorecode: Object, var_continent: Object, var_postcode: Object, var_features: Object) =
        s"""
        | {
        | "name":$var_name,"label":$var_label,"score":$var_score,"houseUnderscorenumber":$var_houseUnderscorenumber,"street":$var_street,"region":$var_region,"regionUnderscorecode":$var_regionUnderscorecode,"neighbourhood":$var_neighbourhood,"county":$var_county,"macroregion":$var_macroregion,"city":$var_city,"country":$var_country,"countryUnderscorecode":$var_countryUnderscorecode,"continent":$var_continent,"postcode":$var_postcode,"features":$var_features
        | }
        """.stripMargin
}
