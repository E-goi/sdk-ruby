# EgoiRubyClient::CatalogCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Total of returned catalogs | [optional] |
| **items** | [**Array&lt;Catalog&gt;**](Catalog.md) | List of catalogs | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CatalogCollection.new(
  total_items: 1,
  items: null
)
```

