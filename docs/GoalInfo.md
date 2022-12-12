# EgoiRubyClient::GoalInfo

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::GoalInfo.openapi_one_of
# =>
# [
#   :'GoalAutommaticInfo',
#   :'GoalManualInfo',
#   :'GoalTimeInfo'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::GoalInfo.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::GoalInfo.openapi_discriminator_mapping
# =>
# {
#   :'automatic' => :'GoalAutommaticInfo',
#   :'manual' => :'GoalManualInfo',
#   :'time' => :'GoalTimeInfo'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::GoalInfo.build(data)
# => #<GoalAutommaticInfo:0x00007fdd4aab02a0>

EgoiRubyClient::GoalInfo.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GoalAutommaticInfo`
- `GoalManualInfo`
- `GoalTimeInfo`
- `nil` (if no type matches)

