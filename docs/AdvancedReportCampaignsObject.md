# EgoiRubyClient::AdvancedReportCampaignsObject

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::AdvancedReportCampaignsObject.openapi_one_of
# =>
# [
#   :'ReportCampaignsAll',
#   :'ReportCampaignsGroup',
#   :'ReportCampaignsLast',
#   :'ReportCampaignsSpecific'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::AdvancedReportCampaignsObject.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::AdvancedReportCampaignsObject.openapi_discriminator_mapping
# =>
# {
#   :'all' => :'ReportCampaignsAll',
#   :'group' => :'ReportCampaignsGroup',
#   :'last' => :'ReportCampaignsLast',
#   :'specific' => :'ReportCampaignsSpecific'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::AdvancedReportCampaignsObject.build(data)
# => #<ReportCampaignsAll:0x00007fdd4aab02a0>

EgoiRubyClient::AdvancedReportCampaignsObject.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ReportCampaignsAll`
- `ReportCampaignsGroup`
- `ReportCampaignsLast`
- `ReportCampaignsSpecific`
- `nil` (if no type matches)

