# EgoiRubyClient::Segment

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::Segment.openapi_one_of
# =>
# [
#   :'AutomaticSegment',
#   :'SavedSegment',
#   :'TagSegment'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::Segment.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::Segment.openapi_discriminator_mapping
# =>
# {
#   :'auto' => :'AutomaticSegment',
#   :'saved' => :'SavedSegment',
#   :'tag' => :'TagSegment'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::Segment.build(data)
# => #<AutomaticSegment:0x00007fdd4aab02a0>

EgoiRubyClient::Segment.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomaticSegment`
- `SavedSegment`
- `TagSegment`
- `nil` (if no type matches)

