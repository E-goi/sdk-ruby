# EgoiRubyClient::PhoneReportAllOfNetworks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Network name | [optional] |
| **sends** | **Integer** | Total number of sent messages | [optional] |
| **delivered** | **Integer** | Total number of delivered messages | [optional] |
| **error** | **Integer** | Total number of failed messages | [optional] |
| **invalid** | **Integer** | Total number of invalid messages | [optional] |
| **pending** | **Integer** | Total number of pending messages | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PhoneReportAllOfNetworks.new(
  network: Vodafone,
  sends: 1,
  delivered: 1,
  error: null,
  invalid: null,
  pending: null
)
```

