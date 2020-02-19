# EgoiRubyClient::AdvancedReportsApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_email_bounces_report**](AdvancedReportsApi.md#generate_email_bounces_report) | **POST** /reports/advanced/email-bounces | Generate email bounces report
[**generate_email_clicks_by_contact_report**](AdvancedReportsApi.md#generate_email_clicks_by_contact_report) | **POST** /reports/advanced/email-clicks-by-contact | Generate email clicks by contact report
[**generate_email_clicks_by_url_report**](AdvancedReportsApi.md#generate_email_clicks_by_url_report) | **POST** /reports/advanced/email-clicks-by-url | Generate email clicks by URL report
[**generate_email_events_report**](AdvancedReportsApi.md#generate_email_events_report) | **POST** /reports/advanced/email-events | Generate email events report
[**generate_email_sms_report**](AdvancedReportsApi.md#generate_email_sms_report) | **POST** /reports/advanced/sms-bounces | Generate SMS bounces report
[**generate_email_unsubscriptions_report**](AdvancedReportsApi.md#generate_email_unsubscriptions_report) | **POST** /reports/advanced/email-unsubscriptions | Generate email unsubscriptions report
[**generate_form_answers_report**](AdvancedReportsApi.md#generate_form_answers_report) | **POST** /reports/advanced/form-answers | Generate form answers report
[**generate_sends_report**](AdvancedReportsApi.md#generate_sends_report) | **POST** /reports/advanced/sends | Generate sends report
[**generate_sms_events_report**](AdvancedReportsApi.md#generate_sms_events_report) | **POST** /reports/advanced/sms-events | Generate SMS events report
[**generate_subscriptions_report**](AdvancedReportsApi.md#generate_subscriptions_report) | **POST** /reports/advanced/subscriptions | Generate subscriptions report
[**generate_unsubscriptions_report**](AdvancedReportsApi.md#generate_unsubscriptions_report) | **POST** /reports/advanced/unsubscriptions | Generate unsubscriptions report
[**get_all_advanced_reports**](AdvancedReportsApi.md#get_all_advanced_reports) | **GET** /reports/advanced | Get all advanced reports


# **generate_email_bounces_report**
> AcceptedResponse generate_email_bounces_report(generate_email_bounces_report)

Generate email bounces report

Generates a new email bounces report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_email_bounces_report = EgoiRubyClient::GenerateEmailBouncesReport.new # GenerateEmailBouncesReport | Parameters for the email bounces report

begin
  #Generate email bounces report
  result = api_instance.generate_email_bounces_report(generate_email_bounces_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AdvancedReportsApi->generate_email_bounces_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_email_bounces_report** | [**GenerateEmailBouncesReport**](GenerateEmailBouncesReport.md)| Parameters for the email bounces report | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_email_clicks_by_contact_report**
> AcceptedResponse generate_email_clicks_by_contact_report(generate_email_clicks_by_contact_report)

Generate email clicks by contact report

Generates a new email clicks by contact report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_email_clicks_by_contact_report = EgoiRubyClient::GenerateEmailClicksByContactReport.new # GenerateEmailClicksByContactReport | Parameters for the email clicks by contact report

begin
  #Generate email clicks by contact report
  result = api_instance.generate_email_clicks_by_contact_report(generate_email_clicks_by_contact_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AdvancedReportsApi->generate_email_clicks_by_contact_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_email_clicks_by_contact_report** | [**GenerateEmailClicksByContactReport**](GenerateEmailClicksByContactReport.md)| Parameters for the email clicks by contact report | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_email_clicks_by_url_report**
> AcceptedResponse generate_email_clicks_by_url_report(generate_email_clicks_by_url_report)

Generate email clicks by URL report

Generates a new email clicks by URL report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_email_clicks_by_url_report = EgoiRubyClient::GenerateEmailClicksByUrlReport.new # GenerateEmailClicksByUrlReport | Parameters for the email clicks by URL report

begin
  #Generate email clicks by URL report
  result = api_instance.generate_email_clicks_by_url_report(generate_email_clicks_by_url_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AdvancedReportsApi->generate_email_clicks_by_url_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_email_clicks_by_url_report** | [**GenerateEmailClicksByUrlReport**](GenerateEmailClicksByUrlReport.md)| Parameters for the email clicks by URL report | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_email_events_report**
> AcceptedResponse generate_email_events_report(generate_email_events_report)

Generate email events report

Generates a new email events report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_email_events_report = EgoiRubyClient::GenerateEmailEventsReport.new # GenerateEmailEventsReport | Parameters for the email events report

begin
  #Generate email events report
  result = api_instance.generate_email_events_report(generate_email_events_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AdvancedReportsApi->generate_email_events_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_email_events_report** | [**GenerateEmailEventsReport**](GenerateEmailEventsReport.md)| Parameters for the email events report | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_email_sms_report**
> AcceptedResponse generate_email_sms_report(generate_sms_bounces_report)

Generate SMS bounces report

Generates a new SMS bounces report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_sms_bounces_report = EgoiRubyClient::GenerateSmsBouncesReport.new # GenerateSmsBouncesReport | Parameters for the SMS bounces report

begin
  #Generate SMS bounces report
  result = api_instance.generate_email_sms_report(generate_sms_bounces_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AdvancedReportsApi->generate_email_sms_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_sms_bounces_report** | [**GenerateSmsBouncesReport**](GenerateSmsBouncesReport.md)| Parameters for the SMS bounces report | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_email_unsubscriptions_report**
> AcceptedResponse generate_email_unsubscriptions_report(generate_email_unsubscriptions_report)

Generate email unsubscriptions report

Generates a new email unsubscriptions report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_email_unsubscriptions_report = EgoiRubyClient::GenerateEmailUnsubscriptionsReport.new # GenerateEmailUnsubscriptionsReport | Parameters for the email unsubscriptions report

begin
  #Generate email unsubscriptions report
  result = api_instance.generate_email_unsubscriptions_report(generate_email_unsubscriptions_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AdvancedReportsApi->generate_email_unsubscriptions_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_email_unsubscriptions_report** | [**GenerateEmailUnsubscriptionsReport**](GenerateEmailUnsubscriptionsReport.md)| Parameters for the email unsubscriptions report | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_form_answers_report**
> AcceptedResponse generate_form_answers_report(generate_form_answers_report)

Generate form answers report

Generates a new form answers report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_form_answers_report = EgoiRubyClient::GenerateFormAnswersReport.new # GenerateFormAnswersReport | Parameters for the form answers report

begin
  #Generate form answers report
  result = api_instance.generate_form_answers_report(generate_form_answers_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AdvancedReportsApi->generate_form_answers_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_form_answers_report** | [**GenerateFormAnswersReport**](GenerateFormAnswersReport.md)| Parameters for the form answers report | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_sends_report**
> AcceptedResponse generate_sends_report(generate_sends_report)

Generate sends report

Generates a new sends report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_sends_report = EgoiRubyClient::GenerateSendsReport.new # GenerateSendsReport | Parameters for the sends report

begin
  #Generate sends report
  result = api_instance.generate_sends_report(generate_sends_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AdvancedReportsApi->generate_sends_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_sends_report** | [**GenerateSendsReport**](GenerateSendsReport.md)| Parameters for the sends report | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_sms_events_report**
> AcceptedResponse generate_sms_events_report(generate_sms_events_report)

Generate SMS events report

Generates a new SMS events report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_sms_events_report = EgoiRubyClient::GenerateSmsEventsReport.new # GenerateSmsEventsReport | Parameters for the SMS events report

begin
  #Generate SMS events report
  result = api_instance.generate_sms_events_report(generate_sms_events_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AdvancedReportsApi->generate_sms_events_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_sms_events_report** | [**GenerateSmsEventsReport**](GenerateSmsEventsReport.md)| Parameters for the SMS events report | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_subscriptions_report**
> AcceptedResponse generate_subscriptions_report(generate_subscriptions_report)

Generate subscriptions report

Generates a new subscriptions report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_subscriptions_report = EgoiRubyClient::GenerateSubscriptionsReport.new # GenerateSubscriptionsReport | Parameters for the subscriptions report

begin
  #Generate subscriptions report
  result = api_instance.generate_subscriptions_report(generate_subscriptions_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AdvancedReportsApi->generate_subscriptions_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_subscriptions_report** | [**GenerateSubscriptionsReport**](GenerateSubscriptionsReport.md)| Parameters for the subscriptions report | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_unsubscriptions_report**
> AcceptedResponse generate_unsubscriptions_report(generate_unsubscriptions_report)

Generate unsubscriptions report

Generates a new unsubscriptions report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_unsubscriptions_report = EgoiRubyClient::GenerateUnsubscriptionsReport.new # GenerateUnsubscriptionsReport | Parameters for the unsubscriptions report

begin
  #Generate unsubscriptions report
  result = api_instance.generate_unsubscriptions_report(generate_unsubscriptions_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AdvancedReportsApi->generate_unsubscriptions_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_unsubscriptions_report** | [**GenerateUnsubscriptionsReport**](GenerateUnsubscriptionsReport.md)| Parameters for the unsubscriptions report | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_all_advanced_reports**
> AdvancedReportsCollection get_all_advanced_reports(opts)

Get all advanced reports

Returns all advanced reports

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
opts = {
  status: 'status_example', # String | Advanced report status
  title: 'title_example', # String | Advanced report title
  created_min: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Created initial date
  created_max: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Created finish
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  order: 'desc', # String | Type of order
  order_by: 'advanced_report_id' # String | Reference attribute to order the advanced reports
}

begin
  #Get all advanced reports
  result = api_instance.get_all_advanced_reports(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling AdvancedReportsApi->get_all_advanced_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| Advanced report status | [optional] 
 **title** | **String**| Advanced report title | [optional] 
 **created_min** | **DateTime**| Created initial date | [optional] 
 **created_max** | **DateTime**| Created finish | [optional] 
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **order** | **String**| Type of order | [optional] [default to &#39;desc&#39;]
 **order_by** | **String**| Reference attribute to order the advanced reports | [optional] [default to &#39;advanced_report_id&#39;]

### Return type

[**AdvancedReportsCollection**](AdvancedReportsCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



