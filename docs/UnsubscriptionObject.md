# EgoiRubyClient::UnsubscriptionObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unsubscription_method** | **String** | Unsubcription Method | [optional] |
| **unsubscription_reason** | **String** | Unsubcription Reason | [optional] |
| **unsubscription_observation** | **String** | Unsubcription Observation | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::UnsubscriptionObject.new(
  unsubscription_method: null,
  unsubscription_reason: null,
  unsubscription_observation: null
)
```

