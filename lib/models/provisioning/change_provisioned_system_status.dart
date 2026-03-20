// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './deprovision_action.dart';
import './provisioned_system_status.dart';

/// auto generated
class ChangeProvisionedSystemStatus extends NonLinkable implements Parsable {
    ///  The deprovisionAction property
    DeprovisionAction? deprovisionAction;
    ///  The newActiveStatus property
    ProvisionedSystemStatus? newActiveStatus;
    /// Instantiates a new [ChangeProvisionedSystemStatus] and sets the default values.
    ChangeProvisionedSystemStatus() : super() {
        type_ = 'provisioning.ChangeProvisionedSystemStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ChangeProvisionedSystemStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return ChangeProvisionedSystemStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['deprovisionAction'] = (node) => deprovisionAction = node.getEnumValue<DeprovisionAction>((stringValue) => DeprovisionAction.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['newActiveStatus'] = (node) => newActiveStatus = node.getEnumValue<ProvisionedSystemStatus>((stringValue) => ProvisionedSystemStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<DeprovisionAction>('deprovisionAction', deprovisionAction, (e) => e?.value);
        writer.writeEnumValue<ProvisionedSystemStatus>('newActiveStatus', newActiveStatus, (e) => e?.value);
    }
}
