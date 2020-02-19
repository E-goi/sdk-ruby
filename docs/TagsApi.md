# EgoiRubyClient::TagsApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tag**](TagsApi.md#create_tag) | **POST** /tags | Create new tag
[**delete_tag**](TagsApi.md#delete_tag) | **DELETE** /tags/{tag_id} | Remove tag
[**get_all_tags**](TagsApi.md#get_all_tags) | **GET** /tags | Get all tags
[**update_tag**](TagsApi.md#update_tag) | **PUT** /tags/{tag_id} | Update a specific tag


# **create_tag**
> Tag create_tag(tag_request)

Create new tag

Create a new tag

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

api_instance = EgoiRubyClient::TagsApi.new
tag_request = EgoiRubyClient::TagRequest.new # TagRequest | Parameters for the Tag

begin
  #Create new tag
  result = api_instance.create_tag(tag_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling TagsApi->create_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_request** | [**TagRequest**](TagRequest.md)| Parameters for the Tag | 

### Return type

[**Tag**](Tag.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_tag**
> delete_tag(tag_id)

Remove tag

Remove tag information given its ID

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

api_instance = EgoiRubyClient::TagsApi.new
tag_id = 56 # Integer | ID of the Tag

begin
  #Remove tag
  api_instance.delete_tag(tag_id)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling TagsApi->delete_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **Integer**| ID of the Tag | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_tags**
> TagCollection get_all_tags(opts)

Get all tags

Returns all tags

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

api_instance = EgoiRubyClient::TagsApi.new
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  order: 'desc', # String | Type of order
  order_by: 'tag_id' # String | Reference attribute to order tags
}

begin
  #Get all tags
  result = api_instance.get_all_tags(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling TagsApi->get_all_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **order** | **String**| Type of order | [optional] [default to &#39;desc&#39;]
 **order_by** | **String**| Reference attribute to order tags | [optional] [default to &#39;tag_id&#39;]

### Return type

[**TagCollection**](TagCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_tag**
> Tag update_tag(tag_id, tag_request)

Update a specific tag

Update a tag

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

api_instance = EgoiRubyClient::TagsApi.new
tag_id = 56 # Integer | ID of the Tag
tag_request = EgoiRubyClient::TagRequest.new # TagRequest | Parameters for the tag

begin
  #Update a specific tag
  result = api_instance.update_tag(tag_id, tag_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling TagsApi->update_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **Integer**| ID of the Tag | 
 **tag_request** | [**TagRequest**](TagRequest.md)| Parameters for the tag | 

### Return type

[**Tag**](Tag.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



