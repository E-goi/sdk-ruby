# EgoiRubyClient::Campaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** |  | [optional][readonly] |
| **status** | **String** | Status of the campaign | [optional] |
| **thumbnail** | **String** | Thumbnail of the campaign | [optional] |
| **channel** | **String** | Channel of the campaign | [optional] |
| **internal_name** | **String** | Internal name of the campaign | [optional] |
| **list_id** | **Integer** |  | [optional][readonly] |
| **title** | **String** | Subject of the campaign | [optional] |
| **created_by** | **Integer** |  | [optional][readonly] |
| **group_id** | **Integer** |  | [optional][readonly] |
| **created** | **Time** |  | [optional] |
| **updated** | **Time** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **schedule_date** | [**CampaignScheduleDate**](CampaignScheduleDate.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Campaign.new(
  campaign_hash: null,
  status: sent,
  thumbnail: //bo29.e-goi.com/recursos/resource_folder/listas/name_image.jpg,
  channel: email,
  internal_name: your internal name,
  list_id: 1,
  title: subject of campaign,
  created_by: 1,
  group_id: 1,
  created: null,
  updated: null,
  start_date: null,
  end_date: null,
  schedule_date: null
)
```

