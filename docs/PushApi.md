# EgoiRubyClient::PushApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**action_send_push**](PushApi.md#action_send_push) | **POST** /campaigns/push/{campaign_hash}/actions/send | Send push message
[**create_push_campaign**](PushApi.md#create_push_campaign) | **POST** /campaigns/push | Create new push campaign
[**patch_push_campaign**](PushApi.md#patch_push_campaign) | **PATCH** /campaigns/push/{campaign_hash} | Update a specific push campaign


# **action_send_push**
> AcceptedResponse action_send_push(campaign_hash, campaign_push_send_request)

Send push message

Deploys and sends a push message

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

api_instance = EgoiRubyClient::PushApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
campaign_push_send_request = EgoiRubyClient::CampaignPushSendRequest.new # CampaignPushSendRequest | Parameters for the 'send push' action

begin
  #Send push message
  result = api_instance.action_send_push(campaign_hash, campaign_push_send_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling PushApi->action_send_push: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **campaign_push_send_request** | [**CampaignPushSendRequest**](CampaignPushSendRequest.md)| Parameters for the &#39;send push&#39; action | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_push_campaign**
> HashcodeCampaign create_push_campaign(push_campaign_post_request)

Create new push campaign

Create a new push campaign

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

api_instance = EgoiRubyClient::PushApi.new
push_campaign_post_request = EgoiRubyClient::PushCampaignPostRequest.new # PushCampaignPostRequest | Parameters for the push campaign

begin
  #Create new push campaign
  result = api_instance.create_push_campaign(push_campaign_post_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling PushApi->create_push_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **push_campaign_post_request** | [**PushCampaignPostRequest**](PushCampaignPostRequest.md)| Parameters for the push campaign | 

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_push_campaign**
> HashcodeCampaign patch_push_campaign(campaign_hash, push_campaign_patch_request)

Update a specific push campaign

Update push campaign

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

api_instance = EgoiRubyClient::PushApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
push_campaign_patch_request = EgoiRubyClient::PushCampaignPatchRequest.new # PushCampaignPatchRequest | Parameters for the push campaign

begin
  #Update a specific push campaign
  result = api_instance.patch_push_campaign(campaign_hash, push_campaign_patch_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling PushApi->patch_push_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **push_campaign_patch_request** | [**PushCampaignPatchRequest**](PushCampaignPatchRequest.md)| Parameters for the push campaign | 

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



