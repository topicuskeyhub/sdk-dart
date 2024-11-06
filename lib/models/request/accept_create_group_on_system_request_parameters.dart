import 'package:kiota_abstractions/kiota_abstractions.dart';
import './accept_modification_request_parameters.dart';

class AcceptCreateGroupOnSystemRequestParameters extends AcceptModificationRequestParameters implements Parsable {
    ///  The updatedName property
    String? updatedName;
    /// Instantiates a new [AcceptCreateGroupOnSystemRequestParameters] and sets the default values.
    AcceptCreateGroupOnSystemRequestParameters() : super() {
        typeEscaped = 'request.AcceptCreateGroupOnSystemRequestParameters';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AcceptCreateGroupOnSystemRequestParameters createFromDiscriminatorValue(ParseNode parseNode) {
        return AcceptCreateGroupOnSystemRequestParameters();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['updatedName'] = (node) => updatedName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('updatedName', updatedName);
    }
}
