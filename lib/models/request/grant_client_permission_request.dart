// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../client/o_auth2_client_permission_type.dart';
import '../provisioning/provisioned_system_primer.dart';
import './abstract_application_modification_request.dart';

/// auto generated
class GrantClientPermissionRequest extends AbstractApplicationModificationRequest implements Parsable {
    ///  The permissionType property
    OAuth2ClientPermissionType? permissionType;
    ///  The system property
    ProvisionedSystemPrimer? system;
    /// Instantiates a new [GrantClientPermissionRequest] and sets the default values.
    GrantClientPermissionRequest() : super() {
        type_ = 'request.GrantClientPermissionRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GrantClientPermissionRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return GrantClientPermissionRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['permissionType'] = (node) => permissionType = node.getEnumValue<OAuth2ClientPermissionType>((stringValue) => OAuth2ClientPermissionType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['system'] = (node) => system = node.getObjectValue<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<OAuth2ClientPermissionType>('permissionType', permissionType, (e) => e?.value);
        writer.writeObjectValue<ProvisionedSystemPrimer>('system', system);
    }
}
