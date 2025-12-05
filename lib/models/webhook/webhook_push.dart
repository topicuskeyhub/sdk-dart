// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit/audit_record_type.dart';
import '../auth/security_level.dart';
import '../non_linkable.dart';
import './webhook_name_uuid.dart';

/// auto generated
class WebhookPush extends NonLinkable implements Parsable {
    ///  The accessProfile property
    WebhookNameUuid? accessProfile;
    ///  The account property
    WebhookNameUuid? account;
    ///  The byParty property
    WebhookNameUuid? byParty;
    ///  The certificate property
    WebhookNameUuid? certificate;
    ///  The client property
    WebhookNameUuid? client;
    ///  The directory property
    WebhookNameUuid? directory;
    ///  The group property
    WebhookNameUuid? group;
    ///  The group2 property
    WebhookNameUuid? group2;
    ///  The groupClassification property
    WebhookNameUuid? groupClassification;
    ///  The groupOnSystem property
    WebhookNameUuid? groupOnSystem;
    ///  The identitySource property
    WebhookNameUuid? identitySource;
    ///  The modificationRequest property
    WebhookNameUuid? modificationRequest;
    ///  The organizationalUnit property
    WebhookNameUuid? organizationalUnit;
    ///  The parameter1 property
    String? parameter1;
    ///  The parameter2 property
    String? parameter2;
    ///  The parameter3 property
    String? parameter3;
    ///  The securityLevel property
    SecurityLevel? securityLevel;
    ///  The seq property
    int? seq;
    ///  The serviceAccount property
    WebhookNameUuid? serviceAccount;
    ///  The system property
    WebhookNameUuid? system;
    ///  The timestamp property
    DateTime? timestamp;
    ///  The vaultRecord property
    WebhookNameUuid? vaultRecord;
    ///  The webhook property
    WebhookNameUuid? webhook;
    ///  The type property
    AuditRecordType? webhookPushType;
    /// Instantiates a new [WebhookPush] and sets the default values.
    WebhookPush() : super() {
        type_ = 'webhook.WebhookPush';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static WebhookPush createFromDiscriminatorValue(ParseNode parseNode) {
        return WebhookPush();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accessProfile'] = (node) => accessProfile = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['account'] = (node) => account = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['byParty'] = (node) => byParty = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['certificate'] = (node) => certificate = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['client'] = (node) => client = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['group'] = (node) => group = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['group2'] = (node) => group2 = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['groupClassification'] = (node) => groupClassification = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['groupOnSystem'] = (node) => groupOnSystem = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['identitySource'] = (node) => identitySource = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['modificationRequest'] = (node) => modificationRequest = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['organizationalUnit'] = (node) => organizationalUnit = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['parameter1'] = (node) => parameter1 = node.getStringValue();
        deserializerMap['parameter2'] = (node) => parameter2 = node.getStringValue();
        deserializerMap['parameter3'] = (node) => parameter3 = node.getStringValue();
        deserializerMap['securityLevel'] = (node) => securityLevel = node.getEnumValue<SecurityLevel>((stringValue) => SecurityLevel.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['seq'] = (node) => seq = node.getIntValue();
        deserializerMap['serviceAccount'] = (node) => serviceAccount = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['system'] = (node) => system = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getDateTimeValue();
        deserializerMap['vaultRecord'] = (node) => vaultRecord = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['webhook'] = (node) => webhook = node.getObjectValue<WebhookNameUuid>(WebhookNameUuid.createFromDiscriminatorValue);
        deserializerMap['type'] = (node) => webhookPushType = node.getEnumValue<AuditRecordType>((stringValue) => AuditRecordType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<WebhookNameUuid>('accessProfile', accessProfile);
        writer.writeObjectValue<WebhookNameUuid>('account', account);
        writer.writeObjectValue<WebhookNameUuid>('byParty', byParty);
        writer.writeObjectValue<WebhookNameUuid>('certificate', certificate);
        writer.writeObjectValue<WebhookNameUuid>('client', client);
        writer.writeObjectValue<WebhookNameUuid>('directory', directory);
        writer.writeObjectValue<WebhookNameUuid>('group', group);
        writer.writeObjectValue<WebhookNameUuid>('group2', group2);
        writer.writeObjectValue<WebhookNameUuid>('groupClassification', groupClassification);
        writer.writeObjectValue<WebhookNameUuid>('groupOnSystem', groupOnSystem);
        writer.writeObjectValue<WebhookNameUuid>('identitySource', identitySource);
        writer.writeObjectValue<WebhookNameUuid>('modificationRequest', modificationRequest);
        writer.writeObjectValue<WebhookNameUuid>('organizationalUnit', organizationalUnit);
        writer.writeStringValue('parameter1', parameter1);
        writer.writeStringValue('parameter2', parameter2);
        writer.writeStringValue('parameter3', parameter3);
        writer.writeEnumValue<SecurityLevel>('securityLevel', securityLevel, (e) => e?.value);
        writer.writeIntValue('seq', seq);
        writer.writeObjectValue<WebhookNameUuid>('serviceAccount', serviceAccount);
        writer.writeObjectValue<WebhookNameUuid>('system', system);
        writer.writeDateTimeValue('timestamp', timestamp);
        writer.writeObjectValue<WebhookNameUuid>('vaultRecord', vaultRecord);
        writer.writeObjectValue<WebhookNameUuid>('webhook', webhook);
        writer.writeEnumValue<AuditRecordType>('type', webhookPushType, (e) => e?.value);
    }
}
