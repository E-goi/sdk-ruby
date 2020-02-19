# EgoiRubyClient::AutomationsApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_automation**](AutomationsApi.md#delete_automation) | **DELETE** /automations/{automation_id} | Remove automation
[**get_all_automations**](AutomationsApi.md#get_all_automations) | **GET** /automations | Get all automations


# **delete_automation**
> delete_automation(automation_id)

Remove automation

Remove automation information given its ID

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

api_instance = EgoiRubyClient::AutomationsApi.new
automation_id = 56 # Integer | ID of the Automation

begin
  #Remove automation
  api_instance.delete_automation(automation_id)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AutomationsApi->delete_automation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **automation_id** | **Integer**| ID of the Automation | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_automations**
> AutomationCollection get_all_automations(opts)

Get all automations

Returns all automations

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

api_instance = EgoiRubyClient::AutomationsApi.new
opts = {
  automation_id: 56, # Integer | Reference attribute to automation id
  title: 'title_example', # String | Reference attribute to title
  created_by: 56, # Integer | Reference attribute to created by
  list_id: 56, # Integer | ID of the list that owns the automation
  status: 'status_example', # String | Automation status
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  order: 'desc', # String | Type of order
  order_by: 'automation_id' # String | Reference attribute to order automations
}

begin
  #Get all automations
  result = api_instance.get_all_automations(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AutomationsApi->get_all_automations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **automation_id** | **Integer**| Reference attribute to automation id | [optional] 
 **title** | **String**| Reference attribute to title | [optional] 
 **created_by** | **Integer**| Reference attribute to created by | [optional] 
 **list_id** | **Integer**| ID of the list that owns the automation | [optional] 
 **status** | **String**| Automation status | [optional] 
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **order** | **String**| Type of order | [optional] [default to &#39;desc&#39;]
 **order_by** | **String**| Reference attribute to order automations | [optional] [default to &#39;automation_id&#39;]

### Return type

[**AutomationCollection**](AutomationCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



