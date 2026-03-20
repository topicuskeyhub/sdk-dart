// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/profile/account_access_profile.dart';
import './with_profile_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \account\{accountid}\profile\{profileid}
class WithProfileItemRequestBuilder extends BaseRequestBuilder<WithProfileItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithProfileItemRequestBuilder clone() {
        return WithProfileItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithProfileItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithProfileItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/profile/{profileid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithProfileItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithProfileItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/profile/{profileid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the single access profile membership for the account. This also contains information such as the rights and provisioning information.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountAccessProfile?> getAsync([void Function(RequestConfiguration<WithProfileItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountAccessProfile>(requestInfo, AccountAccessProfile.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the single access profile membership for the account. This also contains information such as the rights and provisioning information.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithProfileItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithProfileItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithProfileItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=84');
        return requestInfo;
    }
}
