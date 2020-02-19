# EgoiRubyClient::CampaignEmailSendRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**list_id** | **Integer** |  | 
**segments** | [**EmailSendSegment**](EmailSendSegment.md) |  | 
**notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] 
**destination_field** | **String** | Destination field of this campaign, which must be an email field (email or extra field id).                         If not sent, defaults to the general email field | [optional] 
**unique_contacts_only** | **BOOLEAN** | True to send the campaign only to unique contacts | [optional] [default to false]
**schedule_date** | **DateTime** | The date and time | [optional] 


