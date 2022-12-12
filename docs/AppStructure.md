# EgoiRubyClient::AppStructure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The ID of the app. | [optional] |
| **list** | [**AppStructureList**](AppStructureList.md) |  | [optional] |
| **name** | **String** | The name of the app. | [optional] |
| **description** | **String** | The description of the app. | [optional] |
| **two_steps_config** | **String** | The column of the list used to map the token. | [optional] |
| **development** | **Boolean** | Is app a development app. | [optional] |
| **created** | **String** | When the app was created. | [optional] |
| **updated** | **String** | The last time the app was updated. | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AppStructure.new(
  app_id: null,
  list: null,
  name: null,
  description: null,
  two_steps_config: null,
  development: null,
  created: null,
  updated: null
)
```

