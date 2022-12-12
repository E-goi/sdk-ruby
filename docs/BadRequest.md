# EgoiRubyClient::BadRequest

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

instance = EgoiRubyClient::BadRequest.new(
  type: http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html,
  title: null,
  status: 400,
  detail: The server cannot or will not process the request due to something that is perceived to be a client error
)
```

