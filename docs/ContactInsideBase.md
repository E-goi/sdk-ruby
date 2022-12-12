# EgoiRubyClient::ContactInsideBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** |  | [optional][readonly] |
| **status** | **String** | Status of the contact | [optional][default to &#39;active&#39;] |
| **consent** | **String** | Contact consent | [optional][readonly][default to &#39;consent&#39;] |
| **consent_date** | **Time** | Date and hour of the contact consent | [optional][readonly] |
| **subscription_method** | **String** | Contact subscription method | [optional][readonly] |
| **subscription_date** | **Time** | Date and hour of the contact subscription | [optional][readonly] |
| **subscription_form** | **Integer** | Contact subscription form | [optional][readonly] |
| **unsubscription_method** | **String** | Contact unsubscription method | [optional][readonly] |
| **unsubscription_reason** | **String** | Contact unsubscription reason | [optional][readonly] |
| **unsubscription_observation** | **String** | Contact unsubscription observation | [optional][readonly] |
| **unsubscription_date** | **Time** | Contact unsubscription date | [optional][readonly] |
| **change_date** | **Date** | Last modification date of the contact | [optional][readonly] |
| **first_name** | **String** | First name of the contact | [optional] |
| **last_name** | **String** | Last name of the contact | [optional] |
| **birth_date** | **Date** | Birth date of the contact | [optional] |
| **language** | [**Language**](Language.md) |  | [optional][default to &#39;en&#39;] |
| **email** | **String** | Email of the contact | [optional] |
| **email_status** | **String** | Email channel status | [optional][readonly][default to &#39;active&#39;] |
| **cellphone** | **String** | Cellphone of the contact | [optional] |
| **cellphone_status** | **String** | Cellphone channel status | [optional][readonly][default to &#39;active&#39;] |
| **phone** | **String** | Phone of the contact | [optional] |
| **phone_status** | **String** | Phone channel status | [optional][readonly][default to &#39;active&#39;] |
| **push_token_android** | [**Array&lt;ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenAndroidInner&gt;**](ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenAndroidInner.md) | Android push token of the contact | [optional] |
| **push_token_ios** | [**Array&lt;ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenIosInner&gt;**](ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenIosInner.md) | IOS push token of the contact | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactInsideBase.new(
  contact_id: 8f3a27ef26,
  status: null,
  consent: null,
  consent_date: null,
  subscription_method: null,
  subscription_date: null,
  subscription_form: null,
  unsubscription_method: null,
  unsubscription_reason: null,
  unsubscription_observation: ,
  unsubscription_date: null,
  change_date: null,
  first_name: John,
  last_name: Doe,
  birth_date: Fri Jan 10 01:00:00 WET 1975,
  language: null,
  email: example@e-goi.com,
  email_status: null,
  cellphone: 351-300404336,
  cellphone_status: null,
  phone: 351-300404336,
  phone_status: null,
  push_token_android: null,
  push_token_ios: null
)
```

