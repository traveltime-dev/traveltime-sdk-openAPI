--  TravelTime API
--  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
--
--  The version of the OpenAPI document: 1.2.2
--  Contact: support@igeolise.com
--
--  NOTE: This package is auto generated by OpenAPI-Generator 5.2.0-SNAPSHOT.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with .Models;
with Swagger.Clients;
package .Clients is
   pragma Style_Checks ("-mr");

   type Client_Type is new Swagger.Clients.Client_Type with null record;

   --  
   procedure Geocoding_Reverse_Search
      (Client : in out Client_Type;
       Lat : in double;
       Lng : in double;
       Within_Periodcountry : in Swagger.Nullable_UString;
       Result : out .Models.ResponseGeocoding_Type);

   --  
   procedure Geocoding_Search
      (Client : in out Client_Type;
       Query : in Swagger.UString;
       Focus_Periodlat : in double;
       Focus_Periodlng : in double;
       Within_Periodcountry : in Swagger.Nullable_UString;
       Result : out .Models.ResponseGeocoding_Type);

   --  
   procedure Map_Info
      (Client : in out Client_Type;
       Result : out .Models.ResponseMapInfo_Type);

   --  
   procedure Routes
      (Client : in out Client_Type;
       Request_Routes_Type : in .Models.RequestRoutes_Type;
       Result : out .Models.ResponseRoutes_Type);

   --  
   procedure Supported_Locations
      (Client : in out Client_Type;
       Request_Supported_Locations_Type : in .Models.RequestSupportedLocations_Type;
       Result : out .Models.ResponseSupportedLocations_Type);

   --  
   procedure Time_Filter
      (Client : in out Client_Type;
       Request_Time_Filter_Type : in .Models.RequestTimeFilter_Type;
       Result : out .Models.ResponseTimeFilter_Type);

   --  
   procedure Time_Filter_Fast
      (Client : in out Client_Type;
       Request_Time_Filter_Fast_Type : in .Models.RequestTimeFilterFast_Type;
       Result : out .Models.ResponseTimeFilterFast_Type);

   --  
   procedure Time_Filter_Postcode_Districts
      (Client : in out Client_Type;
       Request_Time_Filter_Postcode_Districts_Type : in .Models.RequestTimeFilterPostcodeDistricts_Type;
       Result : out .Models.ResponseTimeFilterPostcodeDistricts_Type);

   --  
   procedure Time_Filter_Postcode_Sectors
      (Client : in out Client_Type;
       Request_Time_Filter_Postcode_Sectors_Type : in .Models.RequestTimeFilterPostcodeSectors_Type;
       Result : out .Models.ResponseTimeFilterPostcodeSectors_Type);

   --  
   procedure Time_Filter_Postcodes
      (Client : in out Client_Type;
       Request_Time_Filter_Postcodes_Type : in .Models.RequestTimeFilterPostcodes_Type;
       Result : out .Models.ResponseTimeFilterPostcodes_Type);

   --  
   procedure Time_Map
      (Client : in out Client_Type;
       Request_Time_Map_Type : in .Models.RequestTimeMap_Type;
       Result : out .Models.ResponseTimeMap_Type);

end .Clients;
