import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/group/group_client.dart';
import './with_groupclient_item_request_builder_get_query_parameters.dart';
import './with_groupclient_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \groupclient\{groupclientid}
class WithGroupclientItemRequestBuilder extends BaseRequestBuilder<WithGroupclientItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     WithGroupclientItemRequestBuilder clone() {
        return WithGroupclientItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithGroupclientItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithGroupclientItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclient/{groupclientid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithGroupclientItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithGroupclientItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclient/{groupclientid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the specified client link, effectively removing access to the client for members of  the group.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the single client link for the group.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<GroupClient?> getAsync([Function(RequestConfiguration<WithGroupclientItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupClient>(requestInfo, GroupClient.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the client link for a group identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<GroupClient?> putAsync(GroupClient body, [Function(RequestConfiguration<WithGroupclientItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupClient>(requestInfo, GroupClient.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the specified client link, effectively removing access to the client for members of  the group.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Returns the single client link for the group.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithGroupclientItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupclientItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithGroupclientItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Updates the client link for a group identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPutRequestInformation(GroupClient body, [Function(RequestConfiguration<WithGroupclientItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupclientItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithGroupclientItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
