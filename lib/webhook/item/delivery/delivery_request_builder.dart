import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/webhook/webhook_delivery_linkable_wrapper.dart';
import './delivery_request_builder_get_query_parameters.dart';
import './item/with_delivery_item_request_builder.dart';

/// Builds and executes requests for operations under \webhook\{webhookid}\delivery
class DeliveryRequestBuilder extends BaseRequestBuilder<DeliveryRequestBuilder> {
    /// Gets an item from the ApiSdk.webhook.item.delivery.item collection
    /// <param name="deliveryid">deliveryid</param>
     WithDeliveryItemRequestBuilder byDeliveryid(int deliveryid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("deliveryid", ()=> deliveryid);
        return WithDeliveryItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     DeliveryRequestBuilder clone() {
        return DeliveryRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DeliveryRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     DeliveryRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook/{webhookid}/delivery{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*,webhook*}", pathParameters) ;
    /// Instantiates a new [DeliveryRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     DeliveryRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook/{webhookid}/delivery{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*,webhook*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all deliveries for a webhook. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<WebhookDeliveryLinkableWrapper?> getAsync([Function(RequestConfiguration<DeliveryRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookDeliveryLinkableWrapper>(requestInfo, WebhookDeliveryLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all deliveries for a webhook. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<DeliveryRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DeliveryRequestBuilderGetQueryParameters>(requestConfiguration, () => DeliveryRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
