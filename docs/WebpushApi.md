# EgoiRubyClient::WebpushApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**action_enable_web_push_rss**](WebpushApi.md#action_enable_web_push_rss) | **POST** /campaigns/webpush/rss/{campaign_hash}/actions/enable | Enable a rss webpush campaign
[**action_send_web_push**](WebpushApi.md#action_send_web_push) | **POST** /campaigns/web-push/{campaign_hash}/actions/send | Send webpush message
[**create_web_push_campaign**](WebpushApi.md#create_web_push_campaign) | **POST** /campaigns/web-push | Create new webpush campaign
[**create_web_push_rss_campaign**](WebpushApi.md#create_web_push_rss_campaign) | **POST** /campaigns/webpush/rss | Create new webpush rss campaign
[**get_all_web_push_sites**](WebpushApi.md#get_all_web_push_sites) | **GET** /webpush/site | Get all webpush sites
[**patch_web_push_campaign**](WebpushApi.md#patch_web_push_campaign) | **PATCH** /campaigns/web-push/{campaign_hash} | Update a specific webpush campaign


# **action_enable_web_push_rss**
> AcceptedResponse action_enable_web_push_rss(campaign_hash)

Enable a rss webpush campaign

Enable rss webpush message

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

api_instance = EgoiRubyClient::WebpushApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign

begin
  #Enable a rss webpush campaign
  result = api_instance.action_enable_web_push_rss(campaign_hash)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling WebpushApi->action_enable_web_push_rss: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **action_send_web_push**
> AcceptedResponse action_send_web_push(campaign_hash, campaign_web_push_send_request)

Send webpush message

Deploys and sends a webpush message

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

api_instance = EgoiRubyClient::WebpushApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
campaign_web_push_send_request = EgoiRubyClient::CampaignWebPushSendRequest.new # CampaignWebPushSendRequest | Parameters for the 'send web-push' action

begin
  #Send webpush message
  result = api_instance.action_send_web_push(campaign_hash, campaign_web_push_send_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling WebpushApi->action_send_web_push: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **campaign_web_push_send_request** | [**CampaignWebPushSendRequest**](CampaignWebPushSendRequest.md)| Parameters for the &#39;send web-push&#39; action | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_web_push_campaign**
> CampaignHash create_web_push_campaign(web_push_campaign)

Create new webpush campaign

Create a new webpush campaign

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

api_instance = EgoiRubyClient::WebpushApi.new
web_push_campaign = EgoiRubyClient::WebPushCampaign.new # WebPushCampaign | Parameters for the webpush campaign

begin
  #Create new webpush campaign
  result = api_instance.create_web_push_campaign(web_push_campaign)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling WebpushApi->create_web_push_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **web_push_campaign** | [**WebPushCampaign**](WebPushCampaign.md)| Parameters for the webpush campaign | 

### Return type

[**CampaignHash**](CampaignHash.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_web_push_rss_campaign**
> HashcodeCampaign create_web_push_rss_campaign(web_push_rss_campaign)

Create new webpush rss campaign

Create a new webpush rss campaign

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

api_instance = EgoiRubyClient::WebpushApi.new
web_push_rss_campaign = EgoiRubyClient::WebPushRssCampaign.new # WebPushRssCampaign | Parameters for the WebPush Campaign

begin
  #Create new webpush rss campaign
  result = api_instance.create_web_push_rss_campaign(web_push_rss_campaign)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling WebpushApi->create_web_push_rss_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **web_push_rss_campaign** | [**WebPushRssCampaign**](WebPushRssCampaign.md)| Parameters for the WebPush Campaign | 

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_all_web_push_sites**
> TagCollection1 get_all_web_push_sites(opts)

Get all webpush sites

Returns all wepush's sites

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

api_instance = EgoiRubyClient::WebpushApi.new
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  order: 'desc', # String | Type of order
  order_by: 'list_id', # String | Reference attribute to order sites
  list_id: 56 # Integer | Select sites referenced to a list
}

begin
  #Get all webpush sites
  result = api_instance.get_all_web_push_sites(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling WebpushApi->get_all_web_push_sites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **order** | **String**| Type of order | [optional] [default to &#39;desc&#39;]
 **order_by** | **String**| Reference attribute to order sites | [optional] [default to &#39;list_id&#39;]
 **list_id** | **Integer**| Select sites referenced to a list | [optional] 

### Return type

[**TagCollection1**](TagCollection1.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **patch_web_push_campaign**
> CampaignHash patch_web_push_campaign(campaign_hash, web_push_patch_campaign)

Update a specific webpush campaign

Update a webpush campaign

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

api_instance = EgoiRubyClient::WebpushApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
web_push_patch_campaign = EgoiRubyClient::WebPushPatchCampaign.new # WebPushPatchCampaign | Parameters for the Webpush Campaign

begin
  #Update a specific webpush campaign
  result = api_instance.patch_web_push_campaign(campaign_hash, web_push_patch_campaign)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling WebpushApi->patch_web_push_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **web_push_patch_campaign** | [**WebPushPatchCampaign**](WebPushPatchCampaign.md)| Parameters for the Webpush Campaign | 

### Return type

[**CampaignHash**](CampaignHash.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



