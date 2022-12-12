# EgoiRubyClient::EnableTeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Website&#39;s Domain without protocol |  |
| **list_id** | **Integer** | Website&#39;s List | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EnableTeRequest.new(
  domain: e-goi.com,
  list_id: 1
)
```

