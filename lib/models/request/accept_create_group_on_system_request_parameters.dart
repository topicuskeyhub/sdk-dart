// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accept_modification_request_parameters.dart';

/// auto generated
class AcceptCreateGroupOnSystemRequestParameters extends AcceptModificationRequestParameters implements Parsable {
    ///  The updatedName property
    String? updatedName;
    /// Instantiates a new [AcceptCreateGroupOnSystemRequestParameters] and sets the default values.
    AcceptCreateGroupOnSystemRequestParameters() : super() {
        type_ = 'request.AcceptCreateGroupOnSystemRequestParameters';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AcceptCreateGroupOnSystemRequestParameters createFromDiscriminatorValue(ParseNode parseNode) {
        return AcceptCreateGroupOnSystemRequestParameters();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['updatedName'] = (node) => updatedName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('updatedName', updatedName);
    }
}
