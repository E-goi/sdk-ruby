# EgoiRubyClient::WebpushApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**action_enable_web_push_rss**](WebpushApi.md#action_enable_web_push_rss) | **POST** /campaigns/webpush/rss/{campaign_hash}/actions/enable | Enable a rss webpush campaign |
| [**action_send_web_push**](WebpushApi.md#action_send_web_push) | **POST** /campaigns/web-push/{campaign_hash}/actions/send | Send webpush message |
| [**create_web_push_campaign**](WebpushApi.md#create_web_push_campaign) | **POST** /campaigns/web-push | Create new webpush campaign |
| [**create_web_push_rss_campaign**](WebpushApi.md#create_web_push_rss_campaign) | **POST** /campaigns/webpush/rss | Create new webpush rss campaign |
| [**create_webpush_site**](WebpushApi.md#create_webpush_site) | **POST** /webpush/sites | Creates a webpush site |
| [**get_all_web_push_sites**](WebpushApi.md#get_all_web_push_sites) | **GET** /webpush/sites | Get all webpush sites |
| [**patch_web_push_campaign**](WebpushApi.md#patch_web_push_campaign) | **PATCH** /campaigns/web-push/{campaign_hash} | Update a specific webpush campaign |


## action_enable_web_push_rss

> <AcceptedResponse> action_enable_web_push_rss(campaign_hash)

Enable a rss webpush campaign

Enable rss webpush message

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

api_instance = EgoiRubyClient::WebpushApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign

begin
  # Enable a rss webpush campaign
  result = api_instance.action_enable_web_push_rss(campaign_hash)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->action_enable_web_push_rss: #{e}"
end
```

#### Using the action_enable_web_push_rss_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_enable_web_push_rss_with_http_info(campaign_hash)

```ruby
begin
  # Enable a rss webpush campaign
  data, status_code, headers = api_instance.action_enable_web_push_rss_with_http_info(campaign_hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->action_enable_web_push_rss_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | ID of the Campaign |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## action_send_web_push

> <AcceptedResponse> action_send_web_push(campaign_hash, campaign_web_push_send_request)

Send webpush message

Deploys and sends a webpush message

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

api_instance = EgoiRubyClient::WebpushApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
campaign_web_push_send_request = EgoiRubyClient::CampaignWebPushScheduleRequest.new({site_id: 1, segments: EgoiRubyClient::SendNone.new({type: 'none'})}) # CampaignWebPushSendRequest | Parameters for the 'send web-push' action

begin
  # Send webpush message
  result = api_instance.action_send_web_push(campaign_hash, campaign_web_push_send_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->action_send_web_push: #{e}"
end
```

#### Using the action_send_web_push_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_send_web_push_with_http_info(campaign_hash, campaign_web_push_send_request)

```ruby
begin
  # Send webpush message
  data, status_code, headers = api_instance.action_send_web_push_with_http_info(campaign_hash, campaign_web_push_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->action_send_web_push_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | ID of the Campaign |  |
| **campaign_web_push_send_request** | [**CampaignWebPushSendRequest**](CampaignWebPushSendRequest.md) | Parameters for the &#39;send web-push&#39; action |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_web_push_campaign

> <PatchVoiceCampaign200Response> create_web_push_campaign(web_push_campaign)

Create new webpush campaign

Create a new webpush campaign

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

api_instance = EgoiRubyClient::WebpushApi.new
web_push_campaign = EgoiRubyClient::WebPushCampaign.new({site_id: 1, internal_name: 'internal_name_example', content: EgoiRubyClient::MessageWebPushPost.new({title: 'title_example', message: 'Campaign message', link: 'link_example'})}) # WebPushCampaign | Parameters for the webpush campaign

begin
  # Create new webpush campaign
  result = api_instance.create_web_push_campaign(web_push_campaign)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->create_web_push_campaign: #{e}"
end
```

#### Using the create_web_push_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchVoiceCampaign200Response>, Integer, Hash)> create_web_push_campaign_with_http_info(web_push_campaign)

```ruby
begin
  # Create new webpush campaign
  data, status_code, headers = api_instance.create_web_push_campaign_with_http_info(web_push_campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchVoiceCampaign200Response>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->create_web_push_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_push_campaign** | [**WebPushCampaign**](WebPushCampaign.md) | Parameters for the webpush campaign |  |

### Return type

[**PatchVoiceCampaign200Response**](PatchVoiceCampaign200Response.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_web_push_rss_campaign

> <HashcodeCampaign> create_web_push_rss_campaign(web_push_rss_campaign)

Create new webpush rss campaign

Create a new webpush rss campaign

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

api_instance = EgoiRubyClient::WebpushApi.new
web_push_rss_campaign = EgoiRubyClient::WebPushRssCampaign.new({site_id: 1, internal_name: 'internal_name_example', content: EgoiRubyClient::MessageWebPushRss.new}) # WebPushRssCampaign | Parameters for the WebPush Campaign

begin
  # Create new webpush rss campaign
  result = api_instance.create_web_push_rss_campaign(web_push_rss_campaign)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->create_web_push_rss_campaign: #{e}"
end
```

#### Using the create_web_push_rss_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HashcodeCampaign>, Integer, Hash)> create_web_push_rss_campaign_with_http_info(web_push_rss_campaign)

```ruby
begin
  # Create new webpush rss campaign
  data, status_code, headers = api_instance.create_web_push_rss_campaign_with_http_info(web_push_rss_campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HashcodeCampaign>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->create_web_push_rss_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_push_rss_campaign** | [**WebPushRssCampaign**](WebPushRssCampaign.md) | Parameters for the WebPush Campaign |  |

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_webpush_site

> <WebPushSite> create_webpush_site(web_push_site)

Creates a webpush site

Create a new webpush site

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

api_instance = EgoiRubyClient::WebpushApi.new
web_push_site = EgoiRubyClient::WebPushSite.new({site: 'site_example', list_id: 1, name: 'name_example'}) # WebPushSite | Parameters for the webpush site

begin
  # Creates a webpush site
  result = api_instance.create_webpush_site(web_push_site)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->create_webpush_site: #{e}"
end
```

#### Using the create_webpush_site_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebPushSite>, Integer, Hash)> create_webpush_site_with_http_info(web_push_site)

```ruby
begin
  # Creates a webpush site
  data, status_code, headers = api_instance.create_webpush_site_with_http_info(web_push_site)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebPushSite>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->create_webpush_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_push_site** | [**WebPushSite**](WebPushSite.md) | Parameters for the webpush site |  |

### Return type

[**WebPushSite**](WebPushSite.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_web_push_sites

> <TagCollection1> get_all_web_push_sites(opts)

Get all webpush sites

Returns all wepush's sites

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

api_instance = EgoiRubyClient::WebpushApi.new
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56, # Integer | Number of items to return
  order: 'asc', # String | Type of order
  order_by: 'list_id', # String | Reference attribute to order sites
  list_id: 56 # Integer | Select sites referenced to a list
}

begin
  # Get all webpush sites
  result = api_instance.get_all_web_push_sites(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->get_all_web_push_sites: #{e}"
end
```

#### Using the get_all_web_push_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagCollection1>, Integer, Hash)> get_all_web_push_sites_with_http_info(opts)

```ruby
begin
  # Get all webpush sites
  data, status_code, headers = api_instance.get_all_web_push_sites_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagCollection1>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->get_all_web_push_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |
| **order** | **String** | Type of order | [optional][default to &#39;desc&#39;] |
| **order_by** | **String** | Reference attribute to order sites | [optional][default to &#39;list_id&#39;] |
| **list_id** | **Integer** | Select sites referenced to a list | [optional] |

### Return type

[**TagCollection1**](TagCollection1.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_web_push_campaign

> <PatchVoiceCampaign200Response> patch_web_push_campaign(campaign_hash, web_push_patch_campaign)

Update a specific webpush campaign

Update a webpush campaign

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

api_instance = EgoiRubyClient::WebpushApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
web_push_patch_campaign = EgoiRubyClient::WebPushPatchCampaign.new # WebPushPatchCampaign | Parameters for the Webpush Campaign

begin
  # Update a specific webpush campaign
  result = api_instance.patch_web_push_campaign(campaign_hash, web_push_patch_campaign)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->patch_web_push_campaign: #{e}"
end
```

#### Using the patch_web_push_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchVoiceCampaign200Response>, Integer, Hash)> patch_web_push_campaign_with_http_info(campaign_hash, web_push_patch_campaign)

```ruby
begin
  # Update a specific webpush campaign
  data, status_code, headers = api_instance.patch_web_push_campaign_with_http_info(campaign_hash, web_push_patch_campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchVoiceCampaign200Response>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebpushApi->patch_web_push_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | ID of the Campaign |  |
| **web_push_patch_campaign** | [**WebPushPatchCampaign**](WebPushPatchCampaign.md) | Parameters for the Webpush Campaign |  |

### Return type

[**PatchVoiceCampaign200Response**](PatchVoiceCampaign200Response.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

