# EgoiRubyClient::CampaignSmartSmsSendRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignSmartSmsSendRequest.openapi_one_of
# =>
# [
#   :'CampaignSmartSmsScheduleRequest',
#   :'SendSmartSms'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignSmartSmsSendRequest.build(data)
# => #<CampaignSmartSmsScheduleRequest:0x00007fdd4aab02a0>

EgoiRubyClient::CampaignSmartSmsSendRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CampaignSmartSmsScheduleRequest`
- `SendSmartSms`
- `nil` (if no type matches)

