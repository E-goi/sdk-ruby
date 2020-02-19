# EgoiRubyClient::SegmentsApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_segment**](SegmentsApi.md#delete_segment) | **DELETE** /lists/{list_id}/segments/{segment_id} | Remove segment
[**get_all_segments**](SegmentsApi.md#get_all_segments) | **GET** /lists/{list_id}/segments | Get all segments


# **delete_segment**
> delete_segment(segment_id, list_id)

Remove segment

Remove segment information given its ID

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

api_instance = EgoiRubyClient::SegmentsApi.new
segment_id = 'segment_id_example' # String | ID of the Segment
list_id = 56 # Integer | ID of the List

begin
  #Remove segment
  api_instance.delete_segment(segment_id, list_id)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SegmentsApi->delete_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **segment_id** | **String**| ID of the Segment | 
 **list_id** | **Integer**| ID of the List | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_segments**
> SegmentCollection get_all_segments(list_id, opts)

Get all segments

Returns all segments

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

api_instance = EgoiRubyClient::SegmentsApi.new
list_id = 56 # Integer | ID of the List
opts = {
  type: 'type_example', # String | Type of segment
  name: 'name_example', # String | Segment name
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10 # Integer | Number of items to return
}

begin
  #Get all segments
  result = api_instance.get_all_segments(list_id, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SegmentsApi->get_all_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **type** | **String**| Type of segment | [optional] 
 **name** | **String**| Segment name | [optional] 
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]

### Return type

[**SegmentCollection**](SegmentCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



