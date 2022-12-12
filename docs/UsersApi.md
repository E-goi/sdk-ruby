# EgoiRubyClient::UsersApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_user**](UsersApi.md#delete_user) | **DELETE** /users/{user_id} | Remove user |
| [**get_all_users**](UsersApi.md#get_all_users) | **GET** /users | Get all users |


## delete_user

> delete_user(user_id)

Remove user

Remove user information given its ID

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

api_instance = EgoiRubyClient::UsersApi.new
user_id = 56 # Integer | ID of the User

begin
  # Remove user
  api_instance.delete_user(user_id)
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(user_id)

```ruby
begin
  # Remove user
  data, status_code, headers = api_instance.delete_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | ID of the User |  |

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_users

> <UserCollection> get_all_users(opts)

Get all users

Returns all users

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

api_instance = EgoiRubyClient::UsersApi.new
opts = {
  username: 'username_example', # String | Reference attribute to username user
  status: 'active', # String | Status filter
  created_min: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Created initial date
  created_max: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Created finish
  updated_min: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Updated initial
  updated_max: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Updated finish
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56, # Integer | Number of items to return
  order: 'asc', # String | Type of order
  order_by: 'user_id' # String | Reference attribute to order users
}

begin
  # Get all users
  result = api_instance.get_all_users(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling UsersApi->get_all_users: #{e}"
end
```

#### Using the get_all_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserCollection>, Integer, Hash)> get_all_users_with_http_info(opts)

```ruby
begin
  # Get all users
  data, status_code, headers = api_instance.get_all_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling UsersApi->get_all_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | Reference attribute to username user | [optional] |
| **status** | **String** | Status filter | [optional] |
| **created_min** | **Time** | Created initial date | [optional] |
| **created_max** | **Time** | Created finish | [optional] |
| **updated_min** | **Time** | Updated initial | [optional] |
| **updated_max** | **Time** | Updated finish | [optional] |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |
| **order** | **String** | Type of order | [optional][default to &#39;desc&#39;] |
| **order_by** | **String** | Reference attribute to order users | [optional][default to &#39;user_id&#39;] |

### Return type

[**UserCollection**](UserCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

