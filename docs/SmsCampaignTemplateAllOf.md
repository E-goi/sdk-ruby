# EgoiRubyClient::SmsCampaignTemplateAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **encoding** | **String** | Message encoding | [optional] |
| **max_messages** | **Integer** | Maximum number of messages | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SmsCampaignTemplateAllOf.new(
  encoding: gsm,
  max_messages: 10
)
```

