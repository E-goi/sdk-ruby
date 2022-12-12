# EgoiRubyClient::EnableTransactionalConflictsErrors

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::EnableTransactionalConflictsErrors.openapi_one_of
# =>
# [
#   :'ClientAlreadyEnabled',
#   :'ClientIsBeingEnabled'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::EnableTransactionalConflictsErrors.build(data)
# => #<ClientAlreadyEnabled:0x00007fdd4aab02a0>

EgoiRubyClient::EnableTransactionalConflictsErrors.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ClientAlreadyEnabled`
- `ClientIsBeingEnabled`
- `nil` (if no type matches)

