# OpenapiClient::ResponseError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**http_status** | **Integer** |  | [optional] 
**error_code** | **Integer** |  | [optional] 
**description** | **String** |  | [optional] 
**documentation_link** | **String** |  | [optional] 
**additional_info** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ResponseError.new(http_status: null,
                                 error_code: null,
                                 description: null,
                                 documentation_link: null,
                                 additional_info: null)
```


