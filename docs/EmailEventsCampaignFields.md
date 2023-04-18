# EgoiRubyClient::EmailEventsCampaignFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **Boolean** | True to include the internal name of the campaign, false otherwise |  |
| **campaign_hash** | **Boolean** | True to include the hash of the campaign, false otherwise |  |
| **send_date** | **Boolean** | True to include the send date of the campaign, false otherwise |  |
| **group** | **Boolean** | True to include the group of the campaign, false otherwise |  |
| **channel** | **Boolean** | True to include the channel of the campaign, false otherwise | [optional] |
| **type** | **Boolean** | True to include the type of the campaign, false otherwise | [optional] |
| **url** | **Boolean** | True to include the URL of the campaign, false otherwise | [optional] |
| **sender** | **Boolean** | True to include the sender of the campaign, false otherwise | [optional] |
| **city** | **Boolean** | True to include city information, false otherwise (deprecated) | [optional] |
| **country** | **Boolean** | True to include country information, false otherwise (deprecated) | [optional] |
| **region** | **Boolean** | True to include region information, false otherwise (deprecated) | [optional] |
| **program** | **Boolean** | True to include device program information, false otherwise (deprecated) | [optional] |
| **os** | **Boolean** | True to include operating system information, false otherwise (deprecated) | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailEventsCampaignFields.new(
  internal_name: null,
  campaign_hash: null,
  send_date: null,
  group: null,
  channel: null,
  type: null,
  url: null,
  sender: null,
  city: null,
  country: null,
  region: null,
  program: null,
  os: null
)
```

