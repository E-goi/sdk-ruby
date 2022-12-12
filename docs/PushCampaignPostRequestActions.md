# EgoiRubyClient::PushCampaignPostRequestActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of action | [optional] |
| **title** | **String** | Action title | [optional] |
| **link** | **String** | Action link (may be either URL or deeplink) | [optional] |
| **cancel_label** | **String** | Action cancel label text | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PushCampaignPostRequestActions.new(
  type: null,
  title: null,
  link: null,
  cancel_label: null
)
```

