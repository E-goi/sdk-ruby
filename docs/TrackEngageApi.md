# EgoiRubyClient::TrackEngageApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_domains**](TrackEngageApi.md#get_all_domains) | **GET** /trackengage/domains | Get all domains
[**get_all_goals**](TrackEngageApi.md#get_all_goals) | **GET** /trackengage/goals | Get all goals


# **get_all_domains**
> DomainCollection get_all_domains

Get all domains

Returns all domains

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

api_instance = EgoiRubyClient::TrackEngageApi.new

begin
  #Get all domains
  result = api_instance.get_all_domains
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling TrackEngageApi->get_all_domains: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainCollection**](DomainCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_goals**
> GoalCollection get_all_goals

Get all goals

Returns all goals

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

api_instance = EgoiRubyClient::TrackEngageApi.new

begin
  #Get all goals
  result = api_instance.get_all_goals
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling TrackEngageApi->get_all_goals: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GoalCollection**](GoalCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



