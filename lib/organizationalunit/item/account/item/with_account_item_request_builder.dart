// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/organization/organizational_unit_account.dart';
import './with_account_item_request_builder_delete_query_parameters.dart';
import './with_account_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \organizationalunit\{organizationalunitid}\account\{accountid}
class WithAccountItemRequestBuilder extends BaseRequestBuilder<WithAccountItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithAccountItemRequestBuilder clone() {
        return WithAccountItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAccountItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit/{organizationalunitid}/account/{accountid}{?additional*,firePendingLifecycleEvents*}", pathParameters) ;
    /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAccountItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit/{organizationalunitid}/account/{accountid}{?additional*,firePendingLifecycleEvents*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the specified account from the organizational unit. When 'firePendingLifecycleEvents=true' is passed as query parameter, the pending access profile lifecycle events of the account for profiles owned by this organizational unit are fired (delivering their mail) before removal instead of being cancelled.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<WithAccountItemRequestBuilderDeleteQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the single account member of the organizational unit.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OrganizationalUnitAccount?> getAsync([void Function(RequestConfiguration<WithAccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationalUnitAccount>(requestInfo, OrganizationalUnitAccount.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the specified account from the organizational unit. When 'firePendingLifecycleEvents=true' is passed as query parameter, the pending access profile lifecycle events of the account for profiles owned by this organizational unit are fired (delivering their mail) before removal instead of being cancelled.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<WithAccountItemRequestBuilderDeleteQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAccountItemRequestBuilderDeleteQueryParameters>(requestConfiguration, () => WithAccountItemRequestBuilderDeleteQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=88');
        return requestInfo;
    }
    /// Returns the single account member of the organizational unit.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithAccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAccountItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAccountItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=88');
        return requestInfo;
    }
}
