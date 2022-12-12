# EgoiRubyClient::MessageWebPush

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Webpush campaign title | [optional] |
| **message** | **String** | Campaign message | [optional] |
| **link** | **String** | Webpush link | [optional] |
| **icon** | **String** | Webpush campaign icon | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::MessageWebPush.new(
  title: null,
  message: Campaign message,
  link: null,
  icon: null
)
```

