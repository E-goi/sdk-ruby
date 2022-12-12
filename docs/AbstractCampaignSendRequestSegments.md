# EgoiRubyClient::AbstractCampaignSendRequestSegments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **normal** | **Array&lt;Integer&gt;** | Array of IDs of normal segments | [optional] |
| **auto** | **Array&lt;Integer&gt;** | Array of IDs of automatic segments | [optional] |
| **tag** | **Array&lt;Integer&gt;** | Array of IDs of segments of type &#39;tag&#39; | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AbstractCampaignSendRequestSegments.new(
  normal: null,
  auto: null,
  tag: null
)
```

