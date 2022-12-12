# EgoiRubyClient::AutomationAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **Integer** |  | [optional][readonly] |
| **title** | **String** | Automation title | [optional] |
| **list_id** | **Integer** |  | [optional] |
| **status** | **String** | Automation status | [optional] |
| **created_by** | **Integer** |  | [optional][readonly] |
| **allow_multiple_contacts** | **Boolean** | True if the automation allows multiple contacts, false otherwise | [optional][default to true] |
| **contact_limit** | **Integer** | Contact limit for the automation. Contact limit value (value &#39;0&#39; is returned if contact                                 limit is not enabled) | [optional] |
| **created** | **Date** |  | [optional][readonly] |
| **updated** | **Date** |  | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AutomationAllOf.new(
  automation_id: 1,
  title: Example Automation,
  list_id: 1,
  status: null,
  created_by: 1,
  allow_multiple_contacts: null,
  contact_limit: 10,
  created: null,
  updated: null
)
```

