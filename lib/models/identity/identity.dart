import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';

class Identity extends Linkable implements Parsable {
    ///  The firstName property
    String? firstName;
    ///  The lastName property
    String? lastName;
    ///  The telephone property
    String? telephone;
    /// Instantiates a new [Identity] and sets the default values.
    Identity() : super() {
        typeEscaped = 'identity.Identity';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static Identity createFromDiscriminatorValue(ParseNode parseNode) {
        return Identity();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['firstName'] = (node) => firstName = node.getStringValue();
        deserializerMap['lastName'] = (node) => lastName = node.getStringValue();
        deserializerMap['telephone'] = (node) => telephone = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('firstName', firstName);
        writer.writeStringValue('lastName', lastName);
        writer.writeStringValue('telephone', telephone);
    }
}
