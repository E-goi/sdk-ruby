# EgoiRubyClient::PushVersionsVersionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | Operating system version | [optional] |
| **opens** | **Integer** | Total number of opened messages | [optional] |
| **canceled** | **Integer** | Total number of delivered messages | [optional] |
| **delivered** | **Integer** | Total number of delivered messages | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PushVersionsVersionsInner.new(
  version: unknown,
  opens: null,
  canceled: null,
  delivered: 1
)
```

