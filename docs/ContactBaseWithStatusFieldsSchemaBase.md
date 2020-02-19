# EgoiRubyClient::ContactBaseWithStatusFieldsSchemaBase

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact_id** | **String** |  | [optional] 
**status** | **String** | Status of the contact | [optional] [default to &#39;active&#39;]
**consent** | **String** | Contact consent | [optional] 
**first_name** | **String** | First name of the contact | [optional] 
**last_name** | **String** | Last name of the contact | [optional] 
**birth_date** | **Date** | Birth date of the contact | [optional] 
**language** | [**Language**](Language.md) |  | [optional] 
**email** | **String** | Email of the contact | [optional] 
**email_status** | **String** | Email channel status | [optional] 
**cellphone** | **String** | Cellphone of the contact | [optional] 
**cellphone_status** | **String** | Cellphone channel status | [optional] 
**phone** | **String** | Phone of the contact | [optional] 
**phone_status** | **String** | Phone channel status | [optional] 
**push_token_android** | [**Array&lt;ContactBaseWithStatusFieldsSchemaBasePushTokenAndroid&gt;**](ContactBaseWithStatusFieldsSchemaBasePushTokenAndroid.md) | Android push token of the contact | [optional] 
**push_token_ios** | [**Array&lt;ContactBaseWithStatusFieldsSchemaBasePushTokenIos&gt;**](ContactBaseWithStatusFieldsSchemaBasePushTokenIos.md) | IOS push token of the contact | [optional] 


