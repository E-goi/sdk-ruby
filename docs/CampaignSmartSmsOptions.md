# EgoiRubyClient::CampaignSmartSmsOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **encoding** | **String** |  | [optional] |
| **max_messages** | **Integer** |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CampaignSmartSmsOptions.new(
  encoding: gsm,
  max_messages: 5
)
```

