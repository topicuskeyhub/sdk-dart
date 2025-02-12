// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_group_linkable_wrapper.dart';

/// auto generated
class AccountGroupsWrapper extends AccountGroupLinkableWrapper implements Parsable {
    ///  The totalAccountGroupCount property
    int? totalAccountGroupCount;
    /// Instantiates a new [AccountGroupsWrapper] and sets the default values.
    AccountGroupsWrapper() : super() ;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountGroupsWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountGroupsWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['totalAccountGroupCount'] = (node) => totalAccountGroupCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
