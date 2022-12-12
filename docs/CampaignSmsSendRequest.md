# EgoiRubyClient::CampaignSmsSendRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignSmsSendRequest.openapi_one_of
# =>
# [
#   :'CampaignSmsScheduleRequest',
#   :'SendSms'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignSmsSendRequest.build(data)
# => #<CampaignSmsScheduleRequest:0x00007fdd4aab02a0>

EgoiRubyClient::CampaignSmsSendRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CampaignSmsScheduleRequest`
- `SendSms`
- `nil` (if no type matches)

