import 'package:kiota_abstractions/kiota_abstractions.dart';
import './group_linkable_wrapper.dart';

class AuthorizedGroupsWrapper extends GroupLinkableWrapper implements Parsable {
    ///  The groupCount property
    int? groupCount;
    /// Instantiates a new [AuthorizedGroupsWrapper] and sets the default values.
     AuthorizedGroupsWrapper() : super() ;
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AuthorizedGroupsWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AuthorizedGroupsWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['groupCount'] = (node) => groupCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
