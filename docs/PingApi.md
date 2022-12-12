# EgoiRubyClient::PingApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ping**](PingApi.md#ping) | **POST** /ping | Pings the API |


## ping

> <Ping> ping

Pings the API

Checks if API is up and running

### Examples

```ruby
require 'time'
require 'egoi-ruby-client'

api_instance = EgoiRubyClient::PingApi.new

begin
  # Pings the API
  result = api_instance.ping
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling PingApi->ping: #{e}"
end
```

#### Using the ping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Ping>, Integer, Hash)> ping_with_http_info

```ruby
begin
  # Pings the API
  data, status_code, headers = api_instance.ping_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Ping>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling PingApi->ping_with_http_info: #{e}"
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

