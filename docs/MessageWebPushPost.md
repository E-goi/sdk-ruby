# EgoiRubyClient::MessageWebPushPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Webpush campaign title |  |
| **message** | **String** | Campaign message |  |
| **link** | **String** | Webpush link |  |
| **icon** | **String** | Webpush campaign icon | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::MessageWebPushPost.new(
  title: null,
  message: Campaign message,
  link: null,
  icon: null
)
```

