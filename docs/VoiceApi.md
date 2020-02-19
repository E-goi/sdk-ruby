# EgoiRubyClient::VoiceApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**action_send_voice**](VoiceApi.md#action_send_voice) | **POST** /campaigns/voice/{campaign_hash}/actions/send | Send voice message
[**create_voice_campaign**](VoiceApi.md#create_voice_campaign) | **POST** /campaigns/voice | Create new voice campaign
[**patch_voice_campaign**](VoiceApi.md#patch_voice_campaign) | **PATCH** /campaigns/voice/{campaign_hash} | Update a specific voice campaign


# **action_send_voice**
> AcceptedResponse action_send_voice(campaign_hash, campaign_voice_send_request)

Send voice message

Deploys and sends an voice message

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

api_instance = EgoiRubyClient::VoiceApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
campaign_voice_send_request = {"schedule_date":"2019-04-01 12:30:23","list_id":1,"segments":{"type":"none"},"notify":[0],"destination_field":"cellphone","limit_contacts":{"type":"percent","value":10},"limit_hour":{"hour_start":"01:00","hour_end":"04:00"},"limit_speed":1} # CampaignVoiceSendRequest | Parameters for the 'send voice' action

begin
  #Send voice message
  result = api_instance.action_send_voice(campaign_hash, campaign_voice_send_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling VoiceApi->action_send_voice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **campaign_voice_send_request** | [**CampaignVoiceSendRequest**](CampaignVoiceSendRequest.md)| Parameters for the &#39;send voice&#39; action | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_voice_campaign**
> CampaignHash create_voice_campaign(voice_campaign)

Create new voice campaign

Create a new voice campaign

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

api_instance = EgoiRubyClient::VoiceApi.new
voice_campaign = EgoiRubyClient::VoiceCampaign.new # VoiceCampaign | Parameters for the Voice Campaign

begin
  #Create new voice campaign
  result = api_instance.create_voice_campaign(voice_campaign)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling VoiceApi->create_voice_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voice_campaign** | [**VoiceCampaign**](VoiceCampaign.md)| Parameters for the Voice Campaign | 

### Return type

[**CampaignHash**](CampaignHash.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_voice_campaign**
> CampaignHash patch_voice_campaign(campaign_hash, voice_patch_campaign)

Update a specific voice campaign

Update a voice campaign

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

api_instance = EgoiRubyClient::VoiceApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
voice_patch_campaign = EgoiRubyClient::VoicePatchCampaign.new # VoicePatchCampaign | Parameters for the Voice Campaign

begin
  #Update a specific voice campaign
  result = api_instance.patch_voice_campaign(campaign_hash, voice_patch_campaign)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling VoiceApi->patch_voice_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **voice_patch_campaign** | [**VoicePatchCampaign**](VoicePatchCampaign.md)| Parameters for the Voice Campaign | 

### Return type

[**CampaignHash**](CampaignHash.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



