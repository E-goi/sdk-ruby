# EgoiRubyClient::SendersApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cellphone_sender**](SendersApi.md#create_cellphone_sender) | **POST** /senders/cellphone | Create cellphone sender |
| [**create_email_sender**](SendersApi.md#create_email_sender) | **POST** /senders/email | Create email sender |
| [**create_phone_sender**](SendersApi.md#create_phone_sender) | **POST** /senders/phone | Create phone sender |
| [**delete_cellphone_sender**](SendersApi.md#delete_cellphone_sender) | **DELETE** /senders/cellphone/{sender_id} | Remove cellphone sender |
| [**delete_email_sender**](SendersApi.md#delete_email_sender) | **DELETE** /senders/email/{sender_id} | Remove email sender |
| [**delete_phone_sender**](SendersApi.md#delete_phone_sender) | **DELETE** /senders/phone/{sender_id} | Remove phone sender |
| [**get_all_cellphone_senders**](SendersApi.md#get_all_cellphone_senders) | **GET** /senders/cellphone | Get all cellphone senders |
| [**get_all_email_senders**](SendersApi.md#get_all_email_senders) | **GET** /senders/email | Get all email senders |
| [**get_all_phone_senders**](SendersApi.md#get_all_phone_senders) | **GET** /senders/phone | Get all phone senders |
| [**put_email_sender**](SendersApi.md#put_email_sender) | **PUT** /senders/email/{sender_id} | Update email sender |


## create_cellphone_sender

> <CellphoneSender> create_cellphone_sender(cellphone_sender_post)

Create cellphone sender

Creates a cellphone sender

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

api_instance = EgoiRubyClient::SendersApi.new
cellphone_sender_post = EgoiRubyClient::AlphanumericCellphoneSenderPost.new({type: 'alpha_numeric', cellphone: 'Your company name', file: 'file_example'}) # CellphoneSenderPost | Parameters for the sender

begin
  # Create cellphone sender
  result = api_instance.create_cellphone_sender(cellphone_sender_post)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->create_cellphone_sender: #{e}"
end
```

#### Using the create_cellphone_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CellphoneSender>, Integer, Hash)> create_cellphone_sender_with_http_info(cellphone_sender_post)

```ruby
begin
  # Create cellphone sender
  data, status_code, headers = api_instance.create_cellphone_sender_with_http_info(cellphone_sender_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CellphoneSender>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->create_cellphone_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cellphone_sender_post** | [**CellphoneSenderPost**](CellphoneSenderPost.md) | Parameters for the sender |  |

### Return type

[**CellphoneSender**](CellphoneSender.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_email_sender

> <EmailSender> create_email_sender(email_sender_post)

Create email sender

Creates an email sender

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

api_instance = EgoiRubyClient::SendersApi.new
email_sender_post = EgoiRubyClient::EmailSenderPost.new({name: 'E-goi', email: 'example@e-goi.com'}) # EmailSenderPost | Parameters for the sender

begin
  # Create email sender
  result = api_instance.create_email_sender(email_sender_post)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->create_email_sender: #{e}"
end
```

#### Using the create_email_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailSender>, Integer, Hash)> create_email_sender_with_http_info(email_sender_post)

```ruby
begin
  # Create email sender
  data, status_code, headers = api_instance.create_email_sender_with_http_info(email_sender_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailSender>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->create_email_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_sender_post** | [**EmailSenderPost**](EmailSenderPost.md) | Parameters for the sender |  |

### Return type

[**EmailSender**](EmailSender.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_phone_sender

> <PhoneSender> create_phone_sender(phone_sender_post)

Create phone sender

Creates a phone sender

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

api_instance = EgoiRubyClient::SendersApi.new
phone_sender_post = EgoiRubyClient::PhoneSenderPost.new({phone: '351-300404336', file: 'file_example'}) # PhoneSenderPost | Parameters for the sender

begin
  # Create phone sender
  result = api_instance.create_phone_sender(phone_sender_post)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->create_phone_sender: #{e}"
end
```

#### Using the create_phone_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PhoneSender>, Integer, Hash)> create_phone_sender_with_http_info(phone_sender_post)

```ruby
begin
  # Create phone sender
  data, status_code, headers = api_instance.create_phone_sender_with_http_info(phone_sender_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PhoneSender>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->create_phone_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_sender_post** | [**PhoneSenderPost**](PhoneSenderPost.md) | Parameters for the sender |  |

### Return type

[**PhoneSender**](PhoneSender.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_cellphone_sender

> delete_cellphone_sender(sender_id)

Remove cellphone sender

Remove sender information given its ID

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

api_instance = EgoiRubyClient::SendersApi.new
sender_id = 56 # Integer | ID of the Sender

begin
  # Remove cellphone sender
  api_instance.delete_cellphone_sender(sender_id)
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->delete_cellphone_sender: #{e}"
end
```

#### Using the delete_cellphone_sender_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cellphone_sender_with_http_info(sender_id)

```ruby
begin
  # Remove cellphone sender
  data, status_code, headers = api_instance.delete_cellphone_sender_with_http_info(sender_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->delete_cellphone_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **Integer** | ID of the Sender |  |

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_email_sender

> delete_email_sender(sender_id)

Remove email sender

Remove sender information given its ID

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

api_instance = EgoiRubyClient::SendersApi.new
sender_id = 56 # Integer | ID of the Sender

begin
  # Remove email sender
  api_instance.delete_email_sender(sender_id)
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->delete_email_sender: #{e}"
end
```

#### Using the delete_email_sender_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_email_sender_with_http_info(sender_id)

```ruby
begin
  # Remove email sender
  data, status_code, headers = api_instance.delete_email_sender_with_http_info(sender_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->delete_email_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **Integer** | ID of the Sender |  |

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_phone_sender

> delete_phone_sender(sender_id)

Remove phone sender

Remove sender information given its ID

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

api_instance = EgoiRubyClient::SendersApi.new
sender_id = 56 # Integer | ID of the Sender

begin
  # Remove phone sender
  api_instance.delete_phone_sender(sender_id)
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->delete_phone_sender: #{e}"
end
```

#### Using the delete_phone_sender_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_phone_sender_with_http_info(sender_id)

```ruby
begin
  # Remove phone sender
  data, status_code, headers = api_instance.delete_phone_sender_with_http_info(sender_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->delete_phone_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **Integer** | ID of the Sender |  |

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_cellphone_senders

> <CellphoneSenderCollection> get_all_cellphone_senders(opts)

Get all cellphone senders

Returns all cellphone senders

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

api_instance = EgoiRubyClient::SendersApi.new
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56, # Integer | Number of items to return
  status: 'active' # String | Status filter
}

begin
  # Get all cellphone senders
  result = api_instance.get_all_cellphone_senders(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->get_all_cellphone_senders: #{e}"
end
```

#### Using the get_all_cellphone_senders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CellphoneSenderCollection>, Integer, Hash)> get_all_cellphone_senders_with_http_info(opts)

```ruby
begin
  # Get all cellphone senders
  data, status_code, headers = api_instance.get_all_cellphone_senders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CellphoneSenderCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->get_all_cellphone_senders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |
| **status** | **String** | Status filter | [optional] |

### Return type

[**CellphoneSenderCollection**](CellphoneSenderCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_email_senders

> <EmailSenderCollection> get_all_email_senders(opts)

Get all email senders

Returns all email senders

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

api_instance = EgoiRubyClient::SendersApi.new
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56, # Integer | Number of items to return
  status: 'active' # String | Status filter
}

begin
  # Get all email senders
  result = api_instance.get_all_email_senders(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->get_all_email_senders: #{e}"
end
```

#### Using the get_all_email_senders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailSenderCollection>, Integer, Hash)> get_all_email_senders_with_http_info(opts)

```ruby
begin
  # Get all email senders
  data, status_code, headers = api_instance.get_all_email_senders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailSenderCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->get_all_email_senders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |
| **status** | **String** | Status filter | [optional] |

### Return type

[**EmailSenderCollection**](EmailSenderCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_phone_senders

> <PhoneSenderCollection> get_all_phone_senders(opts)

Get all phone senders

Returns all phone senders

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

api_instance = EgoiRubyClient::SendersApi.new
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56, # Integer | Number of items to return
  status: 'active' # String | Status filter
}

begin
  # Get all phone senders
  result = api_instance.get_all_phone_senders(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->get_all_phone_senders: #{e}"
end
```

#### Using the get_all_phone_senders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PhoneSenderCollection>, Integer, Hash)> get_all_phone_senders_with_http_info(opts)

```ruby
begin
  # Get all phone senders
  data, status_code, headers = api_instance.get_all_phone_senders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PhoneSenderCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->get_all_phone_senders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |
| **status** | **String** | Status filter | [optional] |

### Return type

[**PhoneSenderCollection**](PhoneSenderCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_email_sender

> <EmailSender> put_email_sender(sender_id, email_sender_put_request)

Update email sender

Updates an email sender

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

api_instance = EgoiRubyClient::SendersApi.new
sender_id = 56 # Integer | ID of the Sender
email_sender_put_request = EgoiRubyClient::EmailSenderPutRequest.new({name: 'New sender name'}) # EmailSenderPutRequest | Parameters for the contact

begin
  # Update email sender
  result = api_instance.put_email_sender(sender_id, email_sender_put_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->put_email_sender: #{e}"
end
```

#### Using the put_email_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailSender>, Integer, Hash)> put_email_sender_with_http_info(sender_id, email_sender_put_request)

```ruby
begin
  # Update email sender
  data, status_code, headers = api_instance.put_email_sender_with_http_info(sender_id, email_sender_put_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailSender>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling SendersApi->put_email_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **Integer** | ID of the Sender |  |
| **email_sender_put_request** | [**EmailSenderPutRequest**](EmailSenderPutRequest.md) | Parameters for the contact |  |

### Return type

[**EmailSender**](EmailSender.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

