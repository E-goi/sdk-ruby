# EgoiRubyClient::AutomationPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Automation title | [optional] |
| **list_id** | **Integer** |  | [optional] |
| **status** | **String** | Automation status | [optional] |
| **allow_multiple_contacts** | **Boolean** | True if the automation allows multiple contacts, false otherwise | [optional][default to true] |
| **contact_limit** | **Integer** | Contact limit for the automation. Contact limit value (value &#39;0&#39; is returned if contact limit is not enabled) | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AutomationPost.new(
  title: Example Automation,
  list_id: 1,
  status: null,
  allow_multiple_contacts: null,
  contact_limit: 10
)
```

