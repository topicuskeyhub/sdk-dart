import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/provisioning/provisioned_system.dart';
import './account/account_request_builder.dart';
import './group/group_request_builder.dart';
import './syncEscaped/sync_request_builder.dart';
import './synclog/synclog_request_builder.dart';
import './with_system_item_request_builder_get_query_parameters.dart';
import './with_system_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \system\{systemid}
class WithSystemItemRequestBuilder extends BaseRequestBuilder<WithSystemItemRequestBuilder> {
    ///  The account property
    AccountRequestBuilder get account {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The group property
    GroupRequestBuilder get group {
        return GroupRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The sync property
    SyncRequestBuilder get syncEscaped {
        return SyncRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The synclog property
    SynclogRequestBuilder get synclog {
        return SynclogRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     WithSystemItemRequestBuilder clone() {
        return WithSystemItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithSystemItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithSystemItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithSystemItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithSystemItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the provisioned system identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ProvisionedSystem?> getAsync([Function(RequestConfiguration<WithSystemItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedSystem>(requestInfo, ProvisionedSystem.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the provisioned system identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ProvisionedSystem?> putAsync(ProvisionedSystem body, [Function(RequestConfiguration<WithSystemItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedSystem>(requestInfo, ProvisionedSystem.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the provisioned system identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithSystemItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithSystemItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithSystemItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Updates the provisioned system identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPutRequestInformation(ProvisionedSystem body, [Function(RequestConfiguration<WithSystemItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithSystemItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithSystemItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
