# EgoiRubyClient::BasicProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_identifier** | **String** | The ID of the product in your store | [optional] |
| **catalog_id** | **Integer** |  | [optional][readonly] |
| **name** | **String** | Name of the product | [optional] |
| **description** | **String** | Description of the product | [optional] |
| **sku** | **String** | Stock Keeping Unit | [optional] |
| **upc** | **String** | Universal Product Code | [optional] |
| **ean** | **String** | European Article Numbering | [optional] |
| **gtin** | **String** | Global Trade Item Number | [optional] |
| **mpn** | **String** | Manufacturer Part Number | [optional] |
| **link** | **String** | Link for the product | [optional] |
| **image_link** | **String** | Link for the product image | [optional] |
| **price** | **Float** | Price of the product | [optional][default to 0] |
| **sale_price** | **Float** | Sale price of the product | [optional][default to 0] |
| **brand** | **String** | Brand of the product | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::BasicProduct.new(
  product_identifier: null,
  catalog_id: 1,
  name: Product name,
  description: Product description,
  sku: null,
  upc: null,
  ean: null,
  gtin: null,
  mpn: null,
  link: null,
  image_link: null,
  price: 10,
  sale_price: 10,
  brand: null
)
```

