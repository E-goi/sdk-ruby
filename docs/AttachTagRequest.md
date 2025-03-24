# EgoiRubyClient::AttachTagRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::AttachTagRequest.openapi_one_of
# =>
# [
#   :'AttachByContacts',
#   :'AttachByFieldId',
#   :'AttachBySegment'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::AttachTagRequest.build(data)
# => #<AttachByContacts:0x00007fdd4aab02a0>

EgoiRubyClient::AttachTagRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AttachByContacts`
- `AttachByFieldId`
- `AttachBySegment`
- `nil` (if no type matches)

