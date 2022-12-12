# EgoiRubyClient::CampaignGroupCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Returned campaign groups | [optional] |
| **items** | [**Array&lt;CampaignGroup&gt;**](CampaignGroup.md) | Returned tags | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CampaignGroupCollection.new(
  total_items: 1,
  items: null
)
```

