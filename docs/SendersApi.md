# EgoiRubyClient::SendersApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cellphone_sender**](SendersApi.md#create_cellphone_sender) | **POST** /senders/cellphone | Create cellphone sender
[**create_email_sender**](SendersApi.md#create_email_sender) | **POST** /senders/email | Create email sender
[**create_phone_sender**](SendersApi.md#create_phone_sender) | **POST** /senders/phone | Create phone sender
[**delete_cellphone_sender**](SendersApi.md#delete_cellphone_sender) | **DELETE** /senders/cellphone/{sender_id} | Remove cellphone sender
[**delete_email_sender**](SendersApi.md#delete_email_sender) | **DELETE** /senders/email/{sender_id} | Remove email sender
[**delete_phone_sender**](SendersApi.md#delete_phone_sender) | **DELETE** /senders/phone/{sender_id} | Remove phone sender
[**get_all_cellphone_senders**](SendersApi.md#get_all_cellphone_senders) | **GET** /senders/cellphone | Get all cellphone senders
[**get_all_email_senders**](SendersApi.md#get_all_email_senders) | **GET** /senders/email | Get all email senders
[**get_all_phone_senders**](SendersApi.md#get_all_phone_senders) | **GET** /senders/phone | Get all phone senders
[**put_email_sender**](SendersApi.md#put_email_sender) | **PUT** /senders/email/{sender_id} | Update email sender


# **create_cellphone_sender**
> CellphoneSender create_cellphone_sender(cellphone_sender)

Create cellphone sender

Creates a cellphone sender

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

api_instance = EgoiRubyClient::SendersApi.new
cellphone_sender = EgoiRubyClient::CellphoneSender.new # CellphoneSender | Parameters for the sender

begin
  #Create cellphone sender
  result = api_instance.create_cellphone_sender(cellphone_sender)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SendersApi->create_cellphone_sender: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cellphone_sender** | [**CellphoneSender**](CellphoneSender.md)| Parameters for the sender | 

### Return type

[**CellphoneSender**](CellphoneSender.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_email_sender**
> EmailSender create_email_sender(email_sender)

Create email sender

Creates an email sender

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

api_instance = EgoiRubyClient::SendersApi.new
email_sender = EgoiRubyClient::EmailSender.new # EmailSender | Parameters for the sender

begin
  #Create email sender
  result = api_instance.create_email_sender(email_sender)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SendersApi->create_email_sender: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_sender** | [**EmailSender**](EmailSender.md)| Parameters for the sender | 

### Return type

[**EmailSender**](EmailSender.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_phone_sender**
> PhoneSender create_phone_sender(phone_sender)

Create phone sender

Creates a phone sender

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

api_instance = EgoiRubyClient::SendersApi.new
phone_sender = EgoiRubyClient::PhoneSender.new # PhoneSender | Parameters for the sender

begin
  #Create phone sender
  result = api_instance.create_phone_sender(phone_sender)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SendersApi->create_phone_sender: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_sender** | [**PhoneSender**](PhoneSender.md)| Parameters for the sender | 

### Return type

[**PhoneSender**](PhoneSender.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_cellphone_sender**
> delete_cellphone_sender(sender_id)

Remove cellphone sender

Remove sender information given its ID

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

api_instance = EgoiRubyClient::SendersApi.new
sender_id = 56 # Integer | ID of the Sender

begin
  #Remove cellphone sender
  api_instance.delete_cellphone_sender(sender_id)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SendersApi->delete_cellphone_sender: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | **Integer**| ID of the Sender | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_email_sender**
> delete_email_sender(sender_id)

Remove email sender

Remove sender information given its ID

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

api_instance = EgoiRubyClient::SendersApi.new
sender_id = 56 # Integer | ID of the Sender

begin
  #Remove email sender
  api_instance.delete_email_sender(sender_id)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SendersApi->delete_email_sender: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | **Integer**| ID of the Sender | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_phone_sender**
> delete_phone_sender(sender_id)

Remove phone sender

Remove sender information given its ID

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

api_instance = EgoiRubyClient::SendersApi.new
sender_id = 56 # Integer | ID of the Sender

begin
  #Remove phone sender
  api_instance.delete_phone_sender(sender_id)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SendersApi->delete_phone_sender: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | **Integer**| ID of the Sender | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_cellphone_senders**
> CellphoneSenderCollection get_all_cellphone_senders(opts)

Get all cellphone senders

Returns all cellphone senders

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

api_instance = EgoiRubyClient::SendersApi.new
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  status: 'status_example' # String | Status filter
}

begin
  #Get all cellphone senders
  result = api_instance.get_all_cellphone_senders(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SendersApi->get_all_cellphone_senders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **status** | **String**| Status filter | [optional] 

### Return type

[**CellphoneSenderCollection**](CellphoneSenderCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_email_senders**
> EmailSenderCollection get_all_email_senders(opts)

Get all email senders

Returns all email senders

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

api_instance = EgoiRubyClient::SendersApi.new
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  status: 'status_example' # String | Status filter
}

begin
  #Get all email senders
  result = api_instance.get_all_email_senders(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SendersApi->get_all_email_senders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **status** | **String**| Status filter | [optional] 

### Return type

[**EmailSenderCollection**](EmailSenderCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_phone_senders**
> PhoneSenderCollection get_all_phone_senders(opts)

Get all phone senders

Returns all phone senders

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

api_instance = EgoiRubyClient::SendersApi.new
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  status: 'status_example' # String | Status filter
}

begin
  #Get all phone senders
  result = api_instance.get_all_phone_senders(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SendersApi->get_all_phone_senders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **status** | **String**| Status filter | [optional] 

### Return type

[**PhoneSenderCollection**](PhoneSenderCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_email_sender**
> EmailSender put_email_sender(sender_id, email_sender_put_request)

Update email sender

Updates an email sender

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

api_instance = EgoiRubyClient::SendersApi.new
sender_id = 56 # Integer | ID of the Sender
email_sender_put_request = EgoiRubyClient::EmailSenderPutRequest.new # EmailSenderPutRequest | Parameters for the contact

begin
  #Update email sender
  result = api_instance.put_email_sender(sender_id, email_sender_put_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling SendersApi->put_email_sender: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | **Integer**| ID of the Sender | 
 **email_sender_put_request** | [**EmailSenderPutRequest**](EmailSenderPutRequest.md)| Parameters for the contact | 

### Return type

[**EmailSender**](EmailSender.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



