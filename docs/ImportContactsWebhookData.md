# EgoiRubyClient::ImportContactsWebhookData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **imported** | **Integer** |  | [optional] |
| **updated** | **Integer** |  | [optional] |
| **ignored** | **Integer** |  | [optional] |
| **invalid** | **Integer** |  | [optional] |
| **file** | **String** |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ImportContactsWebhookData.new(
  imported: 100,
  updated: 10,
  ignored: 5,
  invalid: 1,
  file: example.com
)
```

