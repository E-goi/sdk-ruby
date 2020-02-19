# EgoiRubyClient::FieldsApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_extra_field**](FieldsApi.md#create_extra_field) | **POST** /lists/{list_id}/fields/extra | Create extra field
[**create_field_option**](FieldsApi.md#create_field_option) | **POST** /lists/{list_id}/fields/extra/{field_id}/options | Create new field option
[**delete_extra_field**](FieldsApi.md#delete_extra_field) | **DELETE** /lists/{list_id}/fields/extra/{field_id} | Remove extra field
[**delete_field_option**](FieldsApi.md#delete_field_option) | **DELETE** /lists/{list_id}/fields/extra/{field_id}/options/{option_id} | Deletes an option
[**get_all_field_options**](FieldsApi.md#get_all_field_options) | **GET** /lists/{list_id}/fields/extra/{field_id}/options | Get all field options
[**get_all_fields**](FieldsApi.md#get_all_fields) | **GET** /lists/{list_id}/fields | Get all fields
[**patch_base_field**](FieldsApi.md#patch_base_field) | **PATCH** /lists/{list_id}/fields/base/{field_id} | Update base field
[**patch_extra_field**](FieldsApi.md#patch_extra_field) | **PATCH** /lists/{list_id}/fields/extra/{field_id} | Update extra field
[**update_field_option**](FieldsApi.md#update_field_option) | **PATCH** /lists/{list_id}/fields/extra/{field_id}/options/{option_id} | Update field option


# **create_extra_field**
> Field create_extra_field(list_id, field)

Create extra field

Creates an extra field

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

api_instance = EgoiRubyClient::FieldsApi.new
list_id = 56 # Integer | ID of the List
field = EgoiRubyClient::Field.new # Field | Parameters for the extra field

begin
  #Create extra field
  result = api_instance.create_extra_field(list_id, field)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling FieldsApi->create_extra_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **field** | [**Field**](Field.md)| Parameters for the extra field | 

### Return type

[**Field**](Field.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_field_option**
> FieldOption create_field_option(list_id, field_id, field_option)

Create new field option

Creates a field option

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

api_instance = EgoiRubyClient::FieldsApi.new
list_id = 56 # Integer | ID of the List
field_id = 56 # Integer | ID of the Field
field_option = EgoiRubyClient::FieldOption.new # FieldOption | Parameters for the field option

begin
  #Create new field option
  result = api_instance.create_field_option(list_id, field_id, field_option)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling FieldsApi->create_field_option: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **field_id** | **Integer**| ID of the Field | 
 **field_option** | [**FieldOption**](FieldOption.md)| Parameters for the field option | 

### Return type

[**FieldOption**](FieldOption.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_extra_field**
> delete_extra_field(list_id, field_id)

Remove extra field

Removes an extra field given its ID

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

api_instance = EgoiRubyClient::FieldsApi.new
list_id = 56 # Integer | ID of the List
field_id = 56 # Integer | ID of the Field

begin
  #Remove extra field
  api_instance.delete_extra_field(list_id, field_id)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling FieldsApi->delete_extra_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **field_id** | **Integer**| ID of the Field | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_field_option**
> delete_field_option(list_id, field_id, option_id)

Deletes an option

Deletes an option of a list of values field

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

api_instance = EgoiRubyClient::FieldsApi.new
list_id = 56 # Integer | ID of the List
field_id = 56 # Integer | ID of the Field
option_id = 56 # Integer | ID of the field option

begin
  #Deletes an option
  api_instance.delete_field_option(list_id, field_id, option_id)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling FieldsApi->delete_field_option: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **field_id** | **Integer**| ID of the Field | 
 **option_id** | **Integer**| ID of the field option | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_field_options**
> FieldOptionsCollection get_all_field_options(list_id, field_id)

Get all field options

Returns all options of a given field

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

api_instance = EgoiRubyClient::FieldsApi.new
list_id = 56 # Integer | ID of the List
field_id = 56 # Integer | ID of the Field

begin
  #Get all field options
  result = api_instance.get_all_field_options(list_id, field_id)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling FieldsApi->get_all_field_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **field_id** | **Integer**| ID of the Field | 

### Return type

[**FieldOptionsCollection**](FieldOptionsCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_fields**
> FieldCollection get_all_fields(list_id, opts)

Get all fields

Returns all fields

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

api_instance = EgoiRubyClient::FieldsApi.new
list_id = 56 # Integer | ID of the List
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10 # Integer | Number of items to return
}

begin
  #Get all fields
  result = api_instance.get_all_fields(list_id, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling FieldsApi->get_all_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]

### Return type

[**FieldCollection**](FieldCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **patch_base_field**
> Field patch_base_field(list_id, field_id, patch_request_base_field)

Update base field

Updates a base field

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

api_instance = EgoiRubyClient::FieldsApi.new
list_id = 56 # Integer | ID of the List
field_id = 'field_id_example' # String | ID of the base field
patch_request_base_field = EgoiRubyClient::PatchRequestBaseField.new # PatchRequestBaseField | Parameters for the extra field

begin
  #Update base field
  result = api_instance.patch_base_field(list_id, field_id, patch_request_base_field)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling FieldsApi->patch_base_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **field_id** | **String**| ID of the base field | 
 **patch_request_base_field** | [**PatchRequestBaseField**](PatchRequestBaseField.md)| Parameters for the extra field | 

### Return type

[**Field**](Field.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_extra_field**
> Field patch_extra_field(list_id, field_id, patch_request_field)

Update extra field

Updates an extra field

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

api_instance = EgoiRubyClient::FieldsApi.new
list_id = 56 # Integer | ID of the List
field_id = 56 # Integer | ID of the Field
patch_request_field = EgoiRubyClient::PatchRequestField.new # PatchRequestField | Parameters for the extra field

begin
  #Update extra field
  result = api_instance.patch_extra_field(list_id, field_id, patch_request_field)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling FieldsApi->patch_extra_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **field_id** | **Integer**| ID of the Field | 
 **patch_request_field** | [**PatchRequestField**](PatchRequestField.md)| Parameters for the extra field | 

### Return type

[**Field**](Field.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_field_option**
> FieldOption update_field_option(list_id, field_id, option_id, field_option)

Update field option

Updates a field option

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

api_instance = EgoiRubyClient::FieldsApi.new
list_id = 56 # Integer | ID of the List
field_id = 56 # Integer | ID of the Field
option_id = 56 # Integer | ID of the field option
field_option = EgoiRubyClient::FieldOption.new # FieldOption | Parameters for the field option

begin
  #Update field option
  result = api_instance.update_field_option(list_id, field_id, option_id, field_option)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling FieldsApi->update_field_option: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **field_id** | **Integer**| ID of the Field | 
 **option_id** | **Integer**| ID of the field option | 
 **field_option** | [**FieldOption**](FieldOption.md)| Parameters for the field option | 

### Return type

[**FieldOption**](FieldOption.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



