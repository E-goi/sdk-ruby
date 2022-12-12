# EgoiRubyClient::SuppressionList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional][readonly] |
| **value** | **String** | Suppressed value | [optional] |
| **type** | **String** | Suppression type | [optional] |
| **method** | **String** | Suppression method | [optional] |
| **campaign_hash** | **String** |  | [optional][readonly] |
| **created** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SuppressionList.new(
  id: 1,
  value: null,
  type: null,
  method: null,
  campaign_hash: null,
  created: null
)
```

