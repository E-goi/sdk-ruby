# EgoiRubyClient::Country

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **Integer** |  | [optional][readonly] |
| **name** | **String** | Name of the country | [optional] |
| **iso_code** | **String** | ISO code of the country | [optional] |
| **currency** | **String** | Currency of the country | [optional] |
| **country_code** | **String** | Country code to be used in phone numbers | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Country.new(
  country: 1,
  name: Portugal,
  iso_code: PT,
  currency: EUR,
  country_code: 351
)
```

