# EgoiRubyClient::CreateSuppressionListRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CreateSuppressionListRequest.openapi_one_of
# =>
# [
#   :'SuppressionTypeCellphone',
#   :'SuppressionTypeEmail',
#   :'SuppressionTypeEmailDomain',
#   :'SuppressionTypePhone',
#   :'SuppressionTypeUserEmail'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CreateSuppressionListRequest.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CreateSuppressionListRequest.openapi_discriminator_mapping
# =>
# {
#   :'cellphone' => :'SuppressionTypeCellphone',
#   :'email' => :'SuppressionTypeEmail',
#   :'email_domain' => :'SuppressionTypeEmailDomain',
#   :'email_user' => :'SuppressionTypeUserEmail',
#   :'phone' => :'SuppressionTypePhone'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::CreateSuppressionListRequest.build(data)
# => #<SuppressionTypeCellphone:0x00007fdd4aab02a0>

EgoiRubyClient::CreateSuppressionListRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SuppressionTypeCellphone`
- `SuppressionTypeEmail`
- `SuppressionTypeEmailDomain`
- `SuppressionTypePhone`
- `SuppressionTypeUserEmail`
- `nil` (if no type matches)

