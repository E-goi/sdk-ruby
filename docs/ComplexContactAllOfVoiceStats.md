# EgoiRubyClient::ComplexContactAllOfVoiceStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sent** | **Integer** | Voice campaigns sent to the contact | [optional] |
| **answered** | **Integer** | Voice campaigns answered by the contact | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ComplexContactAllOfVoiceStats.new(
  sent: 20,
  answered: 10
)
```

