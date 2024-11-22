// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import '../linkable.dart';
import '../provisioning/provisioned_system_primer.dart';
import './o_auth2_client_permission_additional_objects.dart';
import './o_auth2_client_permission_type.dart';
import './o_auth2_client_permission_with_client.dart';

/// auto generated
class OAuth2ClientPermission extends Linkable implements Parsable {
    ///  The additionalObjects property
    OAuth2ClientPermissionAdditionalObjects? additionalObjects;
    ///  The forGroup property
    GroupPrimer? forGroup;
    ///  The forSystem property
    ProvisionedSystemPrimer? forSystem;
    ///  The value property
    OAuth2ClientPermissionType? value;
    /// Instantiates a new [OAuth2ClientPermission] and sets the default values.
    OAuth2ClientPermission() : super() {
        type_ = 'client.OAuth2ClientPermission';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OAuth2ClientPermission createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'client.OAuth2ClientPermissionWithClient' => OAuth2ClientPermissionWithClient(),
            _ => OAuth2ClientPermission(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<OAuth2ClientPermissionAdditionalObjects>(OAuth2ClientPermissionAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['forGroup'] = (node) => forGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['forSystem'] = (node) => forSystem = node.getObjectValue<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        deserializerMap['value'] = (node) => value = node.getEnumValue<OAuth2ClientPermissionType>((stringValue) => OAuth2ClientPermissionType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<OAuth2ClientPermissionAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<GroupPrimer>('forGroup', forGroup);
        writer.writeObjectValue<ProvisionedSystemPrimer>('forSystem', forSystem);
        writer.writeEnumValue<OAuth2ClientPermissionType>('value', value, (e) => e?.value);
    }
}
