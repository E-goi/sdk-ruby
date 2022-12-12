# EgoiRubyClient::Catalog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **Integer** |  | [optional][readonly] |
| **title** | **String** | Title of the catalog | [optional] |
| **language** | **String** | Language of the catalog | [optional] |
| **currency** | **String** | Currency of the catalog | [optional] |
| **created** | **Time** |  | [optional][readonly] |
| **updated** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Catalog.new(
  catalog_id: 1,
  title: Catalog title,
  language: en,
  currency: eur,
  created: null,
  updated: null
)
```

