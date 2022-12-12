# EgoiRubyClient::ContactStatusFieldsBulkSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_status** | **String** | Email channel status | [optional] |
| **cellphone_status** | **String** | Cellphone channel status | [optional] |
| **phone_status** | **String** | Phone channel status | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactStatusFieldsBulkSchema.new(
  email_status: null,
  cellphone_status: null,
  phone_status: null
)
```

