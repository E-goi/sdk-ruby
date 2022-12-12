# EgoiRubyClient::CampaignEmailContent

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignEmailContent.openapi_one_of
# =>
# [
#   :'CampaignEmailContentFile',
#   :'CampaignEmailContentHtml',
#   :'CampaignEmailContentTemplate',
#   :'CampaignEmailContentWebPage'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignEmailContent.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignEmailContent.openapi_discriminator_mapping
# =>
# {
#   :'file' => :'CampaignEmailContentFile',
#   :'html' => :'CampaignEmailContentHtml',
#   :'template' => :'CampaignEmailContentTemplate',
#   :'web_page' => :'CampaignEmailContentWebPage'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignEmailContent.build(data)
# => #<CampaignEmailContentFile:0x00007fdd4aab02a0>

EgoiRubyClient::CampaignEmailContent.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CampaignEmailContentFile`
- `CampaignEmailContentHtml`
- `CampaignEmailContentTemplate`
- `CampaignEmailContentWebPage`
- `nil` (if no type matches)

