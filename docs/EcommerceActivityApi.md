# EgoiRubyClient::EcommerceActivityApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**import_orders_bulk**](EcommerceActivityApi.md#import_orders_bulk) | **POST** /lists/{list_id}/orders | Orders import bulk request


# **import_orders_bulk**
> AcceptedResponse import_orders_bulk(list_id, import_orders_bulk_bulk_request)

Orders import bulk request

Creates new bulk orders syncronization

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

api_instance = EgoiRubyClient::EcommerceActivityApi.new
list_id = 56 # Integer | ID of the List
import_orders_bulk_bulk_request = nil # Array<ImportOrdersBulkBulkRequest> | Parameters for the Orders

begin
  #Orders import bulk request
  result = api_instance.import_orders_bulk(list_id, import_orders_bulk_bulk_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EcommerceActivityApi->import_orders_bulk: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **import_orders_bulk_bulk_request** | [**Array&lt;ImportOrdersBulkBulkRequest&gt;**](Array.md)| Parameters for the Orders | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



