# EgoiRubyClient::PostRequestList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **String** | Internal name of the list |  |
| **public_name** | **String** | Public name of the list. Defaults to internal name if not set | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PostRequestList.new(
  internal_name: Internal name,
  public_name: Public name
)
```

