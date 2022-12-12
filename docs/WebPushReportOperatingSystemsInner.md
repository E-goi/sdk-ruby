# EgoiRubyClient::WebPushReportOperatingSystemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operating_system** | **String** | Operating system name | [optional] |
| **versions** | [**Array&lt;WebPushReportOperatingSystemsInnerVersionsInner&gt;**](WebPushReportOperatingSystemsInnerVersionsInner.md) | Collection of operating system versions | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::WebPushReportOperatingSystemsInner.new(
  operating_system: macos,
  versions: null
)
```

