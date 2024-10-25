import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './vault_record.dart';

class Vault extends Linkable implements Parsable {
    ///  The accessAvailable property
    bool? accessAvailable;
    ///  The name property
    String? name;
    ///  The records property
    Iterable<VaultRecord>? records;
    /// Instantiates a new [Vault] and sets the default values.
     Vault() : super() {
        typeEscaped = 'vault.Vault';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static Vault createFromDiscriminatorValue(ParseNode parseNode) {
        return Vault();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['accessAvailable'] = (node) => accessAvailable = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['records'] = (node) => records = node.getCollectionOfObjectValues<VaultRecord>(VaultRecord.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('accessAvailable', value:accessAvailable);
        writer.writeStringValue('name', name);
        writer.writeCollectionOfObjectValues<VaultRecord>('records', records);
    }
}
