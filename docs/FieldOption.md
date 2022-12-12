# EgoiRubyClient::FieldOption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **option_id** | **Integer** |  | [optional][readonly] |
| **en** | **String** | English option value | [optional] |
| **pt** | **String** | Portuguese option value | [optional] |
| **br** | **String** | Brazilian portuguese option value | [optional] |
| **es** | **String** | Spanish option value | [optional] |
| **de** | **String** | German option value | [optional] |
| **hu** | **String** | Hungarian option value | [optional] |
| **fr** | **String** | French option value | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::FieldOption.new(
  option_id: 1,
  en: English example,
  pt: Portuguese example,
  br: Brazilian portuguese example,
  es: Spanish example,
  de: German example,
  hu: Hungarian example,
  fr: French example
)
```

