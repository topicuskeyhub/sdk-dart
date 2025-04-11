// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/profile/access_profile.dart';
import './accessprofile_item_request_builder_get_query_parameters.dart';
import './accessprofile_item_request_builder_put_query_parameters.dart';
import './account/account_request_builder.dart';
import './attributerule/attributerule_request_builder.dart';
import './attributes/attributes_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \profile\{accessprofile-id}
class AccessprofileItemRequestBuilder extends BaseRequestBuilder<AccessprofileItemRequestBuilder> {
    ///  The account property
    AccountRequestBuilder get account {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The attributerule property
    AttributeruleRequestBuilder get attributerule {
        return AttributeruleRequestBuilder(pathParameters, requestAdapter);
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
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AccessprofileItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}{?additional*}", pathParameters) ;
    /// Instantiates a new [AccessprofileItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AccessprofileItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the access profile identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfile?> getAsync([void Function(RequestConfiguration<AccessprofileItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfile>(requestInfo, AccessProfile.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the access profile identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfile?> putAsync(AccessProfile body, [void Function(RequestConfiguration<AccessprofileItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfile>(requestInfo, AccessProfile.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the access profile identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<AccessprofileItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccessprofileItemRequestBuilderGetQueryParameters>(requestConfiguration, () => AccessprofileItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Updates the access profile identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(AccessProfile body, [void Function(RequestConfiguration<AccessprofileItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccessprofileItemRequestBuilderPutQueryParameters>(requestConfiguration, () => AccessprofileItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=78', body);
        return requestInfo;
    }
}
