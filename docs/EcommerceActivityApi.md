# EgoiRubyClient::EcommerceActivityApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**import_orders_bulk**](EcommerceActivityApi.md#import_orders_bulk) | **POST** /lists/{list_id}/orders | Orders import bulk request |


## import_orders_bulk

> <AcceptedResponse> import_orders_bulk(list_id, import_orders_bulk_bulk_request)

Orders import bulk request

Creates new bulk orders syncronization </br>      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits 'Stream Limits')

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

api_instance = EgoiRubyClient::EcommerceActivityApi.new
list_id = 56 # Integer | ID of the List
import_orders_bulk_bulk_request = [EgoiRubyClient::ImportOrdersBulkBulkRequest.new({order_id: '100', revenue: 100, store_url: 'https://www.e-goi.com', date: 3.56, items: [EgoiRubyClient::ImportOrdersBulkBulkRequestItems.new({id: '100', name: 'Product 1'})]})] # Array<ImportOrdersBulkBulkRequest> | Parameters for the Orders

begin
  # Orders import bulk request
  result = api_instance.import_orders_bulk(list_id, import_orders_bulk_bulk_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceActivityApi->import_orders_bulk: #{e}"
end
```

#### Using the import_orders_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> import_orders_bulk_with_http_info(list_id, import_orders_bulk_bulk_request)

```ruby
begin
  # Orders import bulk request
  data, status_code, headers = api_instance.import_orders_bulk_with_http_info(list_id, import_orders_bulk_bulk_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceActivityApi->import_orders_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **import_orders_bulk_bulk_request** | [**Array&lt;ImportOrdersBulkBulkRequest&gt;**](ImportOrdersBulkBulkRequest.md) | Parameters for the Orders |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

