# EgoiRubyClient::ListLimitReachedErrors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_limit_reached** | **String** | Occurs when an account reaches the maximum number of lists allowed in its plan | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ListLimitReachedErrors.new(
  list_limit_reached: null
)
```

