# EgoiRubyClient::CampaignGroupsApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_campaign_group**](CampaignGroupsApi.md#create_campaign_group) | **POST** /campaign-groups | Create new campaign group
[**delete_campaign_group**](CampaignGroupsApi.md#delete_campaign_group) | **DELETE** /campaign-groups/{group_id} | Remove Campaign Group
[**get_all_campaign_groups**](CampaignGroupsApi.md#get_all_campaign_groups) | **GET** /campaign-groups | Get all campaign groups
[**update_campaign_group**](CampaignGroupsApi.md#update_campaign_group) | **PUT** /campaign-groups/{group_id} | Update a specific campaign group


# **create_campaign_group**
> CampaignGroup create_campaign_group(campaign_group)

Create new campaign group

Create a new campaign group

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

api_instance = EgoiRubyClient::CampaignGroupsApi.new
campaign_group = EgoiRubyClient::CampaignGroup.new # CampaignGroup | Parameters for the Campaign Group

begin
  #Create new campaign group
  result = api_instance.create_campaign_group(campaign_group)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling CampaignGroupsApi->create_campaign_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_group** | [**CampaignGroup**](CampaignGroup.md)| Parameters for the Campaign Group | 

### Return type

[**CampaignGroup**](CampaignGroup.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_campaign_group**
> delete_campaign_group(group_id)

Remove Campaign Group

Remove campaign group information given its ID

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

api_instance = EgoiRubyClient::CampaignGroupsApi.new
group_id = 56 # Integer | ID of the Campaign Group

begin
  #Remove Campaign Group
  api_instance.delete_campaign_group(group_id)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling CampaignGroupsApi->delete_campaign_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **Integer**| ID of the Campaign Group | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_campaign_groups**
> CampaignGroupCollection get_all_campaign_groups(opts)

Get all campaign groups

Returns all campaign groups

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

api_instance = EgoiRubyClient::CampaignGroupsApi.new
opts = {
  group_id: 56, # Integer | Reference attribute to campaign group id
  name: 'name_example', # String | Reference attribute to campaign group id
  limit: 10, # Integer | Number of items to return
  offset: 56 # Integer | Element offset (starting at zero for the first element)
}

begin
  #Get all campaign groups
  result = api_instance.get_all_campaign_groups(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling CampaignGroupsApi->get_all_campaign_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **Integer**| Reference attribute to campaign group id | [optional] 
 **name** | **String**| Reference attribute to campaign group id | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 

### Return type

[**CampaignGroupCollection**](CampaignGroupCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_campaign_group**
> CampaignGroup update_campaign_group(group_id, campaign_group)

Update a specific campaign group

Update a campaign group

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

api_instance = EgoiRubyClient::CampaignGroupsApi.new
group_id = 56 # Integer | ID of the Campaign Group
campaign_group = EgoiRubyClient::CampaignGroup.new # CampaignGroup | Parameters for the Campaign Group

begin
  #Update a specific campaign group
  result = api_instance.update_campaign_group(group_id, campaign_group)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling CampaignGroupsApi->update_campaign_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **Integer**| ID of the Campaign Group | 
 **campaign_group** | [**CampaignGroup**](CampaignGroup.md)| Parameters for the Campaign Group | 

### Return type

[**CampaignGroup**](CampaignGroup.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



