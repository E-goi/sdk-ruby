# EgoiRubyClient::Forbidden

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | RFC for status code definitions | [optional] |
| **title** | **String** | Error title | [optional] |
| **status** | **Integer** | Status code | [optional] |
| **detail** | **String** | Error detail | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Forbidden.new(
  type: http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html,
  title: null,
  status: 403,
  detail: The server understood the request but refuses to authorize it
)
```

