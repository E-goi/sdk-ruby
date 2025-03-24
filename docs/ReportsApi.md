# EgoiRubyClient::ReportsApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_email_report**](ReportsApi.md#get_email_report) | **GET** /reports/email/{campaign_hash} | Get email report |
| [**get_push_report**](ReportsApi.md#get_push_report) | **GET** /reports/push/{campaign_hash} | Get push report |
| [**get_sms_report**](ReportsApi.md#get_sms_report) | **GET** /reports/sms/{campaign_hash} | Get sms report |
| [**get_voice_report**](ReportsApi.md#get_voice_report) | **GET** /reports/voice/{campaign_hash} | Get voice report |
| [**get_web_push_report**](ReportsApi.md#get_web_push_report) | **GET** /reports/web-push/{campaign_hash} | Get webpush report |


## get_email_report

> <EmailReport> get_email_report(campaign_hash, opts)

Get email report

Returns email report given the campaign hash

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

api_instance = EgoiRubyClient::ReportsApi.new
campaign_hash = 'campaign_hash_example' # String | Hash of the Campaign
opts = {
  date: true, # Boolean | True to show date stats
  weekday: true, # Boolean | True to show weekday stats
  hour: true, # Boolean | True to show hour stats
  location: true, # Boolean | True to show location stats
  domain: true, # Boolean | True to show Domain stats
  url: true, # Boolean | True to show Url stats
  reader: true # Boolean | True to show Reader stats
}

begin
  # Get email report
  result = api_instance.get_email_report(campaign_hash, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ReportsApi->get_email_report: #{e}"
end
```

#### Using the get_email_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailReport>, Integer, Hash)> get_email_report_with_http_info(campaign_hash, opts)

```ruby
begin
  # Get email report
  data, status_code, headers = api_instance.get_email_report_with_http_info(campaign_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailReport>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ReportsApi->get_email_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | Hash of the Campaign |  |
| **date** | **Boolean** | True to show date stats | [optional][default to true] |
| **weekday** | **Boolean** | True to show weekday stats | [optional][default to true] |
| **hour** | **Boolean** | True to show hour stats | [optional][default to true] |
| **location** | **Boolean** | True to show location stats | [optional][default to true] |
| **domain** | **Boolean** | True to show Domain stats | [optional][default to true] |
| **url** | **Boolean** | True to show Url stats | [optional][default to true] |
| **reader** | **Boolean** | True to show Reader stats | [optional][default to true] |

### Return type

[**EmailReport**](EmailReport.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_push_report

> <PushReport> get_push_report(campaign_hash, opts)

Get push report

Returns a push report given the campaign hash

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

api_instance = EgoiRubyClient::ReportsApi.new
campaign_hash = 'campaign_hash_example' # String | Hash of the Campaign
opts = {
  operating_systems: true # Boolean | True to show operating system stats
}

begin
  # Get push report
  result = api_instance.get_push_report(campaign_hash, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ReportsApi->get_push_report: #{e}"
end
```

#### Using the get_push_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PushReport>, Integer, Hash)> get_push_report_with_http_info(campaign_hash, opts)

```ruby
begin
  # Get push report
  data, status_code, headers = api_instance.get_push_report_with_http_info(campaign_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PushReport>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ReportsApi->get_push_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | Hash of the Campaign |  |
| **operating_systems** | **Boolean** | True to show operating system stats | [optional][default to true] |

### Return type

[**PushReport**](PushReport.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sms_report

> <PhoneReport> get_sms_report(campaign_hash, opts)

Get sms report

Returns sms report given the campaign hash

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

api_instance = EgoiRubyClient::ReportsApi.new
campaign_hash = 'campaign_hash_example' # String | Hash of the Campaign
opts = {
  networks: true # Boolean | True to show network stats
}

begin
  # Get sms report
  result = api_instance.get_sms_report(campaign_hash, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ReportsApi->get_sms_report: #{e}"
end
```

#### Using the get_sms_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PhoneReport>, Integer, Hash)> get_sms_report_with_http_info(campaign_hash, opts)

```ruby
begin
  # Get sms report
  data, status_code, headers = api_instance.get_sms_report_with_http_info(campaign_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PhoneReport>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ReportsApi->get_sms_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | Hash of the Campaign |  |
| **networks** | **Boolean** | True to show network stats | [optional][default to true] |

### Return type

[**PhoneReport**](PhoneReport.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voice_report

> <PhoneReport> get_voice_report(campaign_hash, opts)

Get voice report

Returns voice report given the campaign hash

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

api_instance = EgoiRubyClient::ReportsApi.new
campaign_hash = 'campaign_hash_example' # String | Hash of the Campaign
opts = {
  networks: true # Boolean | True to show network stats
}

begin
  # Get voice report
  result = api_instance.get_voice_report(campaign_hash, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ReportsApi->get_voice_report: #{e}"
end
```

#### Using the get_voice_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PhoneReport>, Integer, Hash)> get_voice_report_with_http_info(campaign_hash, opts)

```ruby
begin
  # Get voice report
  data, status_code, headers = api_instance.get_voice_report_with_http_info(campaign_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PhoneReport>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ReportsApi->get_voice_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | Hash of the Campaign |  |
| **networks** | **Boolean** | True to show network stats | [optional][default to true] |

### Return type

[**PhoneReport**](PhoneReport.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web_push_report

> <WebPushReport> get_web_push_report(campaign_hash, opts)

Get webpush report

Returns webpush report given the campaign hash

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

api_instance = EgoiRubyClient::ReportsApi.new
campaign_hash = 'campaign_hash_example' # String | Hash of the Campaign
opts = {
  devices: true, # Boolean | True to show device stats
  operating_systems: true, # Boolean | True to show operating systems stats
  browsers: true, # Boolean | True to show browser stats
  url: true # Boolean | True to show url stats
}

begin
  # Get webpush report
  result = api_instance.get_web_push_report(campaign_hash, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ReportsApi->get_web_push_report: #{e}"
end
```

#### Using the get_web_push_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebPushReport>, Integer, Hash)> get_web_push_report_with_http_info(campaign_hash, opts)

```ruby
begin
  # Get webpush report
  data, status_code, headers = api_instance.get_web_push_report_with_http_info(campaign_hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebPushReport>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ReportsApi->get_web_push_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** | Hash of the Campaign |  |
| **devices** | **Boolean** | True to show device stats | [optional][default to true] |
| **operating_systems** | **Boolean** | True to show operating systems stats | [optional][default to true] |
| **browsers** | **Boolean** | True to show browser stats | [optional][default to true] |
| **url** | **Boolean** | True to show url stats | [optional][default to true] |

### Return type

[**WebPushReport**](WebPushReport.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

