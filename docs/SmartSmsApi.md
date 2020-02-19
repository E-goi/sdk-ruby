# EgoiRubyClient::SmartSmsApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**action_send_smart_sms**](SmartSmsApi.md#action_send_smart_sms) | **POST** /campaigns/smart-sms/{campaign_hash}/actions/send | Send smart sms message
[**create_smart_sms_campaign**](SmartSmsApi.md#create_smart_sms_campaign) | **POST** /campaigns/smart-sms | Create new smart sms campaign
[**patch_smart_sms_campaign**](SmartSmsApi.md#patch_smart_sms_campaign) | **PATCH** /campaigns/smart-sms/{campaign_hash} | Update a specific smart sms campaign


# **action_send_smart_sms**
> AcceptedResponse action_send_smart_sms(campaign_hash, campaign_sms_send_request)

Send smart sms message

Deploys and sends a smart sms message

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

api_instance = EgoiRubyClient::SmartSmsApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
campaign_sms_send_request = EgoiRubyClient::CampaignSmsSendRequest.new # CampaignSmsSendRequest | Parameters for the 'send sms' action

begin
  #Send smart sms message
  result = api_instance.action_send_smart_sms(campaign_hash, campaign_sms_send_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SmartSmsApi->action_send_smart_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **campaign_sms_send_request** | [**CampaignSmsSendRequest**](CampaignSmsSendRequest.md)| Parameters for the &#39;send sms&#39; action | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_smart_sms_campaign**
> HashcodeCampaign create_smart_sms_campaign(smart_sms_campaign)

Create new smart sms campaign

Creates a new smart sms campaign.                         **DISCLAIMER:** A URL will be added at the end of your SMS

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

api_instance = EgoiRubyClient::SmartSmsApi.new
smart_sms_campaign = EgoiRubyClient::SmartSmsCampaign.new # SmartSmsCampaign | Parameters for the Smart Sms Campaign

begin
  #Create new smart sms campaign
  result = api_instance.create_smart_sms_campaign(smart_sms_campaign)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SmartSmsApi->create_smart_sms_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smart_sms_campaign** | [**SmartSmsCampaign**](SmartSmsCampaign.md)| Parameters for the Smart Sms Campaign | 

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_smart_sms_campaign**
> HashcodeCampaign patch_smart_sms_campaign(campaign_hash, smart_sms_campaign_patch_request)

Update a specific smart sms campaign

Update smart sms campaign

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

api_instance = EgoiRubyClient::SmartSmsApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
smart_sms_campaign_patch_request = EgoiRubyClient::SmartSmsCampaignPatchRequest.new # SmartSmsCampaignPatchRequest | Parameters for the Smart Sms Campaign

begin
  #Update a specific smart sms campaign
  result = api_instance.patch_smart_sms_campaign(campaign_hash, smart_sms_campaign_patch_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SmartSmsApi->patch_smart_sms_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **smart_sms_campaign_patch_request** | [**SmartSmsCampaignPatchRequest**](SmartSmsCampaignPatchRequest.md)| Parameters for the Smart Sms Campaign | 

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



