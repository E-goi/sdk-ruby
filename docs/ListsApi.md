# EgoiRubyClient::ListsApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_list**](ListsApi.md#create_list) | **POST** /lists | Create new list |
| [**delete_list**](ListsApi.md#delete_list) | **DELETE** /lists/{list_id} | Remove list |
| [**get_all_lists**](ListsApi.md#get_all_lists) | **GET** /lists | Get all lists |
| [**update_list**](ListsApi.md#update_list) | **PATCH** /lists/{list_id} | Update a specific list |


## create_list

> Array create_list(post_request_list)

Create new list

Create a new list

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

api_instance = EgoiRubyClient::ListsApi.new
post_request_list = EgoiRubyClient::PostRequestList.new({internal_name: 'Internal name'}) # PostRequestList | Parameters for the List

begin
  # Create new list
  result = api_instance.create_list(post_request_list)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ListsApi->create_list: #{e}"
end
```

#### Using the create_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array, Integer, Hash)> create_list_with_http_info(post_request_list)

```ruby
begin
  # Create new list
  data, status_code, headers = api_instance.create_list_with_http_info(post_request_list)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ListsApi->create_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_request_list** | [**PostRequestList**](PostRequestList.md) | Parameters for the List |  |

### Return type

**Array**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_list

> delete_list(list_id)

Remove list

Remove list information given its ID

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

api_instance = EgoiRubyClient::ListsApi.new
list_id = 56 # Integer | ID of the List

begin
  # Remove list
  api_instance.delete_list(list_id)
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ListsApi->delete_list: #{e}"
end
```

#### Using the delete_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_list_with_http_info(list_id)

```ruby
begin
  # Remove list
  data, status_code, headers = api_instance.delete_list_with_http_info(list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ListsApi->delete_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_lists

> <ListCollection> get_all_lists(opts)

Get all lists

Returns all lists

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

api_instance = EgoiRubyClient::ListsApi.new
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56, # Integer | Number of items to return
  order: 'asc', # String | Type of order
  order_by: 'list_id', # String | Reference attribute to order lists
  internal_name: 'internal_name_example', # String | Internal name of the list
  public_name: 'public_name_example', # String | Public name of the list
  created_min: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Created initial date
  created_max: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Created finish
  updated_min: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Updated initial
  updated_max: Time.parse('2013-10-20T19:20:30+01:00') # Time | Updated finish
}

begin
  # Get all lists
  result = api_instance.get_all_lists(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ListsApi->get_all_lists: #{e}"
end
```

#### Using the get_all_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCollection>, Integer, Hash)> get_all_lists_with_http_info(opts)

```ruby
begin
  # Get all lists
  data, status_code, headers = api_instance.get_all_lists_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ListsApi->get_all_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |
| **order** | **String** | Type of order | [optional][default to &#39;desc&#39;] |
| **order_by** | **String** | Reference attribute to order lists | [optional][default to &#39;list_id&#39;] |
| **internal_name** | **String** | Internal name of the list | [optional] |
| **public_name** | **String** | Public name of the list | [optional] |
| **created_min** | **Time** | Created initial date | [optional] |
| **created_max** | **Time** | Created finish | [optional] |
| **updated_min** | **Time** | Updated initial | [optional] |
| **updated_max** | **Time** | Updated finish | [optional] |

### Return type

[**ListCollection**](ListCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_list

> Array update_list(list_id, patch_request_list)

Update a specific list

Update a list

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

api_instance = EgoiRubyClient::ListsApi.new
list_id = 56 # Integer | ID of the List
patch_request_list = EgoiRubyClient::PatchRequestList.new # PatchRequestList | Parameters for the List

begin
  # Update a specific list
  result = api_instance.update_list(list_id, patch_request_list)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ListsApi->update_list: #{e}"
end
```

#### Using the update_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array, Integer, Hash)> update_list_with_http_info(list_id, patch_request_list)

```ruby
begin
  # Update a specific list
  data, status_code, headers = api_instance.update_list_with_http_info(list_id, patch_request_list)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ListsApi->update_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **patch_request_list** | [**PatchRequestList**](PatchRequestList.md) | Parameters for the List |  |

### Return type

**Array**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

