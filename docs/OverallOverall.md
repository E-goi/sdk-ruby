# EgoiRubyClient::OverallOverall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destinations** | **Integer** | Total number of destinations | [optional] |
| **sends** | **Integer** | Total number of sent messages | [optional] |
| **delivered** | **Integer** | Total number of delivered messages | [optional] |
| **error** | **Integer** | Total number of failed messages | [optional] |
| **invalid** | **Integer** | Total number of invalid messages | [optional] |
| **pending** | **Integer** | Total number of pending messages | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::OverallOverall.new(
  destinations: 3,
  sends: 3,
  delivered: 3,
  error: null,
  invalid: null,
  pending: null
)
```

