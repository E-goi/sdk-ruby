# EgoiRubyClient::OLimitContactsActionSend

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::OLimitContactsActionSend.openapi_one_of
# =>
# [
#   :'LimitContactsPercentActionSend',
#   :'LimitContactsValueActionSend'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::OLimitContactsActionSend.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::OLimitContactsActionSend.openapi_discriminator_mapping
# =>
# {
#   :'percent' => :'LimitContactsPercentActionSend',
#   :'value' => :'LimitContactsValueActionSend'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::OLimitContactsActionSend.build(data)
# => #<LimitContactsPercentActionSend:0x00007fdd4aab02a0>

EgoiRubyClient::OLimitContactsActionSend.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `LimitContactsPercentActionSend`
- `LimitContactsValueActionSend`
- `nil` (if no type matches)

