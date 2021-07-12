# EgoiRubyClient::ContactInsideBaseWithId

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact_id** | **String** |  | [optional] 
**status** | **String** | Status of the contact | [optional] [default to &#39;active&#39;]
**consent** | **String** | Contact consent | [optional] [default to &#39;consent&#39;]
**consent_date** | **DateTime** | Date and hour of the contact consent | [optional] 
**subscription_method** | **String** | Contact subscription method | [optional] 
**subscription_date** | **DateTime** | Date and hour of the contact subscription | [optional] 
**subscription_form** | **Integer** | Contact subscription form | [optional] 
**unsubscription_method** | **String** | Contact unsubscription method | [optional] 
**unsubscription_reason** | **String** | Contact unsubscription reason | [optional] 
**unsubscription_observation** | **String** | Contact unsubscription observation | [optional] 
**unsubscription_date** | **DateTime** | Contact unsubscription date | [optional] 
**change_date** | **Date** | Last modification date of the contact | [optional] 
**first_name** | **String** | First name of the contact | [optional] 
**last_name** | **String** | Last name of the contact | [optional] 
**birth_date** | **Date** | Birth date of the contact | [optional] 
**language** | [**Language**](Language.md) |  | [optional] 
**email** | **String** | Email of the contact | [optional] 
**email_status** | **String** | Email channel status | [optional] [default to &#39;active&#39;]
**cellphone** | **String** | Cellphone of the contact | [optional] 
**cellphone_status** | **String** | Cellphone channel status | [optional] [default to &#39;active&#39;]
**phone** | **String** | Phone of the contact | [optional] 
**phone_status** | **String** | Phone channel status | [optional] [default to &#39;active&#39;]
**push_token_android** | [**Array&lt;ContactBaseWithStatusFieldsSchemaBasePushTokenAndroid&gt;**](ContactBaseWithStatusFieldsSchemaBasePushTokenAndroid.md) | Android push token of the contact | [optional] 
**push_token_ios** | [**Array&lt;ContactBaseWithStatusFieldsSchemaBasePushTokenIos&gt;**](ContactBaseWithStatusFieldsSchemaBasePushTokenIos.md) | IOS push token of the contact | [optional] 


