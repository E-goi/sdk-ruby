# EgoiRubyClient::EmailUnsubscriptionsCampaignFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **Boolean** | True to include the internal name of the campaign, false otherwise |  |
| **campaign_hash** | **Boolean** | True to include the hash of the campaign, false otherwise |  |
| **sender** | **Boolean** | True to include the sender of the campaign, false otherwise |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailUnsubscriptionsCampaignFields.new(
  internal_name: null,
  campaign_hash: null,
  sender: null
)
```

