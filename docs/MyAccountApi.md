# EgoiRubyClient::MyAccountApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**enable_te**](MyAccountApi.md#enable_te) | **POST** /my-account/actions/enable-te | Enable Track&amp;Engage |
| [**enable_transactional**](MyAccountApi.md#enable_transactional) | **POST** /my-account/actions/enable-transactional | Enable Transactional |
| [**get_my_account**](MyAccountApi.md#get_my_account) | **GET** /my-account | Get My Account Info |


## enable_te

> <TeResponse> enable_te(enable_te_request)

Enable Track&Engage

Enable Track&Engage

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

api_instance = EgoiRubyClient::MyAccountApi.new
enable_te_request = EgoiRubyClient::EnableTeRequest.new({domain: 'e-goi.com'}) # EnableTeRequest | Parameters for the Tracking&Engage

begin
  # Enable Track&Engage
  result = api_instance.enable_te(enable_te_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling MyAccountApi->enable_te: #{e}"
end
```

#### Using the enable_te_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeResponse>, Integer, Hash)> enable_te_with_http_info(enable_te_request)

```ruby
begin
  # Enable Track&Engage
  data, status_code, headers = api_instance.enable_te_with_http_info(enable_te_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling MyAccountApi->enable_te_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable_te_request** | [**EnableTeRequest**](EnableTeRequest.md) | Parameters for the Tracking&amp;Engage |  |

### Return type

[**TeResponse**](TeResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## enable_transactional

> enable_transactional

Enable Transactional

Enable Transactionale api usage

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

api_instance = EgoiRubyClient::MyAccountApi.new

begin
  # Enable Transactional
  api_instance.enable_transactional
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling MyAccountApi->enable_transactional: #{e}"
end
```

#### Using the enable_transactional_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> enable_transactional_with_http_info

```ruby
begin
  # Enable Transactional
  data, status_code, headers = api_instance.enable_transactional_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling MyAccountApi->enable_transactional_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_my_account

> <MyAccount> get_my_account

Get My Account Info

My Account Info

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

api_instance = EgoiRubyClient::MyAccountApi.new

begin
  # Get My Account Info
  result = api_instance.get_my_account
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling MyAccountApi->get_my_account: #{e}"
end
```

#### Using the get_my_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MyAccount>, Integer, Hash)> get_my_account_with_http_info

```ruby
begin
  # Get My Account Info
  data, status_code, headers = api_instance.get_my_account_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MyAccount>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling MyAccountApi->get_my_account_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MyAccount**](MyAccount.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

