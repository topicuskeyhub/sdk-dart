// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './non_linkable.dart';

/// auto generated
class GeneratedSecret extends NonLinkable implements Parsable {
    ///  The generatedSecret property
    String? generatedSecretProp;
    ///  The oldSecret property
    String? oldSecret;
    ///  The regenerate property
    bool? regenerate;
    /// Instantiates a new [GeneratedSecret] and sets the default values.
    GeneratedSecret() : super() {
        type_ = 'GeneratedSecret';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GeneratedSecret createFromDiscriminatorValue(ParseNode parseNode) {
        return GeneratedSecret();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['generatedSecret'] = (node) => generatedSecretProp = node.getStringValue();
        deserializerMap['oldSecret'] = (node) => oldSecret = node.getStringValue();
        deserializerMap['regenerate'] = (node) => regenerate = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('oldSecret', oldSecret);
        writer.writeBoolValue('regenerate', value:regenerate);
    }
}
