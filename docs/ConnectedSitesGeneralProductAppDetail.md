# EgoiRubyClient::ConnectedSitesGeneralProductAppDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **String** | Internal Name | [optional] |
| **site_id** | **Integer** |  | [optional][readonly] |
| **app_code** | **String** | App code | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ConnectedSitesGeneralProductAppDetail.new(
  internal_name: Web push Internal Name,
  site_id: 1,
  app_code: 7b89dfsb9a6ab6fbsfbasbd6f6
)
```

