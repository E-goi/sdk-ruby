# EgoiRubyClient::SendContactCellphone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Use this segment type to send to a specific contact |  |
| **data** | **String** | Contact cellphone.  A string containing a phone/cellphone number (country code is required);                         e. g. &#39;351-300404336&#39; |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SendContactCellphone.new(
  type: null,
  data: 351-300404336
)
```

