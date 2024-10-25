import 'package:kiota_abstractions/kiota_abstractions.dart';
import './group_on_system_linkable_wrapper.dart';

class OwnedGroupOnSystemsWrapper extends GroupOnSystemLinkableWrapper implements Parsable {
    ///  The unlinkedCount property
    int? unlinkedCount;
    /// Instantiates a new [OwnedGroupOnSystemsWrapper] and sets the default values.
     OwnedGroupOnSystemsWrapper() : super() ;
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static OwnedGroupOnSystemsWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return OwnedGroupOnSystemsWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['unlinkedCount'] = (node) => unlinkedCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
