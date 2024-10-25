import 'package:kiota_abstractions/kiota_abstractions.dart';
import './non_linkable.dart';

class GeneratedSecret extends NonLinkable implements Parsable {
    ///  The generatedSecret property
    String? generatedSecretProp;
    ///  The oldSecret property
    String? oldSecret;
    ///  The regenerate property
    bool? regenerate;
    /// Instantiates a new [GeneratedSecret] and sets the default values.
     GeneratedSecret() : super() {
        typeEscaped = 'GeneratedSecret';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GeneratedSecret createFromDiscriminatorValue(ParseNode parseNode) {
        return GeneratedSecret();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['generatedSecret'] = (node) => generatedSecretProp = node.getStringValue();
        deserializerMap['oldSecret'] = (node) => oldSecret = node.getStringValue();
        deserializerMap['regenerate'] = (node) => regenerate = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('oldSecret', oldSecret);
        writer.writeBoolValue('regenerate', value:regenerate);
    }
}
