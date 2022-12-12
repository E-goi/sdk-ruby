# EgoiRubyClient::TagRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the tag | [optional] |
| **color** | **String** | Main color of the tag | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::TagRequest.new(
  name: Your custom tag,
  color: #FFFFFF
)
```

