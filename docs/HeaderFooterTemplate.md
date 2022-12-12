# EgoiRubyClient::HeaderFooterTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** |  | [optional][readonly] |
| **internal_name** | **String** | Internal name of the template | [optional] |
| **custom** | **Boolean** | True if this is a template created by some user | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::HeaderFooterTemplate.new(
  template_id: 1,
  internal_name: Example template,
  custom: true
)
```

