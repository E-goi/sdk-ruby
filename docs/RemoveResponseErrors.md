# EgoiRubyClient::RemoveResponseErrors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invalid_unsubscription_reason** | **Array&lt;String&gt;** |  | [optional] |
| **invalid_unsubscription_method** | **Array&lt;String&gt;** |  | [optional] |
| **invalid_data_type** | **Array&lt;String&gt;** |  | [optional] |
| **contact_not_in_list** | **Array&lt;String&gt;** |  | [optional] |
| **contact_already_removed** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::RemoveResponseErrors.new(
  invalid_unsubscription_reason: [&quot;cbb0077994&quot;,&quot;be9715c108&quot;,&quot;649a15f483&quot;],
  invalid_unsubscription_method: [&quot;732711d708&quot;,&quot;ba5b2b14aa&quot;],
  invalid_data_type: [&quot;44fc463242&quot;],
  contact_not_in_list: [&quot;a47a947e2b&quot;],
  contact_already_removed: [&quot;a41a247e21&quot;]
)
```

