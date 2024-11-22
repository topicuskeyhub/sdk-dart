// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './group_on_system_linkable_wrapper.dart';

/// auto generated
class OwnedGroupOnSystemsWrapper extends GroupOnSystemLinkableWrapper implements Parsable {
    ///  The unlinkedCount property
    int? unlinkedCount;
    /// Instantiates a new [OwnedGroupOnSystemsWrapper] and sets the default values.
    OwnedGroupOnSystemsWrapper() : super() ;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OwnedGroupOnSystemsWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return OwnedGroupOnSystemsWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['unlinkedCount'] = (node) => unlinkedCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
