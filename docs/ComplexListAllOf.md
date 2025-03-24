# EgoiRubyClient::ComplexListAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_language** | [**Language**](Language.md) |  | [optional][default to &#39;en&#39;] |
| **available_languages** | **Array&lt;String&gt;** | Array of available languages | [optional] |
| **stats** | [**ComplexListAllOfStats**](ComplexListAllOfStats.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ComplexListAllOf.new(
  default_language: null,
  available_languages: null,
  stats: null
)
```

