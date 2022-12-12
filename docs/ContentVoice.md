# EgoiRubyClient::ContentVoice

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::ContentVoice.openapi_one_of
# =>
# [
#   :'ContentVoiceAudio',
#   :'ContentVoiceTemplate'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::ContentVoice.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::ContentVoice.openapi_discriminator_mapping
# =>
# {
#   :'none' => :'ContentVoiceAudio',
#   :'segment' => :'ContentVoiceTemplate'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'egoi-ruby-client'

EgoiRubyClient::ContentVoice.build(data)
# => #<ContentVoiceAudio:0x00007fdd4aab02a0>

EgoiRubyClient::ContentVoice.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ContentVoiceAudio`
- `ContentVoiceTemplate`
- `nil` (if no type matches)

