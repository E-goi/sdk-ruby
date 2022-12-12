# EgoiRubyClient::SingleOrderObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | Ecommerce order id |  |
| **revenue** | **Float** | Ecommerce order revenue |  |
| **store_url** | **String** | Ecommerce store url |  |
| **items** | [**Array&lt;ImportOrdersBulkBulkRequestItems&gt;**](ImportOrdersBulkBulkRequestItems.md) | Array of ordered products |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SingleOrderObject.new(
  order_id: 100,
  revenue: 100,
  store_url: https://www.e-goi.com,
  items: null
)
```

