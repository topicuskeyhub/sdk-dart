// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './a_d_sam_account_name_scheme.dart';
import './abstract_provisioned_l_d_a_p.dart';

/// auto generated
class ProvisionedAD extends AbstractProvisionedLDAP implements Parsable {
    ///  The samAccountNameScheme property
    ADSamAccountNameScheme? samAccountNameScheme;
    /// Instantiates a new [ProvisionedAD] and sets the default values.
    ProvisionedAD() : super() {
        type_ = 'provisioning.ProvisionedAD';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedAD createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedAD();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['samAccountNameScheme'] = (node) => samAccountNameScheme = node.getEnumValue<ADSamAccountNameScheme>((stringValue) => ADSamAccountNameScheme.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<ADSamAccountNameScheme>('samAccountNameScheme', samAccountNameScheme, (e) => e?.value);
    }
}
