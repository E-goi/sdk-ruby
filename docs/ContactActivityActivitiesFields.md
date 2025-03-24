# EgoiRubyClient::ContactActivityActivitiesFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **opens** | **Boolean** | True to include opens, false otherwise |  |
| **clicks** | **Boolean** | True to include clicks, false otherwise |  |
| **recommends** | **Boolean** | True to include recommends, false otherwise |  |
| **conversion** | **Boolean** | True to include convertions, false otherwise |  |
| **email_send** | **Boolean** | True to include email sends, false otherwise |  |
| **sms_send** | **Boolean** | True to include sms sends, false otherwise |  |
| **sms_report** | **Boolean** | True to include sms report, false otherwise |  |
| **voice_send** | **Boolean** | True to include voice sends, false otherwise |  |
| **voice_report** | **Boolean** | True to include voice report, false otherwise |  |
| **invitation_send** | **Boolean** | True to include invitation sends, false otherwise |  |
| **invitation_open** | **Boolean** | True to include invitation opens, false otherwise |  |
| **unsubscribe** | **Boolean** | True to include unsubscriptions, false otherwise |  |
| **email_soft_bounce** | **Boolean** | True to include email soft bounces, false otherwise |  |
| **email_hard_bounce** | **Boolean** | True to include email hard bounces, false otherwise |  |
| **subscription** | **Boolean** | True to include subscriptions, false otherwise |  |
| **resubscription** | **Boolean** | True to include re-subscriptions, false otherwise |  |
| **unsubscribe_reason** | **Boolean** | True to include unsubscription reason, false otherwise |  |
| **facebook_like** | **Boolean** | True to include facebook likes, false otherwise |  |
| **social_share** | **Boolean** | True to include social shares, false otherwise |  |
| **unsubscribe_manual** | **Boolean** | True to include manual unsubscriptions, false otherwise |  |
| **double_optin** | **Boolean** | True to include double optins, false otherwise |  |
| **email_spam_complaint** | **Boolean** | True to include spam complaints, false otherwise |  |
| **email_field_disable** | **Boolean** | True to include email field disable, false otherwise |  |
| **cellphone_field_disable** | **Boolean** | True to include cellphone field disable, false otherwise |  |
| **phone_field_disable** | **Boolean** | True to include phone field disable, false otherwise |  |
| **unsubscribe_api** | **Boolean** | True to include api unsubscriptions, false otherwise |  |
| **email_field_enable** | **Boolean** | True to include email field enable, false otherwise |  |
| **cellphone_field_enable** | **Boolean** | True to include cellphone field enable, false otherwise |  |
| **phone_field_enable** | **Boolean** | True to include phone field enable, false otherwise |  |
| **edit_subscription** | **Boolean** | True to include edit subscriptions, false otherwise |  |
| **automation_event** | **Boolean** | True to include automation events, false otherwise |  |
| **push_send** | **Boolean** | True to include push events, false otherwise |  |
| **push_delivered** | **Boolean** | True to include push delivered, false otherwise |  |
| **push_error** | **Boolean** | True to include push error, false otherwise |  |
| **push_received** | **Boolean** | True to include push received, false otherwise |  |
| **push_open** | **Boolean** | True to include push open, false otherwise |  |
| **push_canceled** | **Boolean** | True to include push canceled, false otherwise |  |
| **push_unsubscription** | **Boolean** | True to include push unsubscriptions, false otherwise |  |
| **reply_to_email** | **Boolean** | True to include reply to email, false otherwise |  |
| **web_push_send** | **Boolean** | True to include web push send, false otherwise |  |
| **web_push_delivered** | **Boolean** | True to include web push delivered, false otherwise |  |
| **web_push_open** | **Boolean** | True to include web push open, false otherwise |  |
| **web_push_bounce** | **Boolean** | True to include web push bounces, false otherwise |  |
| **web_push_click** | **Boolean** | True to include web push clicks, false otherwise |  |
| **web_push_subscription** | **Boolean** | True to include web push subscriptions, false otherwise |  |
| **web_push_unsubscription** | **Boolean** | True to include web push unsubscriptions, false otherwise |  |
| **forget_subscription** | **Boolean** | True to include forget subscriptions, false otherwise |  |
| **change_consent** | **Boolean** | True to include consent change, false otherwise |  |
| **double_optin_resend** | **Boolean** | True to include optin resends, false otherwise |  |
| **double_optedit** | **Boolean** | True to include double optedit, false otherwise |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactActivityActivitiesFields.new(
  opens: null,
  clicks: null,
  recommends: null,
  conversion: null,
  email_send: null,
  sms_send: null,
  sms_report: null,
  voice_send: null,
  voice_report: null,
  invitation_send: null,
  invitation_open: null,
  unsubscribe: null,
  email_soft_bounce: null,
  email_hard_bounce: null,
  subscription: null,
  resubscription: null,
  unsubscribe_reason: null,
  facebook_like: null,
  social_share: null,
  unsubscribe_manual: null,
  double_optin: null,
  email_spam_complaint: null,
  email_field_disable: null,
  cellphone_field_disable: null,
  phone_field_disable: null,
  unsubscribe_api: null,
  email_field_enable: null,
  cellphone_field_enable: null,
  phone_field_enable: null,
  edit_subscription: null,
  automation_event: null,
  push_send: null,
  push_delivered: null,
  push_error: null,
  push_received: null,
  push_open: null,
  push_canceled: null,
  push_unsubscription: null,
  reply_to_email: null,
  web_push_send: null,
  web_push_delivered: null,
  web_push_open: null,
  web_push_bounce: null,
  web_push_click: null,
  web_push_subscription: null,
  web_push_unsubscription: null,
  forget_subscription: null,
  change_consent: null,
  double_optin_resend: null,
  double_optedit: null
)
```

