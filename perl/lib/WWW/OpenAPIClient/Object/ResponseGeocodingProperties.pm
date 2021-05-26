=begin comment

TravelTime API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.2.3
Contact: support@igeolise.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::Object::ResponseGeocodingProperties;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use WWW::OpenAPIClient::Object::ResponseMapInfoFeatures;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

TravelTime API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.2.3
Contact: support@igeolise.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new { 
    my ($class, %args) = @_; 

    my $self = bless {}, $class;

    $self->init(%args);
    
    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::OpenAPIClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'ResponseGeocodingProperties',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => '',
        format => '',
        read_only => '',
            },
    'label' => {
        datatype => 'string',
        base_name => 'label',
        description => '',
        format => '',
        read_only => '',
            },
    'score' => {
        datatype => 'double',
        base_name => 'score',
        description => '',
        format => '',
        read_only => '',
            },
    'house_number' => {
        datatype => 'string',
        base_name => 'house_number',
        description => '',
        format => '',
        read_only => '',
            },
    'street' => {
        datatype => 'string',
        base_name => 'street',
        description => '',
        format => '',
        read_only => '',
            },
    'region' => {
        datatype => 'string',
        base_name => 'region',
        description => '',
        format => '',
        read_only => '',
            },
    'region_code' => {
        datatype => 'string',
        base_name => 'region_code',
        description => '',
        format => '',
        read_only => '',
            },
    'neighbourhood' => {
        datatype => 'string',
        base_name => 'neighbourhood',
        description => '',
        format => '',
        read_only => '',
            },
    'county' => {
        datatype => 'string',
        base_name => 'county',
        description => '',
        format => '',
        read_only => '',
            },
    'macroregion' => {
        datatype => 'string',
        base_name => 'macroregion',
        description => '',
        format => '',
        read_only => '',
            },
    'city' => {
        datatype => 'string',
        base_name => 'city',
        description => '',
        format => '',
        read_only => '',
            },
    'country' => {
        datatype => 'string',
        base_name => 'country',
        description => '',
        format => '',
        read_only => '',
            },
    'country_code' => {
        datatype => 'string',
        base_name => 'country_code',
        description => '',
        format => '',
        read_only => '',
            },
    'continent' => {
        datatype => 'string',
        base_name => 'continent',
        description => '',
        format => '',
        read_only => '',
            },
    'postcode' => {
        datatype => 'string',
        base_name => 'postcode',
        description => '',
        format => '',
        read_only => '',
            },
    'features' => {
        datatype => 'ResponseMapInfoFeatures',
        base_name => 'features',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'name' => 'string',
    'label' => 'string',
    'score' => 'double',
    'house_number' => 'string',
    'street' => 'string',
    'region' => 'string',
    'region_code' => 'string',
    'neighbourhood' => 'string',
    'county' => 'string',
    'macroregion' => 'string',
    'city' => 'string',
    'country' => 'string',
    'country_code' => 'string',
    'continent' => 'string',
    'postcode' => 'string',
    'features' => 'ResponseMapInfoFeatures'
} );

__PACKAGE__->attribute_map( {
    'name' => 'name',
    'label' => 'label',
    'score' => 'score',
    'house_number' => 'house_number',
    'street' => 'street',
    'region' => 'region',
    'region_code' => 'region_code',
    'neighbourhood' => 'neighbourhood',
    'county' => 'county',
    'macroregion' => 'macroregion',
    'city' => 'city',
    'country' => 'country',
    'country_code' => 'country_code',
    'continent' => 'continent',
    'postcode' => 'postcode',
    'features' => 'features'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
