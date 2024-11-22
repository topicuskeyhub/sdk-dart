// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class ServiceAccountSupportedFeatures extends NonLinkable implements Parsable {
    ///  The sshPublicKey property
    bool? sshPublicKey;
    /// Instantiates a new [ServiceAccountSupportedFeatures] and sets the default values.
    ServiceAccountSupportedFeatures() : super() {
        type_ = 'serviceaccount.ServiceAccountSupportedFeatures';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ServiceAccountSupportedFeatures createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountSupportedFeatures();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['sshPublicKey'] = (node) => sshPublicKey = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('sshPublicKey', value:sshPublicKey);
    }
}
