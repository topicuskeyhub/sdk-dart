// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './abstract_access_profile_modification_request.dart';

/// auto generated
class RemoveAccessProfileRequest extends AbstractAccessProfileModificationRequest implements Parsable {
    ///  The accessProfileName property
    String? accessProfileName;
    /// Instantiates a new [RemoveAccessProfileRequest] and sets the default values.
    RemoveAccessProfileRequest() : super() {
        type_ = 'request.RemoveAccessProfileRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static RemoveAccessProfileRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return RemoveAccessProfileRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accessProfileName'] = (node) => accessProfileName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('accessProfileName', accessProfileName);
    }
}
