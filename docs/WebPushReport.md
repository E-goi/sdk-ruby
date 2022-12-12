# EgoiRubyClient::WebPushReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** |  | [optional][readonly] |
| **overall** | [**WebPushStats**](WebPushStats.md) |  | [optional] |
| **devices** | [**Array&lt;WebPushReportDevicesInner&gt;**](WebPushReportDevicesInner.md) | Stats of the campaign for each device | [optional] |
| **operating_systems** | [**Array&lt;WebPushReportOperatingSystemsInner&gt;**](WebPushReportOperatingSystemsInner.md) | Stats of the campaign for each operating system | [optional] |
| **browsers** | [**Array&lt;WebPushReportBrowsersInner&gt;**](WebPushReportBrowsersInner.md) | Stats of the campaign for each browser | [optional] |
| **url** | [**Array&lt;WebPushReportUrlInner&gt;**](WebPushReportUrlInner.md) | Stats of the campaign for each url | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::WebPushReport.new(
  campaign_hash: null,
  overall: null,
  devices: null,
  operating_systems: null,
  browsers: null,
  url: null
)
```

