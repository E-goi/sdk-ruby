# EgoiRubyClient::DeleteSegmentsConflict

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::DeleteSegmentsConflict.openapi_one_of
# =>
# [
#   :'BaseConflict'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::DeleteSegmentsConflict.build(data)
# => #<BaseConflict:0x00007fdd4aab02a0>

EgoiRubyClient::DeleteSegmentsConflict.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BaseConflict`
- `nil` (if no type matches)

