# EgoiRubyClient::DetachTagRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::DetachTagRequest.openapi_one_of
# =>
# [
#   :'DetachByContacts',
#   :'DetachByFieldId',
#   :'DetachBySegment'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::DetachTagRequest.build(data)
# => #<DetachByContacts:0x00007fdd4aab02a0>

EgoiRubyClient::DetachTagRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `DetachByContacts`
- `DetachByFieldId`
- `DetachBySegment`
- `nil` (if no type matches)

