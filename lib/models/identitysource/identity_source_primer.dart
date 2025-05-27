// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './a_f_a_s_identity_source.dart';
import './identity_source.dart';
import './identity_source_type.dart';

/// auto generated
class IdentitySourcePrimer extends Linkable implements Parsable {
    ///  The active property
    bool? active;
    ///  The type property
    IdentitySourceType? identitySourcePrimerType;
    ///  The name property
    String? name;
    ///  The uuid property
    String? uuid;
    /// Instantiates a new [IdentitySourcePrimer] and sets the default values.
    IdentitySourcePrimer() : super() {
        type_ = 'identitysource.IdentitySourcePrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static IdentitySourcePrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'identitysource.AFASIdentitySource' => AFASIdentitySource(),
            'identitysource.IdentitySource' => IdentitySource(),
            _ => IdentitySourcePrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['active'] = (node) => active = node.getBoolValue();
        deserializerMap['IdentitySourcePrimerType'] = (node) => identitySourcePrimerType = node.getEnumValue<IdentitySourceType>((stringValue) => IdentitySourceType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('active', value:active);
        writer.writeEnumValue<IdentitySourceType>('IdentitySourcePrimerType', identitySourcePrimerType, (e) => e?.value);
        writer.writeStringValue('name', name);
    }
}
