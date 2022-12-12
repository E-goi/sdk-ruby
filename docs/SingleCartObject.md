# EgoiRubyClient::SingleCartObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **revenue** | **Float** | Ecommerce cart revenue |  |
| **store_url** | **String** | Ecommerce store url |  |
| **items** | [**Array&lt;ImportOrdersBulkBulkRequestItems&gt;**](ImportOrdersBulkBulkRequestItems.md) | Array of cart&#39;s products |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SingleCartObject.new(
  revenue: 100,
  store_url: https://www.e-goi.com,
  items: null
)
```

