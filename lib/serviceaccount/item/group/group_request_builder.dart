// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/serviceaccount/service_account_group_linkable_wrapper.dart';
import './group_request_builder_get_query_parameters.dart';
import './item/with_group_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \serviceaccount\{serviceaccountid}\group
class GroupRequestBuilder extends BaseRequestBuilder<GroupRequestBuilder> {
    /// Gets an item from the ApiSdk.serviceaccount.item.group.item collection
    ///  [groupid] Unique identifier of the item
    WithGroupItemRequestBuilder byGroupid(int groupid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('groupid', () => groupid);
        return WithGroupItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GroupRequestBuilder clone() {
        return GroupRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GroupRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/{serviceaccountid}/group{?additional*,any*,createdAfter*,createdBefore*,exclude*,groupOnSystem*,id*,modifiedSince*,q*,serviceAccount*,sort*}", pathParameters) ;
    /// Instantiates a new [GroupRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/{serviceaccountid}/group{?additional*,any*,createdAfter*,createdBefore*,exclude*,groupOnSystem*,id*,modifiedSince*,q*,serviceAccount*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all groups for a service system in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ServiceAccountGroupLinkableWrapper?> getAsync([void Function(RequestConfiguration<GroupRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ServiceAccountGroupLinkableWrapper>(requestInfo, ServiceAccountGroupLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all groups for a service system in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<GroupRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupRequestBuilderGetQueryParameters>(requestConfiguration, () => GroupRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        return requestInfo;
    }
}
