import 'package:kiota_abstractions/kiota_abstractions.dart';
import './modification_request.dart';

class EnableTechnicalAdministrationRequest extends ModificationRequest implements Parsable {
    /// Instantiates a new [EnableTechnicalAdministrationRequest] and sets the default values.
     EnableTechnicalAdministrationRequest() : super() {
        typeEscaped = 'request.EnableTechnicalAdministrationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static EnableTechnicalAdministrationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return EnableTechnicalAdministrationRequest();
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
