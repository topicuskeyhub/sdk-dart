// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/group/group.dart';
import './account/account_request_builder.dart';
import './audit/audit_request_builder.dart';
import './classification/classification_request_builder.dart';
import './mail/mail_request_builder.dart';
import './requestaudit/requestaudit_request_builder.dart';
import './vault/vault_request_builder.dart';
import './with_group_item_request_builder_get_query_parameters.dart';
import './with_group_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \group\{groupid}
class WithGroupItemRequestBuilder extends BaseRequestBuilder<WithGroupItemRequestBuilder> {
    ///  The account property
    AccountRequestBuilder get account {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The audit property
    AuditRequestBuilder get audit {
        return AuditRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The classification property
    ClassificationRequestBuilder get classification {
        return ClassificationRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The mail property
    MailRequestBuilder get mail {
        return MailRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The requestaudit property
    RequestauditRequestBuilder get requestaudit {
        return RequestauditRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The vault property
    VaultRequestBuilder get vault {
        return VaultRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithGroupItemRequestBuilder clone() {
        return WithGroupItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithGroupItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithGroupItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithGroupItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithGroupItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the group identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<Group?> getAsync([void Function(RequestConfiguration<WithGroupItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Group>(requestInfo, Group.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the group identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<Group?> putAsync(Group body, [void Function(RequestConfiguration<WithGroupItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Group>(requestInfo, Group.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the group identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithGroupItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithGroupItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Updates the group identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(Group body, [void Function(RequestConfiguration<WithGroupItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithGroupItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
