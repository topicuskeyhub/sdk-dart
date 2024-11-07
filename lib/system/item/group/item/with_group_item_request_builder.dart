import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/provisioning/group_on_system.dart';
import './with_group_item_request_builder_delete_query_parameters.dart';
import './with_group_item_request_builder_get_query_parameters.dart';
import './with_group_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \system\{systemid}\group\{groupid}
class WithGroupItemRequestBuilder extends BaseRequestBuilder<WithGroupItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithGroupItemRequestBuilder clone() {
        return WithGroupItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithGroupItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithGroupItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/group/{groupid}{?additional*,system*}", pathParameters) ;
    /// Instantiates a new [WithGroupItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithGroupItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/group/{groupid}{?additional*,system*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes the group on system identified by the id. If 'system=true' is passed as query parameter, the group is also removed from the system.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> deleteAsync([Function(RequestConfiguration<WithGroupItemRequestBuilderDeleteQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the group on system identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupOnSystem?> getAsync([Function(RequestConfiguration<WithGroupItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupOnSystem>(requestInfo, GroupOnSystem.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the group on system identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupOnSystem?> putAsync(GroupOnSystem body, [Function(RequestConfiguration<WithGroupItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupOnSystem>(requestInfo, GroupOnSystem.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes the group on system identified by the id. If 'system=true' is passed as query parameter, the group is also removed from the system.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<WithGroupItemRequestBuilderDeleteQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupItemRequestBuilderDeleteQueryParameters>(requestConfiguration, () => WithGroupItemRequestBuilderDeleteQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Returns the group on system identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithGroupItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithGroupItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Updates the group on system identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(GroupOnSystem body, [Function(RequestConfiguration<WithGroupItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithGroupItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
