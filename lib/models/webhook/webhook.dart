import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit/audit_record_type.dart';
import '../auth/account_primer.dart';
import '../certificate/certificate_primer.dart';
import '../client/client_application_primer.dart';
import '../directory/account_directory_primer.dart';
import '../group/group_primer.dart';
import '../http_authentication_scheme.dart';
import '../linkable.dart';
import '../provisioning/provisioned_system_primer.dart';
import '../t_l_s_level.dart';
import './webhook_additional_objects.dart';

class Webhook extends Linkable implements Parsable {
    ///  The account property
    AccountPrimer? account;
    ///  The active property
    bool? active;
    ///  The additionalObjects property
    WebhookAdditionalObjects? additionalObjects;
    ///  The allTypes property
    bool? allTypes;
    ///  The authenticationScheme property
    HttpAuthenticationScheme? authenticationScheme;
    ///  The basicAuthPassword property
    String? basicAuthPassword;
    ///  The basicAuthUsername property
    String? basicAuthUsername;
    ///  The bearerToken property
    String? bearerToken;
    ///  The client property
    ClientApplicationPrimer? client;
    ///  The clientCertificate property
    CertificatePrimer? clientCertificate;
    ///  The customHeaderName property
    String? customHeaderName;
    ///  The customHeaderValue property
    String? customHeaderValue;
    ///  The directory property
    AccountDirectoryPrimer? directory;
    ///  The group property
    GroupPrimer? group;
    ///  The name property
    String? name;
    ///  The system property
    ProvisionedSystemPrimer? system;
    ///  The tls property
    TLSLevel? tls;
    ///  The trustedCertificate property
    CertificatePrimer? trustedCertificate;
    ///  The types property
    Iterable<AuditRecordType>? types;
    ///  The url property
    String? url;
    ///  The uuid property
    String? uuid;
    ///  The verbosePayloads property
    bool? verbosePayloads;
    /// Instantiates a new [Webhook] and sets the default values.
    Webhook() : super() {
        typeEscaped = 'webhook.Webhook';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static Webhook createFromDiscriminatorValue(ParseNode parseNode) {
        return Webhook();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['account'] = (node) => account = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['active'] = (node) => active = node.getBoolValue();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<WebhookAdditionalObjects>(WebhookAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['allTypes'] = (node) => allTypes = node.getBoolValue();
        deserializerMap['authenticationScheme'] = (node) => authenticationScheme = node.getEnumValue<HttpAuthenticationScheme>((stringValue) => HttpAuthenticationScheme.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['basicAuthPassword'] = (node) => basicAuthPassword = node.getStringValue();
        deserializerMap['basicAuthUsername'] = (node) => basicAuthUsername = node.getStringValue();
        deserializerMap['bearerToken'] = (node) => bearerToken = node.getStringValue();
        deserializerMap['client'] = (node) => client = node.getObjectValue<ClientApplicationPrimer>(ClientApplicationPrimer.createFromDiscriminatorValue);
        deserializerMap['clientCertificate'] = (node) => clientCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        deserializerMap['customHeaderName'] = (node) => customHeaderName = node.getStringValue();
        deserializerMap['customHeaderValue'] = (node) => customHeaderValue = node.getStringValue();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['group'] = (node) => group = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['system'] = (node) => system = node.getObjectValue<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        deserializerMap['tls'] = (node) => tls = node.getEnumValue<TLSLevel>((stringValue) => TLSLevel.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['trustedCertificate'] = (node) => trustedCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        deserializerMap['types'] = (node) => types = node.getCollectionOfEnumValues<AuditRecordType>((stringValue) => AuditRecordType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['url'] = (node) => url = node.getStringValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        deserializerMap['verbosePayloads'] = (node) => verbosePayloads = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountPrimer>('account', account);
        writer.writeBoolValue('active', value:active);
        writer.writeObjectValue<WebhookAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeBoolValue('allTypes', value:allTypes);
        writer.writeEnumValue<HttpAuthenticationScheme>('authenticationScheme', authenticationScheme, (e) => e?.value);
        writer.writeStringValue('basicAuthPassword', basicAuthPassword);
        writer.writeStringValue('basicAuthUsername', basicAuthUsername);
        writer.writeStringValue('bearerToken', bearerToken);
        writer.writeObjectValue<ClientApplicationPrimer>('client', client);
        writer.writeObjectValue<CertificatePrimer>('clientCertificate', clientCertificate);
        writer.writeStringValue('customHeaderName', customHeaderName);
        writer.writeStringValue('customHeaderValue', customHeaderValue);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeObjectValue<GroupPrimer>('group', group);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<ProvisionedSystemPrimer>('system', system);
        writer.writeEnumValue<TLSLevel>('tls', tls, (e) => e?.value);
        writer.writeObjectValue<CertificatePrimer>('trustedCertificate', trustedCertificate);
        writer.writeCollectionOfEnumValues<AuditRecordType>('types', types, (e) => e?.value);
        writer.writeStringValue('url', url);
        writer.writeBoolValue('verbosePayloads', value:verbosePayloads);
    }
}
