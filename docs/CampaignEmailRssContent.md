# EgoiRubyClient::CampaignEmailRssContent

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignEmailRssContent.openapi_one_of
# =>
# [
#   :'CampaignEmailRssContentHtml'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignEmailRssContent.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignEmailRssContent.openapi_discriminator_mapping
# =>
# {
#   :'html' => :'CampaignEmailRssContentHtml'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CampaignEmailRssContent.build(data)
# => #<CampaignEmailRssContentHtml:0x00007fdd4aab02a0>

EgoiRubyClient::CampaignEmailRssContent.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CampaignEmailRssContentHtml`
- `nil` (if no type matches)

