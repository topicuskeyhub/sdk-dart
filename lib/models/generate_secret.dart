// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './non_linkable.dart';

/// auto generated
class GenerateSecret extends NonLinkable implements Parsable {
    ///  The oldSecret property
    String? oldSecret;
    ///  The regenerate property
    bool? regenerate;
    /// Instantiates a new [GenerateSecret] and sets the default values.
    GenerateSecret() : super() {
        type_ = 'GenerateSecret';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GenerateSecret createFromDiscriminatorValue(ParseNode parseNode) {
        return GenerateSecret();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
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
