# EgoiRubyClient::CreateOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_total** | **Float** | Ecommerce cart total | [optional] |
| **order_id** | **String** | Order ID is any non-empty unique string |  |
| **cart_id** | **String** | Cart ID that originated this order | [optional] |
| **contact** | [**Contact1**](Contact1.md) |  | [optional] |
| **products** | [**Array&lt;Product&gt;**](Product.md) | List of products | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CreateOrder.new(
  order_total: 1,
  order_id: 100,
  cart_id: cart1,
  contact: null,
  products: null
)
```

