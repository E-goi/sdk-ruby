# EgoiRubyClient::Tag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **Integer** |  | [optional][readonly] |
| **name** | **String** | Name of the tag | [optional] |
| **color** | **String** | Main color of the tag | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Tag.new(
  tag_id: 1,
  name: Your custom tag,
  color: #FFFFFF
)
```

