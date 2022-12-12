# EgoiRubyClient::Operation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation_id** | **Integer** |  | [optional][readonly] |
| **operation_data** | [**OperationOperationData**](OperationOperationData.md) |  | [optional] |
| **type** | **String** | Type of operation | [optional] |
| **status** | **String** | State of the operation | [optional] |
| **created_by** | **Integer** |  | [optional][readonly] |
| **created** | **Time** |  | [optional] |
| **start_date** | **Time** |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Operation.new(
  operation_id: 1,
  operation_data: null,
  type: null,
  status: null,
  created_by: 1,
  created: null,
  start_date: null
)
```

