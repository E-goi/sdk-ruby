# EgoiRubyClient::ActivateContactsMany

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Activates the provided contacts (excluding removed contacts) | [optional] |
| **contacts** | **Array&lt;String&gt;** | Array of contact IDs to activate | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ActivateContactsMany.new(
  type: null,
  contacts: null
)
```

