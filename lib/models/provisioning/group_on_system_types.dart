// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './group_on_system_type.dart';

/// auto generated
class GroupOnSystemTypes extends NonLinkable implements Parsable {
    ///  The types property
    Iterable<GroupOnSystemType>? types;
    /// Instantiates a new [GroupOnSystemTypes] and sets the default values.
    GroupOnSystemTypes() : super() {
        type_ = 'provisioning.GroupOnSystemTypes';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupOnSystemTypes createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupOnSystemTypes();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['types'] = (node) => types = node.getCollectionOfEnumValues<GroupOnSystemType>((stringValue) => GroupOnSystemType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfEnumValues<GroupOnSystemType>('types', types, (e) => e?.value);
    }
}
