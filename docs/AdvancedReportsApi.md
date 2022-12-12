# EgoiRubyClient::AdvancedReportsApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**generate_email_bounces_report**](AdvancedReportsApi.md#generate_email_bounces_report) | **POST** /reports/advanced/email-bounces | Generate email bounces report |
| [**generate_email_clicks_by_contact_report**](AdvancedReportsApi.md#generate_email_clicks_by_contact_report) | **POST** /reports/advanced/email-clicks-by-contact | Generate email clicks by contact report |
| [**generate_email_clicks_by_url_report**](AdvancedReportsApi.md#generate_email_clicks_by_url_report) | **POST** /reports/advanced/email-clicks-by-url | Generate email clicks by URL report |
| [**generate_email_events_report**](AdvancedReportsApi.md#generate_email_events_report) | **POST** /reports/advanced/email-events | Generate email events report |
| [**generate_email_sms_report**](AdvancedReportsApi.md#generate_email_sms_report) | **POST** /reports/advanced/sms-bounces | Generate SMS bounces report |
| [**generate_email_unsubscriptions_report**](AdvancedReportsApi.md#generate_email_unsubscriptions_report) | **POST** /reports/advanced/email-unsubscriptions | Generate email unsubscriptions report |
| [**generate_form_answers_report**](AdvancedReportsApi.md#generate_form_answers_report) | **POST** /reports/advanced/form-answers | Generate form answers report |
| [**generate_sends_report**](AdvancedReportsApi.md#generate_sends_report) | **POST** /reports/advanced/sends | Generate sends report |
| [**generate_sms_events_report**](AdvancedReportsApi.md#generate_sms_events_report) | **POST** /reports/advanced/sms-events | Generate SMS events report |
| [**generate_subscriptions_report**](AdvancedReportsApi.md#generate_subscriptions_report) | **POST** /reports/advanced/subscriptions | Generate subscriptions report |
| [**generate_unsubscriptions_report**](AdvancedReportsApi.md#generate_unsubscriptions_report) | **POST** /reports/advanced/unsubscriptions | Generate unsubscriptions report |
| [**get_all_advanced_reports**](AdvancedReportsApi.md#get_all_advanced_reports) | **GET** /reports/advanced | Get all advanced reports |


## generate_email_bounces_report

> <AcceptedResponse> generate_email_bounces_report(generate_email_bounces_report)

Generate email bounces report

Generates a new email bounces report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_email_bounces_report = EgoiRubyClient::GenerateEmailBouncesReport.new({title: 'Report title', range: EgoiRubyClient::AdvancedReportRange.new({start: 3.56, _end: 3.56}), campaigns: [EgoiRubyClient::ReportCampaignsAll.new({list_id: 1, type: 'all'})], columns: EgoiRubyClient::AdvancedReportEmailBouncesColumns.new({list_base_fields: ['list_base_fields_example'], list_extra_fields: [EgoiRubyClient::AdvancedReportListExtraFieldsInner.new], list_stats_fields: EgoiRubyClient::EmailBouncesListStatsFields.new({bounce_date: false, bounce_type: false, bounce_detail: false}), campaign_fields: EgoiRubyClient::EmailBouncesCampaignFields.new({internal_name: false, campaign_hash: false})}), options: EgoiRubyClient::AdvancedReportEmailBouncesOptions.new({include_unopens: false})}) # GenerateEmailBouncesReport | Parameters for the email bounces report

begin
  # Generate email bounces report
  result = api_instance.generate_email_bounces_report(generate_email_bounces_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_email_bounces_report: #{e}"
end
```

#### Using the generate_email_bounces_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> generate_email_bounces_report_with_http_info(generate_email_bounces_report)

```ruby
begin
  # Generate email bounces report
  data, status_code, headers = api_instance.generate_email_bounces_report_with_http_info(generate_email_bounces_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_email_bounces_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_email_bounces_report** | [**GenerateEmailBouncesReport**](GenerateEmailBouncesReport.md) | Parameters for the email bounces report |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_email_clicks_by_contact_report

> <AcceptedResponse> generate_email_clicks_by_contact_report(generate_email_clicks_by_contact_report)

Generate email clicks by contact report

Generates a new email clicks by contact report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_email_clicks_by_contact_report = EgoiRubyClient::GenerateEmailClicksByContactReport.new({title: 'Report title', range: EgoiRubyClient::AdvancedReportRange.new({start: 3.56, _end: 3.56}), campaigns: [EgoiRubyClient::ReportCampaignsAll.new({list_id: 1, type: 'all'})], columns: EgoiRubyClient::AdvancedReportEmailClicksByContactColumns.new({list_base_fields: ['list_base_fields_example'], list_extra_fields: [EgoiRubyClient::AdvancedReportListExtraFieldsInner.new], list_stats_fields: EgoiRubyClient::EmailClicksByContactListStatsFields.new({clicks: false}), campaign_fields: EgoiRubyClient::EmailClicksByContactCampaignFields.new({internal_name: false, campaign_hash: false, url: false, city: false, country: false, region: false, program: false, os: false})}), options: EgoiRubyClient::AdvancedReportEmailClicksByContactOptions.new}) # GenerateEmailClicksByContactReport | Parameters for the email clicks by contact report

begin
  # Generate email clicks by contact report
  result = api_instance.generate_email_clicks_by_contact_report(generate_email_clicks_by_contact_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_email_clicks_by_contact_report: #{e}"
end
```

#### Using the generate_email_clicks_by_contact_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> generate_email_clicks_by_contact_report_with_http_info(generate_email_clicks_by_contact_report)

```ruby
begin
  # Generate email clicks by contact report
  data, status_code, headers = api_instance.generate_email_clicks_by_contact_report_with_http_info(generate_email_clicks_by_contact_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_email_clicks_by_contact_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_email_clicks_by_contact_report** | [**GenerateEmailClicksByContactReport**](GenerateEmailClicksByContactReport.md) | Parameters for the email clicks by contact report |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_email_clicks_by_url_report

> <AcceptedResponse> generate_email_clicks_by_url_report(generate_email_clicks_by_url_report)

Generate email clicks by URL report

Generates a new email clicks by URL report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_email_clicks_by_url_report = EgoiRubyClient::GenerateEmailClicksByUrlReport.new({title: 'Report title', range: EgoiRubyClient::AdvancedReportRange.new({start: 3.56, _end: 3.56}), campaigns: [EgoiRubyClient::ReportCampaignsAll.new({list_id: 1, type: 'all'})], columns: EgoiRubyClient::AdvancedReportEmailClicksByUrlColumns.new({list_base_fields: ['list_base_fields_example'], list_extra_fields: [EgoiRubyClient::AdvancedReportListExtraFieldsInner.new], list_stats_fields: EgoiRubyClient::EmailClicksByUrlListStatsFields.new({clicks: false, unique_clicks: false, click_rate_per_url: false}), campaign_fields: EgoiRubyClient::EmailClicksByUrlCampaignFields.new({internal_name: false, campaign_hash: false, url: false, city: false, country: false, region: false, program: false, os: false})}), options: EgoiRubyClient::AdvancedReportEmailClicksByUrlOptions.new}) # GenerateEmailClicksByUrlReport | Parameters for the email clicks by URL report

begin
  # Generate email clicks by URL report
  result = api_instance.generate_email_clicks_by_url_report(generate_email_clicks_by_url_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_email_clicks_by_url_report: #{e}"
end
```

#### Using the generate_email_clicks_by_url_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> generate_email_clicks_by_url_report_with_http_info(generate_email_clicks_by_url_report)

```ruby
begin
  # Generate email clicks by URL report
  data, status_code, headers = api_instance.generate_email_clicks_by_url_report_with_http_info(generate_email_clicks_by_url_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_email_clicks_by_url_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_email_clicks_by_url_report** | [**GenerateEmailClicksByUrlReport**](GenerateEmailClicksByUrlReport.md) | Parameters for the email clicks by URL report |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_email_events_report

> <AcceptedResponse> generate_email_events_report(generate_email_events_report)

Generate email events report

Generates a new email events report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_email_events_report = EgoiRubyClient::GenerateEmailEventsReport.new({title: 'Report title', range: EgoiRubyClient::AdvancedReportRange.new({start: 3.56, _end: 3.56}), campaigns: [EgoiRubyClient::ReportCampaignsAll.new({list_id: 1, type: 'all'})], columns: EgoiRubyClient::AdvancedReportEmailEventsColumns.new({list_base_fields: ['list_base_fields_example'], list_extra_fields: [EgoiRubyClient::AdvancedReportListExtraFieldsInner.new], list_stats_fields: EgoiRubyClient::EmailEventsListStatsFields.new({opens: false, clicks: false, complaints: false, unsubscribes: false, bounces: false, forwards: false, forwards_conversion: false, fb_likes: false, fb_shares: false, tw_shares: false, social_shares: false}), campaign_fields: EgoiRubyClient::EmailEventsCampaignFields.new({internal_name: false, campaign_hash: false, send_date: false, group: false, city: false, country: false, region: false, program: false, os: false})}), options: EgoiRubyClient::AdvancedReportEmailEventsOptions.new({include_unopens: false})}) # GenerateEmailEventsReport | Parameters for the email events report

begin
  # Generate email events report
  result = api_instance.generate_email_events_report(generate_email_events_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_email_events_report: #{e}"
end
```

#### Using the generate_email_events_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> generate_email_events_report_with_http_info(generate_email_events_report)

```ruby
begin
  # Generate email events report
  data, status_code, headers = api_instance.generate_email_events_report_with_http_info(generate_email_events_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_email_events_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_email_events_report** | [**GenerateEmailEventsReport**](GenerateEmailEventsReport.md) | Parameters for the email events report |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_email_sms_report

> <AcceptedResponse> generate_email_sms_report(generate_sms_bounces_report)

Generate SMS bounces report

Generates a new SMS bounces report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_sms_bounces_report = EgoiRubyClient::GenerateSmsBouncesReport.new({title: 'Report title', range: EgoiRubyClient::AdvancedReportRange.new({start: 3.56, _end: 3.56}), campaigns: [EgoiRubyClient::ReportCampaignsAll.new({list_id: 1, type: 'all'})], columns: EgoiRubyClient::AdvancedReportSmsBouncesColumns.new({list_base_fields: ['list_base_fields_example'], list_extra_fields: [EgoiRubyClient::AdvancedReportListExtraFieldsInner.new], list_stats_fields: EgoiRubyClient::SmsBouncesListStatsFields.new({delivery_answer: false, delivery_date: false}), campaign_fields: EgoiRubyClient::SmsBouncesCampaignFields.new({internal_name: false, campaign_hash: false, send_date: false, sender: false})}), options: EgoiRubyClient::AdvancedReportSmsBouncesOptions.new}) # GenerateSmsBouncesReport | Parameters for the SMS bounces report

begin
  # Generate SMS bounces report
  result = api_instance.generate_email_sms_report(generate_sms_bounces_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_email_sms_report: #{e}"
end
```

#### Using the generate_email_sms_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> generate_email_sms_report_with_http_info(generate_sms_bounces_report)

```ruby
begin
  # Generate SMS bounces report
  data, status_code, headers = api_instance.generate_email_sms_report_with_http_info(generate_sms_bounces_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_email_sms_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_sms_bounces_report** | [**GenerateSmsBouncesReport**](GenerateSmsBouncesReport.md) | Parameters for the SMS bounces report |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_email_unsubscriptions_report

> <AcceptedResponse> generate_email_unsubscriptions_report(generate_email_unsubscriptions_report)

Generate email unsubscriptions report

Generates a new email unsubscriptions report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_email_unsubscriptions_report = EgoiRubyClient::GenerateEmailUnsubscriptionsReport.new({title: 'Report title', range: EgoiRubyClient::AdvancedReportRange.new({start: 3.56, _end: 3.56}), campaigns: [EgoiRubyClient::ReportCampaignsAll.new({list_id: 1, type: 'all'})], columns: EgoiRubyClient::AdvancedReportEmailUnsubscriptionsColumns.new({list_base_fields: ['list_base_fields_example'], list_extra_fields: [EgoiRubyClient::AdvancedReportListExtraFieldsInner.new], list_stats_fields: EgoiRubyClient::EmailUnsubscriptionsListStatsFields.new({unsubscription_method: false, unsubscription_motive: false, unsubscription_date: false}), campaign_fields: EgoiRubyClient::EmailUnsubscriptionsCampaignFields.new({internal_name: false, campaign_hash: false, sender: false})}), options: EgoiRubyClient::AdvancedReportEmailUnsubscriptionsOptions.new}) # GenerateEmailUnsubscriptionsReport | Parameters for the email unsubscriptions report

begin
  # Generate email unsubscriptions report
  result = api_instance.generate_email_unsubscriptions_report(generate_email_unsubscriptions_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_email_unsubscriptions_report: #{e}"
end
```

#### Using the generate_email_unsubscriptions_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> generate_email_unsubscriptions_report_with_http_info(generate_email_unsubscriptions_report)

```ruby
begin
  # Generate email unsubscriptions report
  data, status_code, headers = api_instance.generate_email_unsubscriptions_report_with_http_info(generate_email_unsubscriptions_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_email_unsubscriptions_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_email_unsubscriptions_report** | [**GenerateEmailUnsubscriptionsReport**](GenerateEmailUnsubscriptionsReport.md) | Parameters for the email unsubscriptions report |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_form_answers_report

> <AcceptedResponse> generate_form_answers_report(generate_form_answers_report)

Generate form answers report

Generates a new form answers report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_form_answers_report = EgoiRubyClient::GenerateFormAnswersReport.new({title: 'Report title', range: EgoiRubyClient::AdvancedReportRange.new({start: 3.56, _end: 3.56}), forms: [EgoiRubyClient::AdvancedReportFormsInner.new]}) # GenerateFormAnswersReport | Parameters for the form answers report

begin
  # Generate form answers report
  result = api_instance.generate_form_answers_report(generate_form_answers_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_form_answers_report: #{e}"
end
```

#### Using the generate_form_answers_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> generate_form_answers_report_with_http_info(generate_form_answers_report)

```ruby
begin
  # Generate form answers report
  data, status_code, headers = api_instance.generate_form_answers_report_with_http_info(generate_form_answers_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_form_answers_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_form_answers_report** | [**GenerateFormAnswersReport**](GenerateFormAnswersReport.md) | Parameters for the form answers report |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_sends_report

> <AcceptedResponse> generate_sends_report(generate_sends_report)

Generate sends report

Generates a new sends report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_sends_report = EgoiRubyClient::GenerateSendsReport.new({title: 'Report title', range: EgoiRubyClient::AdvancedReportRange.new({start: 3.56, _end: 3.56}), lists: [1], columns: EgoiRubyClient::AdvancedReportSendsColumns.new({list_base_fields: ['list_base_fields_example'], list_extra_fields: [EgoiRubyClient::AdvancedReportListExtraFieldsInner.new], campaign_fields: EgoiRubyClient::SendsCampaignFields.new({internal_name: false, campaign_hash: false, group: false, channel: false, type: false, sender: false})}), options: EgoiRubyClient::AdvancedReportSendsOptions.new}) # GenerateSendsReport | Parameters for the sends report

begin
  # Generate sends report
  result = api_instance.generate_sends_report(generate_sends_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_sends_report: #{e}"
end
```

#### Using the generate_sends_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> generate_sends_report_with_http_info(generate_sends_report)

```ruby
begin
  # Generate sends report
  data, status_code, headers = api_instance.generate_sends_report_with_http_info(generate_sends_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_sends_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_sends_report** | [**GenerateSendsReport**](GenerateSendsReport.md) | Parameters for the sends report |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_sms_events_report

> <AcceptedResponse> generate_sms_events_report(generate_sms_events_report)

Generate SMS events report

Generates a new SMS events report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_sms_events_report = EgoiRubyClient::GenerateSmsEventsReport.new({title: 'Report title', range: EgoiRubyClient::AdvancedReportRange.new({start: 3.56, _end: 3.56}), campaigns: [EgoiRubyClient::ReportCampaignsAll.new({list_id: 1, type: 'all'})], columns: EgoiRubyClient::AdvancedReportSmsEventsColumns.new({list_base_fields: ['list_base_fields_example'], list_extra_fields: [EgoiRubyClient::AdvancedReportListExtraFieldsInner.new], list_stats_fields: EgoiRubyClient::SmsEventsListStatsFields.new({delivery_answer: false, delivery_date: false}), campaign_fields: EgoiRubyClient::SmsEventsCampaignFields.new({internal_name: false, campaign_hash: false, send_date: false, group: false, sender: false})}), options: EgoiRubyClient::AdvancedReportSmsEventsOptions.new}) # GenerateSmsEventsReport | Parameters for the SMS events report

begin
  # Generate SMS events report
  result = api_instance.generate_sms_events_report(generate_sms_events_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_sms_events_report: #{e}"
end
```

#### Using the generate_sms_events_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> generate_sms_events_report_with_http_info(generate_sms_events_report)

```ruby
begin
  # Generate SMS events report
  data, status_code, headers = api_instance.generate_sms_events_report_with_http_info(generate_sms_events_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_sms_events_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_sms_events_report** | [**GenerateSmsEventsReport**](GenerateSmsEventsReport.md) | Parameters for the SMS events report |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_subscriptions_report

> <AcceptedResponse> generate_subscriptions_report(generate_subscriptions_report)

Generate subscriptions report

Generates a new subscriptions report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_subscriptions_report = EgoiRubyClient::GenerateSubscriptionsReport.new({title: 'Report title', range: EgoiRubyClient::AdvancedReportRange.new({start: 3.56, _end: 3.56}), lists: [1], columns: EgoiRubyClient::AdvancedReportSubscriptionsColumns.new({list_base_fields: ['list_base_fields_example'], list_extra_fields: [EgoiRubyClient::AdvancedReportListExtraFieldsInner.new], list_stats_fields: EgoiRubyClient::SubscriptionsListStatsFields.new({subscription_method: false, subscription_src: false})}), options: EgoiRubyClient::AdvancedReportSubscriptionsOptions.new}) # GenerateSubscriptionsReport | Parameters for the subscriptions report

begin
  # Generate subscriptions report
  result = api_instance.generate_subscriptions_report(generate_subscriptions_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_subscriptions_report: #{e}"
end
```

#### Using the generate_subscriptions_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> generate_subscriptions_report_with_http_info(generate_subscriptions_report)

```ruby
begin
  # Generate subscriptions report
  data, status_code, headers = api_instance.generate_subscriptions_report_with_http_info(generate_subscriptions_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_subscriptions_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_subscriptions_report** | [**GenerateSubscriptionsReport**](GenerateSubscriptionsReport.md) | Parameters for the subscriptions report |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_unsubscriptions_report

> <AcceptedResponse> generate_unsubscriptions_report(generate_unsubscriptions_report)

Generate unsubscriptions report

Generates a new unsubscriptions report

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
generate_unsubscriptions_report = EgoiRubyClient::GenerateUnsubscriptionsReport.new({title: 'Report title', range: EgoiRubyClient::AdvancedReportRange.new({start: 3.56, _end: 3.56}), lists: [1], columns: EgoiRubyClient::AdvancedReportUnsubscriptionsColumns.new({list_base_fields: ['list_base_fields_example'], list_extra_fields: [EgoiRubyClient::AdvancedReportListExtraFieldsInner.new], list_stats_fields: EgoiRubyClient::UnsubscriptionsListStatsFields.new({unsubscription_method: false, unsubscription_src: false, unsubscription_date: false})}), options: EgoiRubyClient::AdvancedReportUnsubscriptionsOptions.new}) # GenerateUnsubscriptionsReport | Parameters for the unsubscriptions report

begin
  # Generate unsubscriptions report
  result = api_instance.generate_unsubscriptions_report(generate_unsubscriptions_report)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_unsubscriptions_report: #{e}"
end
```

#### Using the generate_unsubscriptions_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> generate_unsubscriptions_report_with_http_info(generate_unsubscriptions_report)

```ruby
begin
  # Generate unsubscriptions report
  data, status_code, headers = api_instance.generate_unsubscriptions_report_with_http_info(generate_unsubscriptions_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->generate_unsubscriptions_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_unsubscriptions_report** | [**GenerateUnsubscriptionsReport**](GenerateUnsubscriptionsReport.md) | Parameters for the unsubscriptions report |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_advanced_reports

> <AdvancedReportsCollection> get_all_advanced_reports(opts)

Get all advanced reports

Returns all advanced reports

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

api_instance = EgoiRubyClient::AdvancedReportsApi.new
opts = {
  status: 'queued', # String | Advanced report status
  title: 'title_example', # String | Advanced report title
  created_min: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Created initial date
  created_max: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Created finish
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56, # Integer | Number of items to return
  order: 'asc', # String | Type of order
  order_by: 'advanced_report_id' # String | Reference attribute to order the advanced reports
}

begin
  # Get all advanced reports
  result = api_instance.get_all_advanced_reports(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->get_all_advanced_reports: #{e}"
end
```

#### Using the get_all_advanced_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdvancedReportsCollection>, Integer, Hash)> get_all_advanced_reports_with_http_info(opts)

```ruby
begin
  # Get all advanced reports
  data, status_code, headers = api_instance.get_all_advanced_reports_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdvancedReportsCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling AdvancedReportsApi->get_all_advanced_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Advanced report status | [optional] |
| **title** | **String** | Advanced report title | [optional] |
| **created_min** | **Time** | Created initial date | [optional] |
| **created_max** | **Time** | Created finish | [optional] |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |
| **order** | **String** | Type of order | [optional][default to &#39;desc&#39;] |
| **order_by** | **String** | Reference attribute to order the advanced reports | [optional][default to &#39;advanced_report_id&#39;] |

### Return type

[**AdvancedReportsCollection**](AdvancedReportsCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

