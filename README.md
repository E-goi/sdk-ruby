![E-goi](https://www.e-goi.com/wp-content/themes/egoi2019/imgs/svg/logo-egoi.svg)

Almost anything you can do in E-goi, you can do with our API.

The API describes each available method. Learn about parameters, errors, and how to format your requests. That means you can easily call on E-goi actions for your integration.
**API** Full documentation at https://developers.e-goi.com/api/v3/

If you find a bug or something worth fixing, create an issue.

### Changelog
#### 1.0.0RC1
## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build egoi-ruby-client.gemspec
```

Then either install the gem locally:

```shell
gem install ./egoi-ruby-client-1.0.0RC1.gem
```
(for development, run `gem install --dev ./egoi-ruby-client-1.0.0RC1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'egoi-ruby-client', '~> 1.0.0RC1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/E-goi/sdk-ruby, then add the following in the Gemfile:

    gem 'egoi-ruby-client', :git => 'https://github.com/E-goi/sdk-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
## Documentation for API Endpoints

All URIs are relative to *https://api.egoiapp.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*EgoiRubyClient::AdvancedReportsApi* | [**generate_email_bounces_report**](docs/AdvancedReportsApi.md#generate_email_bounces_report) | **POST** /reports/advanced/email-bounces | Generate email bounces report
*EgoiRubyClient::AdvancedReportsApi* | [**generate_email_clicks_by_contact_report**](docs/AdvancedReportsApi.md#generate_email_clicks_by_contact_report) | **POST** /reports/advanced/email-clicks-by-contact | Generate email clicks by contact report
*EgoiRubyClient::AdvancedReportsApi* | [**generate_email_clicks_by_url_report**](docs/AdvancedReportsApi.md#generate_email_clicks_by_url_report) | **POST** /reports/advanced/email-clicks-by-url | Generate email clicks by URL report
*EgoiRubyClient::AdvancedReportsApi* | [**generate_email_events_report**](docs/AdvancedReportsApi.md#generate_email_events_report) | **POST** /reports/advanced/email-events | Generate email events report
*EgoiRubyClient::AdvancedReportsApi* | [**generate_email_sms_report**](docs/AdvancedReportsApi.md#generate_email_sms_report) | **POST** /reports/advanced/sms-bounces | Generate SMS bounces report
*EgoiRubyClient::AdvancedReportsApi* | [**generate_email_unsubscriptions_report**](docs/AdvancedReportsApi.md#generate_email_unsubscriptions_report) | **POST** /reports/advanced/email-unsubscriptions | Generate email unsubscriptions report
*EgoiRubyClient::AdvancedReportsApi* | [**generate_form_answers_report**](docs/AdvancedReportsApi.md#generate_form_answers_report) | **POST** /reports/advanced/form-answers | Generate form answers report
*EgoiRubyClient::AdvancedReportsApi* | [**generate_sends_report**](docs/AdvancedReportsApi.md#generate_sends_report) | **POST** /reports/advanced/sends | Generate sends report
*EgoiRubyClient::AdvancedReportsApi* | [**generate_sms_events_report**](docs/AdvancedReportsApi.md#generate_sms_events_report) | **POST** /reports/advanced/sms-events | Generate SMS events report
*EgoiRubyClient::AdvancedReportsApi* | [**generate_subscriptions_report**](docs/AdvancedReportsApi.md#generate_subscriptions_report) | **POST** /reports/advanced/subscriptions | Generate subscriptions report
*EgoiRubyClient::AdvancedReportsApi* | [**generate_unsubscriptions_report**](docs/AdvancedReportsApi.md#generate_unsubscriptions_report) | **POST** /reports/advanced/unsubscriptions | Generate unsubscriptions report
*EgoiRubyClient::AdvancedReportsApi* | [**get_all_advanced_reports**](docs/AdvancedReportsApi.md#get_all_advanced_reports) | **GET** /reports/advanced | Get all advanced reports
*EgoiRubyClient::AutomationsApi* | [**delete_automation**](docs/AutomationsApi.md#delete_automation) | **DELETE** /automations/{automation_id} | Remove automation
*EgoiRubyClient::AutomationsApi* | [**get_all_automations**](docs/AutomationsApi.md#get_all_automations) | **GET** /automations | Get all automations
*EgoiRubyClient::CNamesApi* | [**get_all_c_names**](docs/CNamesApi.md#get_all_c_names) | **GET** /cnames | Get All CNames
*EgoiRubyClient::CampaignGroupsApi* | [**create_campaign_group**](docs/CampaignGroupsApi.md#create_campaign_group) | **POST** /campaign-groups | Create new campaign group
*EgoiRubyClient::CampaignGroupsApi* | [**delete_campaign_group**](docs/CampaignGroupsApi.md#delete_campaign_group) | **DELETE** /campaign-groups/{group_id} | Remove Campaign Group
*EgoiRubyClient::CampaignGroupsApi* | [**get_all_campaign_groups**](docs/CampaignGroupsApi.md#get_all_campaign_groups) | **GET** /campaign-groups | Get all campaign groups
*EgoiRubyClient::CampaignGroupsApi* | [**update_campaign_group**](docs/CampaignGroupsApi.md#update_campaign_group) | **PUT** /campaign-groups/{group_id} | Update a specific campaign group
*EgoiRubyClient::CampaignsApi* | [**delete_campaigns**](docs/CampaignsApi.md#delete_campaigns) | **DELETE** /campaigns/{campaign_hash} | Remove Campaign
*EgoiRubyClient::CampaignsApi* | [**get_all_campaigns**](docs/CampaignsApi.md#get_all_campaigns) | **GET** /campaigns | Get all Campaigns
*EgoiRubyClient::ContactsApi* | [**action_attach_tag**](docs/ContactsApi.md#action_attach_tag) | **POST** /lists/{list_id}/contacts/actions/attach-tag | Attach tag to contact
*EgoiRubyClient::ContactsApi* | [**action_detach_tag**](docs/ContactsApi.md#action_detach_tag) | **POST** /lists/{list_id}/contacts/actions/detach-tag | Detach tag to contact
*EgoiRubyClient::ContactsApi* | [**action_export_contacts**](docs/ContactsApi.md#action_export_contacts) | **POST** /lists/{list_id}/contacts/actions/export | Exports a list of contacts
*EgoiRubyClient::ContactsApi* | [**action_import_bulk**](docs/ContactsApi.md#action_import_bulk) | **POST** /lists/{list_id}/contacts/actions/import-bulk | Import collection of contacts
*EgoiRubyClient::ContactsApi* | [**action_start_automation**](docs/ContactsApi.md#action_start_automation) | **POST** /lists/{list_id}/contacts/actions/start-automation | Start automation
*EgoiRubyClient::ContactsApi* | [**action_unsubscribe_contact**](docs/ContactsApi.md#action_unsubscribe_contact) | **POST** /lists/{list_id}/contacts/actions/unsubscribe | Unsubscribes contacts
*EgoiRubyClient::ContactsApi* | [**create_contact**](docs/ContactsApi.md#create_contact) | **POST** /lists/{list_id}/contacts | Create new contact
*EgoiRubyClient::ContactsApi* | [**get_all_contact_activities**](docs/ContactsApi.md#get_all_contact_activities) | **GET** /lists/{list_id}/contacts/{contact_id}/activities | Get all contact activities
*EgoiRubyClient::ContactsApi* | [**get_all_contacts**](docs/ContactsApi.md#get_all_contacts) | **GET** /lists/{list_id}/contacts | Get all contacts
*EgoiRubyClient::ContactsApi* | [**get_contact**](docs/ContactsApi.md#get_contact) | **GET** /lists/{list_id}/contacts/{contact_id} | Get contact
*EgoiRubyClient::ContactsApi* | [**patch_contact**](docs/ContactsApi.md#patch_contact) | **PATCH** /lists/{list_id}/contacts/{contact_id} | Update a specific contact
*EgoiRubyClient::EcommerceApi* | [**create_catalog**](docs/EcommerceApi.md#create_catalog) | **POST** /catalogs | Create new catalog
*EgoiRubyClient::EcommerceApi* | [**create_product**](docs/EcommerceApi.md#create_product) | **POST** /catalogs/{catalog_id}/products | Create new product
*EgoiRubyClient::EcommerceApi* | [**delete_catalog**](docs/EcommerceApi.md#delete_catalog) | **DELETE** /catalogs/{catalog_id} | Remove catalog
*EgoiRubyClient::EcommerceApi* | [**delete_product**](docs/EcommerceApi.md#delete_product) | **DELETE** /catalogs/{catalog_id}/products/{product_identifier} | Remove product
*EgoiRubyClient::EcommerceApi* | [**get_all_catalogs**](docs/EcommerceApi.md#get_all_catalogs) | **GET** /catalogs | Get all catalogs
*EgoiRubyClient::EcommerceApi* | [**get_all_products**](docs/EcommerceApi.md#get_all_products) | **GET** /catalogs/{catalog_id}/products | Get all products
*EgoiRubyClient::EcommerceApi* | [**get_product**](docs/EcommerceApi.md#get_product) | **GET** /catalogs/{catalog_id}/products/{product_identifier} | Get product
*EgoiRubyClient::EcommerceApi* | [**import_products**](docs/EcommerceApi.md#import_products) | **POST** /catalogs/{catalog_id}/products/actions/import | Import products
*EgoiRubyClient::EcommerceApi* | [**update_product**](docs/EcommerceApi.md#update_product) | **PATCH** /catalogs/{catalog_id}/products/{product_identifier} | Update product
*EgoiRubyClient::EmailApi* | [**action_enable_email_rss**](docs/EmailApi.md#action_enable_email_rss) | **POST** /campaigns/email/rss/{campaign_hash}/actions/enable | Enables a rss email campaign
*EgoiRubyClient::EmailApi* | [**action_send_email**](docs/EmailApi.md#action_send_email) | **POST** /campaigns/email/{campaign_hash}/actions/send | Send email message
*EgoiRubyClient::EmailApi* | [**create_email_campaign**](docs/EmailApi.md#create_email_campaign) | **POST** /campaigns/email | Create new email campaign
*EgoiRubyClient::EmailApi* | [**create_email_rss_campaign**](docs/EmailApi.md#create_email_rss_campaign) | **POST** /campaigns/email/rss | Create new email rss campaign
*EgoiRubyClient::EmailApi* | [**patch_email_campaign**](docs/EmailApi.md#patch_email_campaign) | **PATCH** /campaigns/email/{campaign_hash} | Update a specific email campaign
*EgoiRubyClient::FieldsApi* | [**create_extra_field**](docs/FieldsApi.md#create_extra_field) | **POST** /lists/{list_id}/fields/extra | Create extra field
*EgoiRubyClient::FieldsApi* | [**create_field_option**](docs/FieldsApi.md#create_field_option) | **POST** /lists/{list_id}/fields/extra/{field_id}/options | Create new field option
*EgoiRubyClient::FieldsApi* | [**delete_extra_field**](docs/FieldsApi.md#delete_extra_field) | **DELETE** /lists/{list_id}/fields/extra/{field_id} | Remove extra field
*EgoiRubyClient::FieldsApi* | [**delete_field_option**](docs/FieldsApi.md#delete_field_option) | **DELETE** /lists/{list_id}/fields/extra/{field_id}/options/{option_id} | Deletes an option
*EgoiRubyClient::FieldsApi* | [**get_all_field_options**](docs/FieldsApi.md#get_all_field_options) | **GET** /lists/{list_id}/fields/extra/{field_id}/options | Get all field options
*EgoiRubyClient::FieldsApi* | [**get_all_fields**](docs/FieldsApi.md#get_all_fields) | **GET** /lists/{list_id}/fields | Get all fields
*EgoiRubyClient::FieldsApi* | [**patch_base_field**](docs/FieldsApi.md#patch_base_field) | **PATCH** /lists/{list_id}/fields/base/{field_id} | Update base field
*EgoiRubyClient::FieldsApi* | [**patch_extra_field**](docs/FieldsApi.md#patch_extra_field) | **PATCH** /lists/{list_id}/fields/extra/{field_id} | Update extra field
*EgoiRubyClient::FieldsApi* | [**update_field_option**](docs/FieldsApi.md#update_field_option) | **PATCH** /lists/{list_id}/fields/extra/{field_id}/options/{option_id} | Update field option
*EgoiRubyClient::ListsApi* | [**create_list**](docs/ListsApi.md#create_list) | **POST** /lists | Create new list
*EgoiRubyClient::ListsApi* | [**delete_list**](docs/ListsApi.md#delete_list) | **DELETE** /lists/{list_id} | Remove list
*EgoiRubyClient::ListsApi* | [**get_all_lists**](docs/ListsApi.md#get_all_lists) | **GET** /lists | Get all lists
*EgoiRubyClient::ListsApi* | [**update_list**](docs/ListsApi.md#update_list) | **PATCH** /lists/{list_id} | Update a specific list
*EgoiRubyClient::MyAccountApi* | [**enable_te**](docs/MyAccountApi.md#enable_te) | **POST** /my-account/actions/enable-te | Enable Track&Engage
*EgoiRubyClient::MyAccountApi* | [**get_my_account**](docs/MyAccountApi.md#get_my_account) | **GET** /my-account | Get My Account Info
*EgoiRubyClient::OperationsApi* | [**action_approve_operation**](docs/OperationsApi.md#action_approve_operation) | **POST** /operations/actions/approve | Approve operation
*EgoiRubyClient::OperationsApi* | [**action_cancel_operation**](docs/OperationsApi.md#action_cancel_operation) | **POST** /operations/actions/cancel | Cancel operation
*EgoiRubyClient::OperationsApi* | [**action_pause_operation**](docs/OperationsApi.md#action_pause_operation) | **POST** /operations/actions/pause | Pause operation
*EgoiRubyClient::OperationsApi* | [**action_resume_operation**](docs/OperationsApi.md#action_resume_operation) | **POST** /operations/actions/resume | Resume operation
*EgoiRubyClient::OperationsApi* | [**get_all_operations**](docs/OperationsApi.md#get_all_operations) | **GET** /operations | Get all queued operations
*EgoiRubyClient::PingApi* | [**ping**](docs/PingApi.md#ping) | **POST** /ping | Pings the API
*EgoiRubyClient::PushApi* | [**action_send_push**](docs/PushApi.md#action_send_push) | **POST** /campaigns/push/{campaign_hash}/actions/send | Send push message
*EgoiRubyClient::PushApi* | [**create_push_campaign**](docs/PushApi.md#create_push_campaign) | **POST** /campaigns/push | Create new push campaign
*EgoiRubyClient::PushApi* | [**patch_push_campaign**](docs/PushApi.md#patch_push_campaign) | **PATCH** /campaigns/push/{campaign_hash} | Update a specific push campaign
*EgoiRubyClient::ReportsApi* | [**get_sms_report**](docs/ReportsApi.md#get_sms_report) | **GET** /reports/sms/{campaign_hash} | Get sms report
*EgoiRubyClient::ReportsApi* | [**get_voice_report**](docs/ReportsApi.md#get_voice_report) | **GET** /reports/voice/{campaign_hash} | Get voice report
*EgoiRubyClient::ReportsApi* | [**get_web_push_report**](docs/ReportsApi.md#get_web_push_report) | **GET** /reports/web-push/{campaign_hash} | Get webpush report
*EgoiRubyClient::SegmentsApi* | [**delete_segment**](docs/SegmentsApi.md#delete_segment) | **DELETE** /lists/{list_id}/segments/{segment_id} | Remove segment
*EgoiRubyClient::SegmentsApi* | [**get_all_segments**](docs/SegmentsApi.md#get_all_segments) | **GET** /lists/{list_id}/segments | Get all segments
*EgoiRubyClient::SendersApi* | [**create_cellphone_sender**](docs/SendersApi.md#create_cellphone_sender) | **POST** /senders/cellphone | Create cellphone sender
*EgoiRubyClient::SendersApi* | [**create_email_sender**](docs/SendersApi.md#create_email_sender) | **POST** /senders/email | Create email sender
*EgoiRubyClient::SendersApi* | [**create_phone_sender**](docs/SendersApi.md#create_phone_sender) | **POST** /senders/phone | Create phone sender
*EgoiRubyClient::SendersApi* | [**delete_cellphone_sender**](docs/SendersApi.md#delete_cellphone_sender) | **DELETE** /senders/cellphone/{sender_id} | Remove cellphone sender
*EgoiRubyClient::SendersApi* | [**delete_email_sender**](docs/SendersApi.md#delete_email_sender) | **DELETE** /senders/email/{sender_id} | Remove email sender
*EgoiRubyClient::SendersApi* | [**delete_phone_sender**](docs/SendersApi.md#delete_phone_sender) | **DELETE** /senders/phone/{sender_id} | Remove phone sender
*EgoiRubyClient::SendersApi* | [**get_all_cellphone_senders**](docs/SendersApi.md#get_all_cellphone_senders) | **GET** /senders/cellphone | Get all cellphone senders
*EgoiRubyClient::SendersApi* | [**get_all_email_senders**](docs/SendersApi.md#get_all_email_senders) | **GET** /senders/email | Get all email senders
*EgoiRubyClient::SendersApi* | [**get_all_phone_senders**](docs/SendersApi.md#get_all_phone_senders) | **GET** /senders/phone | Get all phone senders
*EgoiRubyClient::SendersApi* | [**put_email_sender**](docs/SendersApi.md#put_email_sender) | **PUT** /senders/email/{sender_id} | Update email sender
*EgoiRubyClient::SmartSmsApi* | [**action_send_smart_sms**](docs/SmartSmsApi.md#action_send_smart_sms) | **POST** /campaigns/smart-sms/{campaign_hash}/actions/send | Send smart sms message
*EgoiRubyClient::SmartSmsApi* | [**create_smart_sms_campaign**](docs/SmartSmsApi.md#create_smart_sms_campaign) | **POST** /campaigns/smart-sms | Create new smart sms campaign
*EgoiRubyClient::SmartSmsApi* | [**patch_smart_sms_campaign**](docs/SmartSmsApi.md#patch_smart_sms_campaign) | **PATCH** /campaigns/smart-sms/{campaign_hash} | Update a specific smart sms campaign
*EgoiRubyClient::SmsApi* | [**action_send_sms**](docs/SmsApi.md#action_send_sms) | **POST** /campaigns/sms/{campaign_hash}/actions/send | Send sms message
*EgoiRubyClient::SmsApi* | [**create_sms_campaign**](docs/SmsApi.md#create_sms_campaign) | **POST** /campaigns/sms | Create new sms campaign
*EgoiRubyClient::SmsApi* | [**patch_sms_campaign**](docs/SmsApi.md#patch_sms_campaign) | **PATCH** /campaigns/sms/{campaign_hash} | Update a specific sms campaign
*EgoiRubyClient::SuppressionListApi* | [**get_all_suppression_list**](docs/SuppressionListApi.md#get_all_suppression_list) | **GET** /suppression-list | Get the suppression list
*EgoiRubyClient::TagsApi* | [**create_tag**](docs/TagsApi.md#create_tag) | **POST** /tags | Create new tag
*EgoiRubyClient::TagsApi* | [**delete_tag**](docs/TagsApi.md#delete_tag) | **DELETE** /tags/{tag_id} | Remove tag
*EgoiRubyClient::TagsApi* | [**get_all_tags**](docs/TagsApi.md#get_all_tags) | **GET** /tags | Get all tags
*EgoiRubyClient::TagsApi* | [**update_tag**](docs/TagsApi.md#update_tag) | **PUT** /tags/{tag_id} | Update a specific tag
*EgoiRubyClient::UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /users/{user_id} | Remove user
*EgoiRubyClient::UsersApi* | [**get_all_users**](docs/UsersApi.md#get_all_users) | **GET** /users | Get all users
*EgoiRubyClient::UtilitiesApi* | [**get_all_countries**](docs/UtilitiesApi.md#get_all_countries) | **GET** /utilities/countries | Get all countries
*EgoiRubyClient::VoiceApi* | [**action_send_voice**](docs/VoiceApi.md#action_send_voice) | **POST** /campaigns/voice/{campaign_hash}/actions/send | Send voice message
*EgoiRubyClient::VoiceApi* | [**create_voice_campaign**](docs/VoiceApi.md#create_voice_campaign) | **POST** /campaigns/voice | Create new voice campaign
*EgoiRubyClient::VoiceApi* | [**patch_voice_campaign**](docs/VoiceApi.md#patch_voice_campaign) | **PATCH** /campaigns/voice/{campaign_hash} | Update a specific voice campaign
*EgoiRubyClient::WebpushApi* | [**action_enable_web_push_rss**](docs/WebpushApi.md#action_enable_web_push_rss) | **POST** /campaigns/webpush/rss/{campaign_hash}/actions/enable | Enable a rss webpush campaign
*EgoiRubyClient::WebpushApi* | [**action_send_web_push**](docs/WebpushApi.md#action_send_web_push) | **POST** /campaigns/web-push/{campaign_hash}/actions/send | Send webpush message
*EgoiRubyClient::WebpushApi* | [**create_web_push_campaign**](docs/WebpushApi.md#create_web_push_campaign) | **POST** /campaigns/web-push | Create new webpush campaign
*EgoiRubyClient::WebpushApi* | [**create_web_push_rss_campaign**](docs/WebpushApi.md#create_web_push_rss_campaign) | **POST** /campaigns/webpush/rss | Create new webpush rss campaign
*EgoiRubyClient::WebpushApi* | [**get_all_web_push_sites**](docs/WebpushApi.md#get_all_web_push_sites) | **GET** /webpush/site | Get all webpush sites
*EgoiRubyClient::WebpushApi* | [**patch_web_push_campaign**](docs/WebpushApi.md#patch_web_push_campaign) | **PATCH** /campaigns/web-push/{campaign_hash} | Update a specific webpush campaign


## Documentation for Models

 - [EgoiRubyClient::AbstractCampaignSendRequest](docs/AbstractCampaignSendRequest.md)
 - [EgoiRubyClient::AbstractCampaignSendRequestSegments](docs/AbstractCampaignSendRequestSegments.md)
 - [EgoiRubyClient::AbstractCampaignTemplate](docs/AbstractCampaignTemplate.md)
 - [EgoiRubyClient::AbstractCellphoneSender](docs/AbstractCellphoneSender.md)
 - [EgoiRubyClient::AbstractSegment](docs/AbstractSegment.md)
 - [EgoiRubyClient::AbstractSendEmail](docs/AbstractSendEmail.md)
 - [EgoiRubyClient::AbstractSendVoice](docs/AbstractSendVoice.md)
 - [EgoiRubyClient::AcceptedResponse](docs/AcceptedResponse.md)
 - [EgoiRubyClient::ActivityCollection](docs/ActivityCollection.md)
 - [EgoiRubyClient::AdvancedReport](docs/AdvancedReport.md)
 - [EgoiRubyClient::AdvancedReportCampaignsObject](docs/AdvancedReportCampaignsObject.md)
 - [EgoiRubyClient::AdvancedReportEmailBouncesColumns](docs/AdvancedReportEmailBouncesColumns.md)
 - [EgoiRubyClient::AdvancedReportEmailBouncesOptions](docs/AdvancedReportEmailBouncesOptions.md)
 - [EgoiRubyClient::AdvancedReportEmailClicksByContactColumns](docs/AdvancedReportEmailClicksByContactColumns.md)
 - [EgoiRubyClient::AdvancedReportEmailClicksByContactOptions](docs/AdvancedReportEmailClicksByContactOptions.md)
 - [EgoiRubyClient::AdvancedReportEmailClicksByUrlColumns](docs/AdvancedReportEmailClicksByUrlColumns.md)
 - [EgoiRubyClient::AdvancedReportEmailClicksByUrlOptions](docs/AdvancedReportEmailClicksByUrlOptions.md)
 - [EgoiRubyClient::AdvancedReportEmailEventsColumns](docs/AdvancedReportEmailEventsColumns.md)
 - [EgoiRubyClient::AdvancedReportEmailEventsOptions](docs/AdvancedReportEmailEventsOptions.md)
 - [EgoiRubyClient::AdvancedReportEmailUnsubscriptionsColumns](docs/AdvancedReportEmailUnsubscriptionsColumns.md)
 - [EgoiRubyClient::AdvancedReportEmailUnsubscriptionsOptions](docs/AdvancedReportEmailUnsubscriptionsOptions.md)
 - [EgoiRubyClient::AdvancedReportRange](docs/AdvancedReportRange.md)
 - [EgoiRubyClient::AdvancedReportSendsColumns](docs/AdvancedReportSendsColumns.md)
 - [EgoiRubyClient::AdvancedReportSendsOptions](docs/AdvancedReportSendsOptions.md)
 - [EgoiRubyClient::AdvancedReportSmsBouncesColumns](docs/AdvancedReportSmsBouncesColumns.md)
 - [EgoiRubyClient::AdvancedReportSmsBouncesOptions](docs/AdvancedReportSmsBouncesOptions.md)
 - [EgoiRubyClient::AdvancedReportSmsEventsColumns](docs/AdvancedReportSmsEventsColumns.md)
 - [EgoiRubyClient::AdvancedReportSmsEventsOptions](docs/AdvancedReportSmsEventsOptions.md)
 - [EgoiRubyClient::AdvancedReportSubscriptionsColumns](docs/AdvancedReportSubscriptionsColumns.md)
 - [EgoiRubyClient::AdvancedReportSubscriptionsOptions](docs/AdvancedReportSubscriptionsOptions.md)
 - [EgoiRubyClient::AdvancedReportUnsubscriptionsColumns](docs/AdvancedReportUnsubscriptionsColumns.md)
 - [EgoiRubyClient::AdvancedReportUnsubscriptionsOptions](docs/AdvancedReportUnsubscriptionsOptions.md)
 - [EgoiRubyClient::AdvancedReportsCollection](docs/AdvancedReportsCollection.md)
 - [EgoiRubyClient::AlphanumericCellphoneSender](docs/AlphanumericCellphoneSender.md)
 - [EgoiRubyClient::AttachTagRequest](docs/AttachTagRequest.md)
 - [EgoiRubyClient::AttachTagResponse](docs/AttachTagResponse.md)
 - [EgoiRubyClient::AutomaticSegment](docs/AutomaticSegment.md)
 - [EgoiRubyClient::Automation](docs/Automation.md)
 - [EgoiRubyClient::AutomationCollection](docs/AutomationCollection.md)
 - [EgoiRubyClient::BadRequest](docs/BadRequest.md)
 - [EgoiRubyClient::BalanceInfo](docs/BalanceInfo.md)
 - [EgoiRubyClient::BalanceInfoBalanceInfo](docs/BalanceInfoBalanceInfo.md)
 - [EgoiRubyClient::BaseConflict](docs/BaseConflict.md)
 - [EgoiRubyClient::BasicProduct](docs/BasicProduct.md)
 - [EgoiRubyClient::BasicSender](docs/BasicSender.md)
 - [EgoiRubyClient::BillingInfo](docs/BillingInfo.md)
 - [EgoiRubyClient::BulkActionResponse](docs/BulkActionResponse.md)
 - [EgoiRubyClient::CName](docs/CName.md)
 - [EgoiRubyClient::CNamesCollection](docs/CNamesCollection.md)
 - [EgoiRubyClient::Campaign](docs/Campaign.md)
 - [EgoiRubyClient::CampaignEmailBaseContent](docs/CampaignEmailBaseContent.md)
 - [EgoiRubyClient::CampaignEmailContent](docs/CampaignEmailContent.md)
 - [EgoiRubyClient::CampaignEmailContentFile](docs/CampaignEmailContentFile.md)
 - [EgoiRubyClient::CampaignEmailContentHtml](docs/CampaignEmailContentHtml.md)
 - [EgoiRubyClient::CampaignEmailContentHtmlPatch](docs/CampaignEmailContentHtmlPatch.md)
 - [EgoiRubyClient::CampaignEmailContentTemplate](docs/CampaignEmailContentTemplate.md)
 - [EgoiRubyClient::CampaignEmailContentWebPage](docs/CampaignEmailContentWebPage.md)
 - [EgoiRubyClient::CampaignEmailRssContent](docs/CampaignEmailRssContent.md)
 - [EgoiRubyClient::CampaignEmailRssContentHtml](docs/CampaignEmailRssContentHtml.md)
 - [EgoiRubyClient::CampaignEmailScheduleRequest](docs/CampaignEmailScheduleRequest.md)
 - [EgoiRubyClient::CampaignEmailSendNowRequest](docs/CampaignEmailSendNowRequest.md)
 - [EgoiRubyClient::CampaignEmailSendRequest](docs/CampaignEmailSendRequest.md)
 - [EgoiRubyClient::CampaignGroup](docs/CampaignGroup.md)
 - [EgoiRubyClient::CampaignGroupCollection](docs/CampaignGroupCollection.md)
 - [EgoiRubyClient::CampaignHash](docs/CampaignHash.md)
 - [EgoiRubyClient::CampaignPushContent](docs/CampaignPushContent.md)
 - [EgoiRubyClient::CampaignPushContentTemplate](docs/CampaignPushContentTemplate.md)
 - [EgoiRubyClient::CampaignPushContentText](docs/CampaignPushContentText.md)
 - [EgoiRubyClient::CampaignPushScheduleRequest](docs/CampaignPushScheduleRequest.md)
 - [EgoiRubyClient::CampaignPushSendRequest](docs/CampaignPushSendRequest.md)
 - [EgoiRubyClient::CampaignScheduleDate](docs/CampaignScheduleDate.md)
 - [EgoiRubyClient::CampaignSentLast30Days](docs/CampaignSentLast30Days.md)
 - [EgoiRubyClient::CampaignSentLast30DaysErrors](docs/CampaignSentLast30DaysErrors.md)
 - [EgoiRubyClient::CampaignSmartSmsHtml](docs/CampaignSmartSmsHtml.md)
 - [EgoiRubyClient::CampaignSmartSmsImport](docs/CampaignSmartSmsImport.md)
 - [EgoiRubyClient::CampaignSmartSmsOptions](docs/CampaignSmartSmsOptions.md)
 - [EgoiRubyClient::CampaignSmartSmsPageContent](docs/CampaignSmartSmsPageContent.md)
 - [EgoiRubyClient::CampaignSmartSmsRedirect](docs/CampaignSmartSmsRedirect.md)
 - [EgoiRubyClient::CampaignSmartSmsScheduleRequest](docs/CampaignSmartSmsScheduleRequest.md)
 - [EgoiRubyClient::CampaignSmartSmsSendRequest](docs/CampaignSmartSmsSendRequest.md)
 - [EgoiRubyClient::CampaignSmsContent](docs/CampaignSmsContent.md)
 - [EgoiRubyClient::CampaignSmsContentTemplate](docs/CampaignSmsContentTemplate.md)
 - [EgoiRubyClient::CampaignSmsContentText](docs/CampaignSmsContentText.md)
 - [EgoiRubyClient::CampaignSmsOptions](docs/CampaignSmsOptions.md)
 - [EgoiRubyClient::CampaignSmsScheduleRequest](docs/CampaignSmsScheduleRequest.md)
 - [EgoiRubyClient::CampaignSmsSendRequest](docs/CampaignSmsSendRequest.md)
 - [EgoiRubyClient::CampaignVoiceScheduleRequest](docs/CampaignVoiceScheduleRequest.md)
 - [EgoiRubyClient::CampaignVoiceSendRequest](docs/CampaignVoiceSendRequest.md)
 - [EgoiRubyClient::CampaignWebPushScheduleRequest](docs/CampaignWebPushScheduleRequest.md)
 - [EgoiRubyClient::CampaignWebPushSendRequest](docs/CampaignWebPushSendRequest.md)
 - [EgoiRubyClient::CampaignsCollection](docs/CampaignsCollection.md)
 - [EgoiRubyClient::Catalog](docs/Catalog.md)
 - [EgoiRubyClient::CatalogCollection](docs/CatalogCollection.md)
 - [EgoiRubyClient::CatalogPostRequest](docs/CatalogPostRequest.md)
 - [EgoiRubyClient::CellphoneSender](docs/CellphoneSender.md)
 - [EgoiRubyClient::CellphoneSenderCollection](docs/CellphoneSenderCollection.md)
 - [EgoiRubyClient::ComplexContact](docs/ComplexContact.md)
 - [EgoiRubyClient::ComplexField](docs/ComplexField.md)
 - [EgoiRubyClient::ComplexList](docs/ComplexList.md)
 - [EgoiRubyClient::ComplexUser](docs/ComplexUser.md)
 - [EgoiRubyClient::Conflict](docs/Conflict.md)
 - [EgoiRubyClient::Contact](docs/Contact.md)
 - [EgoiRubyClient::ContactActivity](docs/ContactActivity.md)
 - [EgoiRubyClient::ContactActivityAbstractActionsWithData](docs/ContactActivityAbstractActionsWithData.md)
 - [EgoiRubyClient::ContactActivityClick](docs/ContactActivityClick.md)
 - [EgoiRubyClient::ContactBaseExtra](docs/ContactBaseExtra.md)
 - [EgoiRubyClient::ContactBaseExtraBulk](docs/ContactBaseExtraBulk.md)
 - [EgoiRubyClient::ContactBaseFieldsBulkSchema](docs/ContactBaseFieldsBulkSchema.md)
 - [EgoiRubyClient::ContactBaseFieldsSchema](docs/ContactBaseFieldsSchema.md)
 - [EgoiRubyClient::ContactBaseStatusExtra](docs/ContactBaseStatusExtra.md)
 - [EgoiRubyClient::ContactBaseStatusExtraBulk](docs/ContactBaseStatusExtraBulk.md)
 - [EgoiRubyClient::ContactBaseWithStatusFieldsBulkSchema](docs/ContactBaseWithStatusFieldsBulkSchema.md)
 - [EgoiRubyClient::ContactBaseWithStatusFieldsSchema](docs/ContactBaseWithStatusFieldsSchema.md)
 - [EgoiRubyClient::ContactBaseWithStatusFieldsSchemaBase](docs/ContactBaseWithStatusFieldsSchemaBase.md)
 - [EgoiRubyClient::ContactBaseWithStatusFieldsSchemaBasePushTokenAndroid](docs/ContactBaseWithStatusFieldsSchemaBasePushTokenAndroid.md)
 - [EgoiRubyClient::ContactBaseWithStatusFieldsSchemaBasePushTokenIos](docs/ContactBaseWithStatusFieldsSchemaBasePushTokenIos.md)
 - [EgoiRubyClient::ContactBulk](docs/ContactBulk.md)
 - [EgoiRubyClient::ContactCollection](docs/ContactCollection.md)
 - [EgoiRubyClient::ContactExportRequest](docs/ContactExportRequest.md)
 - [EgoiRubyClient::ContactExtraFieldCellphone](docs/ContactExtraFieldCellphone.md)
 - [EgoiRubyClient::ContactExtraFieldCellphoneBulk](docs/ContactExtraFieldCellphoneBulk.md)
 - [EgoiRubyClient::ContactExtraFieldDate](docs/ContactExtraFieldDate.md)
 - [EgoiRubyClient::ContactExtraFieldEmail](docs/ContactExtraFieldEmail.md)
 - [EgoiRubyClient::ContactExtraFieldEmailBulk](docs/ContactExtraFieldEmailBulk.md)
 - [EgoiRubyClient::ContactExtraFieldNumber](docs/ContactExtraFieldNumber.md)
 - [EgoiRubyClient::ContactExtraFieldOptions](docs/ContactExtraFieldOptions.md)
 - [EgoiRubyClient::ContactExtraFieldPhone](docs/ContactExtraFieldPhone.md)
 - [EgoiRubyClient::ContactExtraFieldPhoneBulk](docs/ContactExtraFieldPhoneBulk.md)
 - [EgoiRubyClient::ContactExtraFieldText](docs/ContactExtraFieldText.md)
 - [EgoiRubyClient::ContactExtraFields](docs/ContactExtraFields.md)
 - [EgoiRubyClient::ContactExtraFieldsBulk](docs/ContactExtraFieldsBulk.md)
 - [EgoiRubyClient::ContactExtraFieldsBulkSchema](docs/ContactExtraFieldsBulkSchema.md)
 - [EgoiRubyClient::ContactExtraFieldsSchema](docs/ContactExtraFieldsSchema.md)
 - [EgoiRubyClient::ContactInsideBase](docs/ContactInsideBase.md)
 - [EgoiRubyClient::ContactInsideBaseBulk](docs/ContactInsideBaseBulk.md)
 - [EgoiRubyClient::ContactOtherActivity](docs/ContactOtherActivity.md)
 - [EgoiRubyClient::ContactStatusFieldsBulkSchema](docs/ContactStatusFieldsBulkSchema.md)
 - [EgoiRubyClient::ContactStatusFieldsSchema](docs/ContactStatusFieldsSchema.md)
 - [EgoiRubyClient::ContactTags](docs/ContactTags.md)
 - [EgoiRubyClient::ContactTagsBulk](docs/ContactTagsBulk.md)
 - [EgoiRubyClient::ContentVoice](docs/ContentVoice.md)
 - [EgoiRubyClient::ContentVoiceAudio](docs/ContentVoiceAudio.md)
 - [EgoiRubyClient::ContentVoicePatch](docs/ContentVoicePatch.md)
 - [EgoiRubyClient::ContentVoiceTemplate](docs/ContentVoiceTemplate.md)
 - [EgoiRubyClient::Country](docs/Country.md)
 - [EgoiRubyClient::CountryCollection](docs/CountryCollection.md)
 - [EgoiRubyClient::CreateContactResponse](docs/CreateContactResponse.md)
 - [EgoiRubyClient::DeleteCampaignsConflict](docs/DeleteCampaignsConflict.md)
 - [EgoiRubyClient::DeleteFieldsConflict](docs/DeleteFieldsConflict.md)
 - [EgoiRubyClient::DeleteListsConflict](docs/DeleteListsConflict.md)
 - [EgoiRubyClient::DeleteListsConflictsErrors](docs/DeleteListsConflictsErrors.md)
 - [EgoiRubyClient::DeleteSegmentsConflict](docs/DeleteSegmentsConflict.md)
 - [EgoiRubyClient::DeleteSegmentsConflictsErrors](docs/DeleteSegmentsConflictsErrors.md)
 - [EgoiRubyClient::DomainAlreadyDefined](docs/DomainAlreadyDefined.md)
 - [EgoiRubyClient::DomainAlreadyDefinedErrors](docs/DomainAlreadyDefinedErrors.md)
 - [EgoiRubyClient::EmailBouncesCampaignFields](docs/EmailBouncesCampaignFields.md)
 - [EgoiRubyClient::EmailBouncesListStatsFields](docs/EmailBouncesListStatsFields.md)
 - [EgoiRubyClient::EmailCampaignCreate](docs/EmailCampaignCreate.md)
 - [EgoiRubyClient::EmailCampaignPatch](docs/EmailCampaignPatch.md)
 - [EgoiRubyClient::EmailCampaignTemplate](docs/EmailCampaignTemplate.md)
 - [EgoiRubyClient::EmailClicksByContactCampaignFields](docs/EmailClicksByContactCampaignFields.md)
 - [EgoiRubyClient::EmailClicksByContactListStatsFields](docs/EmailClicksByContactListStatsFields.md)
 - [EgoiRubyClient::EmailClicksByUrlCampaignFields](docs/EmailClicksByUrlCampaignFields.md)
 - [EgoiRubyClient::EmailClicksByUrlListStatsFields](docs/EmailClicksByUrlListStatsFields.md)
 - [EgoiRubyClient::EmailEventsCampaignFields](docs/EmailEventsCampaignFields.md)
 - [EgoiRubyClient::EmailEventsListStatsFields](docs/EmailEventsListStatsFields.md)
 - [EgoiRubyClient::EmailRssCampaignCreate](docs/EmailRssCampaignCreate.md)
 - [EgoiRubyClient::EmailSendSegment](docs/EmailSendSegment.md)
 - [EgoiRubyClient::EmailSender](docs/EmailSender.md)
 - [EgoiRubyClient::EmailSenderCollection](docs/EmailSenderCollection.md)
 - [EgoiRubyClient::EmailSenderPutRequest](docs/EmailSenderPutRequest.md)
 - [EgoiRubyClient::EmailUnsubscriptionsCampaignFields](docs/EmailUnsubscriptionsCampaignFields.md)
 - [EgoiRubyClient::EmailUnsubscriptionsListStatsFields](docs/EmailUnsubscriptionsListStatsFields.md)
 - [EgoiRubyClient::EnableTeConflict](docs/EnableTeConflict.md)
 - [EgoiRubyClient::EnableTeConflictsErrors](docs/EnableTeConflictsErrors.md)
 - [EgoiRubyClient::ExportContactsWebhookData](docs/ExportContactsWebhookData.md)
 - [EgoiRubyClient::Field](docs/Field.md)
 - [EgoiRubyClient::FieldCollection](docs/FieldCollection.md)
 - [EgoiRubyClient::FieldInUse](docs/FieldInUse.md)
 - [EgoiRubyClient::FieldInUseErrors](docs/FieldInUseErrors.md)
 - [EgoiRubyClient::FieldInUseErrorsFieldInUseData](docs/FieldInUseErrorsFieldInUseData.md)
 - [EgoiRubyClient::FieldOption](docs/FieldOption.md)
 - [EgoiRubyClient::FieldOptionsCollection](docs/FieldOptionsCollection.md)
 - [EgoiRubyClient::Forbidden](docs/Forbidden.md)
 - [EgoiRubyClient::Form](docs/Form.md)
 - [EgoiRubyClient::GeneralInfo](docs/GeneralInfo.md)
 - [EgoiRubyClient::GenerateEmailBouncesReport](docs/GenerateEmailBouncesReport.md)
 - [EgoiRubyClient::GenerateEmailClicksByContactReport](docs/GenerateEmailClicksByContactReport.md)
 - [EgoiRubyClient::GenerateEmailClicksByUrlReport](docs/GenerateEmailClicksByUrlReport.md)
 - [EgoiRubyClient::GenerateEmailEventsReport](docs/GenerateEmailEventsReport.md)
 - [EgoiRubyClient::GenerateEmailUnsubscriptionsReport](docs/GenerateEmailUnsubscriptionsReport.md)
 - [EgoiRubyClient::GenerateFormAnswersReport](docs/GenerateFormAnswersReport.md)
 - [EgoiRubyClient::GenerateSendsReport](docs/GenerateSendsReport.md)
 - [EgoiRubyClient::GenerateSmsBouncesReport](docs/GenerateSmsBouncesReport.md)
 - [EgoiRubyClient::GenerateSmsEventsReport](docs/GenerateSmsEventsReport.md)
 - [EgoiRubyClient::GenerateSubscriptionsReport](docs/GenerateSubscriptionsReport.md)
 - [EgoiRubyClient::GenerateUnsubscriptionsReport](docs/GenerateUnsubscriptionsReport.md)
 - [EgoiRubyClient::HasAutomations](docs/HasAutomations.md)
 - [EgoiRubyClient::HasAutomationsErrors](docs/HasAutomationsErrors.md)
 - [EgoiRubyClient::HasCampaignsLastThirtyDays](docs/HasCampaignsLastThirtyDays.md)
 - [EgoiRubyClient::HasCampaignsLastThirtyDaysErrors](docs/HasCampaignsLastThirtyDaysErrors.md)
 - [EgoiRubyClient::HasPushApp](docs/HasPushApp.md)
 - [EgoiRubyClient::HasPushAppErrors](docs/HasPushAppErrors.md)
 - [EgoiRubyClient::HasQueuedCampaigns](docs/HasQueuedCampaigns.md)
 - [EgoiRubyClient::HasQueuedCampaignsErrors](docs/HasQueuedCampaignsErrors.md)
 - [EgoiRubyClient::HasQueuedOperations](docs/HasQueuedOperations.md)
 - [EgoiRubyClient::HasQueuedOperationsErrors](docs/HasQueuedOperationsErrors.md)
 - [EgoiRubyClient::HasWebPushSite](docs/HasWebPushSite.md)
 - [EgoiRubyClient::HasWebPushSiteErrors](docs/HasWebPushSiteErrors.md)
 - [EgoiRubyClient::HashcodeCampaign](docs/HashcodeCampaign.md)
 - [EgoiRubyClient::HeaderFooter](docs/HeaderFooter.md)
 - [EgoiRubyClient::HeaderFooterFooterLinks](docs/HeaderFooterFooterLinks.md)
 - [EgoiRubyClient::HeaderFooterHeaderLinks](docs/HeaderFooterHeaderLinks.md)
 - [EgoiRubyClient::HeaderFooterTemplate](docs/HeaderFooterTemplate.md)
 - [EgoiRubyClient::ImportBulkRequest](docs/ImportBulkRequest.md)
 - [EgoiRubyClient::InlineObject](docs/InlineObject.md)
 - [EgoiRubyClient::InternalServerError](docs/InternalServerError.md)
 - [EgoiRubyClient::InvalidSegmentType](docs/InvalidSegmentType.md)
 - [EgoiRubyClient::InvalidSegmentTypeErrors](docs/InvalidSegmentTypeErrors.md)
 - [EgoiRubyClient::Language](docs/Language.md)
 - [EgoiRubyClient::LimitContactsActionSend](docs/LimitContactsActionSend.md)
 - [EgoiRubyClient::LimitContactsPercentActionSend](docs/LimitContactsPercentActionSend.md)
 - [EgoiRubyClient::LimitContactsValueActionSend](docs/LimitContactsValueActionSend.md)
 - [EgoiRubyClient::LimitHourActionSend](docs/LimitHourActionSend.md)
 - [EgoiRubyClient::LimitHourActionSendLimitHour](docs/LimitHourActionSendLimitHour.md)
 - [EgoiRubyClient::LimitSpeedActionSend](docs/LimitSpeedActionSend.md)
 - [EgoiRubyClient::List](docs/List.md)
 - [EgoiRubyClient::ListCollection](docs/ListCollection.md)
 - [EgoiRubyClient::ListLimitReached](docs/ListLimitReached.md)
 - [EgoiRubyClient::ListLimitReachedErrors](docs/ListLimitReachedErrors.md)
 - [EgoiRubyClient::MessageWebPush](docs/MessageWebPush.md)
 - [EgoiRubyClient::MessageWebPushPost](docs/MessageWebPushPost.md)
 - [EgoiRubyClient::MessageWebPushRss](docs/MessageWebPushRss.md)
 - [EgoiRubyClient::ModuleInfo](docs/ModuleInfo.md)
 - [EgoiRubyClient::ModuleInfoModuleInfo](docs/ModuleInfoModuleInfo.md)
 - [EgoiRubyClient::ModuleInfoModuleInfoTe](docs/ModuleInfoModuleInfoTe.md)
 - [EgoiRubyClient::MyAccount](docs/MyAccount.md)
 - [EgoiRubyClient::NotFound](docs/NotFound.md)
 - [EgoiRubyClient::NotifyUserIdArrayActionSend](docs/NotifyUserIdArrayActionSend.md)
 - [EgoiRubyClient::Now](docs/Now.md)
 - [EgoiRubyClient::NumericCellphoneSender](docs/NumericCellphoneSender.md)
 - [EgoiRubyClient::OLimitContactsActionSend](docs/OLimitContactsActionSend.md)
 - [EgoiRubyClient::OSegmentsActionSend](docs/OSegmentsActionSend.md)
 - [EgoiRubyClient::OSegmentsWithoutContactActionSend](docs/OSegmentsWithoutContactActionSend.md)
 - [EgoiRubyClient::Operation](docs/Operation.md)
 - [EgoiRubyClient::OperationActionRequest](docs/OperationActionRequest.md)
 - [EgoiRubyClient::OperationActionResponse](docs/OperationActionResponse.md)
 - [EgoiRubyClient::OperationActionResponseError](docs/OperationActionResponseError.md)
 - [EgoiRubyClient::OperationOperationData](docs/OperationOperationData.md)
 - [EgoiRubyClient::OperationsCollection](docs/OperationsCollection.md)
 - [EgoiRubyClient::Overall](docs/Overall.md)
 - [EgoiRubyClient::OverallOverall](docs/OverallOverall.md)
 - [EgoiRubyClient::PatchRequestBaseField](docs/PatchRequestBaseField.md)
 - [EgoiRubyClient::PatchRequestField](docs/PatchRequestField.md)
 - [EgoiRubyClient::PatchRequestList](docs/PatchRequestList.md)
 - [EgoiRubyClient::PhoneCampaignTemplate](docs/PhoneCampaignTemplate.md)
 - [EgoiRubyClient::PhoneReport](docs/PhoneReport.md)
 - [EgoiRubyClient::PhoneSender](docs/PhoneSender.md)
 - [EgoiRubyClient::PhoneSenderCollection](docs/PhoneSenderCollection.md)
 - [EgoiRubyClient::Ping](docs/Ping.md)
 - [EgoiRubyClient::PlanInfo](docs/PlanInfo.md)
 - [EgoiRubyClient::PlanInfoPlanInfo](docs/PlanInfoPlanInfo.md)
 - [EgoiRubyClient::PostContactsConflict](docs/PostContactsConflict.md)
 - [EgoiRubyClient::PostListsConflict](docs/PostListsConflict.md)
 - [EgoiRubyClient::PostProductsConflict](docs/PostProductsConflict.md)
 - [EgoiRubyClient::PostRequestList](docs/PostRequestList.md)
 - [EgoiRubyClient::Product](docs/Product.md)
 - [EgoiRubyClient::ProductAlreadyExists](docs/ProductAlreadyExists.md)
 - [EgoiRubyClient::ProductAlreadyExistsErrors](docs/ProductAlreadyExistsErrors.md)
 - [EgoiRubyClient::ProductBulkRequest](docs/ProductBulkRequest.md)
 - [EgoiRubyClient::ProductCollection](docs/ProductCollection.md)
 - [EgoiRubyClient::ProductPatchRequest](docs/ProductPatchRequest.md)
 - [EgoiRubyClient::ProductPatchRequestRelatedProducts](docs/ProductPatchRequestRelatedProducts.md)
 - [EgoiRubyClient::ProductPostRequest](docs/ProductPostRequest.md)
 - [EgoiRubyClient::PushCampaignPatchRequest](docs/PushCampaignPatchRequest.md)
 - [EgoiRubyClient::PushCampaignPatchRequestContent](docs/PushCampaignPatchRequestContent.md)
 - [EgoiRubyClient::PushCampaignPostRequest](docs/PushCampaignPostRequest.md)
 - [EgoiRubyClient::PushCampaignPostRequestActions](docs/PushCampaignPostRequestActions.md)
 - [EgoiRubyClient::PushCampaignPostRequestGeoOptions](docs/PushCampaignPostRequestGeoOptions.md)
 - [EgoiRubyClient::PushCampaignPostRequestNotificationOptions](docs/PushCampaignPostRequestNotificationOptions.md)
 - [EgoiRubyClient::PushNotificationSoundSchema](docs/PushNotificationSoundSchema.md)
 - [EgoiRubyClient::PushNotificationSoundSchemaDefault](docs/PushNotificationSoundSchemaDefault.md)
 - [EgoiRubyClient::PushNotificationSoundSchemaNone](docs/PushNotificationSoundSchemaNone.md)
 - [EgoiRubyClient::PushNotificationSoundSchemaUrl](docs/PushNotificationSoundSchemaUrl.md)
 - [EgoiRubyClient::PushReport](docs/PushReport.md)
 - [EgoiRubyClient::PushVersions](docs/PushVersions.md)
 - [EgoiRubyClient::PushVersionsVersions](docs/PushVersionsVersions.md)
 - [EgoiRubyClient::RemoveRequest](docs/RemoveRequest.md)
 - [EgoiRubyClient::RemoveResponse](docs/RemoveResponse.md)
 - [EgoiRubyClient::RemoveResponseErrors](docs/RemoveResponseErrors.md)
 - [EgoiRubyClient::ReportCampaignsAll](docs/ReportCampaignsAll.md)
 - [EgoiRubyClient::ReportCampaignsGroup](docs/ReportCampaignsGroup.md)
 - [EgoiRubyClient::ReportCampaignsLast](docs/ReportCampaignsLast.md)
 - [EgoiRubyClient::ReportCampaignsSpecific](docs/ReportCampaignsSpecific.md)
 - [EgoiRubyClient::RequestItemsUnsubscribe](docs/RequestItemsUnsubscribe.md)
 - [EgoiRubyClient::SavedSegment](docs/SavedSegment.md)
 - [EgoiRubyClient::Segment](docs/Segment.md)
 - [EgoiRubyClient::SegmentCollection](docs/SegmentCollection.md)
 - [EgoiRubyClient::SegmentsActionSend](docs/SegmentsActionSend.md)
 - [EgoiRubyClient::SegmentsWithoutContactActionSend](docs/SegmentsWithoutContactActionSend.md)
 - [EgoiRubyClient::SendContact](docs/SendContact.md)
 - [EgoiRubyClient::SendContactCellphone](docs/SendContactCellphone.md)
 - [EgoiRubyClient::SendEmailContact](docs/SendEmailContact.md)
 - [EgoiRubyClient::SendNone](docs/SendNone.md)
 - [EgoiRubyClient::SendPush](docs/SendPush.md)
 - [EgoiRubyClient::SendSegment](docs/SendSegment.md)
 - [EgoiRubyClient::SendSmartSms](docs/SendSmartSms.md)
 - [EgoiRubyClient::SendSms](docs/SendSms.md)
 - [EgoiRubyClient::SendWebPush](docs/SendWebPush.md)
 - [EgoiRubyClient::SendsCampaignFields](docs/SendsCampaignFields.md)
 - [EgoiRubyClient::SmartSmsCampaign](docs/SmartSmsCampaign.md)
 - [EgoiRubyClient::SmartSmsCampaignCampaignContent](docs/SmartSmsCampaignCampaignContent.md)
 - [EgoiRubyClient::SmartSmsCampaignPatchRequest](docs/SmartSmsCampaignPatchRequest.md)
 - [EgoiRubyClient::SmartSmsCampaignPatchRequestCampaignContent](docs/SmartSmsCampaignPatchRequestCampaignContent.md)
 - [EgoiRubyClient::SmartSmsCampaignPatchRequestPageContent](docs/SmartSmsCampaignPatchRequestPageContent.md)
 - [EgoiRubyClient::SmartSmsSegmentsActionSend](docs/SmartSmsSegmentsActionSend.md)
 - [EgoiRubyClient::SmsBouncesCampaignFields](docs/SmsBouncesCampaignFields.md)
 - [EgoiRubyClient::SmsBouncesListStatsFields](docs/SmsBouncesListStatsFields.md)
 - [EgoiRubyClient::SmsCampaign](docs/SmsCampaign.md)
 - [EgoiRubyClient::SmsCampaignPatchRequest](docs/SmsCampaignPatchRequest.md)
 - [EgoiRubyClient::SmsCampaignPatchRequestContent](docs/SmsCampaignPatchRequestContent.md)
 - [EgoiRubyClient::SmsCampaignTemplate](docs/SmsCampaignTemplate.md)
 - [EgoiRubyClient::SmsEventsCampaignFields](docs/SmsEventsCampaignFields.md)
 - [EgoiRubyClient::SmsEventsListStatsFields](docs/SmsEventsListStatsFields.md)
 - [EgoiRubyClient::SmsSegmentsActionSend](docs/SmsSegmentsActionSend.md)
 - [EgoiRubyClient::StartAutomationRequest](docs/StartAutomationRequest.md)
 - [EgoiRubyClient::StartAutomationResponse](docs/StartAutomationResponse.md)
 - [EgoiRubyClient::SubscriptionsListStatsFields](docs/SubscriptionsListStatsFields.md)
 - [EgoiRubyClient::SuppressionList](docs/SuppressionList.md)
 - [EgoiRubyClient::SuppressionListItems](docs/SuppressionListItems.md)
 - [EgoiRubyClient::Tag](docs/Tag.md)
 - [EgoiRubyClient::TagCollection](docs/TagCollection.md)
 - [EgoiRubyClient::TagCollection1](docs/TagCollection1.md)
 - [EgoiRubyClient::TagRequest](docs/TagRequest.md)
 - [EgoiRubyClient::TagSegment](docs/TagSegment.md)
 - [EgoiRubyClient::TeResponse](docs/TeResponse.md)
 - [EgoiRubyClient::Unauthorized](docs/Unauthorized.md)
 - [EgoiRubyClient::UniqueFieldInUse](docs/UniqueFieldInUse.md)
 - [EgoiRubyClient::UniqueFieldInUseErrors](docs/UniqueFieldInUseErrors.md)
 - [EgoiRubyClient::UnprocessableEntity](docs/UnprocessableEntity.md)
 - [EgoiRubyClient::UnsubscriptionObject](docs/UnsubscriptionObject.md)
 - [EgoiRubyClient::UnsubscriptionsListStatsFields](docs/UnsubscriptionsListStatsFields.md)
 - [EgoiRubyClient::UsedInAutomations](docs/UsedInAutomations.md)
 - [EgoiRubyClient::UsedInAutomationsErrors](docs/UsedInAutomationsErrors.md)
 - [EgoiRubyClient::UsedInRecurringMessages](docs/UsedInRecurringMessages.md)
 - [EgoiRubyClient::UsedInRecurringMessagesErrors](docs/UsedInRecurringMessagesErrors.md)
 - [EgoiRubyClient::User](docs/User.md)
 - [EgoiRubyClient::UserCollection](docs/UserCollection.md)
 - [EgoiRubyClient::UserPostRequest](docs/UserPostRequest.md)
 - [EgoiRubyClient::VoiceCampaign](docs/VoiceCampaign.md)
 - [EgoiRubyClient::VoiceCampaignTemplate](docs/VoiceCampaignTemplate.md)
 - [EgoiRubyClient::VoicePatchCampaign](docs/VoicePatchCampaign.md)
 - [EgoiRubyClient::WebPushCampaign](docs/WebPushCampaign.md)
 - [EgoiRubyClient::WebPushPatchCampaign](docs/WebPushPatchCampaign.md)
 - [EgoiRubyClient::WebPushReport](docs/WebPushReport.md)
 - [EgoiRubyClient::WebPushReportBrowsers](docs/WebPushReportBrowsers.md)
 - [EgoiRubyClient::WebPushReportOperatingSystems](docs/WebPushReportOperatingSystems.md)
 - [EgoiRubyClient::WebPushRssCampaign](docs/WebPushRssCampaign.md)
 - [EgoiRubyClient::WebPushSite](docs/WebPushSite.md)
 - [EgoiRubyClient::WebPushStats](docs/WebPushStats.md)


## Documentation for Authorization


### Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header

