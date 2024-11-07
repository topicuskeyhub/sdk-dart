import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/profile/access_profile_account.dart';
import './with_account_item_request_builder_get_query_parameters.dart';
import './with_account_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \profile\{accessprofile-id}\account\{accountid}
class WithAccountItemRequestBuilder extends BaseRequestBuilder<WithAccountItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithAccountItemRequestBuilder clone() {
        return WithAccountItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithAccountItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/account/{accountid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithAccountItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/account/{accountid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the specified membership, effectively removing the account from the access profile.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the single membership for the access profile.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccessProfileAccount?> getAsync([Function(RequestConfiguration<WithAccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileAccount>(requestInfo, AccessProfileAccount.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the memberships for an access profile identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccessProfileAccount?> putAsync(AccessProfileAccount body, [Function(RequestConfiguration<WithAccountItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileAccount>(requestInfo, AccessProfileAccount.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the specified membership, effectively removing the account from the access profile.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Returns the single membership for the access profile.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithAccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAccountItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAccountItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Updates the memberships for an access profile identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(AccessProfileAccount body, [Function(RequestConfiguration<WithAccountItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAccountItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithAccountItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
