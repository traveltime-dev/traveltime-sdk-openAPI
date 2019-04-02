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
class RESPONSE_SHAPE 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    shell: detachable LIST [COORDS] 
      
    holes: detachable LIST [LIST [COORDS]] 
      

feature -- Change Element  
 
    set_shell (a_name: like shell)
        -- Set 'shell' with 'a_name'.
      do
        shell := a_name
      ensure
        shell_set: shell = a_name		
      end

    set_holes (a_name: like holes)
        -- Set 'holes' with 'a_name'.
      do
        holes := a_name
      ensure
        holes_set: holes = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass RESPONSE_SHAPE%N")
        if attached shell as l_shell then
          across l_shell as ic loop
            Result.append ("%N shell:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end 
        if attached holes as l_holes then
          across l_holes as ic loop
            Result.append ("%N holes:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end 
      end
end

