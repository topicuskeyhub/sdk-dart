import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class ServiceAccountSupportedFeatures extends NonLinkable implements Parsable {
    ///  The sshPublicKey property
    bool? sshPublicKey;
    /// Instantiates a new [ServiceAccountSupportedFeatures] and sets the default values.
     ServiceAccountSupportedFeatures() : super() {
        typeEscaped = 'serviceaccount.ServiceAccountSupportedFeatures';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ServiceAccountSupportedFeatures createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountSupportedFeatures();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['sshPublicKey'] = (node) => sshPublicKey = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('sshPublicKey', value:sshPublicKey);
    }
}
