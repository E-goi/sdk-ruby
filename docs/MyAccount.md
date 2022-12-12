# EgoiRubyClient::MyAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **general_info** | [**GeneralInfoAllOfGeneralInfo**](GeneralInfoAllOfGeneralInfo.md) |  | [optional] |
| **billing_info** | [**BillingInfoAllOfBillingInfo**](BillingInfoAllOfBillingInfo.md) |  | [optional] |
| **plan_info** | [**PlanInfoPlanInfo**](PlanInfoPlanInfo.md) |  | [optional] |
| **balance_info** | [**BalanceInfoBalanceInfo**](BalanceInfoBalanceInfo.md) |  | [optional] |
| **module_info** | [**ModuleInfoModuleInfo**](ModuleInfoModuleInfo.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::MyAccount.new(
  general_info: null,
  billing_info: null,
  plan_info: null,
  balance_info: null,
  module_info: null
)
```

