import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import '../profile/access_profile_primer.dart';
import '../provisioning/group_on_system_type.dart';
import './abstract_provisioned_system_modification_request.dart';

class CreateGroupOnSystemRequest extends AbstractProvisionedSystemModificationRequest implements Parsable {
    ///  The accessProfile property
    AccessProfilePrimer? accessProfile;
    ///  The activationRequired property
    bool? activationRequired;
    ///  The groupOnSystemType property
    GroupOnSystemType? groupOnSystemType;
    ///  The nameInSystem property
    String? nameInSystem;
    ///  The owner property
    GroupPrimer? owner;
    /// Instantiates a new [CreateGroupOnSystemRequest] and sets the default values.
     CreateGroupOnSystemRequest() : super() {
        typeEscaped = 'request.CreateGroupOnSystemRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static CreateGroupOnSystemRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateGroupOnSystemRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['accessProfile'] = (node) => accessProfile = node.getObjectValue<AccessProfilePrimer>(AccessProfilePrimer.createFromDiscriminatorValue);
        deserializerMap['activationRequired'] = (node) => activationRequired = node.getBoolValue();
        deserializerMap['groupOnSystemType'] = (node) => groupOnSystemType = node.getEnumValue<GroupOnSystemType>((stringValue) => GroupOnSystemType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['nameInSystem'] = (node) => nameInSystem = node.getStringValue();
        deserializerMap['owner'] = (node) => owner = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccessProfilePrimer>('accessProfile', accessProfile);
        writer.writeBoolValue('activationRequired', value:activationRequired);
        writer.writeEnumValue<GroupOnSystemType>('groupOnSystemType', groupOnSystemType, (e) => e?.value);
        writer.writeStringValue('nameInSystem', nameInSystem);
        writer.writeObjectValue<GroupPrimer>('owner', owner);
    }
}
