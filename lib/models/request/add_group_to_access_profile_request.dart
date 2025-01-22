// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './abstract_access_profile_modification_request.dart';

/// auto generated
class AddGroupToAccessProfileRequest extends AbstractAccessProfileModificationRequest implements Parsable {
    /// Instantiates a new [AddGroupToAccessProfileRequest] and sets the default values.
    AddGroupToAccessProfileRequest() : super() {
        type_ = 'request.AddGroupToAccessProfileRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AddGroupToAccessProfileRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return AddGroupToAccessProfileRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
