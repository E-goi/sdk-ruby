# EgoiRubyClient::ImportOrdersBulkBulkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | Ecommerce order id |  |
| **order_status** | **String** | Status of the order | [optional][default to &#39;unknown&#39;] |
| **contact_id** | **String** | Contact ID is any non-empty unique string identifying the user (such as an email address or e-goi uid) |  |
| **revenue** | **Float** | Ecommerce order revenue. Must be greater than 0. |  |
| **store_url** | **String** | Ecommerce store url |  |
| **date** | **Time** | Ecommerce order date (For technical reasons, all orders synchronized will have the date of synchronization.) |  |
| **items** | [**Array&lt;ImportOrdersBulkBulkRequestItems&gt;**](ImportOrdersBulkBulkRequestItems.md) | Array of ordered products |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ImportOrdersBulkBulkRequest.new(
  order_id: 100,
  order_status: null,
  contact_id: customer@e-goi.com,
  revenue: 100,
  store_url: https://www.e-goi.com,
  date: null,
  items: null
)
```

