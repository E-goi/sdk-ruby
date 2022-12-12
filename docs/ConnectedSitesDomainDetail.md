# EgoiRubyClient::ConnectedSitesDomainDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Domain | [optional] |
| **list_id** | **String** | List id | [optional] |
| **code** | **String** | Connected Sites Tracking Code | [optional] |
| **features** | [**Array&lt;ConnectedSitesProducts&gt;**](ConnectedSitesProducts.md) | Available features | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ConnectedSitesDomainDetail.new(
  domain: e-goi.com,
  list_id: 1,
  code: &lt;script type&#x3D;&#39;text/javascript&#39;&gt;var x&#x3D;y;&lt;/script&gt;,
  features: null
)
```

