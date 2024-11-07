import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../provisioning/group_on_system.dart';
import './abstract_access_profile_modification_request.dart';

class GrantGroupOnSystemRequestRequest extends AbstractAccessProfileModificationRequest implements Parsable {
    ///  The activationRequired property
    bool? activationRequired;
    ///  The groupOnSystem property
    GroupOnSystem? groupOnSystem;
    /// Instantiates a new [GrantGroupOnSystemRequestRequest] and sets the default values.
    GrantGroupOnSystemRequestRequest() : super() {
        typeEscaped = 'request.GrantGroupOnSystemRequestRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GrantGroupOnSystemRequestRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return GrantGroupOnSystemRequestRequest();
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
