# EgoiRubyClient::EmailEventsCampaignFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **Boolean** | True to include the internal name of the campaign, false otherwise |  |
| **campaign_hash** | **Boolean** | True to include the hash of the campaign, false otherwise |  |
| **send_date** | **Boolean** | True to include the send date of the campaign, false otherwise |  |
| **group** | **Boolean** | True to include the group of the campaign, false otherwise |  |
| **city** | **Boolean** | True to include city information, false otherwise |  |
| **country** | **Boolean** | True to include country information, false otherwise |  |
| **region** | **Boolean** | True to include region information, false otherwise |  |
| **program** | **Boolean** | True to include device program information, false otherwise |  |
| **os** | **Boolean** | True to include operating system information, false otherwise |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailEventsCampaignFields.new(
  internal_name: null,
  campaign_hash: null,
  send_date: null,
  group: null,
  city: null,
  country: null,
  region: null,
  program: null,
  os: null
)
```

