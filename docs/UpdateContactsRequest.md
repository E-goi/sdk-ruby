# EgoiRubyClient::UpdateContactsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Updates the contacts in the whole list (excluding removed contacts) |  |
| **contacts** | **Array&lt;String&gt;** | Array of contact IDs to update |  |
| **segment_id** | **String** | Segment ID to update channel field |  |
| **base** | [**ContactBaseWithStatusFieldsNoTokensSchemaBase**](ContactBaseWithStatusFieldsNoTokensSchemaBase.md) |  | [optional] |
| **extra** | [**Array&lt;ContactExtraFields&gt;**](ContactExtraFields.md) | Array of the contact&#39;s extra fields | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::UpdateContactsRequest.new(
  type: null,
  contacts: null,
  segment_id: null,
  base: null,
  extra: null
)
```

