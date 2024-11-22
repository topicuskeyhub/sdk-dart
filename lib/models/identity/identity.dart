// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';

/// auto generated
class Identity extends Linkable implements Parsable {
    ///  The firstName property
    String? firstName;
    ///  The lastName property
    String? lastName;
    ///  The telephone property
    String? telephone;
    /// Instantiates a new [Identity] and sets the default values.
    Identity() : super() {
        type_ = 'identity.Identity';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Identity createFromDiscriminatorValue(ParseNode parseNode) {
        return Identity();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['firstName'] = (node) => firstName = node.getStringValue();
        deserializerMap['lastName'] = (node) => lastName = node.getStringValue();
        deserializerMap['telephone'] = (node) => telephone = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('firstName', firstName);
        writer.writeStringValue('lastName', lastName);
        writer.writeStringValue('telephone', telephone);
    }
}
