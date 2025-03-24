# EgoiRubyClient::ContactStatsVoiceStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sent** | **Integer** | Voice campaigns sent to the contact | [optional] |
| **answered** | **Integer** | Voice campaigns answered by the contact | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactStatsVoiceStats.new(
  sent: 20,
  answered: 10
)
```

