# EgoiRubyClient::ContactCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Total returned contacts | [optional] |
| **items** | [**Array&lt;Contact&gt;**](Contact.md) | Returned contacts | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactCollection.new(
  total_items: 1,
  items: null
)
```

