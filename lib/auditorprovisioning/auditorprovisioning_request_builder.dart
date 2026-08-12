// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/provisioning/group_on_system_linkable_wrapper.dart';
import './accessprofile/accessprofile_request_builder.dart';
import './auditorprovisioning_request_builder_get_query_parameters.dart';
import './export_/export_request_builder.dart';
import './group/group_request_builder.dart';
import './item/with_auditorprovisioning_item_request_builder.dart';
import './serviceaccount/serviceaccount_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \auditorprovisioning
class AuditorprovisioningRequestBuilder extends BaseRequestBuilder<AuditorprovisioningRequestBuilder> {
    ///  The accessprofile property
    AccessprofileRequestBuilder get accessprofile {
        return AccessprofileRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The export property
    ExportRequestBuilder get export_ {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The group property
    GroupRequestBuilder get group {
        return GroupRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The serviceaccount property
    ServiceaccountRequestBuilder get serviceaccount {
        return ServiceaccountRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.auditorprovisioning.item collection
    ///  [auditorprovisioningid] Unique identifier of the item
    WithAuditorprovisioningItemRequestBuilder byAuditorprovisioningid(int auditorprovisioningid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('auditorprovisioningid', () => auditorprovisioningid);
        return WithAuditorprovisioningItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AuditorprovisioningRequestBuilder clone() {
        return AuditorprovisioningRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AuditorprovisioningRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AuditorprovisioningRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/auditorprovisioning{?accessProfile*,additional*,adminnedBy*,any*,contentAdminnedBy*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,nameContains*,nameDoesNotStartWith*,nameInSystem*,nameStartsWith*,notLinkedToGroup*,notLinkedToServiceAccount*,organizationalUnit*,organizationalUnitForEnforcement*,ownedBy*,q*,sort*,system*,systemForEnforcement*,systemOwnedBy*,tier2OwnedBy*,type*,uuid*}", pathParameters) ;
    /// Instantiates a new [AuditorprovisioningRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AuditorprovisioningRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/auditorprovisioning{?accessProfile*,additional*,adminnedBy*,any*,contentAdminnedBy*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,nameContains*,nameDoesNotStartWith*,nameInSystem*,nameStartsWith*,notLinkedToGroup*,notLinkedToServiceAccount*,organizationalUnit*,organizationalUnitForEnforcement*,ownedBy*,q*,sort*,system*,systemForEnforcement*,systemOwnedBy*,tier2OwnedBy*,type*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all groups on systems for the auditor dashboard. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupOnSystemLinkableWrapper?> getAsync([void Function(RequestConfiguration<AuditorprovisioningRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupOnSystemLinkableWrapper>(requestInfo, GroupOnSystemLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all groups on systems for the auditor dashboard. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<AuditorprovisioningRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AuditorprovisioningRequestBuilderGetQueryParameters>(requestConfiguration, () => AuditorprovisioningRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=87');
        return requestInfo;
    }
}
