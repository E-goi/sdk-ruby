# EgoiRubyClient::CatalogPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Title of the catalog |  |
| **language** | **String** | Language of the catalog |  |
| **currency** | **String** | Currency of the catalog |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CatalogPostRequest.new(
  title: Catalog title,
  language: en,
  currency: eur
)
```

