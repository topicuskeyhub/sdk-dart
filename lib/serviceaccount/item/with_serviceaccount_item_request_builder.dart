import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/serviceaccount/service_account.dart';
import './deactivate/deactivate_request_builder.dart';
import './group/group_request_builder.dart';
import './status/status_request_builder.dart';
import './with_serviceaccount_item_request_builder_get_query_parameters.dart';
import './with_serviceaccount_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \serviceaccount\{serviceaccountid}
class WithServiceaccountItemRequestBuilder extends BaseRequestBuilder<WithServiceaccountItemRequestBuilder> {
    ///  The deactivate property
    DeactivateRequestBuilder get deactivate {
        return DeactivateRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The group property
    GroupRequestBuilder get group {
        return GroupRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The status property
    StatusRequestBuilder get status {
        return StatusRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithServiceaccountItemRequestBuilder clone() {
        return WithServiceaccountItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithServiceaccountItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithServiceaccountItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/{serviceaccountid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithServiceaccountItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithServiceaccountItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/{serviceaccountid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the service account identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ServiceAccount?> getAsync([Function(RequestConfiguration<WithServiceaccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ServiceAccount>(requestInfo, ServiceAccount.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the service account identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ServiceAccount?> putAsync(ServiceAccount body, [Function(RequestConfiguration<WithServiceaccountItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ServiceAccount>(requestInfo, ServiceAccount.createFromDiscriminatorValue, errorMapping);
    }
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Returns the service account identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithServiceaccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithServiceaccountItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithServiceaccountItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Updates the service account identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(ServiceAccount body, [Function(RequestConfiguration<WithServiceaccountItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithServiceaccountItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithServiceaccountItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
