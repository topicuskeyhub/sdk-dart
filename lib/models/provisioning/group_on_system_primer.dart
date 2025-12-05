// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import '../serviceaccount/service_account_group.dart';
import './group_on_system.dart';
import './group_on_system_type.dart';

/// auto generated
class GroupOnSystemPrimer extends Linkable implements Parsable {
    ///  The displayName property
    String? displayName;
    ///  The type property
    GroupOnSystemType? groupOnSystemPrimerType;
    ///  The nameInSystem property
    String? nameInSystem;
    ///  The shortNameInSystem property
    String? shortNameInSystem;
    ///  The uuid property
    String? uuid;
    /// Instantiates a new [GroupOnSystemPrimer] and sets the default values.
    GroupOnSystemPrimer() : super() {
        type_ = 'provisioning.GroupOnSystemPrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
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
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['displayName'] = (node) => displayName = node.getStringValue();
        deserializerMap['type'] = (node) => groupOnSystemPrimerType = node.getEnumValue<GroupOnSystemType>((stringValue) => GroupOnSystemType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['nameInSystem'] = (node) => nameInSystem = node.getStringValue();
        deserializerMap['shortNameInSystem'] = (node) => shortNameInSystem = node.getStringValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<GroupOnSystemType>('type', groupOnSystemPrimerType, (e) => e?.value);
        writer.writeStringValue('nameInSystem', nameInSystem);
    }
}
