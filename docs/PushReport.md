# EgoiRubyClient::PushReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** |  | [optional][readonly] |
| **operating_systems** | **Array&lt;Object&gt;** | Stats of the campaign for each operating system | [optional] |
| **brands** | **Array&lt;Object&gt;** | Stats of the campaign for each brand | [optional] |
| **overall** | [**OverallOverall**](OverallOverall.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PushReport.new(
  campaign_hash: null,
  operating_systems: null,
  brands: null,
  overall: null
)
```

