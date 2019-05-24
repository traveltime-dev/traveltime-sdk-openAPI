import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_map_info_features.dart';

part 'response_geocoding_properties.jser.dart';

class ResponseGeocodingProperties {
  
  @Alias('name')
  final String name;
  
  @Alias('label')
  final String label;
  
  @Alias('score')
  final double score;
  
  @Alias('house_number')
  final String houseNumber;
  
  @Alias('street')
  final String street;
  
  @Alias('region')
  final String region;
  
  @Alias('region_code')
  final String regionCode;
  
  @Alias('neighbourhood')
  final String neighbourhood;
  
  @Alias('county')
  final String county;
  
  @Alias('macroregion')
  final String macroregion;
  
  @Alias('city')
  final String city;
  
  @Alias('country')
  final String country;
  
  @Alias('country_code')
  final String countryCode;
  
  @Alias('continent')
  final String continent;
  
  @Alias('postcode')
  final String postcode;
  
  @Alias('features')
  final ResponseMapInfoFeatures features;
  

  ResponseGeocodingProperties(
      

{
    
     this.name = null,  
     this.label = null,   this.score = null,  
     this.houseNumber = null,  
     this.street = null,  
     this.region = null,  
     this.regionCode = null,  
     this.neighbourhood = null,  
     this.county = null,  
     this.macroregion = null,  
     this.city = null,  
     this.country = null,  
     this.countryCode = null,  
     this.continent = null,  
     this.postcode = null,  
     this.features = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseGeocodingProperties[name=$name, label=$label, score=$score, houseNumber=$houseNumber, street=$street, region=$region, regionCode=$regionCode, neighbourhood=$neighbourhood, county=$county, macroregion=$macroregion, city=$city, country=$country, countryCode=$countryCode, continent=$continent, postcode=$postcode, features=$features, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseGeocodingPropertiesSerializer extends Serializer<ResponseGeocodingProperties> with _$ResponseGeocodingPropertiesSerializer {

}

