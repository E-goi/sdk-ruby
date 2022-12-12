# EgoiRubyClient::CatalogPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Title of the catalog | [optional] |
| **language** | **String** | Language of the catalog | [optional] |
| **currency** | **String** | Currency of the catalog | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CatalogPost.new(
  title: Catalog title,
  language: en,
  currency: eur
)
```

