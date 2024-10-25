import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './vault_record.dart';
import './vault_record_color.dart';

class VaultRecordPrimer extends Linkable implements Parsable {
    ///  The color property
    VaultRecordColor? color;
    ///  The name property
    String? name;
    ///  The shareEndTime property
    DateTime? shareEndTime;
    ///  The uuid property
    String? uuid;
    /// Instantiates a new [VaultRecordPrimer] and sets the default values.
     VaultRecordPrimer() : super() {
        typeEscaped = 'vault.VaultRecordPrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static VaultRecordPrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'vault.VaultRecord' => VaultRecord(),
            _ => VaultRecordPrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['color'] = (node) => color = node.getEnumValue<VaultRecordColor>((stringValue) => VaultRecordColor.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['shareEndTime'] = (node) => shareEndTime = node.getDateTimeValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<VaultRecordColor>('color', color, (e) => e?.value);
        writer.writeStringValue('name', name);
    }
}
