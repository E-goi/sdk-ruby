# EgoiRubyClient::CampaignWebPushSendRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignWebPushSendRequest.openapi_one_of
# =>
# [
#   :'CampaignWebPushScheduleRequest',
#   :'SendWebPush'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignWebPushSendRequest.build(data)
# => #<CampaignWebPushScheduleRequest:0x00007fdd4aab02a0>

EgoiRubyClient::CampaignWebPushSendRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CampaignWebPushScheduleRequest`
- `SendWebPush`
- `nil` (if no type matches)

