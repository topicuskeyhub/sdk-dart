import 'package:kiota_abstractions/kiota_abstractions.dart';
import './a_d_sam_account_name_scheme.dart';
import './abstract_provisioned_l_d_a_p.dart';

class ProvisionedAD extends AbstractProvisionedLDAP implements Parsable {
    ///  The samAccountNameScheme property
    ADSamAccountNameScheme? samAccountNameScheme;
    /// Instantiates a new [ProvisionedAD] and sets the default values.
    ProvisionedAD() : super() {
        typeEscaped = 'provisioning.ProvisionedAD';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ProvisionedAD createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedAD();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['samAccountNameScheme'] = (node) => samAccountNameScheme = node.getEnumValue<ADSamAccountNameScheme>((stringValue) => ADSamAccountNameScheme.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<ADSamAccountNameScheme>('samAccountNameScheme', samAccountNameScheme, (e) => e?.value);
    }
}
