# EgoiRubyClient::PhoneReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** |  | [optional][readonly] |
| **networks** | [**Array&lt;PhoneReportAllOfNetworks&gt;**](PhoneReportAllOfNetworks.md) | Stats of the campaign for each network | [optional] |
| **overall** | [**OverallOverall**](OverallOverall.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PhoneReport.new(
  campaign_hash: null,
  networks: null,
  overall: null
)
```

