# EgoiRubyClient::ContactExtraFields

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::ContactExtraFields.openapi_one_of
# =>
# [
#   :'ContactExtraFieldCellphone',
#   :'ContactExtraFieldDate',
#   :'ContactExtraFieldEmail',
#   :'ContactExtraFieldNumber',
#   :'ContactExtraFieldOptions',
#   :'ContactExtraFieldPhone',
#   :'ContactExtraFieldText'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::ContactExtraFields.build(data)
# => #<ContactExtraFieldCellphone:0x00007fdd4aab02a0>

EgoiRubyClient::ContactExtraFields.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ContactExtraFieldCellphone`
- `ContactExtraFieldDate`
- `ContactExtraFieldEmail`
- `ContactExtraFieldNumber`
- `ContactExtraFieldOptions`
- `ContactExtraFieldPhone`
- `ContactExtraFieldText`
- `nil` (if no type matches)

