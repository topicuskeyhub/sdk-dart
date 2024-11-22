// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './provisioned_system.dart';
import './provisioned_system_primer.dart';

/// auto generated
class ProvisionedNamespace extends ProvisionedSystem implements Parsable {
    ///  The baseSystem property
    ProvisionedSystemPrimer? baseSystem;
    ///  The groupDN property
    String? groupDN;
    ///  The serviceAccountDN property
    String? serviceAccountDN;
    /// Instantiates a new [ProvisionedNamespace] and sets the default values.
    ProvisionedNamespace() : super() {
        type_ = 'provisioning.ProvisionedNamespace';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedNamespace createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedNamespace();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['baseSystem'] = (node) => baseSystem = node.getObjectValue<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        deserializerMap['groupDN'] = (node) => groupDN = node.getStringValue();
        deserializerMap['serviceAccountDN'] = (node) => serviceAccountDN = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ProvisionedSystemPrimer>('baseSystem', baseSystem);
        writer.writeStringValue('groupDN', groupDN);
        writer.writeStringValue('serviceAccountDN', serviceAccountDN);
    }
}
