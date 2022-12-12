# EgoiRubyClient::ImportOrdersBulkBulkRequestItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Ecommerce order item id |  |
| **name** | **String** | Ecommerce order item name |  |
| **category** | **String** | Ecommerce order item category id (comma separated if more than one) | [optional] |
| **price** | **Float** | Ecommerce order item price | [optional] |
| **quantity** | **Integer** | Ecommerce order item quantity | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ImportOrdersBulkBulkRequestItems.new(
  id: 100,
  name: Product 1,
  category: 10,
  price: 100,
  quantity: 2
)
```

