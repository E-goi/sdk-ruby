![E-goi](https://www.e-goi.com/wp-content/themes/egoi2019/imgs/svg/logo-egoi.svg)

Almost anything you can do in E-goi, you can do with our API.

The API describes each available method. Learn about parameters, errors, and how to format your requests. That means you can easily call on E-goi actions for your integration.
**API** Full documentation at https://developers.e-goi.com/api/v3/

If you find a bug or something worth fixing, create an issue.

### Changelog
#### 1.1.2RC1
## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build egoi-ruby-client.gemspec
```

Then either install the gem locally:

```shell
gem install ./egoi-ruby-client-1.1.2RC1.gem
```

(for development, run `gem install --dev ./egoi-ruby-client-1.1.2RC1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'egoi-ruby-client', '~> 1.1.2RC1'

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
*EgoiRubyClient::CNamesApi* | [**create_c_name**](docs/CNamesApi.md#create_c_name) | **POST** /cnames | Create cname
*EgoiRubyClient::CNamesApi* | [**get_all_c_names**](docs/CNamesApi.md#get_all_c_names) | **GET** /cnames | Get All CNames
*EgoiRubyClient::CampaignGroupsApi* | [**create_campaign_group**](docs/CampaignGroupsApi.md#create_campaign_group) | **POST** /campaign-groups | Create new campaign group
*EgoiRubyClient::CampaignGroupsApi* | [**delete_campaign_group**](docs/CampaignGroupsApi.md#delete_campaign_group) | **DELETE** /campaign-groups/{group_id} | Remove Campaign Group
*EgoiRubyClient::CampaignGroupsApi* | [**get_all_campaign_groups**](docs/CampaignGroupsApi.md#get_all_campaign_groups) | **GET** /campaign-groups | Get all campaign groups
*EgoiRubyClient::CampaignGroupsApi* | [**update_campaign_group**](docs/CampaignGroupsApi.md#update_campaign_group) | **PUT** /campaign-groups/{group_id} | Update a specific campaign group
*EgoiRubyClient::CampaignsApi* | [**delete_campaigns**](docs/CampaignsApi.md#delete_campaigns) | **DELETE** /campaigns/{campaign_hash} | Remove Campaign
*EgoiRubyClient::CampaignsApi* | [**get_all_campaigns**](docs/CampaignsApi.md#get_all_campaigns) | **GET** /campaigns | Get all Campaigns
*EgoiRubyClient::ConnectedSitesApi* | [**create_connected_sites**](docs/ConnectedSitesApi.md#create_connected_sites) | **POST** /connectedsites | Creates a Connected Site
*EgoiRubyClient::ConnectedSitesApi* | [**delete_connected_sites**](docs/ConnectedSitesApi.md#delete_connected_sites) | **DELETE** /connectedsites/{domain} | Deletes a Connected Site
*EgoiRubyClient::ConnectedSitesApi* | [**get_all_connected_sites**](docs/ConnectedSitesApi.md#get_all_connected_sites) | **GET** /connectedsites | Get all Connected Sites
*EgoiRubyClient::ConnectedSitesApi* | [**get_connected_sites**](docs/ConnectedSitesApi.md#get_connected_sites) | **GET** /connectedsites/{domain} | Get a Connected Site
*EgoiRubyClient::ContactsApi* | [**action_activate_contacts**](docs/ContactsApi.md#action_activate_contacts) | **POST** /lists/{list_id}/contacts/actions/activate | Activate contacts
*EgoiRubyClient::ContactsApi* | [**action_attach_tag**](docs/ContactsApi.md#action_attach_tag) | **POST** /lists/{list_id}/contacts/actions/attach-tag | Attach tag to contact
*EgoiRubyClient::ContactsApi* | [**action_deactivate_contacts**](docs/ContactsApi.md#action_deactivate_contacts) | **POST** /lists/{list_id}/contacts/actions/deactivate | Deactivate contacts
*EgoiRubyClient::ContactsApi* | [**action_detach_tag**](docs/ContactsApi.md#action_detach_tag) | **POST** /lists/{list_id}/contacts/actions/detach-tag | Detach tag to contact
*EgoiRubyClient::ContactsApi* | [**action_export_contacts**](docs/ContactsApi.md#action_export_contacts) | **POST** /lists/{list_id}/contacts/actions/export | Exports a list of contacts
*EgoiRubyClient::ContactsApi* | [**action_forget_contacts**](docs/ContactsApi.md#action_forget_contacts) | **POST** /lists/{list_id}/contacts/actions/forget | Forget contacts
*EgoiRubyClient::ContactsApi* | [**action_import_bulk**](docs/ContactsApi.md#action_import_bulk) | **POST** /lists/{list_id}/contacts/actions/import-bulk | Import collection of contacts
*EgoiRubyClient::ContactsApi* | [**action_start_automation**](docs/ContactsApi.md#action_start_automation) | **POST** /lists/{list_id}/contacts/actions/start-automation | Start automation
*EgoiRubyClient::ContactsApi* | [**action_unsubscribe_contact**](docs/ContactsApi.md#action_unsubscribe_contact) | **POST** /lists/{list_id}/contacts/actions/unsubscribe | Unsubscribes contacts
*EgoiRubyClient::ContactsApi* | [**action_update_contacts**](docs/ContactsApi.md#action_update_contacts) | **POST** /lists/{list_id}/contacts/actions/update | Updates contacts
*EgoiRubyClient::ContactsApi* | [**create_contact**](docs/ContactsApi.md#create_contact) | **POST** /lists/{list_id}/contacts | Create new contact
*EgoiRubyClient::ContactsApi* | [**get_all_contact_activities**](docs/ContactsApi.md#get_all_contact_activities) | **GET** /lists/{list_id}/contacts/{contact_id}/activities | Get all contact activities
*EgoiRubyClient::ContactsApi* | [**get_all_contacts**](docs/ContactsApi.md#get_all_contacts) | **GET** /lists/{list_id}/contacts | Get all contacts
*EgoiRubyClient::ContactsApi* | [**get_all_contacts_by_segment**](docs/ContactsApi.md#get_all_contacts_by_segment) | **GET** /lists/{list_id}/contacts/segment/{segment_id} | Get all contacts by Segment Id
*EgoiRubyClient::ContactsApi* | [**get_contact**](docs/ContactsApi.md#get_contact) | **GET** /lists/{list_id}/contacts/{contact_id} | Get contact
*EgoiRubyClient::ContactsApi* | [**patch_contact**](docs/ContactsApi.md#patch_contact) | **PATCH** /lists/{list_id}/contacts/{contact_id} | Update a specific contact
*EgoiRubyClient::ContactsApi* | [**search_contacts**](docs/ContactsApi.md#search_contacts) | **GET** /contacts/search | Search contact
*EgoiRubyClient::EcommerceApi* | [**create_cart**](docs/EcommerceApi.md#create_cart) | **POST** /{domain}/carts | Create cart
*EgoiRubyClient::EcommerceApi* | [**create_catalog**](docs/EcommerceApi.md#create_catalog) | **POST** /catalogs | Create new catalog
*EgoiRubyClient::EcommerceApi* | [**create_order**](docs/EcommerceApi.md#create_order) | **POST** /{domain}/orders | Create order
*EgoiRubyClient::EcommerceApi* | [**create_product**](docs/EcommerceApi.md#create_product) | **POST** /catalogs/{catalog_id}/products | Create new product
*EgoiRubyClient::EcommerceApi* | [**delete_catalog**](docs/EcommerceApi.md#delete_catalog) | **DELETE** /catalogs/{catalog_id} | Remove catalog
*EgoiRubyClient::EcommerceApi* | [**delete_product**](docs/EcommerceApi.md#delete_product) | **DELETE** /catalogs/{catalog_id}/products/{product_identifier} | Remove product
*EgoiRubyClient::EcommerceApi* | [**get_all_catalogs**](docs/EcommerceApi.md#get_all_catalogs) | **GET** /catalogs | Get all catalogs
*EgoiRubyClient::EcommerceApi* | [**get_all_products**](docs/EcommerceApi.md#get_all_products) | **GET** /catalogs/{catalog_id}/products | Get all products
*EgoiRubyClient::EcommerceApi* | [**get_product**](docs/EcommerceApi.md#get_product) | **GET** /catalogs/{catalog_id}/products/{product_identifier} | Get product
*EgoiRubyClient::EcommerceApi* | [**import_products**](docs/EcommerceApi.md#import_products) | **POST** /catalogs/{catalog_id}/products/actions/import | Import products
*EgoiRubyClient::EcommerceApi* | [**update_product**](docs/EcommerceApi.md#update_product) | **PATCH** /catalogs/{catalog_id}/products/{product_identifier} | Update product
*EgoiRubyClient::EcommerceActivityApi* | [**import_orders_bulk**](docs/EcommerceActivityApi.md#import_orders_bulk) | **POST** /lists/{list_id}/orders | Orders import bulk request
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
*EgoiRubyClient::MyAccountApi* | [**enable_transactional**](docs/MyAccountApi.md#enable_transactional) | **POST** /my-account/actions/enable-transactional | Enable Transactional
*EgoiRubyClient::MyAccountApi* | [**get_my_account**](docs/MyAccountApi.md#get_my_account) | **GET** /my-account | Get My Account Info
*EgoiRubyClient::OperationsApi* | [**action_approve_operation**](docs/OperationsApi.md#action_approve_operation) | **POST** /operations/actions/approve | Approve operation
*EgoiRubyClient::OperationsApi* | [**action_cancel_operation**](docs/OperationsApi.md#action_cancel_operation) | **POST** /operations/actions/cancel | Cancel operation
*EgoiRubyClient::OperationsApi* | [**action_pause_operation**](docs/OperationsApi.md#action_pause_operation) | **POST** /operations/actions/pause | Pause operation
*EgoiRubyClient::OperationsApi* | [**action_resume_operation**](docs/OperationsApi.md#action_resume_operation) | **POST** /operations/actions/resume | Resume operation
*EgoiRubyClient::OperationsApi* | [**get_all_operations**](docs/OperationsApi.md#get_all_operations) | **GET** /operations | Get all queued operations
*EgoiRubyClient::PingApi* | [**ping**](docs/PingApi.md#ping) | **POST** /ping | Pings the API
*EgoiRubyClient::PushApi* | [**action_send_push**](docs/PushApi.md#action_send_push) | **POST** /campaigns/push/{campaign_hash}/actions/send | Send push message
*EgoiRubyClient::PushApi* | [**create_push_campaign**](docs/PushApi.md#create_push_campaign) | **POST** /campaigns/push | Create new push campaign
*EgoiRubyClient::PushApi* | [**get_push_app**](docs/PushApi.md#get_push_app) | **GET** /push/apps/{app_id} | Get a Push application from E-goi
*EgoiRubyClient::PushApi* | [**get_push_apps**](docs/PushApi.md#get_push_apps) | **GET** /push/apps | Get all Push applications from E-goi
*EgoiRubyClient::PushApi* | [**patch_push_campaign**](docs/PushApi.md#patch_push_campaign) | **PATCH** /campaigns/push/{campaign_hash} | Update a specific push campaign
*EgoiRubyClient::PushApi* | [**register_push_event**](docs/PushApi.md#register_push_event) | **POST** /push/apps/{app_id}/event | Registers an event from the push notification.
*EgoiRubyClient::PushApi* | [**register_push_token**](docs/PushApi.md#register_push_token) | **POST** /push/apps/{app_id}/token | Registers a Firebase token
*EgoiRubyClient::ReportsApi* | [**get_email_report**](docs/ReportsApi.md#get_email_report) | **GET** /reports/email/{campaign_hash} | Get email report
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
*EgoiRubyClient::SuppressionListApi* | [**create_suppression_list**](docs/SuppressionListApi.md#create_suppression_list) | **POST** /suppression-list | Add to suppression list
*EgoiRubyClient::SuppressionListApi* | [**delete_suppression_list**](docs/SuppressionListApi.md#delete_suppression_list) | **DELETE** /suppression-list/{suppression_id} | Delete from suppression list
*EgoiRubyClient::SuppressionListApi* | [**get_all_suppression_list**](docs/SuppressionListApi.md#get_all_suppression_list) | **GET** /suppression-list | Get the suppression list
*EgoiRubyClient::TagsApi* | [**create_tag**](docs/TagsApi.md#create_tag) | **POST** /tags | Create new tag
*EgoiRubyClient::TagsApi* | [**delete_tag**](docs/TagsApi.md#delete_tag) | **DELETE** /tags/{tag_id} | Remove tag
*EgoiRubyClient::TagsApi* | [**get_all_tags**](docs/TagsApi.md#get_all_tags) | **GET** /tags | Get all tags
*EgoiRubyClient::TagsApi* | [**update_tag**](docs/TagsApi.md#update_tag) | **PUT** /tags/{tag_id} | Update a specific tag
*EgoiRubyClient::TrackEngageApi* | [**get_all_domains**](docs/TrackEngageApi.md#get_all_domains) | **GET** /trackengage/domains | Get all domains
*EgoiRubyClient::TrackEngageApi* | [**get_all_goals**](docs/TrackEngageApi.md#get_all_goals) | **GET** /trackengage/goals | Get all goals
*EgoiRubyClient::UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /users/{user_id} | Remove user
*EgoiRubyClient::UsersApi* | [**get_all_users**](docs/UsersApi.md#get_all_users) | **GET** /users | Get all users
*EgoiRubyClient::UtilitiesApi* | [**get_all_countries**](docs/UtilitiesApi.md#get_all_countries) | **GET** /utilities/countries | Get all countries
*EgoiRubyClient::VoiceApi* | [**action_send_voice**](docs/VoiceApi.md#action_send_voice) | **POST** /campaigns/voice/{campaign_hash}/actions/send | Send voice message
*EgoiRubyClient::VoiceApi* | [**create_voice_campaign**](docs/VoiceApi.md#create_voice_campaign) | **POST** /campaigns/voice | Create new voice campaign
*EgoiRubyClient::VoiceApi* | [**patch_voice_campaign**](docs/VoiceApi.md#patch_voice_campaign) | **PATCH** /campaigns/voice/{campaign_hash} | Update a specific voice campaign
*EgoiRubyClient::WebHooksApi* | [**create_webhook**](docs/WebHooksApi.md#create_webhook) | **POST** /webhooks | Create new webhook
*EgoiRubyClient::WebHooksApi* | [**delete_webhook**](docs/WebHooksApi.md#delete_webhook) | **DELETE** /webhooks/{webhook_id} | Remove webhook
*EgoiRubyClient::WebHooksApi* | [**get_all_webhooks**](docs/WebHooksApi.md#get_all_webhooks) | **GET** /webhooks | Get all webhooks
*EgoiRubyClient::WebpushApi* | [**action_enable_web_push_rss**](docs/WebpushApi.md#action_enable_web_push_rss) | **POST** /campaigns/webpush/rss/{campaign_hash}/actions/enable | Enable a rss webpush campaign
*EgoiRubyClient::WebpushApi* | [**action_send_web_push**](docs/WebpushApi.md#action_send_web_push) | **POST** /campaigns/web-push/{campaign_hash}/actions/send | Send webpush message
*EgoiRubyClient::WebpushApi* | [**create_web_push_campaign**](docs/WebpushApi.md#create_web_push_campaign) | **POST** /campaigns/web-push | Create new webpush campaign
*EgoiRubyClient::WebpushApi* | [**create_web_push_rss_campaign**](docs/WebpushApi.md#create_web_push_rss_campaign) | **POST** /campaigns/webpush/rss | Create new webpush rss campaign
*EgoiRubyClient::WebpushApi* | [**create_webpush_site**](docs/WebpushApi.md#create_webpush_site) | **POST** /webpush/sites | Creates a webpush site
*EgoiRubyClient::WebpushApi* | [**get_all_web_push_sites**](docs/WebpushApi.md#get_all_web_push_sites) | **GET** /webpush/sites | Get all webpush sites
*EgoiRubyClient::WebpushApi* | [**patch_web_push_campaign**](docs/WebpushApi.md#patch_web_push_campaign) | **PATCH** /campaigns/web-push/{campaign_hash} | Update a specific webpush campaign


## Documentation for Models

 - [EgoiRubyClient::AbstractCampaignSendRequest](docs/AbstractCampaignSendRequest.md)
 - [EgoiRubyClient::AbstractCampaignSendRequestSegments](docs/AbstractCampaignSendRequestSegments.md)
 - [EgoiRubyClient::AbstractCampaignTemplate](docs/AbstractCampaignTemplate.md)
 - [EgoiRubyClient::AbstractCellphoneSender](docs/AbstractCellphoneSender.md)
 - [EgoiRubyClient::AbstractCellphoneSenderAllOf](docs/AbstractCellphoneSenderAllOf.md)
 - [EgoiRubyClient::AbstractSegment](docs/AbstractSegment.md)
 - [EgoiRubyClient::AbstractSendEmail](docs/AbstractSendEmail.md)
 - [EgoiRubyClient::AbstractSendVoice](docs/AbstractSendVoice.md)
 - [EgoiRubyClient::AbstractSendVoiceAllOf](docs/AbstractSendVoiceAllOf.md)
 - [EgoiRubyClient::AbstractSendVoiceAllOf1](docs/AbstractSendVoiceAllOf1.md)
 - [EgoiRubyClient::AbstractSuppresionList](docs/AbstractSuppresionList.md)
 - [EgoiRubyClient::AcceptedResponse](docs/AcceptedResponse.md)
 - [EgoiRubyClient::ActivateContactsAll](docs/ActivateContactsAll.md)
 - [EgoiRubyClient::ActivateContactsMany](docs/ActivateContactsMany.md)
 - [EgoiRubyClient::ActivateContactsRequest](docs/ActivateContactsRequest.md)
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
 - [EgoiRubyClient::AdvancedReportFormsInner](docs/AdvancedReportFormsInner.md)
 - [EgoiRubyClient::AdvancedReportListExtraFieldsInner](docs/AdvancedReportListExtraFieldsInner.md)
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
 - [EgoiRubyClient::AlphanumericCellphoneSenderPost](docs/AlphanumericCellphoneSenderPost.md)
 - [EgoiRubyClient::AlphanumericCellphoneSenderPostAllOf](docs/AlphanumericCellphoneSenderPostAllOf.md)
 - [EgoiRubyClient::AppStructure](docs/AppStructure.md)
 - [EgoiRubyClient::AppStructureList](docs/AppStructureList.md)
 - [EgoiRubyClient::AttachByContacts](docs/AttachByContacts.md)
 - [EgoiRubyClient::AttachBySegment](docs/AttachBySegment.md)
 - [EgoiRubyClient::AttachTagRequest](docs/AttachTagRequest.md)
 - [EgoiRubyClient::AttachTagResponse](docs/AttachTagResponse.md)
 - [EgoiRubyClient::AutomaticSegment](docs/AutomaticSegment.md)
 - [EgoiRubyClient::AutomaticSegmentAllOf](docs/AutomaticSegmentAllOf.md)
 - [EgoiRubyClient::Automation](docs/Automation.md)
 - [EgoiRubyClient::AutomationAllOf](docs/AutomationAllOf.md)
 - [EgoiRubyClient::AutomationCollection](docs/AutomationCollection.md)
 - [EgoiRubyClient::AutomationPost](docs/AutomationPost.md)
 - [EgoiRubyClient::AutomationPostAllOf](docs/AutomationPostAllOf.md)
 - [EgoiRubyClient::BadRequest](docs/BadRequest.md)
 - [EgoiRubyClient::BalanceInfo](docs/BalanceInfo.md)
 - [EgoiRubyClient::BalanceInfoBalanceInfo](docs/BalanceInfoBalanceInfo.md)
 - [EgoiRubyClient::BaseConflict](docs/BaseConflict.md)
 - [EgoiRubyClient::BasicProduct](docs/BasicProduct.md)
 - [EgoiRubyClient::BasicSender](docs/BasicSender.md)
 - [EgoiRubyClient::BillingInfo](docs/BillingInfo.md)
 - [EgoiRubyClient::BillingInfoAllOf](docs/BillingInfoAllOf.md)
 - [EgoiRubyClient::BillingInfoAllOfBillingInfo](docs/BillingInfoAllOfBillingInfo.md)
 - [EgoiRubyClient::BillingInfoAllOfBillingInfoCountry](docs/BillingInfoAllOfBillingInfoCountry.md)
 - [EgoiRubyClient::BulkActionResponse](docs/BulkActionResponse.md)
 - [EgoiRubyClient::CName](docs/CName.md)
 - [EgoiRubyClient::CNamePost](docs/CNamePost.md)
 - [EgoiRubyClient::CNamesCollection](docs/CNamesCollection.md)
 - [EgoiRubyClient::Campaign](docs/Campaign.md)
 - [EgoiRubyClient::CampaignEmailBaseContent](docs/CampaignEmailBaseContent.md)
 - [EgoiRubyClient::CampaignEmailContent](docs/CampaignEmailContent.md)
 - [EgoiRubyClient::CampaignEmailContentFile](docs/CampaignEmailContentFile.md)
 - [EgoiRubyClient::CampaignEmailContentFileAllOf](docs/CampaignEmailContentFileAllOf.md)
 - [EgoiRubyClient::CampaignEmailContentHtml](docs/CampaignEmailContentHtml.md)
 - [EgoiRubyClient::CampaignEmailContentHtmlAllOf](docs/CampaignEmailContentHtmlAllOf.md)
 - [EgoiRubyClient::CampaignEmailContentHtmlPatch](docs/CampaignEmailContentHtmlPatch.md)
 - [EgoiRubyClient::CampaignEmailContentHtmlPatchAllOf](docs/CampaignEmailContentHtmlPatchAllOf.md)
 - [EgoiRubyClient::CampaignEmailContentTemplate](docs/CampaignEmailContentTemplate.md)
 - [EgoiRubyClient::CampaignEmailContentTemplateAllOf](docs/CampaignEmailContentTemplateAllOf.md)
 - [EgoiRubyClient::CampaignEmailContentWebPage](docs/CampaignEmailContentWebPage.md)
 - [EgoiRubyClient::CampaignEmailContentWebPageAllOf](docs/CampaignEmailContentWebPageAllOf.md)
 - [EgoiRubyClient::CampaignEmailRssContent](docs/CampaignEmailRssContent.md)
 - [EgoiRubyClient::CampaignEmailRssContentHtml](docs/CampaignEmailRssContentHtml.md)
 - [EgoiRubyClient::CampaignEmailRssContentHtmlAllOf](docs/CampaignEmailRssContentHtmlAllOf.md)
 - [EgoiRubyClient::CampaignEmailScheduleRequest](docs/CampaignEmailScheduleRequest.md)
 - [EgoiRubyClient::CampaignEmailScheduleRequestAllOf](docs/CampaignEmailScheduleRequestAllOf.md)
 - [EgoiRubyClient::CampaignEmailSendNowRequest](docs/CampaignEmailSendNowRequest.md)
 - [EgoiRubyClient::CampaignEmailSendRequest](docs/CampaignEmailSendRequest.md)
 - [EgoiRubyClient::CampaignGroup](docs/CampaignGroup.md)
 - [EgoiRubyClient::CampaignGroupAllOf](docs/CampaignGroupAllOf.md)
 - [EgoiRubyClient::CampaignGroupCollection](docs/CampaignGroupCollection.md)
 - [EgoiRubyClient::CampaignGroupPost](docs/CampaignGroupPost.md)
 - [EgoiRubyClient::CampaignGroupPostAllOf](docs/CampaignGroupPostAllOf.md)
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
 - [EgoiRubyClient::Cart](docs/Cart.md)
 - [EgoiRubyClient::CartPatchRequest](docs/CartPatchRequest.md)
 - [EgoiRubyClient::Catalog](docs/Catalog.md)
 - [EgoiRubyClient::CatalogCollection](docs/CatalogCollection.md)
 - [EgoiRubyClient::CatalogPost](docs/CatalogPost.md)
 - [EgoiRubyClient::CatalogPostRequest](docs/CatalogPostRequest.md)
 - [EgoiRubyClient::CellphoneSender](docs/CellphoneSender.md)
 - [EgoiRubyClient::CellphoneSenderCollection](docs/CellphoneSenderCollection.md)
 - [EgoiRubyClient::CellphoneSenderPost](docs/CellphoneSenderPost.md)
 - [EgoiRubyClient::ClientAlreadyEnabled](docs/ClientAlreadyEnabled.md)
 - [EgoiRubyClient::ClientAlreadyEnabledErrors](docs/ClientAlreadyEnabledErrors.md)
 - [EgoiRubyClient::ClientIsBeingEnabled](docs/ClientIsBeingEnabled.md)
 - [EgoiRubyClient::ClientIsBeingEnabledErrors](docs/ClientIsBeingEnabledErrors.md)
 - [EgoiRubyClient::CnameExists](docs/CnameExists.md)
 - [EgoiRubyClient::CnameExistsErrors](docs/CnameExistsErrors.md)
 - [EgoiRubyClient::ComplexContact](docs/ComplexContact.md)
 - [EgoiRubyClient::ComplexContactAllOf](docs/ComplexContactAllOf.md)
 - [EgoiRubyClient::ComplexContactAllOfEmailStats](docs/ComplexContactAllOfEmailStats.md)
 - [EgoiRubyClient::ComplexContactAllOfPushStats](docs/ComplexContactAllOfPushStats.md)
 - [EgoiRubyClient::ComplexContactAllOfSmsStats](docs/ComplexContactAllOfSmsStats.md)
 - [EgoiRubyClient::ComplexContactAllOfVoiceStats](docs/ComplexContactAllOfVoiceStats.md)
 - [EgoiRubyClient::ComplexContactAllOfWebpushStats](docs/ComplexContactAllOfWebpushStats.md)
 - [EgoiRubyClient::ComplexField](docs/ComplexField.md)
 - [EgoiRubyClient::ComplexFieldAllOf](docs/ComplexFieldAllOf.md)
 - [EgoiRubyClient::ComplexList](docs/ComplexList.md)
 - [EgoiRubyClient::ComplexListAllOf](docs/ComplexListAllOf.md)
 - [EgoiRubyClient::ComplexListAllOfStats](docs/ComplexListAllOfStats.md)
 - [EgoiRubyClient::ComplexUser](docs/ComplexUser.md)
 - [EgoiRubyClient::ComplexUserAllOf](docs/ComplexUserAllOf.md)
 - [EgoiRubyClient::ComplexUserPost](docs/ComplexUserPost.md)
 - [EgoiRubyClient::Conflict](docs/Conflict.md)
 - [EgoiRubyClient::ConflictAllOf](docs/ConflictAllOf.md)
 - [EgoiRubyClient::ConnectedSitesDomain](docs/ConnectedSitesDomain.md)
 - [EgoiRubyClient::ConnectedSitesDomainDetail](docs/ConnectedSitesDomainDetail.md)
 - [EgoiRubyClient::ConnectedSitesEmbedForm](docs/ConnectedSitesEmbedForm.md)
 - [EgoiRubyClient::ConnectedSitesGeneralProductAppDetail](docs/ConnectedSitesGeneralProductAppDetail.md)
 - [EgoiRubyClient::ConnectedSitesGeneralProductAppDetailGlobal](docs/ConnectedSitesGeneralProductAppDetailGlobal.md)
 - [EgoiRubyClient::ConnectedSitesGeneralProductFormDetail](docs/ConnectedSitesGeneralProductFormDetail.md)
 - [EgoiRubyClient::ConnectedSitesGeneralProductFormDetailGlobal](docs/ConnectedSitesGeneralProductFormDetailGlobal.md)
 - [EgoiRubyClient::ConnectedSitesGeneralProductTEDetailGlobal](docs/ConnectedSitesGeneralProductTEDetailGlobal.md)
 - [EgoiRubyClient::ConnectedSitesProductEmbedFormDetail](docs/ConnectedSitesProductEmbedFormDetail.md)
 - [EgoiRubyClient::ConnectedSitesProducts](docs/ConnectedSitesProducts.md)
 - [EgoiRubyClient::Contact](docs/Contact.md)
 - [EgoiRubyClient::Contact1](docs/Contact1.md)
 - [EgoiRubyClient::Contact2](docs/Contact2.md)
 - [EgoiRubyClient::ContactActivity](docs/ContactActivity.md)
 - [EgoiRubyClient::ContactActivityAbstractActionsWithData](docs/ContactActivityAbstractActionsWithData.md)
 - [EgoiRubyClient::ContactActivityClick](docs/ContactActivityClick.md)
 - [EgoiRubyClient::ContactActivityClickAllOf](docs/ContactActivityClickAllOf.md)
 - [EgoiRubyClient::ContactActivityClickAllOfActionData](docs/ContactActivityClickAllOfActionData.md)
 - [EgoiRubyClient::ContactBaseExtra](docs/ContactBaseExtra.md)
 - [EgoiRubyClient::ContactBaseExtraBulk](docs/ContactBaseExtraBulk.md)
 - [EgoiRubyClient::ContactBaseExtraFull](docs/ContactBaseExtraFull.md)
 - [EgoiRubyClient::ContactBaseExtraPost](docs/ContactBaseExtraPost.md)
 - [EgoiRubyClient::ContactBaseFieldsBulkSchema](docs/ContactBaseFieldsBulkSchema.md)
 - [EgoiRubyClient::ContactBaseFieldsBulkSchemaBase](docs/ContactBaseFieldsBulkSchemaBase.md)
 - [EgoiRubyClient::ContactBaseFieldsPostSchema](docs/ContactBaseFieldsPostSchema.md)
 - [EgoiRubyClient::ContactBaseFieldsPostSchemaBase](docs/ContactBaseFieldsPostSchemaBase.md)
 - [EgoiRubyClient::ContactBaseFieldsSchema](docs/ContactBaseFieldsSchema.md)
 - [EgoiRubyClient::ContactBaseFieldsSchemaBase](docs/ContactBaseFieldsSchemaBase.md)
 - [EgoiRubyClient::ContactBaseFieldsWithIdSchema](docs/ContactBaseFieldsWithIdSchema.md)
 - [EgoiRubyClient::ContactBaseFieldsWithIdSchemaBase](docs/ContactBaseFieldsWithIdSchemaBase.md)
 - [EgoiRubyClient::ContactBaseStatusExtra](docs/ContactBaseStatusExtra.md)
 - [EgoiRubyClient::ContactBaseStatusExtraBulk](docs/ContactBaseStatusExtraBulk.md)
 - [EgoiRubyClient::ContactBaseStatusExtraNoRemoved](docs/ContactBaseStatusExtraNoRemoved.md)
 - [EgoiRubyClient::ContactBaseWithStatusFieldsBulkSchema](docs/ContactBaseWithStatusFieldsBulkSchema.md)
 - [EgoiRubyClient::ContactBaseWithStatusFieldsNoTokensSchema](docs/ContactBaseWithStatusFieldsNoTokensSchema.md)
 - [EgoiRubyClient::ContactBaseWithStatusFieldsNoTokensSchemaBase](docs/ContactBaseWithStatusFieldsNoTokensSchemaBase.md)
 - [EgoiRubyClient::ContactBaseWithStatusFieldsSchema](docs/ContactBaseWithStatusFieldsSchema.md)
 - [EgoiRubyClient::ContactBaseWithStatusFieldsSchemaBase](docs/ContactBaseWithStatusFieldsSchemaBase.md)
 - [EgoiRubyClient::ContactBaseWithStatusNoRemovedFieldsSchema](docs/ContactBaseWithStatusNoRemovedFieldsSchema.md)
 - [EgoiRubyClient::ContactBaseWithStatusNoRemovedFieldsSchemaBase](docs/ContactBaseWithStatusNoRemovedFieldsSchemaBase.md)
 - [EgoiRubyClient::ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenAndroidInner](docs/ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenAndroidInner.md)
 - [EgoiRubyClient::ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenIosInner](docs/ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenIosInner.md)
 - [EgoiRubyClient::ContactBulk](docs/ContactBulk.md)
 - [EgoiRubyClient::ContactBulkFile](docs/ContactBulkFile.md)
 - [EgoiRubyClient::ContactBulkFileAllOf](docs/ContactBulkFileAllOf.md)
 - [EgoiRubyClient::ContactBulkFileAllOf1](docs/ContactBulkFileAllOf1.md)
 - [EgoiRubyClient::ContactBulkFileAllOf2](docs/ContactBulkFileAllOf2.md)
 - [EgoiRubyClient::ContactBulkFileAllOf3](docs/ContactBulkFileAllOf3.md)
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
 - [EgoiRubyClient::ContactFieldMappingFileBulkSchema](docs/ContactFieldMappingFileBulkSchema.md)
 - [EgoiRubyClient::ContactForgetRequest](docs/ContactForgetRequest.md)
 - [EgoiRubyClient::ContactInsideBase](docs/ContactInsideBase.md)
 - [EgoiRubyClient::ContactInsideBaseBulk](docs/ContactInsideBaseBulk.md)
 - [EgoiRubyClient::ContactInsideBasePost](docs/ContactInsideBasePost.md)
 - [EgoiRubyClient::ContactInsideBaseWithId](docs/ContactInsideBaseWithId.md)
 - [EgoiRubyClient::ContactOtherActivity](docs/ContactOtherActivity.md)
 - [EgoiRubyClient::ContactSearchResponse](docs/ContactSearchResponse.md)
 - [EgoiRubyClient::ContactStatusFieldsBulkSchema](docs/ContactStatusFieldsBulkSchema.md)
 - [EgoiRubyClient::ContactStatusFieldsSchema](docs/ContactStatusFieldsSchema.md)
 - [EgoiRubyClient::ContactTags](docs/ContactTags.md)
 - [EgoiRubyClient::ContactTagsBulk](docs/ContactTagsBulk.md)
 - [EgoiRubyClient::ContactsActionUpdateContactsSchema](docs/ContactsActionUpdateContactsSchema.md)
 - [EgoiRubyClient::ContentVoice](docs/ContentVoice.md)
 - [EgoiRubyClient::ContentVoiceAudio](docs/ContentVoiceAudio.md)
 - [EgoiRubyClient::ContentVoicePatch](docs/ContentVoicePatch.md)
 - [EgoiRubyClient::ContentVoiceTemplate](docs/ContentVoiceTemplate.md)
 - [EgoiRubyClient::Country](docs/Country.md)
 - [EgoiRubyClient::CountryCollection](docs/CountryCollection.md)
 - [EgoiRubyClient::CreateCartResponse](docs/CreateCartResponse.md)
 - [EgoiRubyClient::CreateContactResponse](docs/CreateContactResponse.md)
 - [EgoiRubyClient::CreateOrder](docs/CreateOrder.md)
 - [EgoiRubyClient::CreateOrderResponse](docs/CreateOrderResponse.md)
 - [EgoiRubyClient::CreateSuppressionListRequest](docs/CreateSuppressionListRequest.md)
 - [EgoiRubyClient::DeactivateContactsAll](docs/DeactivateContactsAll.md)
 - [EgoiRubyClient::DeactivateContactsMany](docs/DeactivateContactsMany.md)
 - [EgoiRubyClient::DeactivateContactsRequest](docs/DeactivateContactsRequest.md)
 - [EgoiRubyClient::DeleteCampaignsConflict](docs/DeleteCampaignsConflict.md)
 - [EgoiRubyClient::DeleteFieldsConflict](docs/DeleteFieldsConflict.md)
 - [EgoiRubyClient::DeleteListsConflict](docs/DeleteListsConflict.md)
 - [EgoiRubyClient::DeleteListsConflictsErrors](docs/DeleteListsConflictsErrors.md)
 - [EgoiRubyClient::DeleteSegmentsConflict](docs/DeleteSegmentsConflict.md)
 - [EgoiRubyClient::DeleteSegmentsConflictsErrors](docs/DeleteSegmentsConflictsErrors.md)
 - [EgoiRubyClient::DeleteSuppressionListConflictsErrors](docs/DeleteSuppressionListConflictsErrors.md)
 - [EgoiRubyClient::DetachByContacts](docs/DetachByContacts.md)
 - [EgoiRubyClient::DetachBySegment](docs/DetachBySegment.md)
 - [EgoiRubyClient::DetachTagRequest](docs/DetachTagRequest.md)
 - [EgoiRubyClient::Domain](docs/Domain.md)
 - [EgoiRubyClient::DomainAlreadyDefined](docs/DomainAlreadyDefined.md)
 - [EgoiRubyClient::DomainAlreadyDefinedErrors](docs/DomainAlreadyDefinedErrors.md)
 - [EgoiRubyClient::DomainCollection](docs/DomainCollection.md)
 - [EgoiRubyClient::DomainListRequired](docs/DomainListRequired.md)
 - [EgoiRubyClient::DomainListRequiredErrors](docs/DomainListRequiredErrors.md)
 - [EgoiRubyClient::EmailBouncesCampaignFields](docs/EmailBouncesCampaignFields.md)
 - [EgoiRubyClient::EmailBouncesListStatsFields](docs/EmailBouncesListStatsFields.md)
 - [EgoiRubyClient::EmailCampaignCreate](docs/EmailCampaignCreate.md)
 - [EgoiRubyClient::EmailCampaignPatch](docs/EmailCampaignPatch.md)
 - [EgoiRubyClient::EmailCampaignTemplate](docs/EmailCampaignTemplate.md)
 - [EgoiRubyClient::EmailCampaignTemplateAllOf](docs/EmailCampaignTemplateAllOf.md)
 - [EgoiRubyClient::EmailCampaignTemplateAllOfReplyToData](docs/EmailCampaignTemplateAllOfReplyToData.md)
 - [EgoiRubyClient::EmailCampaignTemplateAllOfSenderData](docs/EmailCampaignTemplateAllOfSenderData.md)
 - [EgoiRubyClient::EmailClicksByContactCampaignFields](docs/EmailClicksByContactCampaignFields.md)
 - [EgoiRubyClient::EmailClicksByContactListStatsFields](docs/EmailClicksByContactListStatsFields.md)
 - [EgoiRubyClient::EmailClicksByUrlCampaignFields](docs/EmailClicksByUrlCampaignFields.md)
 - [EgoiRubyClient::EmailClicksByUrlListStatsFields](docs/EmailClicksByUrlListStatsFields.md)
 - [EgoiRubyClient::EmailEventsCampaignFields](docs/EmailEventsCampaignFields.md)
 - [EgoiRubyClient::EmailEventsListStatsFields](docs/EmailEventsListStatsFields.md)
 - [EgoiRubyClient::EmailReport](docs/EmailReport.md)
 - [EgoiRubyClient::EmailReportAllOf](docs/EmailReportAllOf.md)
 - [EgoiRubyClient::EmailReportByDate](docs/EmailReportByDate.md)
 - [EgoiRubyClient::EmailReportByDateDateInner](docs/EmailReportByDateDateInner.md)
 - [EgoiRubyClient::EmailReportByDomain](docs/EmailReportByDomain.md)
 - [EgoiRubyClient::EmailReportByDomainDomainInner](docs/EmailReportByDomainDomainInner.md)
 - [EgoiRubyClient::EmailReportByEcommerce](docs/EmailReportByEcommerce.md)
 - [EgoiRubyClient::EmailReportByEcommerceEcommerce](docs/EmailReportByEcommerceEcommerce.md)
 - [EgoiRubyClient::EmailReportByHour](docs/EmailReportByHour.md)
 - [EgoiRubyClient::EmailReportByHourHourInner](docs/EmailReportByHourHourInner.md)
 - [EgoiRubyClient::EmailReportByLocation](docs/EmailReportByLocation.md)
 - [EgoiRubyClient::EmailReportByLocationLocationInner](docs/EmailReportByLocationLocationInner.md)
 - [EgoiRubyClient::EmailReportByReader](docs/EmailReportByReader.md)
 - [EgoiRubyClient::EmailReportByReaderReaderInner](docs/EmailReportByReaderReaderInner.md)
 - [EgoiRubyClient::EmailReportByUrl](docs/EmailReportByUrl.md)
 - [EgoiRubyClient::EmailReportByUrlUrlInner](docs/EmailReportByUrlUrlInner.md)
 - [EgoiRubyClient::EmailReportByWeekday](docs/EmailReportByWeekday.md)
 - [EgoiRubyClient::EmailReportByWeekdayWeekdayInner](docs/EmailReportByWeekdayWeekdayInner.md)
 - [EgoiRubyClient::EmailReportOverall](docs/EmailReportOverall.md)
 - [EgoiRubyClient::EmailReportOverallOverall](docs/EmailReportOverallOverall.md)
 - [EgoiRubyClient::EmailRssCampaignCreate](docs/EmailRssCampaignCreate.md)
 - [EgoiRubyClient::EmailSendSegment](docs/EmailSendSegment.md)
 - [EgoiRubyClient::EmailSender](docs/EmailSender.md)
 - [EgoiRubyClient::EmailSenderAllOf](docs/EmailSenderAllOf.md)
 - [EgoiRubyClient::EmailSenderCollection](docs/EmailSenderCollection.md)
 - [EgoiRubyClient::EmailSenderPost](docs/EmailSenderPost.md)
 - [EgoiRubyClient::EmailSenderPutRequest](docs/EmailSenderPutRequest.md)
 - [EgoiRubyClient::EmailUnsubscriptionsCampaignFields](docs/EmailUnsubscriptionsCampaignFields.md)
 - [EgoiRubyClient::EmailUnsubscriptionsListStatsFields](docs/EmailUnsubscriptionsListStatsFields.md)
 - [EgoiRubyClient::EnableTeConflict](docs/EnableTeConflict.md)
 - [EgoiRubyClient::EnableTeConflictsErrors](docs/EnableTeConflictsErrors.md)
 - [EgoiRubyClient::EnableTeRequest](docs/EnableTeRequest.md)
 - [EgoiRubyClient::EnableTransactionalConflict](docs/EnableTransactionalConflict.md)
 - [EgoiRubyClient::EnableTransactionalConflictsErrors](docs/EnableTransactionalConflictsErrors.md)
 - [EgoiRubyClient::ExportContactsWebhookData](docs/ExportContactsWebhookData.md)
 - [EgoiRubyClient::Field](docs/Field.md)
 - [EgoiRubyClient::FieldCollection](docs/FieldCollection.md)
 - [EgoiRubyClient::FieldInUse](docs/FieldInUse.md)
 - [EgoiRubyClient::FieldInUseErrors](docs/FieldInUseErrors.md)
 - [EgoiRubyClient::FieldInUseErrorsFieldInUseData](docs/FieldInUseErrorsFieldInUseData.md)
 - [EgoiRubyClient::FieldOption](docs/FieldOption.md)
 - [EgoiRubyClient::FieldOptionPost](docs/FieldOptionPost.md)
 - [EgoiRubyClient::FieldOptionsCollection](docs/FieldOptionsCollection.md)
 - [EgoiRubyClient::Forbidden](docs/Forbidden.md)
 - [EgoiRubyClient::Form](docs/Form.md)
 - [EgoiRubyClient::GeneralInfo](docs/GeneralInfo.md)
 - [EgoiRubyClient::GeneralInfoAllOf](docs/GeneralInfoAllOf.md)
 - [EgoiRubyClient::GeneralInfoAllOfGeneralInfo](docs/GeneralInfoAllOfGeneralInfo.md)
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
 - [EgoiRubyClient::GetAllContactsExtraFieldIdParameter](docs/GetAllContactsExtraFieldIdParameter.md)
 - [EgoiRubyClient::GetAllProductsCustomAttributesParameter](docs/GetAllProductsCustomAttributesParameter.md)
 - [EgoiRubyClient::Goal](docs/Goal.md)
 - [EgoiRubyClient::GoalAutommaticInfo](docs/GoalAutommaticInfo.md)
 - [EgoiRubyClient::GoalCollection](docs/GoalCollection.md)
 - [EgoiRubyClient::GoalInfo](docs/GoalInfo.md)
 - [EgoiRubyClient::GoalManualInfo](docs/GoalManualInfo.md)
 - [EgoiRubyClient::GoalTimeInfo](docs/GoalTimeInfo.md)
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
 - [EgoiRubyClient::ImportBulkFileRequest](docs/ImportBulkFileRequest.md)
 - [EgoiRubyClient::ImportBulkFileRequestSchema](docs/ImportBulkFileRequestSchema.md)
 - [EgoiRubyClient::ImportBulkFileRequestSchemaFile](docs/ImportBulkFileRequestSchemaFile.md)
 - [EgoiRubyClient::ImportBulkRequest](docs/ImportBulkRequest.md)
 - [EgoiRubyClient::ImportOrdersBulkBulkRequest](docs/ImportOrdersBulkBulkRequest.md)
 - [EgoiRubyClient::ImportOrdersBulkBulkRequestItems](docs/ImportOrdersBulkBulkRequestItems.md)
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
 - [EgoiRubyClient::ListCollection1](docs/ListCollection1.md)
 - [EgoiRubyClient::ListLimitReached](docs/ListLimitReached.md)
 - [EgoiRubyClient::ListLimitReachedErrors](docs/ListLimitReachedErrors.md)
 - [EgoiRubyClient::MessageWebPush](docs/MessageWebPush.md)
 - [EgoiRubyClient::MessageWebPushPost](docs/MessageWebPushPost.md)
 - [EgoiRubyClient::MessageWebPushRss](docs/MessageWebPushRss.md)
 - [EgoiRubyClient::ModuleInfo](docs/ModuleInfo.md)
 - [EgoiRubyClient::ModuleInfoModuleInfo](docs/ModuleInfoModuleInfo.md)
 - [EgoiRubyClient::ModuleInfoModuleInfoTe](docs/ModuleInfoModuleInfoTe.md)
 - [EgoiRubyClient::MyAccount](docs/MyAccount.md)
 - [EgoiRubyClient::NameAlreadyExists](docs/NameAlreadyExists.md)
 - [EgoiRubyClient::NameAlreadyExistsErrors](docs/NameAlreadyExistsErrors.md)
 - [EgoiRubyClient::NotFound](docs/NotFound.md)
 - [EgoiRubyClient::NotifyUserIdArrayActionSend](docs/NotifyUserIdArrayActionSend.md)
 - [EgoiRubyClient::Now](docs/Now.md)
 - [EgoiRubyClient::NumericCellphoneSender](docs/NumericCellphoneSender.md)
 - [EgoiRubyClient::NumericCellphoneSenderPost](docs/NumericCellphoneSenderPost.md)
 - [EgoiRubyClient::NumericCellphoneSenderPostAllOf](docs/NumericCellphoneSenderPostAllOf.md)
 - [EgoiRubyClient::OLimitContactsActionSend](docs/OLimitContactsActionSend.md)
 - [EgoiRubyClient::OSegmentsActionSend](docs/OSegmentsActionSend.md)
 - [EgoiRubyClient::OSegmentsWithoutContactActionSend](docs/OSegmentsWithoutContactActionSend.md)
 - [EgoiRubyClient::Operation](docs/Operation.md)
 - [EgoiRubyClient::OperationActionRequest](docs/OperationActionRequest.md)
 - [EgoiRubyClient::OperationActionResponse](docs/OperationActionResponse.md)
 - [EgoiRubyClient::OperationActionResponseError](docs/OperationActionResponseError.md)
 - [EgoiRubyClient::OperationOperationData](docs/OperationOperationData.md)
 - [EgoiRubyClient::OperationsCollection](docs/OperationsCollection.md)
 - [EgoiRubyClient::Order](docs/Order.md)
 - [EgoiRubyClient::OrderPatchRequest](docs/OrderPatchRequest.md)
 - [EgoiRubyClient::Overall](docs/Overall.md)
 - [EgoiRubyClient::OverallOverall](docs/OverallOverall.md)
 - [EgoiRubyClient::PatchRequestBaseField](docs/PatchRequestBaseField.md)
 - [EgoiRubyClient::PatchRequestField](docs/PatchRequestField.md)
 - [EgoiRubyClient::PatchRequestList](docs/PatchRequestList.md)
 - [EgoiRubyClient::PatchVoiceCampaign200Response](docs/PatchVoiceCampaign200Response.md)
 - [EgoiRubyClient::PayloadTooLarge](docs/PayloadTooLarge.md)
 - [EgoiRubyClient::PhoneCampaignTemplate](docs/PhoneCampaignTemplate.md)
 - [EgoiRubyClient::PhoneCampaignTemplateAllOf](docs/PhoneCampaignTemplateAllOf.md)
 - [EgoiRubyClient::PhoneReport](docs/PhoneReport.md)
 - [EgoiRubyClient::PhoneReportAllOf](docs/PhoneReportAllOf.md)
 - [EgoiRubyClient::PhoneReportAllOfNetworks](docs/PhoneReportAllOfNetworks.md)
 - [EgoiRubyClient::PhoneSender](docs/PhoneSender.md)
 - [EgoiRubyClient::PhoneSenderAllOf](docs/PhoneSenderAllOf.md)
 - [EgoiRubyClient::PhoneSenderCollection](docs/PhoneSenderCollection.md)
 - [EgoiRubyClient::PhoneSenderPost](docs/PhoneSenderPost.md)
 - [EgoiRubyClient::Ping](docs/Ping.md)
 - [EgoiRubyClient::PlanInfo](docs/PlanInfo.md)
 - [EgoiRubyClient::PlanInfoPlanInfo](docs/PlanInfoPlanInfo.md)
 - [EgoiRubyClient::PostCNameConflict](docs/PostCNameConflict.md)
 - [EgoiRubyClient::PostContactsConflict](docs/PostContactsConflict.md)
 - [EgoiRubyClient::PostListsConflict](docs/PostListsConflict.md)
 - [EgoiRubyClient::PostProductsConflict](docs/PostProductsConflict.md)
 - [EgoiRubyClient::PostRequestList](docs/PostRequestList.md)
 - [EgoiRubyClient::PostWebpushSiteConflict](docs/PostWebpushSiteConflict.md)
 - [EgoiRubyClient::Product](docs/Product.md)
 - [EgoiRubyClient::ProductAllOf](docs/ProductAllOf.md)
 - [EgoiRubyClient::ProductAlreadyExists](docs/ProductAlreadyExists.md)
 - [EgoiRubyClient::ProductAlreadyExistsErrors](docs/ProductAlreadyExistsErrors.md)
 - [EgoiRubyClient::ProductBulkRequest](docs/ProductBulkRequest.md)
 - [EgoiRubyClient::ProductCollection](docs/ProductCollection.md)
 - [EgoiRubyClient::ProductCustomAttributes](docs/ProductCustomAttributes.md)
 - [EgoiRubyClient::ProductPatchRequest](docs/ProductPatchRequest.md)
 - [EgoiRubyClient::ProductPatchRequestRelatedProducts](docs/ProductPatchRequestRelatedProducts.md)
 - [EgoiRubyClient::ProductPostRequest](docs/ProductPostRequest.md)
 - [EgoiRubyClient::PushCampaignPatchRequest](docs/PushCampaignPatchRequest.md)
 - [EgoiRubyClient::PushCampaignPatchRequestContent](docs/PushCampaignPatchRequestContent.md)
 - [EgoiRubyClient::PushCampaignPatchRequestGeoOptions](docs/PushCampaignPatchRequestGeoOptions.md)
 - [EgoiRubyClient::PushCampaignPostRequest](docs/PushCampaignPostRequest.md)
 - [EgoiRubyClient::PushCampaignPostRequestActions](docs/PushCampaignPostRequestActions.md)
 - [EgoiRubyClient::PushCampaignPostRequestGeoOptions](docs/PushCampaignPostRequestGeoOptions.md)
 - [EgoiRubyClient::PushCampaignPostRequestNotificationOptions](docs/PushCampaignPostRequestNotificationOptions.md)
 - [EgoiRubyClient::PushEvent](docs/PushEvent.md)
 - [EgoiRubyClient::PushNotificationSoundSchema](docs/PushNotificationSoundSchema.md)
 - [EgoiRubyClient::PushNotificationSoundSchemaDefault](docs/PushNotificationSoundSchemaDefault.md)
 - [EgoiRubyClient::PushNotificationSoundSchemaNone](docs/PushNotificationSoundSchemaNone.md)
 - [EgoiRubyClient::PushNotificationSoundSchemaUrl](docs/PushNotificationSoundSchemaUrl.md)
 - [EgoiRubyClient::PushReport](docs/PushReport.md)
 - [EgoiRubyClient::PushReportAllOf](docs/PushReportAllOf.md)
 - [EgoiRubyClient::PushResponse](docs/PushResponse.md)
 - [EgoiRubyClient::PushToken](docs/PushToken.md)
 - [EgoiRubyClient::PushTokenTwoStepsData](docs/PushTokenTwoStepsData.md)
 - [EgoiRubyClient::PushVersions](docs/PushVersions.md)
 - [EgoiRubyClient::PushVersionsVersionsInner](docs/PushVersionsVersionsInner.md)
 - [EgoiRubyClient::RemoveRequest](docs/RemoveRequest.md)
 - [EgoiRubyClient::RemoveResponse](docs/RemoveResponse.md)
 - [EgoiRubyClient::RemoveResponseErrors](docs/RemoveResponseErrors.md)
 - [EgoiRubyClient::ReportCampaignsAll](docs/ReportCampaignsAll.md)
 - [EgoiRubyClient::ReportCampaignsGroup](docs/ReportCampaignsGroup.md)
 - [EgoiRubyClient::ReportCampaignsLast](docs/ReportCampaignsLast.md)
 - [EgoiRubyClient::ReportCampaignsSpecific](docs/ReportCampaignsSpecific.md)
 - [EgoiRubyClient::RequestEntityTooLarge](docs/RequestEntityTooLarge.md)
 - [EgoiRubyClient::RequestItemsUnsubscribe](docs/RequestItemsUnsubscribe.md)
 - [EgoiRubyClient::RequestItemsUnsubscribeAllOf](docs/RequestItemsUnsubscribeAllOf.md)
 - [EgoiRubyClient::RequestTimeout](docs/RequestTimeout.md)
 - [EgoiRubyClient::SavedSegment](docs/SavedSegment.md)
 - [EgoiRubyClient::SavedSegmentAllOf](docs/SavedSegmentAllOf.md)
 - [EgoiRubyClient::SavedSegmentAllOf1](docs/SavedSegmentAllOf1.md)
 - [EgoiRubyClient::SavedSegmentAllOf1SegmentFilter](docs/SavedSegmentAllOf1SegmentFilter.md)
 - [EgoiRubyClient::SavedSegmentAllOf1SegmentFilterSegmentFilterArray](docs/SavedSegmentAllOf1SegmentFilterSegmentFilterArray.md)
 - [EgoiRubyClient::SearchContacts200Response](docs/SearchContacts200Response.md)
 - [EgoiRubyClient::Segment](docs/Segment.md)
 - [EgoiRubyClient::SegmentCollection](docs/SegmentCollection.md)
 - [EgoiRubyClient::SegmentsActionSend](docs/SegmentsActionSend.md)
 - [EgoiRubyClient::SegmentsWithoutContactActionSend](docs/SegmentsWithoutContactActionSend.md)
 - [EgoiRubyClient::SendContact](docs/SendContact.md)
 - [EgoiRubyClient::SendContactCellphone](docs/SendContactCellphone.md)
 - [EgoiRubyClient::SendEmailContact](docs/SendEmailContact.md)
 - [EgoiRubyClient::SendNone](docs/SendNone.md)
 - [EgoiRubyClient::SendPush](docs/SendPush.md)
 - [EgoiRubyClient::SendPushAllOf](docs/SendPushAllOf.md)
 - [EgoiRubyClient::SendSegment](docs/SendSegment.md)
 - [EgoiRubyClient::SendSmartSms](docs/SendSmartSms.md)
 - [EgoiRubyClient::SendSmartSmsAllOf](docs/SendSmartSmsAllOf.md)
 - [EgoiRubyClient::SendSmartSmsAllOf1](docs/SendSmartSmsAllOf1.md)
 - [EgoiRubyClient::SendSmartSmsAllOf2](docs/SendSmartSmsAllOf2.md)
 - [EgoiRubyClient::SendSms](docs/SendSms.md)
 - [EgoiRubyClient::SendSmsAllOf](docs/SendSmsAllOf.md)
 - [EgoiRubyClient::SendSmsAllOf1](docs/SendSmsAllOf1.md)
 - [EgoiRubyClient::SendWebPush](docs/SendWebPush.md)
 - [EgoiRubyClient::SendWebPushAllOf](docs/SendWebPushAllOf.md)
 - [EgoiRubyClient::SendsCampaignFields](docs/SendsCampaignFields.md)
 - [EgoiRubyClient::ServiceUnavailable](docs/ServiceUnavailable.md)
 - [EgoiRubyClient::SingleCartObject](docs/SingleCartObject.md)
 - [EgoiRubyClient::SingleOrderObject](docs/SingleOrderObject.md)
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
 - [EgoiRubyClient::SmsCampaignTemplateAllOf](docs/SmsCampaignTemplateAllOf.md)
 - [EgoiRubyClient::SmsEventsCampaignFields](docs/SmsEventsCampaignFields.md)
 - [EgoiRubyClient::SmsEventsListStatsFields](docs/SmsEventsListStatsFields.md)
 - [EgoiRubyClient::SmsSegmentsActionSend](docs/SmsSegmentsActionSend.md)
 - [EgoiRubyClient::StartAutomationRequest](docs/StartAutomationRequest.md)
 - [EgoiRubyClient::StartAutomationResponse](docs/StartAutomationResponse.md)
 - [EgoiRubyClient::SubscriptionsListStatsFields](docs/SubscriptionsListStatsFields.md)
 - [EgoiRubyClient::SuppressionList](docs/SuppressionList.md)
 - [EgoiRubyClient::SuppressionListItems](docs/SuppressionListItems.md)
 - [EgoiRubyClient::SuppressionTypeCellphone](docs/SuppressionTypeCellphone.md)
 - [EgoiRubyClient::SuppressionTypeCellphoneAllOf](docs/SuppressionTypeCellphoneAllOf.md)
 - [EgoiRubyClient::SuppressionTypeCellphoneAllOf1](docs/SuppressionTypeCellphoneAllOf1.md)
 - [EgoiRubyClient::SuppressionTypeEmail](docs/SuppressionTypeEmail.md)
 - [EgoiRubyClient::SuppressionTypeEmailAllOf](docs/SuppressionTypeEmailAllOf.md)
 - [EgoiRubyClient::SuppressionTypeEmailAllOf1](docs/SuppressionTypeEmailAllOf1.md)
 - [EgoiRubyClient::SuppressionTypeEmailDomain](docs/SuppressionTypeEmailDomain.md)
 - [EgoiRubyClient::SuppressionTypeEmailDomainAllOf](docs/SuppressionTypeEmailDomainAllOf.md)
 - [EgoiRubyClient::SuppressionTypeEmailDomainAllOf1](docs/SuppressionTypeEmailDomainAllOf1.md)
 - [EgoiRubyClient::SuppressionTypePhone](docs/SuppressionTypePhone.md)
 - [EgoiRubyClient::SuppressionTypePhoneAllOf](docs/SuppressionTypePhoneAllOf.md)
 - [EgoiRubyClient::SuppressionTypePhoneAllOf1](docs/SuppressionTypePhoneAllOf1.md)
 - [EgoiRubyClient::SuppressionTypeUserEmail](docs/SuppressionTypeUserEmail.md)
 - [EgoiRubyClient::SuppressionTypeUserEmailAllOf](docs/SuppressionTypeUserEmailAllOf.md)
 - [EgoiRubyClient::SuppressionTypeUserEmailAllOf1](docs/SuppressionTypeUserEmailAllOf1.md)
 - [EgoiRubyClient::Tag](docs/Tag.md)
 - [EgoiRubyClient::TagCollection](docs/TagCollection.md)
 - [EgoiRubyClient::TagCollection1](docs/TagCollection1.md)
 - [EgoiRubyClient::TagRequest](docs/TagRequest.md)
 - [EgoiRubyClient::TagSegment](docs/TagSegment.md)
 - [EgoiRubyClient::TagSegmentAllOf](docs/TagSegmentAllOf.md)
 - [EgoiRubyClient::TeResponse](docs/TeResponse.md)
 - [EgoiRubyClient::TeResponseAllOf](docs/TeResponseAllOf.md)
 - [EgoiRubyClient::TooManyRequests](docs/TooManyRequests.md)
 - [EgoiRubyClient::Unauthorized](docs/Unauthorized.md)
 - [EgoiRubyClient::UniqueFieldInUse](docs/UniqueFieldInUse.md)
 - [EgoiRubyClient::UniqueFieldInUseErrors](docs/UniqueFieldInUseErrors.md)
 - [EgoiRubyClient::UnprocessableEntity](docs/UnprocessableEntity.md)
 - [EgoiRubyClient::UnremovableEntry](docs/UnremovableEntry.md)
 - [EgoiRubyClient::UnremovableEntryErrors](docs/UnremovableEntryErrors.md)
 - [EgoiRubyClient::UnsubscriptionObject](docs/UnsubscriptionObject.md)
 - [EgoiRubyClient::UnsubscriptionsListStatsFields](docs/UnsubscriptionsListStatsFields.md)
 - [EgoiRubyClient::UpdateByContact](docs/UpdateByContact.md)
 - [EgoiRubyClient::UpdateBySegment](docs/UpdateBySegment.md)
 - [EgoiRubyClient::UpdateContactsRequest](docs/UpdateContactsRequest.md)
 - [EgoiRubyClient::UpdateForAll](docs/UpdateForAll.md)
 - [EgoiRubyClient::UsedInAutomations](docs/UsedInAutomations.md)
 - [EgoiRubyClient::UsedInAutomationsErrors](docs/UsedInAutomationsErrors.md)
 - [EgoiRubyClient::UsedInRecurringMessages](docs/UsedInRecurringMessages.md)
 - [EgoiRubyClient::UsedInRecurringMessagesErrors](docs/UsedInRecurringMessagesErrors.md)
 - [EgoiRubyClient::User](docs/User.md)
 - [EgoiRubyClient::UserAllOf](docs/UserAllOf.md)
 - [EgoiRubyClient::UserCollection](docs/UserCollection.md)
 - [EgoiRubyClient::UserPost](docs/UserPost.md)
 - [EgoiRubyClient::UserPostAllOf](docs/UserPostAllOf.md)
 - [EgoiRubyClient::UserPostRequest](docs/UserPostRequest.md)
 - [EgoiRubyClient::UserPostRequestAllOf](docs/UserPostRequestAllOf.md)
 - [EgoiRubyClient::VoiceCampaign](docs/VoiceCampaign.md)
 - [EgoiRubyClient::VoiceCampaignAllOf](docs/VoiceCampaignAllOf.md)
 - [EgoiRubyClient::VoiceCampaignTemplate](docs/VoiceCampaignTemplate.md)
 - [EgoiRubyClient::VoiceCampaignTemplateAllOf](docs/VoiceCampaignTemplateAllOf.md)
 - [EgoiRubyClient::VoicePatchCampaign](docs/VoicePatchCampaign.md)
 - [EgoiRubyClient::VoicePatchCampaignAllOf](docs/VoicePatchCampaignAllOf.md)
 - [EgoiRubyClient::WebPushCampaign](docs/WebPushCampaign.md)
 - [EgoiRubyClient::WebPushPatchCampaign](docs/WebPushPatchCampaign.md)
 - [EgoiRubyClient::WebPushReport](docs/WebPushReport.md)
 - [EgoiRubyClient::WebPushReportBrowsersInner](docs/WebPushReportBrowsersInner.md)
 - [EgoiRubyClient::WebPushReportBrowsersInnerVersionsInner](docs/WebPushReportBrowsersInnerVersionsInner.md)
 - [EgoiRubyClient::WebPushReportBrowsersInnerVersionsInnerAllOf](docs/WebPushReportBrowsersInnerVersionsInnerAllOf.md)
 - [EgoiRubyClient::WebPushReportDevicesInner](docs/WebPushReportDevicesInner.md)
 - [EgoiRubyClient::WebPushReportDevicesInnerAllOf](docs/WebPushReportDevicesInnerAllOf.md)
 - [EgoiRubyClient::WebPushReportOperatingSystemsInner](docs/WebPushReportOperatingSystemsInner.md)
 - [EgoiRubyClient::WebPushReportOperatingSystemsInnerVersionsInner](docs/WebPushReportOperatingSystemsInnerVersionsInner.md)
 - [EgoiRubyClient::WebPushReportOperatingSystemsInnerVersionsInnerAllOf](docs/WebPushReportOperatingSystemsInnerVersionsInnerAllOf.md)
 - [EgoiRubyClient::WebPushReportUrlInner](docs/WebPushReportUrlInner.md)
 - [EgoiRubyClient::WebPushReportUrlInnerAllOf](docs/WebPushReportUrlInnerAllOf.md)
 - [EgoiRubyClient::WebPushRssCampaign](docs/WebPushRssCampaign.md)
 - [EgoiRubyClient::WebPushSite](docs/WebPushSite.md)
 - [EgoiRubyClient::WebPushStats](docs/WebPushStats.md)
 - [EgoiRubyClient::Webhook](docs/Webhook.md)
 - [EgoiRubyClient::WebhookActionSchema](docs/WebhookActionSchema.md)
 - [EgoiRubyClient::WebpushActionsInner](docs/WebpushActionsInner.md)


## Documentation for Authorization


### Apikey


- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header

