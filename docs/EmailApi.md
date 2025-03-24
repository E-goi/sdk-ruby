# EgoiRubyClient::EmailApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**action_enable_email_rss**](EmailApi.md#action_enable_email_rss) | **POST** /campaigns/email/rss/{campaign_hash}/actions/enable | Enables a rss email campaign |
| [**action_send_email**](EmailApi.md#action_send_email) | **POST** /campaigns/email/{campaign_hash}/actions/send | Send email message |
| [**create_email_campaign**](EmailApi.md#create_email_campaign) | **POST** /campaigns/email | Create new email campaign |
| [**create_email_rss_campaign**](EmailApi.md#create_email_rss_campaign) | **POST** /campaigns/email/rss | Create new email rss campaign |
| [**patch_email_campaign**](EmailApi.md#patch_email_campaign) | **PATCH** /campaigns/email/{campaign_hash} | Update a specific email campaign |


## action_enable_email_rss

> <AcceptedResponse> action_enable_email_rss(campaign_hash)

Enables a rss email campaign

Enables a rss email message

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

api_instance = EgoiRubyClient::EmailApi.new
campaign_hash = 'campaign_hash_example' # String | Hash of the Campaign

begin
  # Enables a rss email campaign
  result = api_instance.action_enable_email_rss(campaign_hash)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EmailApi->action_enable_email_rss: #{e}"
end
```

#### Using the action_enable_email_rss_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_enable_email_rss_with_http_info(campaign_hash)

```ruby
begin
  # Enables a rss email campaign
  data, status_code, headers = api_instance.action_enable_email_rss_with_http_info(campaign_hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EmailApi->action_enable_email_rss_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | Hash of the Campaign |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## action_send_email

> <AcceptedResponse> action_send_email(campaign_hash, campaign_email_send_request)

Send email message

Deploys and sends an email message

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

api_instance = EgoiRubyClient::EmailApi.new
campaign_hash = 'campaign_hash_example' # String | Hash of the Campaign
campaign_email_send_request = EgoiRubyClient::CampaignEmailScheduleRequest.new({list_id: 1, segments: EgoiRubyClient::SendEmailContact.new({type: 'contact', data: 'data_example'})}) # CampaignEmailSendRequest | Parameters for the 'send email' action

begin
  # Send email message
  result = api_instance.action_send_email(campaign_hash, campaign_email_send_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EmailApi->action_send_email: #{e}"
end
```

#### Using the action_send_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_send_email_with_http_info(campaign_hash, campaign_email_send_request)

```ruby
begin
  # Send email message
  data, status_code, headers = api_instance.action_send_email_with_http_info(campaign_hash, campaign_email_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EmailApi->action_send_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | Hash of the Campaign |  |
| **campaign_email_send_request** | [**CampaignEmailSendRequest**](CampaignEmailSendRequest.md) | Parameters for the &#39;send email&#39; action |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_email_campaign

> <HashcodeCampaign> create_email_campaign(email_campaign_create)

Create new email campaign

Create a new email campaign

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

api_instance = EgoiRubyClient::EmailApi.new
email_campaign_create = EgoiRubyClient::EmailCampaignCreate.new({list_id: 1, internal_name: 'Campaign internal name', content: EgoiRubyClient::CampaignEmailContentFile.new({type: 'file', file: 'file_example'}), sender_id: 1}) # EmailCampaignCreate | Parameters for the Email Campaign

begin
  # Create new email campaign
  result = api_instance.create_email_campaign(email_campaign_create)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EmailApi->create_email_campaign: #{e}"
end
```

#### Using the create_email_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HashcodeCampaign>, Integer, Hash)> create_email_campaign_with_http_info(email_campaign_create)

```ruby
begin
  # Create new email campaign
  data, status_code, headers = api_instance.create_email_campaign_with_http_info(email_campaign_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HashcodeCampaign>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EmailApi->create_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_campaign_create** | [**EmailCampaignCreate**](EmailCampaignCreate.md) | Parameters for the Email Campaign |  |

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_email_rss_campaign

> <HashcodeCampaign> create_email_rss_campaign(email_rss_campaign_create)

Create new email rss campaign

Create a new email rss campaign

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

api_instance = EgoiRubyClient::EmailApi.new
email_rss_campaign_create = EgoiRubyClient::EmailRssCampaignCreate.new({list_id: 1, internal_name: 'Campaign internal name', content: EgoiRubyClient::CampaignEmailRssContentHtml.new({type: 'html', body: '<body>{{FEEDBLOCK:https:\/\/example.com\/?feed=egoi_rssfeed_gcoUFuaaBeAs4tfSY}}{{FEEDITEMS:count=1}}<div class='builder-actions-control selected'><table border='0' cellpadding='0' cellspacing='0' class='email-container' style='border-spacing: 0px; border-collapse: collapse; table-layout: fixed; margin: auto;' width='600' align='center' data-compile='true'><tbody><tr><td dir='ltr' valign='top' width='100%' bgcolor='#ffffff' style='background-color: rgb(255, 255, 255); padding: 20px;'><table border='0' cellpadding='0' cellspacing='0' class='row' width='100%' style='border-spacing: 0px; border-collapse: collapse; table-layout: fixed; margin: 0px auto;'><tbody><tr><th class='stack-column-center columns first' valign='top' width='33.333333333333336%' style='font-weight: 400; padding-right: 8px;'><table border='0' cellpadding='0' cellspacing='0' width='100%' style='border-spacing: 0px; border-collapse: collapse; table-layout: fixed; margin: 0px auto;'><tbody><tr><td dir='ltr' style='padding: 0px;' valign='top'><table border='0' cellpadding='0' cellspacing='0' class='builder-image-control image-6cbc6cd4b0f6c869b1d651e4288caa1c' data-control='image' width='100%' data-compile='true' style='border-spacing: 0px; border-collapse: collapse; table-layout: fixed; margin: 0px auto;'><tbody><tr><td valign='top' style=''><table border='0' cellpadding='0' cellspacing='0' align='center' width='' style='border-spacing: 0px; border-collapse: collapse; table-layout: fixed; margin: 0px auto;'><tbody><tr><td style='border: 0px;'><a href='{{FEEDITEM:LINK}}'><img align='center' border='0' class='float-center fluid' style='display: block; margin: 0px auto; height: auto; max-width: 179px; border: 0px !important; outline: none !important; text-decoration: none !important;' src='{{FEEDITEM:IMAGE}}' alt='beanie-768x768' height='179' width='179'><\/a><\/td><\/tr><\/tbody><\/table><\/td><\/tr><\/tbody><\/table><\/td><\/tr><\/tbody><\/table><\/th><th class='stack-column-center columns last' valign='top' width='66.66666666666667%' style='font-weight: 400; padding-left: 8px;'><table border='0' cellpadding='0' cellspacing='0' width='100%' style='border-spacing: 0px; border-collapse: collapse; table-layout: fixed; margin: 0px auto;'><tbody><tr><td dir='ltr' style='padding: 0px;' valign='top'><table data-control='title' width='100%' class='title-641c2ce04833885b026fd1e0f46c2973' id='641c2ce0-4833-885b-026f-d1e0f46c2973' data-compile='true' style='border-spacing: 0px; border-collapse: collapse; table-layout: fixed; margin: 0px auto;'><tbody><tr><td style=''><p style='font-family: Arial; font-size: 24px; color: rgb(0, 0, 0); line-height: 150%; text-align: left; padding-top: 0px; padding-bottom: 0px; margin: 0px;'>{{FEEDITEM:TITLE}}<\/p><\/td><\/tr><\/tbody><\/table><table data-control='paragraph' width='100%' class='paragraph-12fc4dd322cf0a3cd43032e85db67593' id='12fc4dd3-22cf-0a3c-d430-32e85db67593' data-compile='true' style='border-spacing: 0px; border-collapse: collapse; table-layout: fixed; margin: 0px auto;'><tbody><tr><td class='undefined' style=''><p style='font-family: Arial; font-size: 16px; color: rgb(109, 109, 109); line-height: 200%; text-align: left; padding-top: 0px; padding-bottom: 0px; margin: 0px; overflow: hidden;'>{{FEEDITEM:DESCRIPTION}}<\/p><\/td><\/tr><\/tbody><\/table><\/td><\/tr><\/tbody><\/table><\/th><\/tr><\/tbody><\/table><\/td><\/tr><\/tbody><\/table><\/div>{{ENDFEEDITEMS}}{{ENDFEEDBLOCK}}<\/body>'}), sender_id: 1}) # EmailRssCampaignCreate | Parameters for the Email Campaign

begin
  # Create new email rss campaign
  result = api_instance.create_email_rss_campaign(email_rss_campaign_create)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EmailApi->create_email_rss_campaign: #{e}"
end
```

#### Using the create_email_rss_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HashcodeCampaign>, Integer, Hash)> create_email_rss_campaign_with_http_info(email_rss_campaign_create)

```ruby
begin
  # Create new email rss campaign
  data, status_code, headers = api_instance.create_email_rss_campaign_with_http_info(email_rss_campaign_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HashcodeCampaign>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EmailApi->create_email_rss_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_rss_campaign_create** | [**EmailRssCampaignCreate**](EmailRssCampaignCreate.md) | Parameters for the Email Campaign |  |

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_email_campaign

> <HashcodeCampaign> patch_email_campaign(campaign_hash, email_campaign_patch)

Update a specific email campaign

Update email campaign

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

api_instance = EgoiRubyClient::EmailApi.new
campaign_hash = 'campaign_hash_example' # String | Hash of the Campaign
email_campaign_patch = EgoiRubyClient::EmailCampaignPatch.new # EmailCampaignPatch | Parameters for the Email Campaign

begin
  # Update a specific email campaign
  result = api_instance.patch_email_campaign(campaign_hash, email_campaign_patch)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EmailApi->patch_email_campaign: #{e}"
end
```

#### Using the patch_email_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HashcodeCampaign>, Integer, Hash)> patch_email_campaign_with_http_info(campaign_hash, email_campaign_patch)

```ruby
begin
  # Update a specific email campaign
  data, status_code, headers = api_instance.patch_email_campaign_with_http_info(campaign_hash, email_campaign_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HashcodeCampaign>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EmailApi->patch_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | Hash of the Campaign |  |
| **email_campaign_patch** | [**EmailCampaignPatch**](EmailCampaignPatch.md) | Parameters for the Email Campaign |  |

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

