# EgoiRubyClient::Form

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** |  | [optional][readonly] |
| **internal_title** | **String** | Internal title of the form | [optional][default to &#39;$request.body#/title&#39;] |
| **title** | **String** | Title of the form |  |
| **language** | [**Language**](Language.md) |  | [optional][default to &#39;en&#39;] |
| **list_id** | **Integer** |  | [optional] |
| **default** | **Boolean** | True if this is the default form in the list, false otherwise | [optional] |
| **owner** | **Integer** |  | [optional] |
| **status** | **String** | Status of the form | [optional][readonly] |
| **created** | **Time** | The date and time | [optional] |
| **updated** | **Time** | The date and time | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Form.new(
  form_id: 1,
  internal_title: Form title,
  title: Form title,
  language: null,
  list_id: 1,
  default: false,
  owner: 1,
  status: active,
  created: null,
  updated: null
)
```

