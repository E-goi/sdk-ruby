# EgoiRubyClient::PingApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ping**](PingApi.md#ping) | **POST** /ping | Pings the API


# **ping**
> Ping ping

Pings the API

Checks if API is up and running

### Example
```ruby
# load the gem
require 'egoi-ruby-client'

api_instance = EgoiRubyClient::PingApi.new

begin
  #Pings the API
  result = api_instance.ping
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling PingApi->ping: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Ping**](Ping.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



