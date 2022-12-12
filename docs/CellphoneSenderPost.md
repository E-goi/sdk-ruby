# EgoiRubyClient::CellphoneSenderPost

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CellphoneSenderPost.openapi_one_of
# =>
# [
#   :'AlphanumericCellphoneSenderPost',
#   :'NumericCellphoneSenderPost'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CellphoneSenderPost.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CellphoneSenderPost.openapi_discriminator_mapping
# =>
# {
#   :'alpha_numeric' => :'AlphanumericCellphoneSenderPost',
#   :'numeric' => :'NumericCellphoneSenderPost'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CellphoneSenderPost.build(data)
# => #<AlphanumericCellphoneSenderPost:0x00007fdd4aab02a0>

EgoiRubyClient::CellphoneSenderPost.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AlphanumericCellphoneSenderPost`
- `NumericCellphoneSenderPost`
- `nil` (if no type matches)

