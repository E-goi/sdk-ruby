# EgoiRubyClient::ContactExportRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**format** | **String** | File extension to export contacts | 
**callback_url** | **String** | Url to receive the webhook | [optional] 
**segments** | **Array&lt;String&gt;** | Array of segment IDs to filter contacts to export. ***Note:*** segments of type ***auto*** and                         ***tag*** are not yet supported but they are expected to be supported soon! | [optional] 
**fields** | **Array&lt;String&gt;** | Array of field IDs to be displayed in the exported file | [optional] 


