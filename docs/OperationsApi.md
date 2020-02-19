# EgoiRubyClient::OperationsApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**action_approve_operation**](OperationsApi.md#action_approve_operation) | **POST** /operations/actions/approve | Approve operation
[**action_cancel_operation**](OperationsApi.md#action_cancel_operation) | **POST** /operations/actions/cancel | Cancel operation
[**action_pause_operation**](OperationsApi.md#action_pause_operation) | **POST** /operations/actions/pause | Pause operation
[**action_resume_operation**](OperationsApi.md#action_resume_operation) | **POST** /operations/actions/resume | Resume operation
[**get_all_operations**](OperationsApi.md#get_all_operations) | **GET** /operations | Get all queued operations


# **action_approve_operation**
> OperationActionResponse action_approve_operation(operation_action_request)

Approve operation

Approves an operation

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

api_instance = EgoiRubyClient::OperationsApi.new
operation_action_request = EgoiRubyClient::OperationActionRequest.new # OperationActionRequest | Parameters for the request

begin
  #Approve operation
  result = api_instance.action_approve_operation(operation_action_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling OperationsApi->action_approve_operation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation_action_request** | [**OperationActionRequest**](OperationActionRequest.md)| Parameters for the request | 

### Return type

[**OperationActionResponse**](OperationActionResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **action_cancel_operation**
> OperationActionResponse action_cancel_operation(operation_action_request)

Cancel operation

Cancels an operation

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

api_instance = EgoiRubyClient::OperationsApi.new
operation_action_request = EgoiRubyClient::OperationActionRequest.new # OperationActionRequest | Parameters for the request

begin
  #Cancel operation
  result = api_instance.action_cancel_operation(operation_action_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling OperationsApi->action_cancel_operation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation_action_request** | [**OperationActionRequest**](OperationActionRequest.md)| Parameters for the request | 

### Return type

[**OperationActionResponse**](OperationActionResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **action_pause_operation**
> OperationActionResponse action_pause_operation(operation_action_request)

Pause operation

Pauses an operation

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

api_instance = EgoiRubyClient::OperationsApi.new
operation_action_request = EgoiRubyClient::OperationActionRequest.new # OperationActionRequest | Parameters for the request

begin
  #Pause operation
  result = api_instance.action_pause_operation(operation_action_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling OperationsApi->action_pause_operation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation_action_request** | [**OperationActionRequest**](OperationActionRequest.md)| Parameters for the request | 

### Return type

[**OperationActionResponse**](OperationActionResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **action_resume_operation**
> OperationActionResponse action_resume_operation(operation_action_request)

Resume operation

Resumes an operation

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

api_instance = EgoiRubyClient::OperationsApi.new
operation_action_request = EgoiRubyClient::OperationActionRequest.new # OperationActionRequest | Parameters for the request

begin
  #Resume operation
  result = api_instance.action_resume_operation(operation_action_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling OperationsApi->action_resume_operation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation_action_request** | [**OperationActionRequest**](OperationActionRequest.md)| Parameters for the request | 

### Return type

[**OperationActionResponse**](OperationActionResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_all_operations**
> OperationsCollection get_all_operations(opts)

Get all queued operations

Returns all operations in queue

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

api_instance = EgoiRubyClient::OperationsApi.new
opts = {
  type: 'type_example', # String | Operation type
  status: 'status_example', # String | Operation state
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  order: 'desc', # String | Type of order
  order_by: 'order_by_example' # String | Reference attribute to order operations
}

begin
  #Get all queued operations
  result = api_instance.get_all_operations(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling OperationsApi->get_all_operations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Operation type | [optional] 
 **status** | **String**| Operation state | [optional] 
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **order** | **String**| Type of order | [optional] [default to &#39;desc&#39;]
 **order_by** | **String**| Reference attribute to order operations | [optional] 

### Return type

[**OperationsCollection**](OperationsCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



