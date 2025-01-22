// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import '../linkable.dart';
import './access_profile_group_additional_objects.dart';
import './access_profile_primer.dart';

/// auto generated
class AccessProfileGroup extends Linkable implements Parsable {
    ///  The accessProfile property
    AccessProfilePrimer? accessProfile;
    ///  The additionalObjects property
    AccessProfileGroupAdditionalObjects? additionalObjects;
    ///  The group property
    GroupPrimer? group;
    /// Instantiates a new [AccessProfileGroup] and sets the default values.
    AccessProfileGroup() : super() {
        type_ = 'profile.AccessProfileGroup';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileGroup createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileGroup();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accessProfile'] = (node) => accessProfile = node.getObjectValue<AccessProfilePrimer>(AccessProfilePrimer.createFromDiscriminatorValue);
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccessProfileGroupAdditionalObjects>(AccessProfileGroupAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['group'] = (node) => group = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccessProfilePrimer>('accessProfile', accessProfile);
        writer.writeObjectValue<AccessProfileGroupAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<GroupPrimer>('group', group);
    }
}
