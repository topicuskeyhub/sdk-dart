// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/provisioning/provisioned_system.dart';
import './account/account_request_builder.dart';
import './deactivate/deactivate_request_builder.dart';
import './group/group_request_builder.dart';
import './sync_/sync_request_builder.dart';
import './synclog/synclog_request_builder.dart';
import './with_system_item_request_builder_get_query_parameters.dart';
import './with_system_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \system\{systemid}
class WithSystemItemRequestBuilder extends BaseRequestBuilder<WithSystemItemRequestBuilder> {
    ///  The account property
    AccountRequestBuilder get account {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The deactivate property
    DeactivateRequestBuilder get deactivate {
        return DeactivateRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The group property
    GroupRequestBuilder get group {
        return GroupRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The sync property
    SyncRequestBuilder get sync_ {
        return SyncRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The synclog property
    SynclogRequestBuilder get synclog {
        return SynclogRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithSystemItemRequestBuilder clone() {
        return WithSystemItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithSystemItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithSystemItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithSystemItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithSystemItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the provisioned system identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisionedSystem?> getAsync([void Function(RequestConfiguration<WithSystemItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedSystem>(requestInfo, ProvisionedSystem.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the provisioned system identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisionedSystem?> putAsync(ProvisionedSystem body, [void Function(RequestConfiguration<WithSystemItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedSystem>(requestInfo, ProvisionedSystem.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the provisioned system identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithSystemItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithSystemItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithSystemItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Updates the provisioned system identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(ProvisionedSystem body, [void Function(RequestConfiguration<WithSystemItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithSystemItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithSystemItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=78', body);
        return requestInfo;
    }
}
