import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/group/account_group.dart';
import './status/status_request_builder.dart';
import './with_group_item_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \account\{accountid}\group\{groupid}
class WithGroupItemRequestBuilder extends BaseRequestBuilder<WithGroupItemRequestBuilder> {
    ///  The status property
    StatusRequestBuilder get status {
        return StatusRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     WithGroupItemRequestBuilder clone() {
        return WithGroupItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithGroupItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithGroupItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/group/{groupid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithGroupItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithGroupItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/group/{groupid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the specified group membership, effectively removing the account from the group.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the single group membership for the account. This also contains information such as the rights and provisioning information.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<AccountGroup?> getAsync([Function(RequestConfiguration<WithGroupItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountGroup>(requestInfo, AccountGroup.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the specified group membership, effectively removing the account from the group.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Returns the single group membership for the account. This also contains information such as the rights and provisioning information.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithGroupItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithGroupItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
