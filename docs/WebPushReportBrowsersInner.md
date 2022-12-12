# EgoiRubyClient::WebPushReportBrowsersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **browser** | **String** | Browser name | [optional] |
| **versions** | [**Array&lt;WebPushReportBrowsersInnerVersionsInner&gt;**](WebPushReportBrowsersInnerVersionsInner.md) | Collection of browser versions | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::WebPushReportBrowsersInner.new(
  browser: Chrome,
  versions: null
)
```

