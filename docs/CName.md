# EgoiRubyClient::CName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cname_id** | **Integer** |  | [optional][readonly] |
| **value** | **String** | CName value | [optional] |
| **status** | **String** | CName status | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CName.new(
  cname_id: 1,
  value: mkt.example.com,
  status: null
)
```

