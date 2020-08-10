# EgoiRubyClient::ContactsApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**action_activate_contacts**](ContactsApi.md#action_activate_contacts) | **POST** /lists/{list_id}/contacts/actions/activate | Activate contacts
[**action_attach_tag**](ContactsApi.md#action_attach_tag) | **POST** /lists/{list_id}/contacts/actions/attach-tag | Attach tag to contact
[**action_deactivate_contacts**](ContactsApi.md#action_deactivate_contacts) | **POST** /lists/{list_id}/contacts/actions/deactivate | Deactivate contacts
[**action_detach_tag**](ContactsApi.md#action_detach_tag) | **POST** /lists/{list_id}/contacts/actions/detach-tag | Detach tag to contact
[**action_export_contacts**](ContactsApi.md#action_export_contacts) | **POST** /lists/{list_id}/contacts/actions/export | Exports a list of contacts
[**action_forget_contacts**](ContactsApi.md#action_forget_contacts) | **POST** /lists/{list_id}/contacts/actions/forget | Forget contacts
[**action_import_bulk**](ContactsApi.md#action_import_bulk) | **POST** /lists/{list_id}/contacts/actions/import-bulk | Import collection of contacts
[**action_start_automation**](ContactsApi.md#action_start_automation) | **POST** /lists/{list_id}/contacts/actions/start-automation | Start automation
[**action_unsubscribe_contact**](ContactsApi.md#action_unsubscribe_contact) | **POST** /lists/{list_id}/contacts/actions/unsubscribe | Unsubscribes contacts
[**create_contact**](ContactsApi.md#create_contact) | **POST** /lists/{list_id}/contacts | Create new contact
[**get_all_contact_activities**](ContactsApi.md#get_all_contact_activities) | **GET** /lists/{list_id}/contacts/{contact_id}/activities | Get all contact activities
[**get_all_contacts**](ContactsApi.md#get_all_contacts) | **GET** /lists/{list_id}/contacts | Get all contacts
[**get_contact**](ContactsApi.md#get_contact) | **GET** /lists/{list_id}/contacts/{contact_id} | Get contact
[**patch_contact**](ContactsApi.md#patch_contact) | **PATCH** /lists/{list_id}/contacts/{contact_id} | Update a specific contact
[**search_contacts**](ContactsApi.md#search_contacts) | **GET** /contacts/search | Search contact


# **action_activate_contacts**
> AcceptedResponse action_activate_contacts(list_id, activate_contacts_request)

Activate contacts

Activates a collection of contacts (does not apply to removed contacts)

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
activate_contacts_request = EgoiRubyClient::ActivateContactsRequest.new # ActivateContactsRequest | Parameters for the request

begin
  #Activate contacts
  result = api_instance.action_activate_contacts(list_id, activate_contacts_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->action_activate_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **activate_contacts_request** | [**ActivateContactsRequest**](ActivateContactsRequest.md)| Parameters for the request | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **action_attach_tag**
> AttachTagResponse action_attach_tag(list_id, attach_tag_request)

Attach tag to contact

Attaches a tag to the provided contacts

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
attach_tag_request = EgoiRubyClient::AttachTagRequest.new # AttachTagRequest | Parameters for the Tag

begin
  #Attach tag to contact
  result = api_instance.action_attach_tag(list_id, attach_tag_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->action_attach_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **attach_tag_request** | [**AttachTagRequest**](AttachTagRequest.md)| Parameters for the Tag | 

### Return type

[**AttachTagResponse**](AttachTagResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **action_deactivate_contacts**
> AcceptedResponse action_deactivate_contacts(list_id, deactivate_contacts_request)

Deactivate contacts

Deactivates a collection of contacts (does not apply to removed contacts)

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
deactivate_contacts_request = EgoiRubyClient::DeactivateContactsRequest.new # DeactivateContactsRequest | Parameters for the request

begin
  #Deactivate contacts
  result = api_instance.action_deactivate_contacts(list_id, deactivate_contacts_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->action_deactivate_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **deactivate_contacts_request** | [**DeactivateContactsRequest**](DeactivateContactsRequest.md)| Parameters for the request | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **action_detach_tag**
> AttachTagResponse action_detach_tag(list_id, attach_tag_request)

Detach tag to contact

Detach a tag to the provided contacts

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
attach_tag_request = EgoiRubyClient::AttachTagRequest.new # AttachTagRequest | Parameters for the Tag

begin
  #Detach tag to contact
  result = api_instance.action_detach_tag(list_id, attach_tag_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->action_detach_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **attach_tag_request** | [**AttachTagRequest**](AttachTagRequest.md)| Parameters for the Tag | 

### Return type

[**AttachTagResponse**](AttachTagResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **action_export_contacts**
> AcceptedResponse action_export_contacts(list_id, contact_export_request)

Exports a list of contacts

Exports a list of contacts to the desired callback url

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
contact_export_request = EgoiRubyClient::ContactExportRequest.new # ContactExportRequest | Parameters for export

begin
  #Exports a list of contacts
  result = api_instance.action_export_contacts(list_id, contact_export_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->action_export_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **contact_export_request** | [**ContactExportRequest**](ContactExportRequest.md)| Parameters for export | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **action_forget_contacts**
> AcceptedResponse action_forget_contacts(list_id, contact_forget_request)

Forget contacts

Forgets a list of contacts to the desired callback url

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
contact_forget_request = EgoiRubyClient::ContactForgetRequest.new # ContactForgetRequest | Parameters for the action

begin
  #Forget contacts
  result = api_instance.action_forget_contacts(list_id, contact_forget_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->action_forget_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **contact_forget_request** | [**ContactForgetRequest**](ContactForgetRequest.md)| Parameters for the action | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **action_import_bulk**
> AcceptedResponse action_import_bulk(list_id, import_bulk_request)

Import collection of contacts

Imports a collection of contacts </br>      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits 'Stream Limits')

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
import_bulk_request = EgoiRubyClient::ImportBulkRequest.new # ImportBulkRequest | Parameters for the bulk import

begin
  #Import collection of contacts
  result = api_instance.action_import_bulk(list_id, import_bulk_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->action_import_bulk: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **import_bulk_request** | [**ImportBulkRequest**](ImportBulkRequest.md)| Parameters for the bulk import | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **action_start_automation**
> StartAutomationResponse action_start_automation(list_id, start_automation_request)

Start automation

Start automation to the provided contacts

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
start_automation_request = EgoiRubyClient::StartAutomationRequest.new # StartAutomationRequest | Parameters for the operation to start automation

begin
  #Start automation
  result = api_instance.action_start_automation(list_id, start_automation_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->action_start_automation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **start_automation_request** | [**StartAutomationRequest**](StartAutomationRequest.md)| Parameters for the operation to start automation | 

### Return type

[**StartAutomationResponse**](StartAutomationResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **action_unsubscribe_contact**
> RemoveResponse action_unsubscribe_contact(list_id, remove_request)

Unsubscribes contacts

Unsubscribes contacts

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
remove_request = EgoiRubyClient::RemoveRequest.new # RemoveRequest | Parameters for the contact to unsubscribe

begin
  #Unsubscribes contacts
  result = api_instance.action_unsubscribe_contact(list_id, remove_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->action_unsubscribe_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **remove_request** | [**RemoveRequest**](RemoveRequest.md)| Parameters for the contact to unsubscribe | 

### Return type

[**RemoveResponse**](RemoveResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_contact**
> CreateContactResponse create_contact(list_id, contact_base_extra)

Create new contact

Create a new contact

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the list where the contact belongs
contact_base_extra = EgoiRubyClient::ContactBaseExtra.new # ContactBaseExtra | Parameters for the Contact

begin
  #Create new contact
  result = api_instance.create_contact(list_id, contact_base_extra)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->create_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the list where the contact belongs | 
 **contact_base_extra** | [**ContactBaseExtra**](ContactBaseExtra.md)| Parameters for the Contact | 

### Return type

[**CreateContactResponse**](CreateContactResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_all_contact_activities**
> ActivityCollection get_all_contact_activities(contact_id, list_id, opts)

Get all contact activities

Returns all contact activities

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
contact_id = 'contact_id_example' # String | ID of the Contact
list_id = 56 # Integer | ID of the List
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  date_min: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Start date
  date_max: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | End date
}

begin
  #Get all contact activities
  result = api_instance.get_all_contact_activities(contact_id, list_id, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->get_all_contact_activities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **String**| ID of the Contact | 
 **list_id** | **Integer**| ID of the List | 
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **date_min** | **DateTime**| Start date | [optional] 
 **date_max** | **DateTime**| End date | [optional] 

### Return type

[**ActivityCollection**](ActivityCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_contacts**
> ContactCollection get_all_contacts(list_id, opts)

Get all contacts

Returns all contacts

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10, # Integer | Number of items to return
  email: 'email_example' # String | Email of the contacts to return
}

begin
  #Get all contacts
  result = api_instance.get_all_contacts(list_id, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->get_all_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| ID of the List | 
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]
 **email** | **String**| Email of the contacts to return | [optional] 

### Return type

[**ContactCollection**](ContactCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_contact**
> ComplexContact get_contact(contact_id, list_id)

Get contact

Returns contact information given its ID

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
contact_id = 'contact_id_example' # String | ID of the Contact
list_id = 56 # Integer | ID of the List

begin
  #Get contact
  result = api_instance.get_contact(contact_id, list_id)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->get_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **String**| ID of the Contact | 
 **list_id** | **Integer**| ID of the List | 

### Return type

[**ComplexContact**](ComplexContact.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **patch_contact**
> CreateContactResponse patch_contact(contact_id, list_id, contact_base_status_extra)

Update a specific contact

Update contact

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
contact_id = 'contact_id_example' # String | ID of the Contact
list_id = 56 # Integer | ID of the List
contact_base_status_extra = EgoiRubyClient::ContactBaseStatusExtra.new # ContactBaseStatusExtra | Parameters for the contact

begin
  #Update a specific contact
  result = api_instance.patch_contact(contact_id, list_id, contact_base_status_extra)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->patch_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **String**| ID of the Contact | 
 **list_id** | **Integer**| ID of the List | 
 **contact_base_status_extra** | [**ContactBaseStatusExtra**](ContactBaseStatusExtra.md)| Parameters for the contact | 

### Return type

[**CreateContactResponse**](CreateContactResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_contacts**
> InlineResponse200 search_contacts(contact, opts)

Search contact

Searches a contact across all lists and returns a collection of contacts found

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ContactsApi.new
contact = 'contact_example' # String | Contact to search
opts = {
  type: 'email' # String | Type of contact to search (defaults to 'email')
}

begin
  #Search contact
  result = api_instance.search_contacts(contact, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling ContactsApi->search_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact** | **String**| Contact to search | 
 **type** | **String**| Type of contact to search (defaults to &#39;email&#39;) | [optional] [default to &#39;email&#39;]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



