// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class GroupAccessInfo extends NonLinkable implements Parsable {
    ///  The businessAccounts property
    bool? businessAccounts;
    /// Instantiates a new [GroupAccessInfo] and sets the default values.
    GroupAccessInfo() : super() {
        type_ = 'group.GroupAccessInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupAccessInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAccessInfo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['businessAccounts'] = (node) => businessAccounts = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
