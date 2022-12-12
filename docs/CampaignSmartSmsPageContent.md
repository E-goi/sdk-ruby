# EgoiRubyClient::CampaignSmartSmsPageContent

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignSmartSmsPageContent.openapi_one_of
# =>
# [
#   :'CampaignSmartSmsHtml',
#   :'CampaignSmartSmsImport',
#   :'CampaignSmartSmsRedirect'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignSmartSmsPageContent.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignSmartSmsPageContent.openapi_discriminator_mapping
# =>
# {
#   :'html' => :'CampaignSmartSmsHtml',
#   :'import' => :'CampaignSmartSmsImport',
#   :'redirect' => :'CampaignSmartSmsRedirect'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignSmartSmsPageContent.build(data)
# => #<CampaignSmartSmsHtml:0x00007fdd4aab02a0>

EgoiRubyClient::CampaignSmartSmsPageContent.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CampaignSmartSmsHtml`
- `CampaignSmartSmsImport`
- `CampaignSmartSmsRedirect`
- `nil` (if no type matches)

