// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/vault/vault_record_linkable_wrapper.dart';
import './export_/export_request_builder.dart';
import './item/with_record_item_request_builder.dart';
import './record_request_builder_get_query_parameters.dart';
import './record_request_builder_post_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \deletedvaultholder\{deletedvaultholder-id}\vault\record
class RecordRequestBuilder extends BaseRequestBuilder<RecordRequestBuilder> {
    ///  The export property
    ExportRequestBuilder get export_ {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.deletedvaultholder.item.vault.record.item collection
    ///  [recordid] Unique identifier of the item
    WithRecordItemRequestBuilder byRecordid(int recordid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('recordid', () => recordid);
        return WithRecordItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    RecordRequestBuilder clone() {
        return RecordRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RecordRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RecordRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder/{deletedvaultholder%2Did}/vault/record{?accessibleByAccount*,accessibleByAccountAsManager*,accessibleByClient*,account*,additional*,any*,client*,color*,createdAfter*,createdBefore*,exclude*,expireWarningBeforeOrAt*,filename*,group*,groupOrganizationalUnit*,hasNoPolicy*,hasParent*,hasValidPolicy*,id*,modifiedSince*,name*,nameContains*,parent*,q*,secret*,shareExpiresBeforeOrAt*,sort*,url*,username*,uuid*,vault*}", pathParameters) ;
    /// Instantiates a new [RecordRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RecordRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder/{deletedvaultholder%2Did}/vault/record{?accessibleByAccount*,accessibleByAccountAsManager*,accessibleByClient*,account*,additional*,any*,client*,color*,createdAfter*,createdBefore*,exclude*,expireWarningBeforeOrAt*,filename*,group*,groupOrganizationalUnit*,hasNoPolicy*,hasParent*,hasValidPolicy*,id*,modifiedSince*,name*,nameContains*,parent*,q*,secret*,shareExpiresBeforeOrAt*,sort*,url*,username*,uuid*,vault*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for vault records in a specific vault. The various query parameters can be used to filter the response. It is not possible to access secrets with a query that returns multiple results. Secrets can only be read one by one.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<VaultRecordLinkableWrapper?> getAsync([void Function(RequestConfiguration<RecordRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VaultRecordLinkableWrapper>(requestInfo, VaultRecordLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new vault records and returns the newly created records. Secrets are specified via the additional object secret. It is required to specify the 'topicus-Vault-session' header. When updating a TOTP-secret, make sure to set 'writeTotp' field.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<VaultRecordLinkableWrapper?> postAsync(VaultRecordLinkableWrapper body, [void Function(RequestConfiguration<RecordRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VaultRecordLinkableWrapper>(requestInfo, VaultRecordLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for vault records in a specific vault. The various query parameters can be used to filter the response. It is not possible to access secrets with a query that returns multiple results. Secrets can only be read one by one.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<RecordRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<RecordRequestBuilderGetQueryParameters>(requestConfiguration, () => RecordRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        return requestInfo;
    }
    /// Creates one or more new vault records and returns the newly created records. Secrets are specified via the additional object secret. It is required to specify the 'topicus-Vault-session' header. When updating a TOTP-secret, make sure to set 'writeTotp' field.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(VaultRecordLinkableWrapper body, [void Function(RequestConfiguration<RecordRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<RecordRequestBuilderPostQueryParameters>(requestConfiguration, () => RecordRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=77', body);
        return requestInfo;
    }
}
