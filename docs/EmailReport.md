# EgoiRubyClient::EmailReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** |  | [optional][readonly] |
| **overall** | [**EmailReportOverallOverall**](EmailReportOverallOverall.md) |  | [optional] |
| **date** | [**Array&lt;EmailReportByDateDateInner&gt;**](EmailReportByDateDateInner.md) | Email stats grouped by date | [optional] |
| **weekday** | [**Array&lt;EmailReportByWeekdayWeekdayInner&gt;**](EmailReportByWeekdayWeekdayInner.md) | Email stats grouped by date | [optional] |
| **hour** | [**Array&lt;EmailReportByHourHourInner&gt;**](EmailReportByHourHourInner.md) | Email stats grouped by hour | [optional] |
| **location** | [**Array&lt;EmailReportByLocationLocationInner&gt;**](EmailReportByLocationLocationInner.md) | Email stats grouped by Location | [optional] |
| **domain** | [**Array&lt;EmailReportByDomainDomainInner&gt;**](EmailReportByDomainDomainInner.md) | Email stats grouped by Domain | [optional] |
| **url** | [**Array&lt;EmailReportByUrlUrlInner&gt;**](EmailReportByUrlUrlInner.md) | Email stats grouped by Domain | [optional] |
| **reader** | [**Array&lt;EmailReportByReaderReaderInner&gt;**](EmailReportByReaderReaderInner.md) | Email stats grouped by Reader | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailReport.new(
  campaign_hash: null,
  overall: null,
  date: null,
  weekday: null,
  hour: null,
  location: null,
  domain: null,
  url: null,
  reader: null
)
```

