# EgoiRubyClient::ConnectedSitesProducts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **track_and_engage** | [**ConnectedSitesGeneralProductTEDetailGlobal**](ConnectedSitesGeneralProductTEDetailGlobal.md) |  | [optional] |
| **on_site_message** | [**ConnectedSitesGeneralProductFormDetailGlobal**](ConnectedSitesGeneralProductFormDetailGlobal.md) |  | [optional] |
| **popup_forms** | [**ConnectedSitesGeneralProductFormDetailGlobal**](ConnectedSitesGeneralProductFormDetailGlobal.md) |  | [optional] |
| **whatsapp** | [**ConnectedSitesGeneralProductFormDetailGlobal**](ConnectedSitesGeneralProductFormDetailGlobal.md) |  | [optional] |
| **web_push** | [**ConnectedSitesGeneralProductAppDetailGlobal**](ConnectedSitesGeneralProductAppDetailGlobal.md) |  | [optional] |
| **embed_forms** | [**ConnectedSitesEmbedForm**](ConnectedSitesEmbedForm.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ConnectedSitesProducts.new(
  track_and_engage: null,
  on_site_message: null,
  popup_forms: null,
  whatsapp: null,
  web_push: null,
  embed_forms: null
)
```

