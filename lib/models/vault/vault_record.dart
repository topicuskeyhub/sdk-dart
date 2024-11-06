import 'package:kiota_abstractions/kiota_abstractions.dart';
import './vault_record_additional_objects.dart';
import './vault_record_primer.dart';
import './vault_record_warning_period.dart';
import './vault_secret_type.dart';

class VaultRecord extends VaultRecordPrimer implements Parsable {
    ///  The additionalObjects property
    VaultRecordAdditionalObjects? additionalObjects;
    ///  The derived property
    bool? derived;
    ///  The endDate property
    DateOnly? endDate;
    ///  The filename property
    String? filename;
    ///  The types property
    Iterable<VaultSecretType>? types;
    ///  The url property
    String? url;
    ///  The username property
    String? username;
    ///  The warningPeriod property
    VaultRecordWarningPeriod? warningPeriod;
    /// Instantiates a new [VaultRecord] and sets the default values.
    VaultRecord() : super() {
        typeEscaped = 'vault.VaultRecord';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static VaultRecord createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecord();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<VaultRecordAdditionalObjects>(VaultRecordAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['derived'] = (node) => derived = node.getBoolValue();
        deserializerMap['endDate'] = (node) => endDate = node.getDateOnlyValue();
        deserializerMap['filename'] = (node) => filename = node.getStringValue();
        deserializerMap['types'] = (node) => types = node.getCollectionOfEnumValues<VaultSecretType>((stringValue) => VaultSecretType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['url'] = (node) => url = node.getStringValue();
        deserializerMap['username'] = (node) => username = node.getStringValue();
        deserializerMap['warningPeriod'] = (node) => warningPeriod = node.getEnumValue<VaultRecordWarningPeriod>((stringValue) => VaultRecordWarningPeriod.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<VaultRecordAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeDateOnlyValue('endDate', endDate);
        writer.writeStringValue('filename', filename);
        writer.writeStringValue('url', url);
        writer.writeStringValue('username', username);
        writer.writeEnumValue<VaultRecordWarningPeriod>('warningPeriod', warningPeriod, (e) => e?.value);
    }
}
