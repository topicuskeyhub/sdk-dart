// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../provisioning/deprovision_action.dart';
import './abstract_provisioned_system_modification_request.dart';

/// auto generated
class RemoveProvisionedSystemRequest extends AbstractProvisionedSystemModificationRequest implements Parsable {
    ///  The deprovisionAction property
    DeprovisionAction? deprovisionAction;
    ///  The systemName property
    String? systemName;
    /// Instantiates a new [RemoveProvisionedSystemRequest] and sets the default values.
    RemoveProvisionedSystemRequest() : super() {
        type_ = 'request.RemoveProvisionedSystemRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static RemoveProvisionedSystemRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return RemoveProvisionedSystemRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['deprovisionAction'] = (node) => deprovisionAction = node.getEnumValue<DeprovisionAction>((stringValue) => DeprovisionAction.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['systemName'] = (node) => systemName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<DeprovisionAction>('deprovisionAction', deprovisionAction, (e) => e?.value);
        writer.writeStringValue('systemName', systemName);
    }
}
