// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/auth/account.dart';
import '../../models/error_report.dart';
import './attributevalue/attributevalue_request_builder.dart';
import './group/group_request_builder.dart';
import './identity/identity_request_builder.dart';
import './organizationalunit/organizationalunit_request_builder.dart';
import './status/status_request_builder.dart';
import './validate/validate_request_builder.dart';
import './vault/vault_request_builder.dart';
import './with_account_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \account\{accountid}
class WithAccountItemRequestBuilder extends BaseRequestBuilder<WithAccountItemRequestBuilder> {
    ///  The attributevalue property
    AttributevalueRequestBuilder get attributevalue {
        return AttributevalueRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The group property
    GroupRequestBuilder get group {
        return GroupRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The identity property
    IdentityRequestBuilder get identity {
        return IdentityRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The organizationalunit property
    OrganizationalunitRequestBuilder get organizationalunit {
        return OrganizationalunitRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The status property
    StatusRequestBuilder get status {
        return StatusRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The validate property
    ValidateRequestBuilder get validate {
        return ValidateRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The vault property
    VaultRequestBuilder get vault {
        return VaultRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithAccountItemRequestBuilder clone() {
        return WithAccountItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAccountItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAccountItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Permanently removes the account. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the account identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<Account?> getAsync([void Function(RequestConfiguration<WithAccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Account>(requestInfo, Account.createFromDiscriminatorValue, errorMapping);
    }
    /// Permanently removes the account. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Returns the account identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithAccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAccountItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAccountItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
}
