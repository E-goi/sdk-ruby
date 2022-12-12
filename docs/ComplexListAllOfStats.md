# EgoiRubyClient::ComplexListAllOfStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_contacts** | **Integer** | Number of total contacts in the list | [optional] |
| **total_active** | **Integer** | Number of total active contacts in the list | [optional] |
| **total_inactive** | **Integer** | Number of total inactive contacts in the list | [optional] |
| **total_removed** | **Integer** | Number of total removed contacts in the list | [optional] |
| **total_unconfirmed** | **Integer** | Number of total unconfirmed contacts in the list | [optional] |
| **total_waiting_new_confirmation** | **Integer** | Number of total contacts waiting for new confirmation in the list | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ComplexListAllOfStats.new(
  total_contacts: 1000,
  total_active: 900,
  total_inactive: 30,
  total_removed: 50,
  total_unconfirmed: 15,
  total_waiting_new_confirmation: 5
)
```

