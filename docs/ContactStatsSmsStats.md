# EgoiRubyClient::ContactStatsSmsStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sent** | **Integer** | SMS sent to the contact | [optional] |
| **delivered** | **Integer** | SMS delivered to the contact | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactStatsSmsStats.new(
  sent: 5,
  delivered: 5
)
```

