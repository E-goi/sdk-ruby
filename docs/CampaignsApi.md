# EgoiRubyClient::CampaignsApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_campaigns**](CampaignsApi.md#delete_campaigns) | **DELETE** /campaigns/{campaign_hash} | Remove Campaign
[**get_all_campaigns**](CampaignsApi.md#get_all_campaigns) | **GET** /campaigns | Get all Campaigns


# **delete_campaigns**
> delete_campaigns(campaign_hash)

Remove Campaign

Remove campaign information given its ID

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

api_instance = EgoiRubyClient::CampaignsApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign

begin
  #Remove Campaign
  api_instance.delete_campaigns(campaign_hash)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling CampaignsApi->delete_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_hash** | **String**| ID of the Campaign | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_campaigns**
> CampaignsCollection get_all_campaigns(opts)

Get all Campaigns

Returns all campaigns

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

api_instance = EgoiRubyClient::CampaignsApi.new
opts = {
  channel: 'channel_example', # String | Channel of the campaign
  campaign_hash: 'campaign_hash_example', # String | Hash of the campaign
  list_id: 56, # Integer | ID of the list where the campaign belongs
  status: 'status_example', # String | Status of the campaign
  internal_name: 'internal_name_example', # String | Internal name of the campaign
  created_by: 56, # Integer | ID of the user who created the campaign
  group_id: 56, # Integer | ID of the group where the campaign belongs
  created_min: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Created initial date
  created_max: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Created finish
  updated_min: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Updated initial
  updated_max: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Updated finish
  start_date_min: Date.parse('2013-10-20'), # Date | Start date initial
  start_date_max: Date.parse('2013-10-20'), # Date | Start date finish
  end_date_min: Date.parse('2013-10-20'), # Date | End Date initial
  end_date_max: Date.parse('2013-10-20'), # Date | End Date finish
  schedule_date_min: Date.parse('2013-10-20'), # Date | Schedule Date initial
  schedule_date_max: Date.parse('2013-10-20'), # Date | Schedule Date finish
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  order: 'desc', # String | Type of order
  order_by: 'created' # String | Reference attribute to order campaigns
}

begin
  #Get all Campaigns
  result = api_instance.get_all_campaigns(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_all_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel** | **String**| Channel of the campaign | [optional] 
 **campaign_hash** | **String**| Hash of the campaign | [optional] 
 **list_id** | **Integer**| ID of the list where the campaign belongs | [optional] 
 **status** | **String**| Status of the campaign | [optional] 
 **internal_name** | **String**| Internal name of the campaign | [optional] 
 **created_by** | **Integer**| ID of the user who created the campaign | [optional] 
 **group_id** | **Integer**| ID of the group where the campaign belongs | [optional] 
 **created_min** | **DateTime**| Created initial date | [optional] 
 **created_max** | **DateTime**| Created finish | [optional] 
 **updated_min** | **DateTime**| Updated initial | [optional] 
 **updated_max** | **DateTime**| Updated finish | [optional] 
 **start_date_min** | **Date**| Start date initial | [optional] 
 **start_date_max** | **Date**| Start date finish | [optional] 
 **end_date_min** | **Date**| End Date initial | [optional] 
 **end_date_max** | **Date**| End Date finish | [optional] 
 **schedule_date_min** | **Date**| Schedule Date initial | [optional] 
 **schedule_date_max** | **Date**| Schedule Date finish | [optional] 
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **order** | **String**| Type of order | [optional] [default to &#39;desc&#39;]
 **order_by** | **String**| Reference attribute to order campaigns | [optional] [default to &#39;created&#39;]

### Return type

[**CampaignsCollection**](CampaignsCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



