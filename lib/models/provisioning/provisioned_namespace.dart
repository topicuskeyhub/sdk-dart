import 'package:kiota_abstractions/kiota_abstractions.dart';
import './provisioned_system.dart';
import './provisioned_system_primer.dart';

class ProvisionedNamespace extends ProvisionedSystem implements Parsable {
    ///  The baseSystem property
    ProvisionedSystemPrimer? baseSystem;
    ///  The groupDN property
    String? groupDN;
    ///  The serviceAccountDN property
    String? serviceAccountDN;
    /// Instantiates a new [ProvisionedNamespace] and sets the default values.
    ProvisionedNamespace() : super() {
        typeEscaped = 'provisioning.ProvisionedNamespace';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ProvisionedNamespace createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedNamespace();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['baseSystem'] = (node) => baseSystem = node.getObjectValue<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        deserializerMap['groupDN'] = (node) => groupDN = node.getStringValue();
        deserializerMap['serviceAccountDN'] = (node) => serviceAccountDN = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ProvisionedSystemPrimer>('baseSystem', baseSystem);
        writer.writeStringValue('groupDN', groupDN);
        writer.writeStringValue('serviceAccountDN', serviceAccountDN);
    }
}
