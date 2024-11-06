import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/profile/access_profile.dart';
import './accessprofile_item_request_builder_get_query_parameters.dart';
import './accessprofile_item_request_builder_put_query_parameters.dart';
import './account/account_request_builder.dart';
import './attributes/attributes_request_builder.dart';

/// Builds and executes requests for operations under \profile\{accessprofile-id}
class AccessprofileItemRequestBuilder extends BaseRequestBuilder<AccessprofileItemRequestBuilder> {
    ///  The account property
    AccountRequestBuilder get account {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The attributes property
    AttributesRequestBuilder get attributes {
        return AttributesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AccessprofileItemRequestBuilder clone() {
        return AccessprofileItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AccessprofileItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    AccessprofileItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}{?additional*}", pathParameters) ;
    /// Instantiates a new [AccessprofileItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    AccessprofileItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the access profile identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccessProfile?> getAsync([Function(RequestConfiguration<AccessprofileItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfile>(requestInfo, AccessProfile.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the access profile identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccessProfile?> putAsync(AccessProfile body, [Function(RequestConfiguration<AccessprofileItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfile>(requestInfo, AccessProfile.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the access profile identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<AccessprofileItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccessprofileItemRequestBuilderGetQueryParameters>(requestConfiguration, () => AccessprofileItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Updates the access profile identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(AccessProfile body, [Function(RequestConfiguration<AccessprofileItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccessprofileItemRequestBuilderPutQueryParameters>(requestConfiguration, () => AccessprofileItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
