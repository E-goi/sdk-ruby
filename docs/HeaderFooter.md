# EgoiRubyClient::HeaderFooter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **header_links** | [**HeaderFooterHeaderLinks**](HeaderFooterHeaderLinks.md) |  | [optional] |
| **footer_links** | [**HeaderFooterFooterLinks**](HeaderFooterFooterLinks.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::HeaderFooter.new(
  id: 1,
  header_links: null,
  footer_links: null
)
```

