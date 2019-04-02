note
 description:"[
		TravelTime Platform API
 		No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
  		OpenAPI spec version: 1.0.0
 	    Contact: support@igeolise.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class RESPONSE_MAP_INFO_FEATURES 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    public_transport: detachable RESPONSE_MAP_INFO_FEATURES_PUBLIC_TRANSPORT 
      
    fares: BOOLEAN 
      
    postcodes: BOOLEAN 
      

feature -- Change Element  
 
    set_public_transport (a_name: like public_transport)
        -- Set 'public_transport' with 'a_name'.
      do
        public_transport := a_name
      ensure
        public_transport_set: public_transport = a_name		
      end

    set_fares (a_name: like fares)
        -- Set 'fares' with 'a_name'.
      do
        fares := a_name
      ensure
        fares_set: fares = a_name		
      end

    set_postcodes (a_name: like postcodes)
        -- Set 'postcodes' with 'a_name'.
      do
        postcodes := a_name
      ensure
        postcodes_set: postcodes = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass RESPONSE_MAP_INFO_FEATURES%N")
        if attached public_transport as l_public_transport then
          Result.append ("%Npublic_transport:")
          Result.append (l_public_transport.out)
          Result.append ("%N")    
        end  
        if attached fares as l_fares then
          Result.append ("%Nfares:")
          Result.append (l_fares.out)
          Result.append ("%N")    
        end  
        if attached postcodes as l_postcodes then
          Result.append ("%Npostcodes:")
          Result.append (l_postcodes.out)
          Result.append ("%N")    
        end  
      end
end

