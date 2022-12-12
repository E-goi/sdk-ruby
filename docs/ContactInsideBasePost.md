# EgoiRubyClient::ContactInsideBasePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** |  | [optional][readonly] |
| **status** | **String** | Status of the contact | [optional][default to &#39;active&#39;] |
| **first_name** | **String** | First name of the contact | [optional] |
| **last_name** | **String** | Last name of the contact | [optional] |
| **birth_date** | **Date** | Birth date of the contact | [optional] |
| **language** | [**Language**](Language.md) |  | [optional][default to &#39;en&#39;] |
| **email** | **String** | Email of the contact | [optional] |
| **cellphone** | **String** | Cellphone of the contact | [optional] |
| **phone** | **String** | Phone of the contact | [optional] |
| **push_token_android** | [**Array&lt;ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenAndroidInner&gt;**](ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenAndroidInner.md) | Android push token of the contact | [optional] |
| **push_token_ios** | [**Array&lt;ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenIosInner&gt;**](ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenIosInner.md) | IOS push token of the contact | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactInsideBasePost.new(
  contact_id: 8f3a27ef26,
  status: null,
  first_name: John,
  last_name: Doe,
  birth_date: Fri Jan 10 01:00:00 WET 1975,
  language: null,
  email: example@e-goi.com,
  cellphone: 351-300404336,
  phone: 351-300404336,
  push_token_android: null,
  push_token_ios: null
)
```

