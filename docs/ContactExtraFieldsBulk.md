# EgoiRubyClient::ContactExtraFieldsBulk

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::ContactExtraFieldsBulk.openapi_one_of
# =>
# [
#   :'ContactExtraFieldCellphoneBulk',
#   :'ContactExtraFieldDate',
#   :'ContactExtraFieldEmailBulk',
#   :'ContactExtraFieldNumber',
#   :'ContactExtraFieldOptions',
#   :'ContactExtraFieldPhoneBulk',
#   :'ContactExtraFieldText'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::ContactExtraFieldsBulk.build(data)
# => #<ContactExtraFieldCellphoneBulk:0x00007fdd4aab02a0>

EgoiRubyClient::ContactExtraFieldsBulk.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ContactExtraFieldCellphoneBulk`
- `ContactExtraFieldDate`
- `ContactExtraFieldEmailBulk`
- `ContactExtraFieldNumber`
- `ContactExtraFieldOptions`
- `ContactExtraFieldPhoneBulk`
- `ContactExtraFieldText`
- `nil` (if no type matches)

