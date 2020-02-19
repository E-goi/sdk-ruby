# EgoiRubyClient::ReportsApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_sms_report**](ReportsApi.md#get_sms_report) | **GET** /reports/sms/{campaign_hash} | Get sms report
[**get_voice_report**](ReportsApi.md#get_voice_report) | **GET** /reports/voice/{campaign_hash} | Get voice report
[**get_web_push_report**](ReportsApi.md#get_web_push_report) | **GET** /reports/web-push/{campaign_hash} | Get webpush report


# **get_sms_report**
> PhoneReport get_sms_report(campaign_hash, opts)

Get sms report

Returns sms report given the campaign hash

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

api_instance = EgoiRubyClient::ReportsApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
opts = {
  networks: true # BOOLEAN | True to show network stats
}

begin
  #Get sms report
  result = api_instance.get_sms_report(campaign_hash, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ReportsApi->get_sms_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **networks** | **BOOLEAN**| True to show network stats | [optional] [default to true]

### Return type

[**PhoneReport**](PhoneReport.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_voice_report**
> PhoneReport get_voice_report(campaign_hash, opts)

Get voice report

Returns voice report given the campaign hash

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

api_instance = EgoiRubyClient::ReportsApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
opts = {
  networks: true # BOOLEAN | True to show network stats
}

begin
  #Get voice report
  result = api_instance.get_voice_report(campaign_hash, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ReportsApi->get_voice_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **networks** | **BOOLEAN**| True to show network stats | [optional] [default to true]

### Return type

[**PhoneReport**](PhoneReport.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_web_push_report**
> WebPushReport get_web_push_report(campaign_hash, opts)

Get webpush report

Returns webpush report given the campaign hash

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

api_instance = EgoiRubyClient::ReportsApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
opts = {
  devices: true, # BOOLEAN | True to show device stats
  operating_systems: true, # BOOLEAN | True to show operating systems stats
  browsers: true, # BOOLEAN | True to show browser stats
  url: true # BOOLEAN | True to show url stats
}

begin
  #Get webpush report
  result = api_instance.get_web_push_report(campaign_hash, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ReportsApi->get_web_push_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **devices** | **BOOLEAN**| True to show device stats | [optional] [default to true]
 **operating_systems** | **BOOLEAN**| True to show operating systems stats | [optional] [default to true]
 **browsers** | **BOOLEAN**| True to show browser stats | [optional] [default to true]
 **url** | **BOOLEAN**| True to show url stats | [optional] [default to true]

### Return type

[**WebPushReport**](WebPushReport.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



