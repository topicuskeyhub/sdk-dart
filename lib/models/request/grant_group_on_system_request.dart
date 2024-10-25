import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../provisioning/group_on_system.dart';
import './abstract_access_profile_modification_request.dart';

class GrantGroupOnSystemRequest extends AbstractAccessProfileModificationRequest implements Parsable {
    ///  The activationRequired property
    bool? activationRequired;
    ///  The groupOnSystem property
    GroupOnSystem? groupOnSystem;
    /// Instantiates a new [GrantGroupOnSystemRequest] and sets the default values.
     GrantGroupOnSystemRequest() : super() {
        typeEscaped = 'request.GrantGroupOnSystemRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GrantGroupOnSystemRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return GrantGroupOnSystemRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['activationRequired'] = (node) => activationRequired = node.getBoolValue();
        deserializerMap['groupOnSystem'] = (node) => groupOnSystem = node.getObjectValue<GroupOnSystem>(GroupOnSystem.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('activationRequired', value:activationRequired);
        writer.writeObjectValue<GroupOnSystem>('groupOnSystem', groupOnSystem);
    }
}
