# EgoiRubyClient::Cart

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cart_id** | **String** | Cart ID is any non-empty unique string | [optional] |
| **cart_total** | **Float** | Ecommerce cart total | [optional] |
| **contact** | [**Contact1**](Contact1.md) |  | [optional] |
| **products** | [**Array&lt;Product&gt;**](Product.md) | List of products | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Cart.new(
  cart_id: cart1,
  cart_total: 1,
  contact: null,
  products: null
)
```

