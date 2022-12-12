# EgoiRubyClient::ContactBulkFileAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Url from wich we will download the csv file:  *       Note: Only &#39;http&#39; or &#39;https&#39; protocols are supported |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactBulkFileAllOf.new(
  url: https://e-goi.com/file.csv
)
```

