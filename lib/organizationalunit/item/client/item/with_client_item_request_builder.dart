// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/organization/organizational_unit_client_application.dart';
import './with_client_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \organizationalunit\{organizationalunitid}\client\{clientid}
class WithClientItemRequestBuilder extends BaseRequestBuilder<WithClientItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithClientItemRequestBuilder clone() {
        return WithClientItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithClientItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithClientItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit/{organizationalunitid}/client/{clientid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithClientItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithClientItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit/{organizationalunitid}/client/{clientid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the specified client application from the organizational unit.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the single client application member of the organizational unit.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OrganizationalUnitClientApplication?> getAsync([void Function(RequestConfiguration<WithClientItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationalUnitClientApplication>(requestInfo, OrganizationalUnitClientApplication.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the specified client application from the organizational unit.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        return requestInfo;
    }
    /// Returns the single client application member of the organizational unit.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithClientItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithClientItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithClientItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
}
