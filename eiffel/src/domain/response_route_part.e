note
 description:"[
		TravelTime API
 		No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
  		The version of the OpenAPI document: 1.2.2
 	    Contact: support@igeolise.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class RESPONSE_ROUTE_PART 




feature --Access

    id: detachable STRING_32 
      
    type: detachable STRING_32 
      
    mode: detachable RESPONSE_TRANSPORTATION_MODE 
      
    directions: detachable STRING_32 
      
 	distance: INTEGER_32 
    	 
 	travel_time: INTEGER_32 
    	 
    coords: detachable LIST [COORDS] 
      
    direction: detachable STRING_32 
      
    road: detachable STRING_32 
      
    turn: detachable STRING_32 
      
    line: detachable STRING_32 
      
    departure_station: detachable STRING_32 
      
    arrival_station: detachable STRING_32 
      
    departs_at: detachable STRING_32 
      
    arrives_at: detachable STRING_32 
      
 	num_stops: INTEGER_32 
    	 

feature -- Change Element  
 
    set_id (a_name: like id)
        -- Set 'id' with 'a_name'.
      do
        id := a_name
      ensure
        id_set: id = a_name		
      end

    set_type (a_name: like type)
        -- Set 'type' with 'a_name'.
      do
        type := a_name
      ensure
        type_set: type = a_name		
      end

    set_mode (a_name: like mode)
        -- Set 'mode' with 'a_name'.
      do
        mode := a_name
      ensure
        mode_set: mode = a_name		
      end

    set_directions (a_name: like directions)
        -- Set 'directions' with 'a_name'.
      do
        directions := a_name
      ensure
        directions_set: directions = a_name		
      end

    set_distance (a_name: like distance)
        -- Set 'distance' with 'a_name'.
      do
        distance := a_name
      ensure
        distance_set: distance = a_name		
      end

    set_travel_time (a_name: like travel_time)
        -- Set 'travel_time' with 'a_name'.
      do
        travel_time := a_name
      ensure
        travel_time_set: travel_time = a_name		
      end

    set_coords (a_name: like coords)
        -- Set 'coords' with 'a_name'.
      do
        coords := a_name
      ensure
        coords_set: coords = a_name		
      end

    set_direction (a_name: like direction)
        -- Set 'direction' with 'a_name'.
      do
        direction := a_name
      ensure
        direction_set: direction = a_name		
      end

    set_road (a_name: like road)
        -- Set 'road' with 'a_name'.
      do
        road := a_name
      ensure
        road_set: road = a_name		
      end

    set_turn (a_name: like turn)
        -- Set 'turn' with 'a_name'.
      do
        turn := a_name
      ensure
        turn_set: turn = a_name		
      end

    set_line (a_name: like line)
        -- Set 'line' with 'a_name'.
      do
        line := a_name
      ensure
        line_set: line = a_name		
      end

    set_departure_station (a_name: like departure_station)
        -- Set 'departure_station' with 'a_name'.
      do
        departure_station := a_name
      ensure
        departure_station_set: departure_station = a_name		
      end

    set_arrival_station (a_name: like arrival_station)
        -- Set 'arrival_station' with 'a_name'.
      do
        arrival_station := a_name
      ensure
        arrival_station_set: arrival_station = a_name		
      end

    set_departs_at (a_name: like departs_at)
        -- Set 'departs_at' with 'a_name'.
      do
        departs_at := a_name
      ensure
        departs_at_set: departs_at = a_name		
      end

    set_arrives_at (a_name: like arrives_at)
        -- Set 'arrives_at' with 'a_name'.
      do
        arrives_at := a_name
      ensure
        arrives_at_set: arrives_at = a_name		
      end

    set_num_stops (a_name: like num_stops)
        -- Set 'num_stops' with 'a_name'.
      do
        num_stops := a_name
      ensure
        num_stops_set: num_stops = a_name		
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass RESPONSE_ROUTE_PART%N")
        if attached id as l_id then
          Result.append ("%Nid:")
          Result.append (l_id.out)
          Result.append ("%N")    
        end  
        if attached type as l_type then
          Result.append ("%Ntype:")
          Result.append (l_type.out)
          Result.append ("%N")    
        end  
        if attached mode as l_mode then
          Result.append ("%Nmode:")
          Result.append (l_mode.out)
          Result.append ("%N")    
        end  
        if attached directions as l_directions then
          Result.append ("%Ndirections:")
          Result.append (l_directions.out)
          Result.append ("%N")    
        end  
        if attached distance as l_distance then
          Result.append ("%Ndistance:")
          Result.append (l_distance.out)
          Result.append ("%N")    
        end  
        if attached travel_time as l_travel_time then
          Result.append ("%Ntravel_time:")
          Result.append (l_travel_time.out)
          Result.append ("%N")    
        end  
        if attached coords as l_coords then
          across l_coords as ic loop
            Result.append ("%N coords:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end 
        if attached direction as l_direction then
          Result.append ("%Ndirection:")
          Result.append (l_direction.out)
          Result.append ("%N")    
        end  
        if attached road as l_road then
          Result.append ("%Nroad:")
          Result.append (l_road.out)
          Result.append ("%N")    
        end  
        if attached turn as l_turn then
          Result.append ("%Nturn:")
          Result.append (l_turn.out)
          Result.append ("%N")    
        end  
        if attached line as l_line then
          Result.append ("%Nline:")
          Result.append (l_line.out)
          Result.append ("%N")    
        end  
        if attached departure_station as l_departure_station then
          Result.append ("%Ndeparture_station:")
          Result.append (l_departure_station.out)
          Result.append ("%N")    
        end  
        if attached arrival_station as l_arrival_station then
          Result.append ("%Narrival_station:")
          Result.append (l_arrival_station.out)
          Result.append ("%N")    
        end  
        if attached departs_at as l_departs_at then
          Result.append ("%Ndeparts_at:")
          Result.append (l_departs_at.out)
          Result.append ("%N")    
        end  
        if attached arrives_at as l_arrives_at then
          Result.append ("%Narrives_at:")
          Result.append (l_arrives_at.out)
          Result.append ("%N")    
        end  
        if attached num_stops as l_num_stops then
          Result.append ("%Nnum_stops:")
          Result.append (l_num_stops.out)
          Result.append ("%N")    
        end  
      end
end


