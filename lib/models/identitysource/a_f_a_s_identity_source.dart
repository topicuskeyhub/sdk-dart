// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './identity_source.dart';

/// auto generated
class AFASIdentitySource extends IdentitySource implements Parsable {
    ///  The token property
    String? token;
    ///  The url property
    String? url;
    /// Instantiates a new [AFASIdentitySource] and sets the default values.
    AFASIdentitySource() : super() {
        type_ = 'identitysource.AFASIdentitySource';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AFASIdentitySource createFromDiscriminatorValue(ParseNode parseNode) {
        return AFASIdentitySource();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['token'] = (node) => token = node.getStringValue();
        deserializerMap['url'] = (node) => url = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('token', token);
        writer.writeStringValue('url', url);
    }
}
