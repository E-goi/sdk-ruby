# EgoiRubyClient::ReportCampaignsSpecific

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** |  |  |
| **type** | **String** |  |  |
| **data** | **Array&lt;String&gt;** | Array of campaign hashes |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ReportCampaignsSpecific.new(
  list_id: 1,
  type: null,
  data: null
)
```

