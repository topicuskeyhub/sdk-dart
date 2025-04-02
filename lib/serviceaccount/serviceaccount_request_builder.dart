// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/serviceaccount/service_account_linkable_wrapper.dart';
import './auditstats/auditstats_request_builder.dart';
import './export_/export_request_builder.dart';
import './group/group_request_builder.dart';
import './item/with_serviceaccount_item_request_builder.dart';
import './serviceaccount_request_builder_get_query_parameters.dart';
import './serviceaccount_request_builder_post_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \serviceaccount
class ServiceaccountRequestBuilder extends BaseRequestBuilder<ServiceaccountRequestBuilder> {
    ///  The auditstats property
    AuditstatsRequestBuilder get auditstats {
        return AuditstatsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The export property
    ExportRequestBuilder get export_ {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The group property
    GroupRequestBuilder get group {
        return GroupRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.serviceaccount.item collection
    ///  [serviceaccountid] Unique identifier of the item
    WithServiceaccountItemRequestBuilder byServiceaccountid(int serviceaccountid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('serviceaccountid', () => serviceaccountid);
        return WithServiceaccountItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ServiceaccountRequestBuilder clone() {
        return ServiceaccountRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ServiceaccountRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ServiceaccountRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount{?active*,additional*,any*,createdAfter*,createdBefore*,exclude*,groupOnSystem*,groupOnSystemOwners*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,organizationalUnitForEnforcement*,password*,passwordRotation*,q*,requestedGroupOnSystemOwners*,sort*,system*,systemContentAdministrators*,systemOwners*,systemTechnicalAdministrators*,technicalAdministrator*,username*,uuid*}", pathParameters) ;
    /// Instantiates a new [ServiceaccountRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ServiceaccountRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount{?active*,additional*,any*,createdAfter*,createdBefore*,exclude*,groupOnSystem*,groupOnSystemOwners*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,organizationalUnitForEnforcement*,password*,passwordRotation*,q*,requestedGroupOnSystemOwners*,sort*,system*,systemContentAdministrators*,systemOwners*,systemTechnicalAdministrators*,technicalAdministrator*,username*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all service accounts in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ServiceAccountLinkableWrapper?> getAsync([void Function(RequestConfiguration<ServiceaccountRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ServiceAccountLinkableWrapper>(requestInfo, ServiceAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new service accounts and returns the newly created service accounts.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ServiceAccountLinkableWrapper?> postAsync(ServiceAccountLinkableWrapper body, [void Function(RequestConfiguration<ServiceaccountRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ServiceAccountLinkableWrapper>(requestInfo, ServiceAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all service accounts in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ServiceaccountRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ServiceaccountRequestBuilderGetQueryParameters>(requestConfiguration, () => ServiceaccountRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        return requestInfo;
    }
    /// Creates one or more new service accounts and returns the newly created service accounts.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(ServiceAccountLinkableWrapper body, [void Function(RequestConfiguration<ServiceaccountRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ServiceaccountRequestBuilderPostQueryParameters>(requestConfiguration, () => ServiceaccountRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=77', body);
        return requestInfo;
    }
}
