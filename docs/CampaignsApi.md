# EgoiRubyClient::CampaignsApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_campaigns**](CampaignsApi.md#delete_campaigns) | **DELETE** /campaigns/{campaign_hash} | Remove Campaign |
| [**get_all_campaigns**](CampaignsApi.md#get_all_campaigns) | **GET** /campaigns | Get all Campaigns |


## delete_campaigns

> delete_campaigns(campaign_hash)

Remove Campaign

Remove campaign information given its ID

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

api_instance = EgoiRubyClient::CampaignsApi.new
campaign_hash = 'campaign_hash_example' # String | ID of the Campaign

begin
  # Remove Campaign
  api_instance.delete_campaigns(campaign_hash)
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling CampaignsApi->delete_campaigns: #{e}"
end
```

#### Using the delete_campaigns_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_campaigns_with_http_info(campaign_hash)

```ruby
begin
  # Remove Campaign
  data, status_code, headers = api_instance.delete_campaigns_with_http_info(campaign_hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling CampaignsApi->delete_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | ID of the Campaign |  |

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_campaigns

> <CampaignsCollection> get_all_campaigns(opts)

Get all Campaigns

Returns all campaigns

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

api_instance = EgoiRubyClient::CampaignsApi.new
opts = {
  channel: 'email', # String | Channel of the campaign
  campaign_hash: 'campaign_hash_example', # String | Hash of the campaign
  list_id: 56, # Integer | ID of the list where the campaign belongs
  status: 'draft', # String | Status of the campaign
  internal_name: 'internal_name_example', # String | Internal name of the campaign
  created_by: 56, # Integer | ID of the user who created the campaign
  group_id: 56, # Integer | ID of the group where the campaign belongs
  created_min: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Created initial date
  created_max: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Created finish
  updated_min: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Updated initial
  updated_max: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Updated finish
  start_date_min: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Start date initial
  start_date_max: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Start date finish
  end_date_min: Time.parse('2013-10-20T19:20:30+01:00'), # Time | End Date initial
  end_date_max: Time.parse('2013-10-20T19:20:30+01:00'), # Time | End Date finish
  schedule_date_min: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Schedule Date initial
  schedule_date_max: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Schedule Date finish
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56, # Integer | Number of items to return
  order: 'asc', # String | Type of order
  order_by: 'list_id' # String | Reference attribute to order campaigns
}

begin
  # Get all Campaigns
  result = api_instance.get_all_campaigns(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling CampaignsApi->get_all_campaigns: #{e}"
end
```

#### Using the get_all_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignsCollection>, Integer, Hash)> get_all_campaigns_with_http_info(opts)

```ruby
begin
  # Get all Campaigns
  data, status_code, headers = api_instance.get_all_campaigns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignsCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling CampaignsApi->get_all_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel** | **String** | Channel of the campaign | [optional] |
| **campaign_hash** | **String** | Hash of the campaign | [optional] |
| **list_id** | **Integer** | ID of the list where the campaign belongs | [optional] |
| **status** | **String** | Status of the campaign | [optional] |
| **internal_name** | **String** | Internal name of the campaign | [optional] |
| **created_by** | **Integer** | ID of the user who created the campaign | [optional] |
| **group_id** | **Integer** | ID of the group where the campaign belongs | [optional] |
| **created_min** | **Time** | Created initial date | [optional] |
| **created_max** | **Time** | Created finish | [optional] |
| **updated_min** | **Time** | Updated initial | [optional] |
| **updated_max** | **Time** | Updated finish | [optional] |
| **start_date_min** | **Time** | Start date initial | [optional] |
| **start_date_max** | **Time** | Start date finish | [optional] |
| **end_date_min** | **Time** | End Date initial | [optional] |
| **end_date_max** | **Time** | End Date finish | [optional] |
| **schedule_date_min** | **Time** | Schedule Date initial | [optional] |
| **schedule_date_max** | **Time** | Schedule Date finish | [optional] |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |
| **order** | **String** | Type of order | [optional][default to &#39;desc&#39;] |
| **order_by** | **String** | Reference attribute to order campaigns | [optional][default to &#39;created&#39;] |

### Return type

[**CampaignsCollection**](CampaignsCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

