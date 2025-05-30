// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';

/// auto generated
class Identity extends Linkable implements Parsable {
    ///  The displayName property
    String? displayName;
    ///  The familyName property
    String? familyName;
    ///  The givenName property
    String? givenName;
    ///  The middleName property
    String? middleName;
    ///  The privateEmail property
    String? privateEmail;
    ///  The privateTelephone property
    String? privateTelephone;
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
        deserializerMap['displayName'] = (node) => displayName = node.getStringValue();
        deserializerMap['familyName'] = (node) => familyName = node.getStringValue();
        deserializerMap['givenName'] = (node) => givenName = node.getStringValue();
        deserializerMap['middleName'] = (node) => middleName = node.getStringValue();
        deserializerMap['privateEmail'] = (node) => privateEmail = node.getStringValue();
        deserializerMap['privateTelephone'] = (node) => privateTelephone = node.getStringValue();
        deserializerMap['telephone'] = (node) => telephone = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('displayName', displayName);
        writer.writeStringValue('familyName', familyName);
        writer.writeStringValue('givenName', givenName);
        writer.writeStringValue('middleName', middleName);
        writer.writeStringValue('privateEmail', privateEmail);
        writer.writeStringValue('privateTelephone', privateTelephone);
        writer.writeStringValue('telephone', telephone);
    }
}
