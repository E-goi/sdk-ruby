# EgoiRubyClient::AbstractCampaignTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** |  | [optional][readonly] |
| **template_hash** | **String** |  | [optional][readonly] |
| **internal_name** | **String** | Campaign internal name | [optional] |
| **created** | **Time** |  | [optional][readonly] |
| **updated** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AbstractCampaignTemplate.new(
  template_id: 1,
  template_hash: null,
  internal_name: Campaign internal name,
  created: null,
  updated: null
)
```

