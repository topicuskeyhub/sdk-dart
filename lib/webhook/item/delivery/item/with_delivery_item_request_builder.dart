// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/webhook/webhook_delivery.dart';
import './redeliver/redeliver_request_builder.dart';
import './with_delivery_item_request_builder_get_query_parameters.dart';

/// auto generated
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
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithDeliveryItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook/{webhookid}/delivery/{deliveryid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithDeliveryItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithDeliveryItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook/{webhookid}/delivery/{deliveryid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the single webhook delivery.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<WebhookDelivery?> getAsync([void Function(RequestConfiguration<WithDeliveryItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookDelivery>(requestInfo, WebhookDelivery.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the single webhook delivery.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithDeliveryItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithDeliveryItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithDeliveryItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=76');
        return requestInfo;
    }
}
