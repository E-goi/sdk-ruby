# EgoiRubyClient::EmailApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**action_enable_email_rss**](EmailApi.md#action_enable_email_rss) | **POST** /campaigns/email/rss/{campaign_hash}/actions/enable | Enables a rss email campaign
[**action_send_email**](EmailApi.md#action_send_email) | **POST** /campaigns/email/{campaign_hash}/actions/send | Send email message
[**create_email_campaign**](EmailApi.md#create_email_campaign) | **POST** /campaigns/email | Create new email campaign
[**create_email_rss_campaign**](EmailApi.md#create_email_rss_campaign) | **POST** /campaigns/email/rss | Create new email rss campaign
[**patch_email_campaign**](EmailApi.md#patch_email_campaign) | **PATCH** /campaigns/email/{campaign_hash} | Update a specific email campaign


# **action_enable_email_rss**
> AcceptedResponse action_enable_email_rss(campaign_hash)

Enables a rss email campaign

Enables a rss email message

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

api_instance = EgoiRubyClient::EmailApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign

begin
  #Enables a rss email campaign
  result = api_instance.action_enable_email_rss(campaign_hash)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EmailApi->action_enable_email_rss: #{e}"
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



# **action_send_email**
> AcceptedResponse action_send_email(campaign_hash, campaign_email_send_request)

Send email message

Deploys and sends an email message

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

api_instance = EgoiRubyClient::EmailApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
campaign_email_send_request = EgoiRubyClient::CampaignEmailSendRequest.new # CampaignEmailSendRequest | Parameters for the 'send email' action

begin
  #Send email message
  result = api_instance.action_send_email(campaign_hash, campaign_email_send_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EmailApi->action_send_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **campaign_email_send_request** | [**CampaignEmailSendRequest**](CampaignEmailSendRequest.md)| Parameters for the &#39;send email&#39; action | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_email_campaign**
> HashcodeCampaign create_email_campaign(email_campaign_create)

Create new email campaign

Create a new email campaign

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

api_instance = EgoiRubyClient::EmailApi.new
email_campaign_create = EgoiRubyClient::EmailCampaignCreate.new # EmailCampaignCreate | Parameters for the Email Campaign

begin
  #Create new email campaign
  result = api_instance.create_email_campaign(email_campaign_create)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EmailApi->create_email_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign_create** | [**EmailCampaignCreate**](EmailCampaignCreate.md)| Parameters for the Email Campaign | 

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_email_rss_campaign**
> HashcodeCampaign create_email_rss_campaign(email_rss_campaign_create)

Create new email rss campaign

Create a new email rss campaign

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

api_instance = EgoiRubyClient::EmailApi.new
email_rss_campaign_create = EgoiRubyClient::EmailRssCampaignCreate.new # EmailRssCampaignCreate | Parameters for the Email Campaign

begin
  #Create new email rss campaign
  result = api_instance.create_email_rss_campaign(email_rss_campaign_create)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EmailApi->create_email_rss_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_rss_campaign_create** | [**EmailRssCampaignCreate**](EmailRssCampaignCreate.md)| Parameters for the Email Campaign | 

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_email_campaign**
> HashcodeCampaign patch_email_campaign(campaign_hash, email_campaign_patch)

Update a specific email campaign

Update email campaign

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

api_instance = EgoiRubyClient::EmailApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign
email_campaign_patch = EgoiRubyClient::EmailCampaignPatch.new # EmailCampaignPatch | Parameters for the Email Campaign

begin
  #Update a specific email campaign
  result = api_instance.patch_email_campaign(campaign_hash, email_campaign_patch)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EmailApi->patch_email_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 
 **email_campaign_patch** | [**EmailCampaignPatch**](EmailCampaignPatch.md)| Parameters for the Email Campaign | 

### Return type

[**HashcodeCampaign**](HashcodeCampaign.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



