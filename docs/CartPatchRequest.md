# EgoiRubyClient::CartPatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cart_total** | **Float** | Ecommerce cart total | [optional] |
| **contact** | [**Contact2**](Contact2.md) |  | [optional] |
| **products** | [**Array&lt;Product&gt;**](Product.md) | List of products | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CartPatchRequest.new(
  cart_total: 1,
  contact: null,
  products: null
)
```

