# EgoiRubyClient::SmsApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**action_send_sms**](SmsApi.md#action_send_sms) | **POST** /campaigns/sms/{campaign_hash}/actions/send | Send sms message |
| [**create_sms_campaign**](SmsApi.md#create_sms_campaign) | **POST** /campaigns/sms | Create new sms campaign |
| [**patch_sms_campaign**](SmsApi.md#patch_sms_campaign) | **PATCH** /campaigns/sms/{campaign_hash} | Update a specific sms campaign |


## action_send_sms

> <AcceptedResponse> action_send_sms(campaign_hash, campaign_sms_send_request)

Send sms message

Deploys and sends an sms message

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

api_instance = EgoiRubyClient::SmsApi.new
campaign_hash = 'campaign_hash_example' # String | Hash of the Campaign
campaign_sms_send_request = EgoiRubyClient::CampaignSmsScheduleRequest.new({list_id: 1, destination_field: 'cellphone', segments: EgoiRubyClient::SendContactCellphone.new({type: 'contact', data: '351-300404336'})}) # CampaignSmsSendRequest | Parameters for the 'send sms' action

begin
  # Send sms message
  result = api_instance.action_send_sms(campaign_hash, campaign_sms_send_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SmsApi->action_send_sms: #{e}"
end
```

#### Using the action_send_sms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_send_sms_with_http_info(campaign_hash, campaign_sms_send_request)

```ruby
begin
  # Send sms message
  data, status_code, headers = api_instance.action_send_sms_with_http_info(campaign_hash, campaign_sms_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SmsApi->action_send_sms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | Hash of the Campaign |  |
| **campaign_sms_send_request** | [**CampaignSmsSendRequest**](CampaignSmsSendRequest.md) | Parameters for the &#39;send sms&#39; action |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sms_campaign

> <HashcodeCampaign> create_sms_campaign(sms_campaign)

Create new sms campaign

Create a new sms campaign

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

api_instance = EgoiRubyClient::SmsApi.new
sms_campaign = EgoiRubyClient::SmsCampaign.new({list_id: 1, internal_name: 'Internal Title', content: EgoiRubyClient::CampaignSmsContentTemplate.new({type: 'template', template_id: 37})}) # SmsCampaign | Parameters for the Sms Campaign

begin
  # Create new sms campaign
  result = api_instance.create_sms_campaign(sms_campaign)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SmsApi->create_sms_campaign: #{e}"
end
```

#### Using the create_sms_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HashcodeCampaign>, Integer, Hash)> create_sms_campaign_with_http_info(sms_campaign)

```ruby
begin
  # Create new sms campaign
  data, status_code, headers = api_instance.create_sms_campaign_with_http_info(sms_campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HashcodeCampaign>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SmsApi->create_sms_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms_campaign** | [**SmsCampaign**](SmsCampaign.md) | Parameters for the Sms Campaign |  |

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_sms_campaign

> <HashcodeCampaign> patch_sms_campaign(campaign_hash, sms_campaign_patch_request)

Update a specific sms campaign

Update sms campaign

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

api_instance = EgoiRubyClient::SmsApi.new
campaign_hash = 'campaign_hash_example' # String | Hash of the Campaign
sms_campaign_patch_request = EgoiRubyClient::SmsCampaignPatchRequest.new # SmsCampaignPatchRequest | Parameters for the Sms Campaign

begin
  # Update a specific sms campaign
  result = api_instance.patch_sms_campaign(campaign_hash, sms_campaign_patch_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SmsApi->patch_sms_campaign: #{e}"
end
```

#### Using the patch_sms_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HashcodeCampaign>, Integer, Hash)> patch_sms_campaign_with_http_info(campaign_hash, sms_campaign_patch_request)

```ruby
begin
  # Update a specific sms campaign
  data, status_code, headers = api_instance.patch_sms_campaign_with_http_info(campaign_hash, sms_campaign_patch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HashcodeCampaign>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SmsApi->patch_sms_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | Hash of the Campaign |  |
| **sms_campaign_patch_request** | [**SmsCampaignPatchRequest**](SmsCampaignPatchRequest.md) | Parameters for the Sms Campaign |  |

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

