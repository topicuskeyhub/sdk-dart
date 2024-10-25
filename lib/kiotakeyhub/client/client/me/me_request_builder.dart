import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/client/o_auth2_client.dart';
import '../../models/error_report.dart';
import './secret/secret_request_builder.dart';

/// Builds and executes requests for operations under \client\me
class MeRequestBuilder extends BaseRequestBuilder<MeRequestBuilder> {
    ///  The secret property
    SecretRequestBuilder get secret {
        return SecretRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     MeRequestBuilder clone() {
        return MeRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MeRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     MeRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/me", pathParameters) ;
    /// Instantiates a new [MeRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     MeRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/me", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<OAuth2Client?> getAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OAuth2Client>(requestInfo, OAuth2Client.createFromDiscriminatorValue, errorMapping);
    }
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
