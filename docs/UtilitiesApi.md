# EgoiRubyClient::UtilitiesApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_countries**](UtilitiesApi.md#get_all_countries) | **GET** /utilities/countries | Get all countries |


## get_all_countries

> <CountryCollection> get_all_countries(opts)

Get all countries

Returns all countries

### Examples

```ruby
require 'time'
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::UtilitiesApi.new
opts = {
  phone: 'phone_example' # String | Phone number without country code to get all countries which can use that phone number
}

begin
  # Get all countries
  result = api_instance.get_all_countries(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling UtilitiesApi->get_all_countries: #{e}"
end
```

#### Using the get_all_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountryCollection>, Integer, Hash)> get_all_countries_with_http_info(opts)

```ruby
begin
  # Get all countries
  data, status_code, headers = api_instance.get_all_countries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountryCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling UtilitiesApi->get_all_countries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | Phone number without country code to get all countries which can use that phone number | [optional] |

### Return type

[**CountryCollection**](CountryCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

