import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../provisioning/group_on_system.dart';
import './modification_request.dart';

class TransferGroupOnSystemOwnershipRequest extends ModificationRequest implements Parsable {
    ///  The groupOnSystem property
    GroupOnSystem? groupOnSystem;
    /// Instantiates a new [TransferGroupOnSystemOwnershipRequest] and sets the default values.
     TransferGroupOnSystemOwnershipRequest() : super() {
        typeEscaped = 'request.TransferGroupOnSystemOwnershipRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static TransferGroupOnSystemOwnershipRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferGroupOnSystemOwnershipRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['groupOnSystem'] = (node) => groupOnSystem = node.getObjectValue<GroupOnSystem>(GroupOnSystem.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupOnSystem>('groupOnSystem', groupOnSystem);
    }
}
