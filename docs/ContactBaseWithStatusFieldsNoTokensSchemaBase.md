# EgoiRubyClient::ContactBaseWithStatusFieldsNoTokensSchemaBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** |  | [optional][readonly] |
| **status** | **String** | Status of the contact | [optional][default to &#39;active&#39;] |
| **consent** | **String** | Contact consent | [optional] |
| **first_name** | **String** | First name of the contact | [optional] |
| **last_name** | **String** | Last name of the contact | [optional] |
| **birth_date** | **Date** | Birth date of the contact | [optional] |
| **language** | [**Language**](Language.md) |  | [optional][default to &#39;en&#39;] |
| **email** | **String** | Email of the contact | [optional] |
| **email_status** | **String** | Email channel status | [optional] |
| **cellphone** | **String** | Cellphone of the contact (country code followed by phone number, split by &#39;-&#39;) | [optional] |
| **cellphone_status** | **String** | Cellphone channel status | [optional] |
| **phone** | **String** | Phone of the contact (country code followed by phone number, split by &#39;-&#39;) | [optional] |
| **phone_status** | **String** | Phone channel status | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactBaseWithStatusFieldsNoTokensSchemaBase.new(
  contact_id: 8f3a27ef26,
  status: null,
  consent: null,
  first_name: John,
  last_name: Doe,
  birth_date: Fri Jan 10 01:00:00 WET 1975,
  language: null,
  email: example@e-goi.com,
  email_status: null,
  cellphone: 351-300404336,
  cellphone_status: null,
  phone: 351-300404336,
  phone_status: null
)
```

