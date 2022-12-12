# EgoiRubyClient::UserAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** |  | [optional][readonly] |
| **username** | **String** | User login | [optional][readonly] |
| **is_admin** | **Boolean** | True if user is admin, false otherwise | [optional][readonly][default to false] |
| **first_name** | **String** | First name of the user | [optional] |
| **last_name** | **String** | Last name of the user | [optional] |
| **email** | **String** | Email of the user | [optional] |
| **phone** | **String** | User&#39;s phone (may be cellphone or phone) | [optional] |
| **profile_image** | **String** | User&#39;s profile image | [optional][readonly] |
| **status** | **String** | User status | [optional][readonly] |
| **created** | **Time** | The date and time | [optional] |
| **updated** | **Time** | The date and time | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::UserAllOf.new(
  user_id: 1,
  username: example@e-goi.com,
  is_admin: null,
  first_name: null,
  last_name: null,
  email: example@e-goi.com,
  phone: 351-300404336,
  profile_image: null,
  status: null,
  created: null,
  updated: null
)
```

