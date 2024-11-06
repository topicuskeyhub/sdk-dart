import 'package:kiota_abstractions/kiota_abstractions.dart';
import './abstract_provisioned_l_d_a_p.dart';
import './l_d_a_p_password_hashing_scheme.dart';
import './provision_number_sequence.dart';

class ProvisionedLDAP extends AbstractProvisionedLDAP implements Parsable {
    ///  The gid property
    int? gid;
    ///  The hashingScheme property
    LDAPPasswordHashingScheme? hashingScheme;
    ///  The numbering property
    ProvisionNumberSequence? numbering;
    /// Instantiates a new [ProvisionedLDAP] and sets the default values.
    ProvisionedLDAP() : super() {
        typeEscaped = 'provisioning.ProvisionedLDAP';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ProvisionedLDAP createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedLDAP();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['gid'] = (node) => gid = node.getIntValue();
        deserializerMap['hashingScheme'] = (node) => hashingScheme = node.getEnumValue<LDAPPasswordHashingScheme>((stringValue) => LDAPPasswordHashingScheme.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['numbering'] = (node) => numbering = node.getObjectValue<ProvisionNumberSequence>(ProvisionNumberSequence.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('gid', gid);
        writer.writeEnumValue<LDAPPasswordHashingScheme>('hashingScheme', hashingScheme, (e) => e?.value);
        writer.writeObjectValue<ProvisionNumberSequence>('numbering', numbering);
    }
}
