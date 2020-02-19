=begin
#APIv3 (Beta)

# # Introduction Just a quick peek!!! This is our new version of API. Remember, it is not stable yet!!! But we invite you play with it and give us your feedback ;) # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services. * <b><a href='https://github.com/E-goi/sdk-java'>Java</a></b> * <b><a href='https://github.com/E-goi/sdk-php'>PHP</a></b> * <b><a href='https://github.com/E-goi/sdk-python'>Python</a></b>  <security-definitions/>

OpenAPI spec version: 3.0.0-beta

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

# Common files
require 'egoi-ruby-client/api_client'
require 'egoi-ruby-client/api_error'
require 'egoi-ruby-client/version'
require 'egoi-ruby-client/configuration'

# Models
require 'egoi-ruby-client/models/abstract_campaign_send_request'
require 'egoi-ruby-client/models/abstract_campaign_send_request_segments'
require 'egoi-ruby-client/models/abstract_campaign_template'
require 'egoi-ruby-client/models/abstract_cellphone_sender'
require 'egoi-ruby-client/models/abstract_segment'
require 'egoi-ruby-client/models/abstract_send_email'
require 'egoi-ruby-client/models/abstract_send_voice'
require 'egoi-ruby-client/models/accepted_response'
require 'egoi-ruby-client/models/activity_collection'
require 'egoi-ruby-client/models/advanced_report'
require 'egoi-ruby-client/models/advanced_report_campaigns_object'
require 'egoi-ruby-client/models/advanced_report_email_bounces_columns'
require 'egoi-ruby-client/models/advanced_report_email_bounces_options'
require 'egoi-ruby-client/models/advanced_report_email_clicks_by_contact_columns'
require 'egoi-ruby-client/models/advanced_report_email_clicks_by_contact_options'
require 'egoi-ruby-client/models/advanced_report_email_clicks_by_url_columns'
require 'egoi-ruby-client/models/advanced_report_email_clicks_by_url_options'
require 'egoi-ruby-client/models/advanced_report_email_events_columns'
require 'egoi-ruby-client/models/advanced_report_email_events_options'
require 'egoi-ruby-client/models/advanced_report_email_unsubscriptions_columns'
require 'egoi-ruby-client/models/advanced_report_email_unsubscriptions_options'
require 'egoi-ruby-client/models/advanced_report_range'
require 'egoi-ruby-client/models/advanced_report_sends_columns'
require 'egoi-ruby-client/models/advanced_report_sends_options'
require 'egoi-ruby-client/models/advanced_report_sms_bounces_columns'
require 'egoi-ruby-client/models/advanced_report_sms_bounces_options'
require 'egoi-ruby-client/models/advanced_report_sms_events_columns'
require 'egoi-ruby-client/models/advanced_report_sms_events_options'
require 'egoi-ruby-client/models/advanced_report_subscriptions_columns'
require 'egoi-ruby-client/models/advanced_report_subscriptions_options'
require 'egoi-ruby-client/models/advanced_report_unsubscriptions_columns'
require 'egoi-ruby-client/models/advanced_report_unsubscriptions_options'
require 'egoi-ruby-client/models/advanced_reports_collection'
require 'egoi-ruby-client/models/alphanumeric_cellphone_sender'
require 'egoi-ruby-client/models/attach_tag_request'
require 'egoi-ruby-client/models/attach_tag_response'
require 'egoi-ruby-client/models/automatic_segment'
require 'egoi-ruby-client/models/automation'
require 'egoi-ruby-client/models/automation_collection'
require 'egoi-ruby-client/models/bad_request'
require 'egoi-ruby-client/models/balance_info'
require 'egoi-ruby-client/models/balance_info_balance_info'
require 'egoi-ruby-client/models/base_conflict'
require 'egoi-ruby-client/models/basic_product'
require 'egoi-ruby-client/models/basic_sender'
require 'egoi-ruby-client/models/billing_info'
require 'egoi-ruby-client/models/bulk_action_response'
require 'egoi-ruby-client/models/c_name'
require 'egoi-ruby-client/models/c_names_collection'
require 'egoi-ruby-client/models/campaign'
require 'egoi-ruby-client/models/campaign_email_base_content'
require 'egoi-ruby-client/models/campaign_email_content'
require 'egoi-ruby-client/models/campaign_email_content_file'
require 'egoi-ruby-client/models/campaign_email_content_html'
require 'egoi-ruby-client/models/campaign_email_content_html_patch'
require 'egoi-ruby-client/models/campaign_email_content_template'
require 'egoi-ruby-client/models/campaign_email_content_web_page'
require 'egoi-ruby-client/models/campaign_email_rss_content'
require 'egoi-ruby-client/models/campaign_email_rss_content_html'
require 'egoi-ruby-client/models/campaign_email_schedule_request'
require 'egoi-ruby-client/models/campaign_email_send_now_request'
require 'egoi-ruby-client/models/campaign_email_send_request'
require 'egoi-ruby-client/models/campaign_group'
require 'egoi-ruby-client/models/campaign_group_collection'
require 'egoi-ruby-client/models/campaign_hash'
require 'egoi-ruby-client/models/campaign_push_content'
require 'egoi-ruby-client/models/campaign_push_content_template'
require 'egoi-ruby-client/models/campaign_push_content_text'
require 'egoi-ruby-client/models/campaign_push_schedule_request'
require 'egoi-ruby-client/models/campaign_push_send_request'
require 'egoi-ruby-client/models/campaign_schedule_date'
require 'egoi-ruby-client/models/campaign_sent_last30_days'
require 'egoi-ruby-client/models/campaign_sent_last30_days_errors'
require 'egoi-ruby-client/models/campaign_smart_sms_html'
require 'egoi-ruby-client/models/campaign_smart_sms_import'
require 'egoi-ruby-client/models/campaign_smart_sms_options'
require 'egoi-ruby-client/models/campaign_smart_sms_page_content'
require 'egoi-ruby-client/models/campaign_smart_sms_redirect'
require 'egoi-ruby-client/models/campaign_smart_sms_schedule_request'
require 'egoi-ruby-client/models/campaign_smart_sms_send_request'
require 'egoi-ruby-client/models/campaign_sms_content'
require 'egoi-ruby-client/models/campaign_sms_content_template'
require 'egoi-ruby-client/models/campaign_sms_content_text'
require 'egoi-ruby-client/models/campaign_sms_options'
require 'egoi-ruby-client/models/campaign_sms_schedule_request'
require 'egoi-ruby-client/models/campaign_sms_send_request'
require 'egoi-ruby-client/models/campaign_voice_schedule_request'
require 'egoi-ruby-client/models/campaign_voice_send_request'
require 'egoi-ruby-client/models/campaign_web_push_schedule_request'
require 'egoi-ruby-client/models/campaign_web_push_send_request'
require 'egoi-ruby-client/models/campaigns_collection'
require 'egoi-ruby-client/models/catalog'
require 'egoi-ruby-client/models/catalog_collection'
require 'egoi-ruby-client/models/catalog_post_request'
require 'egoi-ruby-client/models/cellphone_sender'
require 'egoi-ruby-client/models/cellphone_sender_collection'
require 'egoi-ruby-client/models/complex_contact'
require 'egoi-ruby-client/models/complex_field'
require 'egoi-ruby-client/models/complex_list'
require 'egoi-ruby-client/models/complex_user'
require 'egoi-ruby-client/models/conflict'
require 'egoi-ruby-client/models/contact'
require 'egoi-ruby-client/models/contact_activity'
require 'egoi-ruby-client/models/contact_activity_abstract_actions_with_data'
require 'egoi-ruby-client/models/contact_activity_click'
require 'egoi-ruby-client/models/contact_base_extra'
require 'egoi-ruby-client/models/contact_base_extra_bulk'
require 'egoi-ruby-client/models/contact_base_fields_bulk_schema'
require 'egoi-ruby-client/models/contact_base_fields_schema'
require 'egoi-ruby-client/models/contact_base_status_extra'
require 'egoi-ruby-client/models/contact_base_status_extra_bulk'
require 'egoi-ruby-client/models/contact_base_with_status_fields_bulk_schema'
require 'egoi-ruby-client/models/contact_base_with_status_fields_schema'
require 'egoi-ruby-client/models/contact_base_with_status_fields_schema_base'
require 'egoi-ruby-client/models/contact_base_with_status_fields_schema_base_push_token_android'
require 'egoi-ruby-client/models/contact_base_with_status_fields_schema_base_push_token_ios'
require 'egoi-ruby-client/models/contact_bulk'
require 'egoi-ruby-client/models/contact_collection'
require 'egoi-ruby-client/models/contact_export_request'
require 'egoi-ruby-client/models/contact_extra_field_cellphone'
require 'egoi-ruby-client/models/contact_extra_field_cellphone_bulk'
require 'egoi-ruby-client/models/contact_extra_field_date'
require 'egoi-ruby-client/models/contact_extra_field_email'
require 'egoi-ruby-client/models/contact_extra_field_email_bulk'
require 'egoi-ruby-client/models/contact_extra_field_number'
require 'egoi-ruby-client/models/contact_extra_field_options'
require 'egoi-ruby-client/models/contact_extra_field_phone'
require 'egoi-ruby-client/models/contact_extra_field_phone_bulk'
require 'egoi-ruby-client/models/contact_extra_field_text'
require 'egoi-ruby-client/models/contact_extra_fields'
require 'egoi-ruby-client/models/contact_extra_fields_bulk'
require 'egoi-ruby-client/models/contact_extra_fields_bulk_schema'
require 'egoi-ruby-client/models/contact_extra_fields_schema'
require 'egoi-ruby-client/models/contact_inside_base'
require 'egoi-ruby-client/models/contact_inside_base_bulk'
require 'egoi-ruby-client/models/contact_other_activity'
require 'egoi-ruby-client/models/contact_status_fields_bulk_schema'
require 'egoi-ruby-client/models/contact_status_fields_schema'
require 'egoi-ruby-client/models/contact_tags'
require 'egoi-ruby-client/models/contact_tags_bulk'
require 'egoi-ruby-client/models/content_voice'
require 'egoi-ruby-client/models/content_voice_audio'
require 'egoi-ruby-client/models/content_voice_patch'
require 'egoi-ruby-client/models/content_voice_template'
require 'egoi-ruby-client/models/country'
require 'egoi-ruby-client/models/country_collection'
require 'egoi-ruby-client/models/create_contact_response'
require 'egoi-ruby-client/models/delete_campaigns_conflict'
require 'egoi-ruby-client/models/delete_fields_conflict'
require 'egoi-ruby-client/models/delete_lists_conflict'
require 'egoi-ruby-client/models/delete_lists_conflicts_errors'
require 'egoi-ruby-client/models/delete_segments_conflict'
require 'egoi-ruby-client/models/delete_segments_conflicts_errors'
require 'egoi-ruby-client/models/domain_already_defined'
require 'egoi-ruby-client/models/domain_already_defined_errors'
require 'egoi-ruby-client/models/email_bounces_campaign_fields'
require 'egoi-ruby-client/models/email_bounces_list_stats_fields'
require 'egoi-ruby-client/models/email_campaign_create'
require 'egoi-ruby-client/models/email_campaign_patch'
require 'egoi-ruby-client/models/email_campaign_template'
require 'egoi-ruby-client/models/email_clicks_by_contact_campaign_fields'
require 'egoi-ruby-client/models/email_clicks_by_contact_list_stats_fields'
require 'egoi-ruby-client/models/email_clicks_by_url_campaign_fields'
require 'egoi-ruby-client/models/email_clicks_by_url_list_stats_fields'
require 'egoi-ruby-client/models/email_events_campaign_fields'
require 'egoi-ruby-client/models/email_events_list_stats_fields'
require 'egoi-ruby-client/models/email_rss_campaign_create'
require 'egoi-ruby-client/models/email_send_segment'
require 'egoi-ruby-client/models/email_sender'
require 'egoi-ruby-client/models/email_sender_collection'
require 'egoi-ruby-client/models/email_sender_put_request'
require 'egoi-ruby-client/models/email_unsubscriptions_campaign_fields'
require 'egoi-ruby-client/models/email_unsubscriptions_list_stats_fields'
require 'egoi-ruby-client/models/enable_te_conflict'
require 'egoi-ruby-client/models/enable_te_conflicts_errors'
require 'egoi-ruby-client/models/export_contacts_webhook_data'
require 'egoi-ruby-client/models/field'
require 'egoi-ruby-client/models/field_collection'
require 'egoi-ruby-client/models/field_in_use'
require 'egoi-ruby-client/models/field_in_use_errors'
require 'egoi-ruby-client/models/field_in_use_errors_field_in_use_data'
require 'egoi-ruby-client/models/field_option'
require 'egoi-ruby-client/models/field_options_collection'
require 'egoi-ruby-client/models/forbidden'
require 'egoi-ruby-client/models/form'
require 'egoi-ruby-client/models/general_info'
require 'egoi-ruby-client/models/generate_email_bounces_report'
require 'egoi-ruby-client/models/generate_email_clicks_by_contact_report'
require 'egoi-ruby-client/models/generate_email_clicks_by_url_report'
require 'egoi-ruby-client/models/generate_email_events_report'
require 'egoi-ruby-client/models/generate_email_unsubscriptions_report'
require 'egoi-ruby-client/models/generate_form_answers_report'
require 'egoi-ruby-client/models/generate_sends_report'
require 'egoi-ruby-client/models/generate_sms_bounces_report'
require 'egoi-ruby-client/models/generate_sms_events_report'
require 'egoi-ruby-client/models/generate_subscriptions_report'
require 'egoi-ruby-client/models/generate_unsubscriptions_report'
require 'egoi-ruby-client/models/has_automations'
require 'egoi-ruby-client/models/has_automations_errors'
require 'egoi-ruby-client/models/has_campaigns_last_thirty_days'
require 'egoi-ruby-client/models/has_campaigns_last_thirty_days_errors'
require 'egoi-ruby-client/models/has_push_app'
require 'egoi-ruby-client/models/has_push_app_errors'
require 'egoi-ruby-client/models/has_queued_campaigns'
require 'egoi-ruby-client/models/has_queued_campaigns_errors'
require 'egoi-ruby-client/models/has_queued_operations'
require 'egoi-ruby-client/models/has_queued_operations_errors'
require 'egoi-ruby-client/models/has_web_push_site'
require 'egoi-ruby-client/models/has_web_push_site_errors'
require 'egoi-ruby-client/models/hashcode_campaign'
require 'egoi-ruby-client/models/header_footer'
require 'egoi-ruby-client/models/header_footer_footer_links'
require 'egoi-ruby-client/models/header_footer_header_links'
require 'egoi-ruby-client/models/header_footer_template'
require 'egoi-ruby-client/models/import_bulk_request'
require 'egoi-ruby-client/models/inline_object'
require 'egoi-ruby-client/models/internal_server_error'
require 'egoi-ruby-client/models/invalid_segment_type'
require 'egoi-ruby-client/models/invalid_segment_type_errors'
require 'egoi-ruby-client/models/language'
require 'egoi-ruby-client/models/limit_contacts_action_send'
require 'egoi-ruby-client/models/limit_contacts_percent_action_send'
require 'egoi-ruby-client/models/limit_contacts_value_action_send'
require 'egoi-ruby-client/models/limit_hour_action_send'
require 'egoi-ruby-client/models/limit_hour_action_send_limit_hour'
require 'egoi-ruby-client/models/limit_speed_action_send'
require 'egoi-ruby-client/models/list'
require 'egoi-ruby-client/models/list_collection'
require 'egoi-ruby-client/models/list_limit_reached'
require 'egoi-ruby-client/models/list_limit_reached_errors'
require 'egoi-ruby-client/models/message_web_push'
require 'egoi-ruby-client/models/message_web_push_post'
require 'egoi-ruby-client/models/message_web_push_rss'
require 'egoi-ruby-client/models/module_info'
require 'egoi-ruby-client/models/module_info_module_info'
require 'egoi-ruby-client/models/module_info_module_info_te'
require 'egoi-ruby-client/models/my_account'
require 'egoi-ruby-client/models/not_found'
require 'egoi-ruby-client/models/notify_user_id_array_action_send'
require 'egoi-ruby-client/models/now'
require 'egoi-ruby-client/models/numeric_cellphone_sender'
require 'egoi-ruby-client/models/o_limit_contacts_action_send'
require 'egoi-ruby-client/models/o_segments_action_send'
require 'egoi-ruby-client/models/o_segments_without_contact_action_send'
require 'egoi-ruby-client/models/operation'
require 'egoi-ruby-client/models/operation_action_request'
require 'egoi-ruby-client/models/operation_action_response'
require 'egoi-ruby-client/models/operation_action_response_error'
require 'egoi-ruby-client/models/operation_operation_data'
require 'egoi-ruby-client/models/operations_collection'
require 'egoi-ruby-client/models/overall'
require 'egoi-ruby-client/models/overall_overall'
require 'egoi-ruby-client/models/patch_request_base_field'
require 'egoi-ruby-client/models/patch_request_field'
require 'egoi-ruby-client/models/patch_request_list'
require 'egoi-ruby-client/models/phone_campaign_template'
require 'egoi-ruby-client/models/phone_report'
require 'egoi-ruby-client/models/phone_sender'
require 'egoi-ruby-client/models/phone_sender_collection'
require 'egoi-ruby-client/models/ping'
require 'egoi-ruby-client/models/plan_info'
require 'egoi-ruby-client/models/plan_info_plan_info'
require 'egoi-ruby-client/models/post_contacts_conflict'
require 'egoi-ruby-client/models/post_lists_conflict'
require 'egoi-ruby-client/models/post_products_conflict'
require 'egoi-ruby-client/models/post_request_list'
require 'egoi-ruby-client/models/product'
require 'egoi-ruby-client/models/product_already_exists'
require 'egoi-ruby-client/models/product_already_exists_errors'
require 'egoi-ruby-client/models/product_bulk_request'
require 'egoi-ruby-client/models/product_collection'
require 'egoi-ruby-client/models/product_patch_request'
require 'egoi-ruby-client/models/product_patch_request_related_products'
require 'egoi-ruby-client/models/product_post_request'
require 'egoi-ruby-client/models/push_campaign_patch_request'
require 'egoi-ruby-client/models/push_campaign_patch_request_content'
require 'egoi-ruby-client/models/push_campaign_post_request'
require 'egoi-ruby-client/models/push_campaign_post_request_actions'
require 'egoi-ruby-client/models/push_campaign_post_request_geo_options'
require 'egoi-ruby-client/models/push_campaign_post_request_notification_options'
require 'egoi-ruby-client/models/push_notification_sound_schema'
require 'egoi-ruby-client/models/push_notification_sound_schema_default'
require 'egoi-ruby-client/models/push_notification_sound_schema_none'
require 'egoi-ruby-client/models/push_notification_sound_schema_url'
require 'egoi-ruby-client/models/push_report'
require 'egoi-ruby-client/models/push_versions'
require 'egoi-ruby-client/models/push_versions_versions'
require 'egoi-ruby-client/models/remove_request'
require 'egoi-ruby-client/models/remove_response'
require 'egoi-ruby-client/models/remove_response_errors'
require 'egoi-ruby-client/models/report_campaigns_all'
require 'egoi-ruby-client/models/report_campaigns_group'
require 'egoi-ruby-client/models/report_campaigns_last'
require 'egoi-ruby-client/models/report_campaigns_specific'
require 'egoi-ruby-client/models/request_items_unsubscribe'
require 'egoi-ruby-client/models/saved_segment'
require 'egoi-ruby-client/models/segment'
require 'egoi-ruby-client/models/segment_collection'
require 'egoi-ruby-client/models/segments_action_send'
require 'egoi-ruby-client/models/segments_without_contact_action_send'
require 'egoi-ruby-client/models/send_contact'
require 'egoi-ruby-client/models/send_contact_cellphone'
require 'egoi-ruby-client/models/send_email_contact'
require 'egoi-ruby-client/models/send_none'
require 'egoi-ruby-client/models/send_push'
require 'egoi-ruby-client/models/send_segment'
require 'egoi-ruby-client/models/send_smart_sms'
require 'egoi-ruby-client/models/send_sms'
require 'egoi-ruby-client/models/send_web_push'
require 'egoi-ruby-client/models/sends_campaign_fields'
require 'egoi-ruby-client/models/smart_sms_campaign'
require 'egoi-ruby-client/models/smart_sms_campaign_campaign_content'
require 'egoi-ruby-client/models/smart_sms_campaign_patch_request'
require 'egoi-ruby-client/models/smart_sms_campaign_patch_request_campaign_content'
require 'egoi-ruby-client/models/smart_sms_campaign_patch_request_page_content'
require 'egoi-ruby-client/models/smart_sms_segments_action_send'
require 'egoi-ruby-client/models/sms_bounces_campaign_fields'
require 'egoi-ruby-client/models/sms_bounces_list_stats_fields'
require 'egoi-ruby-client/models/sms_campaign'
require 'egoi-ruby-client/models/sms_campaign_patch_request'
require 'egoi-ruby-client/models/sms_campaign_patch_request_content'
require 'egoi-ruby-client/models/sms_campaign_template'
require 'egoi-ruby-client/models/sms_events_campaign_fields'
require 'egoi-ruby-client/models/sms_events_list_stats_fields'
require 'egoi-ruby-client/models/sms_segments_action_send'
require 'egoi-ruby-client/models/start_automation_request'
require 'egoi-ruby-client/models/start_automation_response'
require 'egoi-ruby-client/models/subscriptions_list_stats_fields'
require 'egoi-ruby-client/models/suppression_list'
require 'egoi-ruby-client/models/suppression_list_items'
require 'egoi-ruby-client/models/tag'
require 'egoi-ruby-client/models/tag_collection'
require 'egoi-ruby-client/models/tag_collection1'
require 'egoi-ruby-client/models/tag_request'
require 'egoi-ruby-client/models/tag_segment'
require 'egoi-ruby-client/models/te_response'
require 'egoi-ruby-client/models/unauthorized'
require 'egoi-ruby-client/models/unique_field_in_use'
require 'egoi-ruby-client/models/unique_field_in_use_errors'
require 'egoi-ruby-client/models/unprocessable_entity'
require 'egoi-ruby-client/models/unsubscription_object'
require 'egoi-ruby-client/models/unsubscriptions_list_stats_fields'
require 'egoi-ruby-client/models/used_in_automations'
require 'egoi-ruby-client/models/used_in_automations_errors'
require 'egoi-ruby-client/models/used_in_recurring_messages'
require 'egoi-ruby-client/models/used_in_recurring_messages_errors'
require 'egoi-ruby-client/models/user'
require 'egoi-ruby-client/models/user_collection'
require 'egoi-ruby-client/models/user_post_request'
require 'egoi-ruby-client/models/voice_campaign'
require 'egoi-ruby-client/models/voice_campaign_template'
require 'egoi-ruby-client/models/voice_patch_campaign'
require 'egoi-ruby-client/models/web_push_campaign'
require 'egoi-ruby-client/models/web_push_patch_campaign'
require 'egoi-ruby-client/models/web_push_report'
require 'egoi-ruby-client/models/web_push_report_browsers'
require 'egoi-ruby-client/models/web_push_report_operating_systems'
require 'egoi-ruby-client/models/web_push_rss_campaign'
require 'egoi-ruby-client/models/web_push_site'
require 'egoi-ruby-client/models/web_push_stats'

