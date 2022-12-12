# EgoiRubyClient::PushToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **os** | **String** | The OS of the device. |  |
| **token** | **String** | The Firebase token. |  |
| **two_steps_data** | [**PushTokenTwoStepsData**](PushTokenTwoStepsData.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PushToken.new(
  os: null,
  token: null,
  two_steps_data: null
)
```

