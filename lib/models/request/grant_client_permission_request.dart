import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../client/o_auth2_client_permission_type.dart';
import '../provisioning/provisioned_system_primer.dart';
import './abstract_application_modification_request.dart';

class GrantClientPermissionRequest extends AbstractApplicationModificationRequest implements Parsable {
    ///  The permissionType property
    OAuth2ClientPermissionType? permissionType;
    ///  The system property
    ProvisionedSystemPrimer? system;
    /// Instantiates a new [GrantClientPermissionRequest] and sets the default values.
     GrantClientPermissionRequest() : super() {
        typeEscaped = 'request.GrantClientPermissionRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GrantClientPermissionRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return GrantClientPermissionRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['permissionType'] = (node) => permissionType = node.getEnumValue<OAuth2ClientPermissionType>((stringValue) => OAuth2ClientPermissionType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['system'] = (node) => system = node.getObjectValue<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<OAuth2ClientPermissionType>('permissionType', permissionType, (e) => e?.value);
        writer.writeObjectValue<ProvisionedSystemPrimer>('system', system);
    }
}
