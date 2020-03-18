import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_map_info_features.dart';

part 'response_geocoding_properties.jser.dart';

class ResponseGeocodingProperties {
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('label', isNullable: false,  )
  final String label;
  
  @Alias('score', isNullable: false,  )
  final double score;
  
  @Alias('house_number', isNullable: false,  )
  final String houseNumber;
  
  @Alias('street', isNullable: false,  )
  final String street;
  
  @Alias('region', isNullable: false,  )
  final String region;
  
  @Alias('region_code', isNullable: false,  )
  final String regionCode;
  
  @Alias('neighbourhood', isNullable: false,  )
  final String neighbourhood;
  
  @Alias('county', isNullable: false,  )
  final String county;
  
  @Alias('macroregion', isNullable: false,  )
  final String macroregion;
  
  @Alias('city', isNullable: false,  )
  final String city;
  
  @Alias('country', isNullable: false,  )
  final String country;
  
  @Alias('country_code', isNullable: false,  )
  final String countryCode;
  
  @Alias('continent', isNullable: false,  )
  final String continent;
  
  @Alias('postcode', isNullable: false,  )
  final String postcode;
  
  @Alias('features', isNullable: false,  )
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

