// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import '../vault/vault_record_primer.dart';
import './password_rotation_scheme.dart';
import './service_account_additional_objects.dart';
import './service_account_primer.dart';

/// auto generated
class ServiceAccount extends ServiceAccountPrimer implements Parsable {
    ///  The additionalObjects property
    ServiceAccountAdditionalObjects? additionalObjects;
    ///  The description property
    String? description;
    ///  The password property
    VaultRecordPrimer? password;
    ///  The passwordRotation property
    PasswordRotationScheme? passwordRotation;
    ///  The sshPublicKey property
    String? sshPublicKey;
    ///  The technicalAdministrator property
    GroupPrimer? technicalAdministrator;
    /// Instantiates a new [ServiceAccount] and sets the default values.
    ServiceAccount() : super() {
        type_ = 'serviceaccount.ServiceAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ServiceAccount createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccount();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ServiceAccountAdditionalObjects>(ServiceAccountAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['password'] = (node) => password = node.getObjectValue<VaultRecordPrimer>(VaultRecordPrimer.createFromDiscriminatorValue);
        deserializerMap['passwordRotation'] = (node) => passwordRotation = node.getEnumValue<PasswordRotationScheme>((stringValue) => PasswordRotationScheme.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['sshPublicKey'] = (node) => sshPublicKey = node.getStringValue();
        deserializerMap['technicalAdministrator'] = (node) => technicalAdministrator = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ServiceAccountAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeStringValue('description', description);
        writer.writeObjectValue<VaultRecordPrimer>('password', password);
        writer.writeEnumValue<PasswordRotationScheme>('passwordRotation', passwordRotation, (e) => e?.value);
        writer.writeStringValue('sshPublicKey', sshPublicKey);
        writer.writeObjectValue<GroupPrimer>('technicalAdministrator', technicalAdministrator);
    }
}
