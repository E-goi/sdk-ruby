# EgoiRubyClient::AbstractCampaignSendRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segments** | [**AbstractCampaignSendRequestSegments**](AbstractCampaignSendRequestSegments.md) |  |  |
| **notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AbstractCampaignSendRequest.new(
  segments: null,
  notify: null
)
```

