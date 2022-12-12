# EgoiRubyClient::DomainCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Returned domains | [optional] |
| **items** | [**Array&lt;Domain&gt;**](Domain.md) | Returned domains | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::DomainCollection.new(
  total_items: 1,
  items: null
)
```

