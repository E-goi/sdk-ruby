# EgoiRubyClient::SegmentsApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_segment**](SegmentsApi.md#delete_segment) | **DELETE** /lists/{list_id}/segments/{segment_id} | Remove segment |
| [**get_all_segments**](SegmentsApi.md#get_all_segments) | **GET** /lists/{list_id}/segments | Get all segments |


## delete_segment

> delete_segment(segment_id, list_id)

Remove segment

Remove segment information given its ID

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

api_instance = EgoiRubyClient::SegmentsApi.new
segment_id = 'segment_id_example' # String | ID of the Segment
list_id = 56 # Integer | ID of the List

begin
  # Remove segment
  api_instance.delete_segment(segment_id, list_id)
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SegmentsApi->delete_segment: #{e}"
end
```

#### Using the delete_segment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_segment_with_http_info(segment_id, list_id)

```ruby
begin
  # Remove segment
  data, status_code, headers = api_instance.delete_segment_with_http_info(segment_id, list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SegmentsApi->delete_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_id** | **String** | ID of the Segment |  |
| **list_id** | **Integer** | ID of the List |  |

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_segments

> <SegmentCollection> get_all_segments(list_id, opts)

Get all segments

Returns all segments

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

api_instance = EgoiRubyClient::SegmentsApi.new
list_id = 56 # Integer | ID of the List
opts = {
  type: 'auto', # String | Type of segment
  name: 'name_example', # String | Segment name
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56 # Integer | Number of items to return
}

begin
  # Get all segments
  result = api_instance.get_all_segments(list_id, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SegmentsApi->get_all_segments: #{e}"
end
```

#### Using the get_all_segments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SegmentCollection>, Integer, Hash)> get_all_segments_with_http_info(list_id, opts)

```ruby
begin
  # Get all segments
  data, status_code, headers = api_instance.get_all_segments_with_http_info(list_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SegmentCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SegmentsApi->get_all_segments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **type** | **String** | Type of segment | [optional] |
| **name** | **String** | Segment name | [optional] |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |

### Return type

[**SegmentCollection**](SegmentCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

