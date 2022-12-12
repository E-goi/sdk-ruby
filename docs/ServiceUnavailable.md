# EgoiRubyClient::ServiceUnavailable

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

instance = EgoiRubyClient::ServiceUnavailable.new(
  type: http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html,
  title: null,
  status: 503,
  detail: The server is currently unable to handle the request due to a temporary overload or scheduled maintenance, whichwill likely be alleviated after some delay
)
```

