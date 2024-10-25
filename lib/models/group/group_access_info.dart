import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class GroupAccessInfo extends NonLinkable implements Parsable {
    ///  The businessAccounts property
    bool? businessAccounts;
    /// Instantiates a new [GroupAccessInfo] and sets the default values.
     GroupAccessInfo() : super() {
        typeEscaped = 'group.GroupAccessInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GroupAccessInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAccessInfo();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['businessAccounts'] = (node) => businessAccounts = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
