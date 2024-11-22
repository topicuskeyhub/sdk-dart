// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../provisioning/group_on_system.dart';
import './modification_request.dart';

/// auto generated
class TransferGroupOnSystemOwnershipRequest extends ModificationRequest implements Parsable {
    ///  The groupOnSystem property
    GroupOnSystem? groupOnSystem;
    /// Instantiates a new [TransferGroupOnSystemOwnershipRequest] and sets the default values.
    TransferGroupOnSystemOwnershipRequest() : super() {
        type_ = 'request.TransferGroupOnSystemOwnershipRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TransferGroupOnSystemOwnershipRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferGroupOnSystemOwnershipRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['groupOnSystem'] = (node) => groupOnSystem = node.getObjectValue<GroupOnSystem>(GroupOnSystem.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupOnSystem>('groupOnSystem', groupOnSystem);
    }
}
