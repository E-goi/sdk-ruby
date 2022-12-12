# EgoiRubyClient::EmailClicksByContactCampaignFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **Boolean** | True to include the internal name of the campaign, false otherwise |  |
| **campaign_hash** | **Boolean** | True to include the hash of the campaign, false otherwise |  |
| **url** | **Boolean** | True to include the URL of the campaign, false otherwise |  |
| **city** | **Boolean** | True to include city information, false otherwise |  |
| **country** | **Boolean** | True to include country information, false otherwise |  |
| **region** | **Boolean** | True to include region information, false otherwise |  |
| **program** | **Boolean** | True to include device program information, false otherwise |  |
| **os** | **Boolean** | True to include operating system information, false otherwise |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailClicksByContactCampaignFields.new(
  internal_name: null,
  campaign_hash: null,
  url: null,
  city: null,
  country: null,
  region: null,
  program: null,
  os: null
)
```