# APIs
require 'egoi-ruby-client/api/advanced_reports_api'
require 'egoi-ruby-client/api/automations_api'
require 'egoi-ruby-client/api/c_names_api'
require 'egoi-ruby-client/api/campaign_groups_api'
require 'egoi-ruby-client/api/campaigns_api'
require 'egoi-ruby-client/api/contacts_api'
require 'egoi-ruby-client/api/ecommerce_api'
require 'egoi-ruby-client/api/email_api'
require 'egoi-ruby-client/api/fields_api'
require 'egoi-ruby-client/api/lists_api'
require 'egoi-ruby-client/api/my_account_api'
require 'egoi-ruby-client/api/operations_api'
require 'egoi-ruby-client/api/ping_api'
require 'egoi-ruby-client/api/push_api'
require 'egoi-ruby-client/api/reports_api'
require 'egoi-ruby-client/api/segments_api'
require 'egoi-ruby-client/api/senders_api'
require 'egoi-ruby-client/api/smart_sms_api'
require 'egoi-ruby-client/api/sms_api'
require 'egoi-ruby-client/api/suppression_list_api'
require 'egoi-ruby-client/api/tags_api'
require 'egoi-ruby-client/api/users_api'
require 'egoi-ruby-client/api/utilities_api'
require 'egoi-ruby-client/api/voice_api'
require 'egoi-ruby-client/api/webpush_api'

module EgoiRubyClient
  class << self
    # Customize default settings for the SDK using block.
    #   EgoiRubyClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
