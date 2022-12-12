# EgoiRubyClient::ProductAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **categories** | **Array&lt;String&gt;** | Array of product categories, using the character &#39;&gt;&#39; as delimiter for the breadcrumb                                 syntax | [optional] |
| **related_products** | **Array&lt;String&gt;** | Related products | [optional] |
| **custom_attributes** | [**Array&lt;ProductCustomAttributes&gt;**](ProductCustomAttributes.md) | Custom attributes | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ProductAllOf.new(
  categories: null,
  related_products: null,
  custom_attributes: null
)
```

