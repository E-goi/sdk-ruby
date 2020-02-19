# EgoiRubyClient::UsersApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /users/{user_id} | Remove user
[**get_all_users**](UsersApi.md#get_all_users) | **GET** /users | Get all users


# **delete_user**
> delete_user(user_id)

Remove user

Remove user information given its ID

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

api_instance = EgoiRubyClient::UsersApi.new
user_id = 56 # Integer | ID of the User

begin
  #Remove user
  api_instance.delete_user(user_id)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling UsersApi->delete_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| ID of the User | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_users**
> UserCollection get_all_users(opts)

Get all users

Returns all users

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

api_instance = EgoiRubyClient::UsersApi.new
opts = {
  username: 'username_example', # String | Reference attribute to username user
  status: 'status_example', # String | Status filter
  created_min: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Created initial date
  created_max: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Created finish
  updated_min: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Updated initial
  updated_max: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Updated finish
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  order: 'desc', # String | Type of order
  order_by: 'user_id' # String | Reference attribute to order users
}

begin
  #Get all users
  result = api_instance.get_all_users(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling UsersApi->get_all_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Reference attribute to username user | [optional] 
 **status** | **String**| Status filter | [optional] 
 **created_min** | **DateTime**| Created initial date | [optional] 
 **created_max** | **DateTime**| Created finish | [optional] 
 **updated_min** | **DateTime**| Updated initial | [optional] 
 **updated_max** | **DateTime**| Updated finish | [optional] 
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **order** | **String**| Type of order | [optional] [default to &#39;desc&#39;]
 **order_by** | **String**| Reference attribute to order users | [optional] [default to &#39;user_id&#39;]

### Return type

[**UserCollection**](UserCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



