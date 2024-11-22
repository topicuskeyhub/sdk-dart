// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './group_linkable_wrapper.dart';

/// auto generated
class AuthorizedGroupsWrapper extends GroupLinkableWrapper implements Parsable {
    ///  The groupCount property
    int? groupCount;
    /// Instantiates a new [AuthorizedGroupsWrapper] and sets the default values.
    AuthorizedGroupsWrapper() : super() ;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AuthorizedGroupsWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AuthorizedGroupsWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['groupCount'] = (node) => groupCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
