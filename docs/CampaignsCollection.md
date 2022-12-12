# EgoiRubyClient::CampaignsCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Returned campaigns | [optional] |
| **items** | [**Array&lt;Campaign&gt;**](Campaign.md) | Returned campaigns | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CampaignsCollection.new(
  total_items: 1,
  items: null
)
```

