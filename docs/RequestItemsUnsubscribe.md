# EgoiRubyClient::RequestItemsUnsubscribe

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** |  | [optional] |
| **unsubscription_method** | **String** | Unsubcription Method | [optional] |
| **unsubscription_reason** | **String** | Unsubcription Reason | [optional] |
| **unsubscription_observation** | **String** | Unsubcription Observation | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::RequestItemsUnsubscribe.new(
  contact_id: 8f3a27ef26,
  unsubscription_method: null,
  unsubscription_reason: null,
  unsubscription_observation: null
)
```

