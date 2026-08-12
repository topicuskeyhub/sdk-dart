// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/profile/access_profile_account_prediction.dart';
import './with_prediction_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \profile\{accessprofile-id}\prediction\{predictionid}
class WithPredictionItemRequestBuilder extends BaseRequestBuilder<WithPredictionItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithPredictionItemRequestBuilder clone() {
        return WithPredictionItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithPredictionItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithPredictionItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/prediction/{predictionid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithPredictionItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithPredictionItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/prediction/{predictionid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the single transition prediction identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileAccountPrediction?> getAsync([void Function(RequestConfiguration<WithPredictionItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileAccountPrediction>(requestInfo, AccessProfileAccountPrediction.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the single transition prediction identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithPredictionItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithPredictionItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithPredictionItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=87');
        return requestInfo;
    }
}
