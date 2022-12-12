# EgoiRubyClient::PushEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **os** | **String** | The OS of the device. |  |
| **contact** | **String** | The UID of the contact. |  |
| **message_hash** | **String** | The hash of the campaign related to the notification. |  |
| **event** | **String** | The event to register (open, canceled). |  |
| **device_id** | **Integer** | The E-goi&#39;s ID of the device. |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PushEvent.new(
  os: null,
  contact: null,
  message_hash: null,
  event: null,
  device_id: null
)
```

