# EgoiRubyClient::SendSmartSms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** |  |  |
| **destination_field** | **String** | Smart SMS campaign destination field. Must be &#39;cellphone&#39; or the other field ID of type                                 cellphone |  |
| **segments** | [**SmartSmsSegmentsActionSend**](SmartSmsSegmentsActionSend.md) |  |  |
| **limit_hour** | [**LimitHourActionSendLimitHour**](LimitHourActionSendLimitHour.md) |  | [optional] |
| **notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SendSmartSms.new(
  list_id: 1,
  destination_field: cellphone,
  segments: null,
  limit_hour: null,
  notify: null
)
```

