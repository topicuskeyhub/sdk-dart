// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/profile/access_profile_account_prediction_linkable_wrapper.dart';
import './item/with_prediction_item_request_builder.dart';
import './prediction_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \profile\{accessprofile-id}\prediction
class PredictionRequestBuilder extends BaseRequestBuilder<PredictionRequestBuilder> {
    /// Gets an item from the ApiSdk.profile.item.prediction.item collection
    ///  [predictionid] Unique identifier of the item
    WithPredictionItemRequestBuilder byPredictionid(int predictionid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('predictionid', () => predictionid);
        return WithPredictionItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    PredictionRequestBuilder clone() {
        return PredictionRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [PredictionRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PredictionRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/prediction{?accessProfile*,accessProfileOwnedBy*,account*,additional*,anchor*,any*,createdAfter*,createdBefore*,exclude*,hasPendingEvents*,id*,modifiedSince*,q*,sort*,transitionDateOnOrBefore*}", pathParameters) ;
    /// Instantiates a new [PredictionRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PredictionRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/prediction{?accessProfile*,accessProfileOwnedBy*,account*,additional*,anchor*,any*,createdAfter*,createdBefore*,exclude*,hasPendingEvents*,id*,modifiedSince*,q*,sort*,transitionDateOnOrBefore*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over the predicted and observed lifecycle transitions of the accounts of an access profile, including future joiners and recently departed members that are no longer a member. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileAccountPredictionLinkableWrapper?> getAsync([void Function(RequestConfiguration<PredictionRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileAccountPredictionLinkableWrapper>(requestInfo, AccessProfileAccountPredictionLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over the predicted and observed lifecycle transitions of the accounts of an access profile, including future joiners and recently departed members that are no longer a member. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<PredictionRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<PredictionRequestBuilderGetQueryParameters>(requestConfiguration, () => PredictionRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=88');
        return requestInfo;
    }
}
