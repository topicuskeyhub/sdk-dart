// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/identity/account_attribute_definition.dart';
import './with_attributedef_item_request_builder_get_query_parameters.dart';
import './with_attributedef_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \attributedef\{attributedefid}
class WithAttributedefItemRequestBuilder extends BaseRequestBuilder<WithAttributedefItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithAttributedefItemRequestBuilder clone() {
        return WithAttributedefItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAttributedefItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAttributedefItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/attributedef/{attributedefid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithAttributedefItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAttributedefItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/attributedef/{attributedefid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes the account attribute definition identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the account attribute definition identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountAttributeDefinition?> getAsync([void Function(RequestConfiguration<WithAttributedefItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountAttributeDefinition>(requestInfo, AccountAttributeDefinition.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the account attribute definition identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountAttributeDefinition?> putAsync(AccountAttributeDefinition body, [void Function(RequestConfiguration<WithAttributedefItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountAttributeDefinition>(requestInfo, AccountAttributeDefinition.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes the account attribute definition identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Returns the account attribute definition identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithAttributedefItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAttributedefItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAttributedefItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Updates the account attribute definition identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(AccountAttributeDefinition body, [void Function(RequestConfiguration<WithAttributedefItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAttributedefItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithAttributedefItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=78', body);
        return requestInfo;
    }
}
