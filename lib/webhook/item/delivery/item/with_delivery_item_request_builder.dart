import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/webhook/webhook_delivery.dart';
import './redeliver/redeliver_request_builder.dart';
import './with_delivery_item_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \webhook\{webhookid}\delivery\{deliveryid}
class WithDeliveryItemRequestBuilder extends BaseRequestBuilder<WithDeliveryItemRequestBuilder> {
    ///  The redeliver property
    RedeliverRequestBuilder get redeliver {
        return RedeliverRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     WithDeliveryItemRequestBuilder clone() {
        return WithDeliveryItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithDeliveryItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithDeliveryItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook/{webhookid}/delivery/{deliveryid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithDeliveryItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithDeliveryItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook/{webhookid}/delivery/{deliveryid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the single webhook delivery.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<WebhookDelivery?> getAsync([Function(RequestConfiguration<WithDeliveryItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookDelivery>(requestInfo, WebhookDelivery.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the single webhook delivery.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithDeliveryItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithDeliveryItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithDeliveryItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
