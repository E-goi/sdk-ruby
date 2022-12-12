# EgoiRubyClient::PatchRequestList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **String** | Internal name of the list | [optional] |
| **public_name** | **String** | Public name of the list | [optional] |
| **group_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PatchRequestList.new(
  internal_name: Internal name,
  public_name: Public name,
  group_id: 1
)
```

