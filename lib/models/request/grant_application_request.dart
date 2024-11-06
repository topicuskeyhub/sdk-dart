import 'package:kiota_abstractions/kiota_abstractions.dart';
import './abstract_application_modification_request.dart';

class GrantApplicationRequest extends AbstractApplicationModificationRequest implements Parsable {
    /// Instantiates a new [GrantApplicationRequest] and sets the default values.
    GrantApplicationRequest() : super() {
        typeEscaped = 'request.GrantApplicationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GrantApplicationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return GrantApplicationRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
