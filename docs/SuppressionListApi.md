# EgoiRubyClient::SuppressionListApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_suppression_list**](SuppressionListApi.md#get_all_suppression_list) | **GET** /suppression-list | Get the suppression list


# **get_all_suppression_list**
> SuppressionListItems get_all_suppression_list(opts)

Get the suppression list

Returns the suppression list

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

api_instance = EgoiRubyClient::SuppressionListApi.new
opts = {
  type: 'type_example', # String | Suppression type
  method: 'method_example', # String | Suppression method
  value: 'value_example', # String | Reference attribute to value suppression list
  campaign_hash: 'campaign_hash_example', # String | Reference attribute to campaign id
  created_min: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Created initial date
  created_max: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Created finish
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  order: 'desc', # String | Type of order
  order_by: 'id' # String | Reference attribute to order the suppression list
}

begin
  #Get the suppression list
  result = api_instance.get_all_suppression_list(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SuppressionListApi->get_all_suppression_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Suppression type | [optional] 
 **method** | **String**| Suppression method | [optional] 
 **value** | **String**| Reference attribute to value suppression list | [optional] 
 **campaign_hash** | **String**| Reference attribute to campaign id | [optional] 
 **created_min** | **DateTime**| Created initial date | [optional] 
 **created_max** | **DateTime**| Created finish | [optional] 
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **order** | **String**| Type of order | [optional] [default to &#39;desc&#39;]
 **order_by** | **String**| Reference attribute to order the suppression list | [optional] [default to &#39;id&#39;]

### Return type

[**SuppressionListItems**](SuppressionListItems.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



