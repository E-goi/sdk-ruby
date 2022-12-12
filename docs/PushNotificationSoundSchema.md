# EgoiRubyClient::PushNotificationSoundSchema

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::PushNotificationSoundSchema.openapi_one_of
# =>
# [
#   :'PushNotificationSoundSchemaDefault',
#   :'PushNotificationSoundSchemaNone',
#   :'PushNotificationSoundSchemaUrl'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::PushNotificationSoundSchema.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::PushNotificationSoundSchema.openapi_discriminator_mapping
# =>
# {
#   :'custom' => :'PushNotificationSoundSchemaUrl',
#   :'default' => :'PushNotificationSoundSchemaDefault',
#   :'none' => :'PushNotificationSoundSchemaNone'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::PushNotificationSoundSchema.build(data)
# => #<PushNotificationSoundSchemaDefault:0x00007fdd4aab02a0>

EgoiRubyClient::PushNotificationSoundSchema.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PushNotificationSoundSchemaDefault`
- `PushNotificationSoundSchemaNone`
- `PushNotificationSoundSchemaUrl`
- `nil` (if no type matches)

