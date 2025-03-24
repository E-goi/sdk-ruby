# EgoiRubyClient::SuppressionListApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_suppression_list**](SuppressionListApi.md#create_suppression_list) | **POST** /suppression-list | Add to suppression list |
| [**delete_suppression_list**](SuppressionListApi.md#delete_suppression_list) | **DELETE** /suppression-list/{suppression_id} | Delete from suppression list |
| [**get_all_suppression_list**](SuppressionListApi.md#get_all_suppression_list) | **GET** /suppression-list | Get the suppression list |


## create_suppression_list

> <AcceptedResponse> create_suppression_list(create_suppression_list_request)

Add to suppression list

Adds a collection of values to the suppression list

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

api_instance = EgoiRubyClient::SuppressionListApi.new
create_suppression_list_request = EgoiRubyClient::SuppressionTypeCellphone.new({type: 'email', value: ['351-3010404336']}) # CreateSuppressionListRequest | Parameters for the request

begin
  # Add to suppression list
  result = api_instance.create_suppression_list(create_suppression_list_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SuppressionListApi->create_suppression_list: #{e}"
end
```

#### Using the create_suppression_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> create_suppression_list_with_http_info(create_suppression_list_request)

```ruby
begin
  # Add to suppression list
  data, status_code, headers = api_instance.create_suppression_list_with_http_info(create_suppression_list_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SuppressionListApi->create_suppression_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_suppression_list_request** | [**CreateSuppressionListRequest**](CreateSuppressionListRequest.md) | Parameters for the request |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_suppression_list

> delete_suppression_list(suppression_id)

Delete from suppression list

Deletes a suppression list value given its ID if it's creation method was ´manual´

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

api_instance = EgoiRubyClient::SuppressionListApi.new
suppression_id = 56 # Integer | ID of Suppression List

begin
  # Delete from suppression list
  api_instance.delete_suppression_list(suppression_id)
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SuppressionListApi->delete_suppression_list: #{e}"
end
```

#### Using the delete_suppression_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_suppression_list_with_http_info(suppression_id)

```ruby
begin
  # Delete from suppression list
  data, status_code, headers = api_instance.delete_suppression_list_with_http_info(suppression_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SuppressionListApi->delete_suppression_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **suppression_id** | **Integer** | ID of Suppression List |  |

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_suppression_list

> <SuppressionListItems> get_all_suppression_list(opts)

Get the suppression list

Returns the suppression list

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

api_instance = EgoiRubyClient::SuppressionListApi.new
opts = {
  type: 'email', # String | Suppression type
  method: 'unsubscribe', # String | Suppression method
  value: 'value_example', # String | Reference attribute to value suppression list
  campaign_hash: 'campaign_hash_example', # String | Reference attribute to campaign id
  created_min: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Created initial date
  created_max: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Created finish
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56, # Integer | Number of items to return
  order: 'asc', # String | Type of order
  order_by: 'id' # String | Reference attribute to order the suppression list
}

begin
  # Get the suppression list
  result = api_instance.get_all_suppression_list(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SuppressionListApi->get_all_suppression_list: #{e}"
end
```

#### Using the get_all_suppression_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuppressionListItems>, Integer, Hash)> get_all_suppression_list_with_http_info(opts)

```ruby
begin
  # Get the suppression list
  data, status_code, headers = api_instance.get_all_suppression_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuppressionListItems>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SuppressionListApi->get_all_suppression_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Suppression type | [optional] |
| **method** | **String** | Suppression method | [optional] |
| **value** | **String** | Reference attribute to value suppression list | [optional] |
| **campaign_hash** | **String** | Reference attribute to campaign id | [optional] |
| **created_min** | **Time** | Created initial date | [optional] |
| **created_max** | **Time** | Created finish | [optional] |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |
| **order** | **String** | Type of order | [optional][default to &#39;desc&#39;] |
| **order_by** | **String** | Reference attribute to order the suppression list | [optional][default to &#39;id&#39;] |

### Return type

[**SuppressionListItems**](SuppressionListItems.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

