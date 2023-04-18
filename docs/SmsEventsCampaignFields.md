# EgoiRubyClient::SmsEventsCampaignFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **Boolean** | True to include the internal name of the campaign, false otherwise |  |
| **campaign_hash** | **Boolean** | True to include the hash of the campaign, false otherwise |  |
| **send_date** | **Boolean** | True to include the send date of the campaign, false otherwise |  |
| **group** | **Boolean** | True to include the group of the campaign, false otherwise |  |
| **channel** | **Boolean** | True to include the channel of the campaign, false otherwise | [optional] |
| **type** | **Boolean** | True to include the type of the campaign, false otherwise | [optional] |
| **sender** | **Boolean** | True to include the sender of the campaign, false otherwise |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SmsEventsCampaignFields.new(
  internal_name: null,
  campaign_hash: null,
  send_date: null,
  group: null,
  channel: null,
  type: null,
  sender: null
)
```

