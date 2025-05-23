# EgoiRubyClient::WebHooksApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebHooksApi.md#create_webhook) | **POST** /webhooks | Create new webhook |
| [**delete_webhook**](WebHooksApi.md#delete_webhook) | **DELETE** /webhooks/{webhook_id} | Remove webhook |
| [**get_all_webhooks**](WebHooksApi.md#get_all_webhooks) | **GET** /webhooks | Get all webhooks |


## create_webhook

> <Webhook> create_webhook(webhook)

Create new webhook

Create a new webhook <a href='/usecases/webhooks/' target='_blank'>[Go to webhooks documentation]</a>

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

api_instance = EgoiRubyClient::WebHooksApi.new
webhook = EgoiRubyClient::Webhook.new({list_id: 1, url: 'url_example', actions: [EgoiRubyClient::WebhookActionSchema::FORGET_SUBSCRIPTION]}) # Webhook | Parameters for the webhook

begin
  # Create new webhook
  result = api_instance.create_webhook(webhook)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebHooksApi->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> create_webhook_with_http_info(webhook)

```ruby
begin
  # Create new webhook
  data, status_code, headers = api_instance.create_webhook_with_http_info(webhook)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebHooksApi->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook** | [**Webhook**](Webhook.md) | Parameters for the webhook |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> delete_webhook(webhook_id)

Remove webhook

Remove webhook information given its ID

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

api_instance = EgoiRubyClient::WebHooksApi.new
webhook_id = 56 # Integer | ID of the Webhook

begin
  # Remove webhook
  api_instance.delete_webhook(webhook_id)
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebHooksApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhook_with_http_info(webhook_id)

```ruby
begin
  # Remove webhook
  data, status_code, headers = api_instance.delete_webhook_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebHooksApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **Integer** | ID of the Webhook |  |

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_webhooks

> <ListCollection1> get_all_webhooks(opts)

Get all webhooks

Returns all webhooks <a href='/usecases/webhooks/' target='_blank'>[Go to webhooks documentation]</a>

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

api_instance = EgoiRubyClient::WebHooksApi.new
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56 # Integer | Number of items to return
}

begin
  # Get all webhooks
  result = api_instance.get_all_webhooks(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebHooksApi->get_all_webhooks: #{e}"
end
```

#### Using the get_all_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCollection1>, Integer, Hash)> get_all_webhooks_with_http_info(opts)

```ruby
begin
  # Get all webhooks
  data, status_code, headers = api_instance.get_all_webhooks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCollection1>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling WebHooksApi->get_all_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |

### Return type

[**ListCollection1**](ListCollection1.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

