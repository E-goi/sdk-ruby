# EgoiRubyClient::DeleteCampaignsConflict

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**CampaignSentLast30DaysErrors**](CampaignSentLast30DaysErrors.md) |  | [optional] |
| **type** | **String** | RFC for status code definitions | [optional] |
| **title** | **String** | Error title | [optional] |
| **status** | **Integer** | Status code | [optional] |
| **detail** | **String** | Error detail | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::DeleteCampaignsConflict.new(
  errors: null,
  type: http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html,
  title: null,
  status: 409,
  detail: The request could not be completed due to a conflict with the current state of the target resource
)
```

