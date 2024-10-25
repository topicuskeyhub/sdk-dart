import 'package:kiota_abstractions/kiota_abstractions.dart';
import './modification_request.dart';

class ReviewAuditRequest extends ModificationRequest implements Parsable {
    /// Instantiates a new [ReviewAuditRequest] and sets the default values.
     ReviewAuditRequest() : super() {
        typeEscaped = 'request.ReviewAuditRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ReviewAuditRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return ReviewAuditRequest();
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
