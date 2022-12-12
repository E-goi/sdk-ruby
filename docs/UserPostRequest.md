# EgoiRubyClient::UserPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | User password | [optional] |
| **password_confirmation** | **String** | User password confirmation | [optional] |
| **language** | [**Language**](Language.md) |  | [optional][default to &#39;en&#39;] |
| **gender** | **String** | User gender | [optional] |
| **username** | **String** | User login | [optional][readonly] |
| **first_name** | **String** | First name of the user | [optional] |
| **last_name** | **String** | Last name of the user | [optional] |
| **email** | **String** | Email of the user | [optional] |
| **phone** | **String** | User&#39;s phone (may be cellphone or phone) | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::UserPostRequest.new(
  password: null,
  password_confirmation: null,
  language: null,
  gender: null,
  username: example@e-goi.com,
  first_name: null,
  last_name: null,
  email: example@e-goi.com,
  phone: 351-300404336
)
```

