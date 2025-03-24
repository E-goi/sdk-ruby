# EgoiRubyClient::ComplexList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_language** | [**Language**](Language.md) |  | [optional][default to &#39;en&#39;] |
| **available_languages** | **Array&lt;String&gt;** | Array of available languages | [optional] |
| **stats** | [**ComplexListAllOfStats**](ComplexListAllOfStats.md) |  | [optional] |
| **list_id** | **Integer** |  | [optional][readonly] |
| **internal_name** | **String** | Internal name of the list | [optional] |
| **public_name** | **String** | Public name of the list |  |
| **status** | **String** | Status of the list | [optional][readonly] |
| **group_id** | **Integer** | ID of the list group | [optional][readonly] |
| **created** | **Time** |  | [optional][readonly] |
| **updated** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ComplexList.new(
  default_language: null,
  available_languages: null,
  stats: null,
  list_id: 1,
  internal_name: Internal name,
  public_name: Public name,
  status: active,
  group_id: null,
  created: null,
  updated: null
)
```

