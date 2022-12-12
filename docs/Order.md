# EgoiRubyClient::Order

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | Ecommerce order id | [optional] |
| **cart_total** | **Float** | Ecommerce cart total | [optional] |
| **cart_id** | **String** | Cart ID is any non-empty unique string | [optional] |
| **contact** | [**Contact2**](Contact2.md) |  | [optional] |
| **products** | [**Array&lt;Product&gt;**](Product.md) | List of products | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Order.new(
  order_id: 100,
  cart_total: 1,
  cart_id: 100,
  contact: null,
  products: null
)
```

