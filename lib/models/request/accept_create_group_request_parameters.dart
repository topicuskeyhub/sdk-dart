import 'package:kiota_abstractions/kiota_abstractions.dart';
import './accept_modification_request_parameters.dart';

class AcceptCreateGroupRequestParameters extends AcceptModificationRequestParameters implements Parsable {
    ///  The updatedName property
    String? updatedName;
    /// Instantiates a new [AcceptCreateGroupRequestParameters] and sets the default values.
    AcceptCreateGroupRequestParameters() : super() {
        typeEscaped = 'request.AcceptCreateGroupRequestParameters';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AcceptCreateGroupRequestParameters createFromDiscriminatorValue(ParseNode parseNode) {
        return AcceptCreateGroupRequestParameters();
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
