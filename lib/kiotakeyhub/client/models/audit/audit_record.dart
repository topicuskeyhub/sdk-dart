import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../auth/security_level.dart';
import '../linkable.dart';
import './audit_record_additional_objects.dart';
import './audit_record_type.dart';

class AuditRecord extends Linkable implements Parsable {
    ///  The additionalObjects property
    AuditRecordAdditionalObjects? additionalObjects;
    ///  The type property
    AuditRecordType? auditRecordType;
    ///  The dateTime property
    DateTime? dateTime;
    ///  The onAccessProfile property
    String? onAccessProfile;
    ///  The onAccount property
    String? onAccount;
    ///  The onCertificate property
    String? onCertificate;
    ///  The onClient property
    String? onClient;
    ///  The onDirectory property
    String? onDirectory;
    ///  The onGroup property
    String? onGroup;
    ///  The onGroup2 property
    String? onGroup2;
    ///  The onGroupClassification property
    String? onGroupClassification;
    ///  The onOrganizationalUnit property
    String? onOrganizationalUnit;
    ///  The onServiceAccount property
    String? onServiceAccount;
    ///  The onSystem property
    String? onSystem;
    ///  The onVaultRecord property
    String? onVaultRecord;
    ///  The onWebhook property
    String? onWebhook;
    ///  The parameter1 property
    String? parameter1;
    ///  The parameter2 property
    String? parameter2;
    ///  The parameter3 property
    String? parameter3;
    ///  The performedBy property
    String? performedBy;
    ///  The securityLevel property
    SecurityLevel? securityLevel;
    /// Instantiates a new [AuditRecord] and sets the default values.
     AuditRecord() : super() {
        typeEscaped = 'audit.AuditRecord';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AuditRecord createFromDiscriminatorValue(ParseNode parseNode) {
        return AuditRecord();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AuditRecordAdditionalObjects>(AuditRecordAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['type'] = (node) => auditRecordType = node.getEnumValue<AuditRecordType>((stringValue) => AuditRecordType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['dateTime'] = (node) => dateTime = node.getDateTimeValue();
        deserializerMap['onAccessProfile'] = (node) => onAccessProfile = node.getStringValue();
        deserializerMap['onAccount'] = (node) => onAccount = node.getStringValue();
        deserializerMap['onCertificate'] = (node) => onCertificate = node.getStringValue();
        deserializerMap['onClient'] = (node) => onClient = node.getStringValue();
        deserializerMap['onDirectory'] = (node) => onDirectory = node.getStringValue();
        deserializerMap['onGroup'] = (node) => onGroup = node.getStringValue();
        deserializerMap['onGroup2'] = (node) => onGroup2 = node.getStringValue();
        deserializerMap['onGroupClassification'] = (node) => onGroupClassification = node.getStringValue();
        deserializerMap['onOrganizationalUnit'] = (node) => onOrganizationalUnit = node.getStringValue();
        deserializerMap['onServiceAccount'] = (node) => onServiceAccount = node.getStringValue();
        deserializerMap['onSystem'] = (node) => onSystem = node.getStringValue();
        deserializerMap['onVaultRecord'] = (node) => onVaultRecord = node.getStringValue();
        deserializerMap['onWebhook'] = (node) => onWebhook = node.getStringValue();
        deserializerMap['parameter1'] = (node) => parameter1 = node.getStringValue();
        deserializerMap['parameter2'] = (node) => parameter2 = node.getStringValue();
        deserializerMap['parameter3'] = (node) => parameter3 = node.getStringValue();
        deserializerMap['performedBy'] = (node) => performedBy = node.getStringValue();
        deserializerMap['securityLevel'] = (node) => securityLevel = node.getEnumValue<SecurityLevel>((stringValue) => SecurityLevel.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AuditRecordAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeEnumValue<AuditRecordType>('type', auditRecordType, (e) => e?.value);
        writer.writeEnumValue<SecurityLevel>('securityLevel', securityLevel, (e) => e?.value);
    }
}
