# EgoiRubyClient::VoiceApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**action_send_voice**](VoiceApi.md#action_send_voice) | **POST** /campaigns/voice/{campaign_hash}/actions/send | Send voice message |
| [**create_voice_campaign**](VoiceApi.md#create_voice_campaign) | **POST** /campaigns/voice | Create new voice campaign |
| [**patch_voice_campaign**](VoiceApi.md#patch_voice_campaign) | **PATCH** /campaigns/voice/{campaign_hash} | Update a specific voice campaign |


## action_send_voice

> <AcceptedResponse> action_send_voice(campaign_hash, campaign_voice_send_request)

Send voice message

Deploys and sends an voice message

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

api_instance = EgoiRubyClient::VoiceApi.new
campaign_hash = 'campaign_hash_example' # String | Hash of the Campaign
campaign_voice_send_request = EgoiRubyClient::AbstractSendVoice.new({list_id: 1, destination_field: 'phone', segments: EgoiRubyClient::SendContact.new({type: 'contact', data: 'data_example'})}) # CampaignVoiceSendRequest | Parameters for the 'send voice' action

begin
  # Send voice message
  result = api_instance.action_send_voice(campaign_hash, campaign_voice_send_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling VoiceApi->action_send_voice: #{e}"
end
```

#### Using the action_send_voice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_send_voice_with_http_info(campaign_hash, campaign_voice_send_request)

```ruby
begin
  # Send voice message
  data, status_code, headers = api_instance.action_send_voice_with_http_info(campaign_hash, campaign_voice_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling VoiceApi->action_send_voice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | Hash of the Campaign |  |
| **campaign_voice_send_request** | [**CampaignVoiceSendRequest**](CampaignVoiceSendRequest.md) | Parameters for the &#39;send voice&#39; action |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_voice_campaign

> <CampaignHash> create_voice_campaign(voice_campaign)

Create new voice campaign

Create a new voice campaign

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

api_instance = EgoiRubyClient::VoiceApi.new
voice_campaign = EgoiRubyClient::VoiceCampaign.new({internal_name: 'internal_name_example', list_id: 1, content: EgoiRubyClient::ContentVoiceAudio.new, sender_id: 1}) # VoiceCampaign | Parameters for the Voice Campaign

begin
  # Create new voice campaign
  result = api_instance.create_voice_campaign(voice_campaign)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling VoiceApi->create_voice_campaign: #{e}"
end
```

#### Using the create_voice_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignHash>, Integer, Hash)> create_voice_campaign_with_http_info(voice_campaign)

```ruby
begin
  # Create new voice campaign
  data, status_code, headers = api_instance.create_voice_campaign_with_http_info(voice_campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignHash>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling VoiceApi->create_voice_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voice_campaign** | [**VoiceCampaign**](VoiceCampaign.md) | Parameters for the Voice Campaign |  |

### Return type

[**CampaignHash**](CampaignHash.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_voice_campaign

> <PatchVoiceCampaign200Response> patch_voice_campaign(campaign_hash, voice_patch_campaign)

Update a specific voice campaign

Update a voice campaign

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

api_instance = EgoiRubyClient::VoiceApi.new
campaign_hash = 'campaign_hash_example' # String | Hash of the Campaign
voice_patch_campaign = EgoiRubyClient::VoicePatchCampaign.new # VoicePatchCampaign | Parameters for the Voice Campaign

begin
  # Update a specific voice campaign
  result = api_instance.patch_voice_campaign(campaign_hash, voice_patch_campaign)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling VoiceApi->patch_voice_campaign: #{e}"
end
```

#### Using the patch_voice_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchVoiceCampaign200Response>, Integer, Hash)> patch_voice_campaign_with_http_info(campaign_hash, voice_patch_campaign)

```ruby
begin
  # Update a specific voice campaign
  data, status_code, headers = api_instance.patch_voice_campaign_with_http_info(campaign_hash, voice_patch_campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchVoiceCampaign200Response>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling VoiceApi->patch_voice_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | Hash of the Campaign |  |
| **voice_patch_campaign** | [**VoicePatchCampaign**](VoicePatchCampaign.md) | Parameters for the Voice Campaign |  |

### Return type

[**PatchVoiceCampaign200Response**](PatchVoiceCampaign200Response.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

