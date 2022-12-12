# EgoiRubyClient::EmailReportByEcommerceEcommerce

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orders** | **Integer** | Total number of orders | [optional] |
| **invoice** | **Float** | Total value for invoices | [optional] |
| **visits** | **Integer** | Total number of visits | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailReportByEcommerceEcommerce.new(
  orders: 3,
  invoice: 1.1,
  visits: 3
)
```

