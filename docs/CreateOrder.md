# EgoiRubyClient::CreateOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_total** | **Float** | Ecommerce cart total | [optional] |
| **order_id** | **String** | Order ID is any non-empty unique string |  |
| **cart_id** | **String** | Cart ID that originated this order | [optional] |
| **order_date** | **Time** | Date and hour of the order | [optional] |
| **order_status** | **String** | Status of the order | [optional][default to &#39;unknown&#39;] |
| **contact** | [**Contact1**](Contact1.md) |  | [optional] |
| **products** | [**Array&lt;OrderProduct&gt;**](OrderProduct.md) | List of products | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CreateOrder.new(
  order_total: 1,
  order_id: 100,
  cart_id: cart1,
  order_date: null,
  order_status: null,
  contact: null,
  products: null
)
```

