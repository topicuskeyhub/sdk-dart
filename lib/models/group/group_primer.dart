import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import '../organization/organizational_unit_primer.dart';
import './account_group.dart';
import './group.dart';

class GroupPrimer extends Linkable implements Parsable {
    ///  The admin property
    bool? admin;
    ///  The name property
    String? name;
    ///  The organizationalUnit property
    OrganizationalUnitPrimer? organizationalUnit;
    ///  The uuid property
    String? uuid;
    /// Instantiates a new [GroupPrimer] and sets the default values.
    GroupPrimer() : super() {
        typeEscaped = 'group.GroupPrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupPrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'group.AccountGroup' => AccountGroup(),
            'group.Group' => Group(),
            _ => GroupPrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['admin'] = (node) => admin = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['organizationalUnit'] = (node) => organizationalUnit = node.getObjectValue<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<OrganizationalUnitPrimer>('organizationalUnit', organizationalUnit);
    }
}
