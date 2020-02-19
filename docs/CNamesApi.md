# EgoiRubyClient::CNamesApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_c_names**](CNamesApi.md#get_all_c_names) | **GET** /cnames | Get All CNames


# **get_all_c_names**
> CNamesCollection get_all_c_names

Get All CNames

Returns all cnames

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::CNamesApi.new

begin
  #Get All CNames
  result = api_instance.get_all_c_names
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling CNamesApi->get_all_c_names: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CNamesCollection**](CNamesCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



