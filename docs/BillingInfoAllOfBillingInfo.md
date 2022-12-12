# EgoiRubyClient::BillingInfoAllOfBillingInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type billing | [optional] |
| **company_legal_name** | **String** | Company legal name | [optional] |
| **vat_number** | **String** | Vat number | [optional] |
| **country** | [**BillingInfoAllOfBillingInfoCountry**](BillingInfoAllOfBillingInfoCountry.md) |  | [optional] |
| **city** | **String** | City | [optional] |
| **state** | **String** | State | [optional] |
| **address1** | **String** | Address 1 | [optional] |
| **address2** | **String** | Address 2 | [optional] |
| **zip_code** | **String** | Zip Code | [optional] |
| **invoice_comments** | **String** | Invoice Comments | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::BillingInfoAllOfBillingInfo.new(
  type: null,
  company_legal_name: null,
  vat_number: null,
  country: null,
  city: null,
  state: null,
  address1: null,
  address2: null,
  zip_code: null,
  invoice_comments: null
)
```

