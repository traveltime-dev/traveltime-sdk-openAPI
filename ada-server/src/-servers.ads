--  TravelTime Platform API
--  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
--  ------------ EDIT NOTE ------------
--  This file was generated with openapi-generator.  You can modify it to implement
--  the server.  After you modify this file, you should add the following line
--  to the .openapi-generator-ignore file:
--
--  src/-servers.ads
--
--  Then, you can drop this edit note comment.
--  ------------ EDIT NOTE ------------
with Swagger.Servers;
with .Models;
with .Skeletons;
package .Servers is
   use .Models;
   type Server_Type is limited new .Skeletons.Server_Type with null record;


   --  
   overriding
   procedure Geocoding_Reverse_Search
      (Server : in out Server_Type;
       Focus_Periodlat : in double;
       Focus_Periodlng : in double;
       Within_Periodcountry : in Swagger.Nullable_UString;
       Result  : out .Models.ResponseGeocoding_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   overriding
   procedure Geocoding_Search
      (Server : in out Server_Type;
       Query : in Swagger.UString;
       Within_Periodcountry : in Swagger.Nullable_UString;
       Focus_Periodlat : in double;
       Focus_Periodlng : in double;
       Result  : out .Models.ResponseGeocoding_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   overriding
   procedure Map_Info
      (Server : in out Server_Type
       ;
       Result  : out .Models.ResponseMapInfo_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   overriding
   procedure Routes
      (Server : in out Server_Type;
       Request_Routes_Type : in RequestRoutes_Type;
       Result  : out .Models.ResponseRoutes_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   overriding
   procedure Supported_Locations
      (Server : in out Server_Type;
       Request_Supported_Locations_Type : in RequestSupportedLocations_Type;
       Result  : out .Models.ResponseSupportedLocations_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   overriding
   procedure Time_Filter
      (Server : in out Server_Type;
       Request_Time_Filter_Type : in RequestTimeFilter_Type;
       Result  : out .Models.ResponseTimeFilter_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   overriding
   procedure Time_Filter_Fast
      (Server : in out Server_Type;
       Request_Time_Filter_Fast_Type : in RequestTimeFilterFast_Type;
       Result  : out .Models.ResponseTimeFilterFast_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   overriding
   procedure Time_Filter_Postcode_Districts
      (Server : in out Server_Type;
       Request_Time_Filter_Postcode_Districts_Type : in RequestTimeFilterPostcodeDistricts_Type;
       Result  : out .Models.ResponseTimeFilterPostcodeDistricts_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   overriding
   procedure Time_Filter_Postcode_Sectors
      (Server : in out Server_Type;
       Request_Time_Filter_Postcode_Sectors_Type : in RequestTimeFilterPostcodeSectors_Type;
       Result  : out .Models.ResponseTimeFilterPostcodeSectors_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   overriding
   procedure Time_Filter_Postcodes
      (Server : in out Server_Type;
       Request_Time_Filter_Postcodes_Type : in RequestTimeFilterPostcodes_Type;
       Result  : out .Models.ResponseTimeFilterPostcodes_Type;
       Context : in out Swagger.Servers.Context_Type);

   --  
   overriding
   procedure Time_Map
      (Server : in out Server_Type;
       Request_Time_Map_Type : in RequestTimeMap_Type;
       Result  : out .Models.ResponseTimeMap_Type;
       Context : in out Swagger.Servers.Context_Type);

   package Server_Impl is
      new .Skeletons.Shared_Instance (Server_Type);

end .Servers;