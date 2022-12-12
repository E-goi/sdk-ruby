# EgoiRubyClient::UserCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Returned users | [optional] |
| **items** | [**Array&lt;User&gt;**](User.md) | Returned users | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::UserCollection.new(
  total_items: 1,
  items: null
)
```

