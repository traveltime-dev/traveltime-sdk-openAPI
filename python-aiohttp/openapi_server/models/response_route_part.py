# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model_ import Model
from openapi_server.models.coords import Coords
from openapi_server.models.response_transportation_mode import ResponseTransportationMode
from openapi_server import util


class ResponseRoutePart(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, id: str=None, type: str=None, mode: ResponseTransportationMode=None, directions: str=None, distance: int=None, travel_time: int=None, coords: List[Coords]=None, direction: str=None, road: str=None, turn: str=None, line: str=None, departure_station: str=None, arrival_station: str=None, departs_at: str=None, arrives_at: str=None, num_stops: int=None):
        """ResponseRoutePart - a model defined in OpenAPI

        :param id: The id of this ResponseRoutePart.
        :param type: The type of this ResponseRoutePart.
        :param mode: The mode of this ResponseRoutePart.
        :param directions: The directions of this ResponseRoutePart.
        :param distance: The distance of this ResponseRoutePart.
        :param travel_time: The travel_time of this ResponseRoutePart.
        :param coords: The coords of this ResponseRoutePart.
        :param direction: The direction of this ResponseRoutePart.
        :param road: The road of this ResponseRoutePart.
        :param turn: The turn of this ResponseRoutePart.
        :param line: The line of this ResponseRoutePart.
        :param departure_station: The departure_station of this ResponseRoutePart.
        :param arrival_station: The arrival_station of this ResponseRoutePart.
        :param departs_at: The departs_at of this ResponseRoutePart.
        :param arrives_at: The arrives_at of this ResponseRoutePart.
        :param num_stops: The num_stops of this ResponseRoutePart.
        """
        self.openapi_types = {
            'id': str,
            'type': str,
            'mode': ResponseTransportationMode,
            'directions': str,
            'distance': int,
            'travel_time': int,
            'coords': List[Coords],
            'direction': str,
            'road': str,
            'turn': str,
            'line': str,
            'departure_station': str,
            'arrival_station': str,
            'departs_at': str,
            'arrives_at': str,
            'num_stops': int
        }

        self.attribute_map = {
            'id': 'id',
            'type': 'type',
            'mode': 'mode',
            'directions': 'directions',
            'distance': 'distance',
            'travel_time': 'travel_time',
            'coords': 'coords',
            'direction': 'direction',
            'road': 'road',
            'turn': 'turn',
            'line': 'line',
            'departure_station': 'departure_station',
            'arrival_station': 'arrival_station',
            'departs_at': 'departs_at',
            'arrives_at': 'arrives_at',
            'num_stops': 'num_stops'
        }

        self._id = id
        self._type = type
        self._mode = mode
        self._directions = directions
        self._distance = distance
        self._travel_time = travel_time
        self._coords = coords
        self._direction = direction
        self._road = road
        self._turn = turn
        self._line = line
        self._departure_station = departure_station
        self._arrival_station = arrival_station
        self._departs_at = departs_at
        self._arrives_at = arrives_at
        self._num_stops = num_stops

    @classmethod
    def from_dict(cls, dikt: dict) -> 'ResponseRoutePart':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The ResponseRoutePart of this ResponseRoutePart.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def id(self):
        """Gets the id of this ResponseRoutePart.


        :return: The id of this ResponseRoutePart.
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this ResponseRoutePart.


        :param id: The id of this ResponseRoutePart.
        :type id: str
        """
        if id is None:
            raise ValueError("Invalid value for `id`, must not be `None`")

        self._id = id

    @property
    def type(self):
        """Gets the type of this ResponseRoutePart.


        :return: The type of this ResponseRoutePart.
        :rtype: str
        """
        return self._type

    @type.setter
    def type(self, type):
        """Sets the type of this ResponseRoutePart.


        :param type: The type of this ResponseRoutePart.
        :type type: str
        """
        allowed_values = ["basic", "start_end", "road", "public_transport"]  # noqa: E501
        if type not in allowed_values:
            raise ValueError(
                "Invalid value for `type` ({0}), must be one of {1}"
                .format(type, allowed_values)
            )

        self._type = type

    @property
    def mode(self):
        """Gets the mode of this ResponseRoutePart.


        :return: The mode of this ResponseRoutePart.
        :rtype: ResponseTransportationMode
        """
        return self._mode

    @mode.setter
    def mode(self, mode):
        """Sets the mode of this ResponseRoutePart.


        :param mode: The mode of this ResponseRoutePart.
        :type mode: ResponseTransportationMode
        """
        if mode is None:
            raise ValueError("Invalid value for `mode`, must not be `None`")

        self._mode = mode

    @property
    def directions(self):
        """Gets the directions of this ResponseRoutePart.


        :return: The directions of this ResponseRoutePart.
        :rtype: str
        """
        return self._directions

    @directions.setter
    def directions(self, directions):
        """Sets the directions of this ResponseRoutePart.


        :param directions: The directions of this ResponseRoutePart.
        :type directions: str
        """
        if directions is None:
            raise ValueError("Invalid value for `directions`, must not be `None`")

        self._directions = directions

    @property
    def distance(self):
        """Gets the distance of this ResponseRoutePart.


        :return: The distance of this ResponseRoutePart.
        :rtype: int
        """
        return self._distance

    @distance.setter
    def distance(self, distance):
        """Sets the distance of this ResponseRoutePart.


        :param distance: The distance of this ResponseRoutePart.
        :type distance: int
        """
        if distance is None:
            raise ValueError("Invalid value for `distance`, must not be `None`")

        self._distance = distance

    @property
    def travel_time(self):
        """Gets the travel_time of this ResponseRoutePart.


        :return: The travel_time of this ResponseRoutePart.
        :rtype: int
        """
        return self._travel_time

    @travel_time.setter
    def travel_time(self, travel_time):
        """Sets the travel_time of this ResponseRoutePart.


        :param travel_time: The travel_time of this ResponseRoutePart.
        :type travel_time: int
        """
        if travel_time is None:
            raise ValueError("Invalid value for `travel_time`, must not be `None`")

        self._travel_time = travel_time

    @property
    def coords(self):
        """Gets the coords of this ResponseRoutePart.


        :return: The coords of this ResponseRoutePart.
        :rtype: List[Coords]
        """
        return self._coords

    @coords.setter
    def coords(self, coords):
        """Sets the coords of this ResponseRoutePart.


        :param coords: The coords of this ResponseRoutePart.
        :type coords: List[Coords]
        """
        if coords is None:
            raise ValueError("Invalid value for `coords`, must not be `None`")

        self._coords = coords

    @property
    def direction(self):
        """Gets the direction of this ResponseRoutePart.


        :return: The direction of this ResponseRoutePart.
        :rtype: str
        """
        return self._direction

    @direction.setter
    def direction(self, direction):
        """Sets the direction of this ResponseRoutePart.


        :param direction: The direction of this ResponseRoutePart.
        :type direction: str
        """

        self._direction = direction

    @property
    def road(self):
        """Gets the road of this ResponseRoutePart.


        :return: The road of this ResponseRoutePart.
        :rtype: str
        """
        return self._road

    @road.setter
    def road(self, road):
        """Sets the road of this ResponseRoutePart.


        :param road: The road of this ResponseRoutePart.
        :type road: str
        """

        self._road = road

    @property
    def turn(self):
        """Gets the turn of this ResponseRoutePart.


        :return: The turn of this ResponseRoutePart.
        :rtype: str
        """
        return self._turn

    @turn.setter
    def turn(self, turn):
        """Sets the turn of this ResponseRoutePart.


        :param turn: The turn of this ResponseRoutePart.
        :type turn: str
        """

        self._turn = turn

    @property
    def line(self):
        """Gets the line of this ResponseRoutePart.


        :return: The line of this ResponseRoutePart.
        :rtype: str
        """
        return self._line

    @line.setter
    def line(self, line):
        """Sets the line of this ResponseRoutePart.


        :param line: The line of this ResponseRoutePart.
        :type line: str
        """

        self._line = line

    @property
    def departure_station(self):
        """Gets the departure_station of this ResponseRoutePart.


        :return: The departure_station of this ResponseRoutePart.
        :rtype: str
        """
        return self._departure_station

    @departure_station.setter
    def departure_station(self, departure_station):
        """Sets the departure_station of this ResponseRoutePart.


        :param departure_station: The departure_station of this ResponseRoutePart.
        :type departure_station: str
        """

        self._departure_station = departure_station

    @property
    def arrival_station(self):
        """Gets the arrival_station of this ResponseRoutePart.


        :return: The arrival_station of this ResponseRoutePart.
        :rtype: str
        """
        return self._arrival_station

    @arrival_station.setter
    def arrival_station(self, arrival_station):
        """Sets the arrival_station of this ResponseRoutePart.


        :param arrival_station: The arrival_station of this ResponseRoutePart.
        :type arrival_station: str
        """

        self._arrival_station = arrival_station

    @property
    def departs_at(self):
        """Gets the departs_at of this ResponseRoutePart.


        :return: The departs_at of this ResponseRoutePart.
        :rtype: str
        """
        return self._departs_at

    @departs_at.setter
    def departs_at(self, departs_at):
        """Sets the departs_at of this ResponseRoutePart.


        :param departs_at: The departs_at of this ResponseRoutePart.
        :type departs_at: str
        """

        self._departs_at = departs_at

    @property
    def arrives_at(self):
        """Gets the arrives_at of this ResponseRoutePart.


        :return: The arrives_at of this ResponseRoutePart.
        :rtype: str
        """
        return self._arrives_at

    @arrives_at.setter
    def arrives_at(self, arrives_at):
        """Sets the arrives_at of this ResponseRoutePart.


        :param arrives_at: The arrives_at of this ResponseRoutePart.
        :type arrives_at: str
        """

        self._arrives_at = arrives_at

    @property
    def num_stops(self):
        """Gets the num_stops of this ResponseRoutePart.


        :return: The num_stops of this ResponseRoutePart.
        :rtype: int
        """
        return self._num_stops

    @num_stops.setter
    def num_stops(self, num_stops):
        """Sets the num_stops of this ResponseRoutePart.


        :param num_stops: The num_stops of this ResponseRoutePart.
        :type num_stops: int
        """

        self._num_stops = num_stops
