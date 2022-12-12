# EgoiRubyClient::DeleteListsConflictsErrors

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::DeleteListsConflictsErrors.openapi_one_of
# =>
# [
#   :'HasAutomations',
#   :'HasCampaignsLastThirtyDays',
#   :'HasPushApp',
#   :'HasQueuedOperations',
#   :'HasWebPushSite'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::DeleteListsConflictsErrors.build(data)
# => #<HasAutomations:0x00007fdd4aab02a0>

EgoiRubyClient::DeleteListsConflictsErrors.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `HasAutomations`
- `HasCampaignsLastThirtyDays`
- `HasPushApp`
- `HasQueuedOperations`
- `HasWebPushSite`
- `nil` (if no type matches)

