# EgoiRubyClient::UnprocessableEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | **Object** | Information about the input validation | [optional] |
| **type** | **String** | RFC for status code definitions | [optional] |
| **title** | **String** | Error title | [optional] |
| **status** | **Integer** | Status code | [optional] |
| **detail** | **String** | Error detail | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::UnprocessableEntity.new(
  errors: null,
  type: http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html,
  title: null,
  status: 422,
  detail: The server understands the content type of the request entity, and the syntax of the request entity is correct but was unable to process the contained instructions
)
```

