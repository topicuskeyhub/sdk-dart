import 'package:kiota_abstractions/kiota_abstractions.dart';
import 'package:kiota_serialization_json/kiota_serialization_json.dart';
import './account/account_request_builder.dart';
import './audit/audit_request_builder.dart';
import './certificate/certificate_request_builder.dart';
import './client/client_request_builder.dart';
import './deletedvaultholder/deletedvaultholder_request_builder.dart';
import './directory/directory_request_builder.dart';
import './exportEscaped/export_request_builder.dart';
import './group/group_request_builder.dart';
import './groupclassification/groupclassification_request_builder.dart';
import './groupclient/groupclient_request_builder.dart';
import './groupfolder/groupfolder_request_builder.dart';
import './info/info_request_builder.dart';
import './launchpadtile/launchpadtile_request_builder.dart';
import './numberseq/numberseq_request_builder.dart';
import './organizationalunit/organizationalunit_request_builder.dart';
import './profile/profile_request_builder.dart';
import './profileprovisioning/profileprovisioning_request_builder.dart';
import './provisioninggroup/provisioninggroup_request_builder.dart';
import './request/request_request_builder.dart';
import './serviceaccount/serviceaccount_request_builder.dart';
import './system/system_request_builder.dart';
import './vaultrecord/vaultrecord_request_builder.dart';
import './webhook/webhook_request_builder.dart';

/// The main entry point of the SDK, exposes the configuration and the fluent API.
class KeyHubClient extends BaseRequestBuilder<KeyHubClient> {
    ///  The account property
    AccountRequestBuilder get account {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The audit property
    AuditRequestBuilder get audit {
        return AuditRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The certificate property
    CertificateRequestBuilder get certificate {
        return CertificateRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The client property
    ClientRequestBuilder get client {
        return ClientRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The deletedvaultholder property
    DeletedvaultholderRequestBuilder get deletedvaultholder {
        return DeletedvaultholderRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The directory property
    DirectoryRequestBuilder get directory {
        return DirectoryRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The export property
    ExportRequestBuilder get exportEscaped {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The group property
    GroupRequestBuilder get group {
        return GroupRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The groupclassification property
    GroupclassificationRequestBuilder get groupclassification {
        return GroupclassificationRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The groupclient property
    GroupclientRequestBuilder get groupclient {
        return GroupclientRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The groupfolder property
    GroupfolderRequestBuilder get groupfolder {
        return GroupfolderRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The info property
    InfoRequestBuilder get info {
        return InfoRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The launchpadtile property
    LaunchpadtileRequestBuilder get launchpadtile {
        return LaunchpadtileRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The numberseq property
    NumberseqRequestBuilder get numberseq {
        return NumberseqRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The organizationalunit property
    OrganizationalunitRequestBuilder get organizationalunit {
        return OrganizationalunitRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The profile property
    ProfileRequestBuilder get profile {
        return ProfileRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The profileprovisioning property
    ProfileprovisioningRequestBuilder get profileprovisioning {
        return ProfileprovisioningRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The provisioninggroup property
    ProvisioninggroupRequestBuilder get provisioninggroup {
        return ProvisioninggroupRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The request property
    RequestRequestBuilder get request {
        return RequestRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The serviceaccount property
    ServiceaccountRequestBuilder get serviceaccount {
        return ServiceaccountRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The system property
    SystemRequestBuilder get system {
        return SystemRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The vaultrecord property
    VaultrecordRequestBuilder get vaultrecord {
        return VaultrecordRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The webhook property
    WebhookRequestBuilder get webhook {
        return WebhookRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    KeyHubClient clone() {
        return KeyHubClient(requestAdapter);
    }
    /// Instantiates a new [KeyHubClient] and sets the default values.
    /// <param name="requestAdapter">requestAdapter</param>
    KeyHubClient(RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}", {}) {
        ApiClientBuilder.registerDefaultSerializer(() => JsonSerializationWriterFactory());
        ApiClientBuilder.registerDefaultDeserializer(() => JsonParseNodeFactory());
        if (requestAdapter.baseUrl == null || requestAdapter.baseUrl!.isEmpty) {
            requestAdapter.baseUrl = 'https://keyhub.example.com/keyhub/rest/v1';
        }
        pathParameters['baseurl'] = requestAdapter.baseUrl;
    }
}
