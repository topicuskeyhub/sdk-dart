// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './abstract_provisioned_l_d_a_p.dart';
import './l_d_a_p_password_hashing_scheme.dart';
import './provision_number_sequence.dart';

/// auto generated
class ProvisionedLDAP extends AbstractProvisionedLDAP implements Parsable {
    ///  The gid property
    int? gid;
    ///  The hashingScheme property
    LDAPPasswordHashingScheme? hashingScheme;
    ///  The numbering property
    ProvisionNumberSequence? numbering;
    /// Instantiates a new [ProvisionedLDAP] and sets the default values.
    ProvisionedLDAP() : super() {
        type_ = 'provisioning.ProvisionedLDAP';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedLDAP createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedLDAP();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['gid'] = (node) => gid = node.getIntValue();
        deserializerMap['hashingScheme'] = (node) => hashingScheme = node.getEnumValue<LDAPPasswordHashingScheme>((stringValue) => LDAPPasswordHashingScheme.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['numbering'] = (node) => numbering = node.getObjectValue<ProvisionNumberSequence>(ProvisionNumberSequence.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('gid', gid);
        writer.writeEnumValue<LDAPPasswordHashingScheme>('hashingScheme', hashingScheme, (e) => e?.value);
        writer.writeObjectValue<ProvisionNumberSequence>('numbering', numbering);
    }
}
