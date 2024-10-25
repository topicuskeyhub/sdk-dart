import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import '../serviceaccount/service_account_group.dart';
import './group_on_system.dart';
import './group_on_system_type.dart';

class GroupOnSystemPrimer extends Linkable implements Parsable {
    ///  The displayName property
    String? displayName;
    ///  The type property
    GroupOnSystemType? groupOnSystemPrimerType;
    ///  The nameInSystem property
    String? nameInSystem;
    ///  The shortNameInSystem property
    String? shortNameInSystem;
    /// Instantiates a new [GroupOnSystemPrimer] and sets the default values.
     GroupOnSystemPrimer() : super() {
        typeEscaped = 'provisioning.GroupOnSystemPrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GroupOnSystemPrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'provisioning.GroupOnSystem' => GroupOnSystem(),
            'serviceaccount.ServiceAccountGroup' => ServiceAccountGroup(),
            _ => GroupOnSystemPrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['displayName'] = (node) => displayName = node.getStringValue();
        deserializerMap['type'] = (node) => groupOnSystemPrimerType = node.getEnumValue<GroupOnSystemType>((stringValue) => GroupOnSystemType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['nameInSystem'] = (node) => nameInSystem = node.getStringValue();
        deserializerMap['shortNameInSystem'] = (node) => shortNameInSystem = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<GroupOnSystemType>('type', groupOnSystemPrimerType, (e) => e?.value);
        writer.writeStringValue('nameInSystem', nameInSystem);
    }
}
