# EgoiRubyClient::DeleteSegmentsConflictsErrors

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::DeleteSegmentsConflictsErrors.openapi_one_of
# =>
# [
#   :'HasQueuedCampaigns',
#   :'InvalidSegmentType',
#   :'UsedInAutomations',
#   :'UsedInRecurringMessages'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::DeleteSegmentsConflictsErrors.build(data)
# => #<HasQueuedCampaigns:0x00007fdd4aab02a0>

EgoiRubyClient::DeleteSegmentsConflictsErrors.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `HasQueuedCampaigns`
- `InvalidSegmentType`
- `UsedInAutomations`
- `UsedInRecurringMessages`
- `nil` (if no type matches)

