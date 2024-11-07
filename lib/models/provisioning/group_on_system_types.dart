import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './group_on_system_type.dart';

class GroupOnSystemTypes extends NonLinkable implements Parsable {
    ///  The types property
    Iterable<GroupOnSystemType>? types;
    /// Instantiates a new [GroupOnSystemTypes] and sets the default values.
    GroupOnSystemTypes() : super() {
        typeEscaped = 'provisioning.GroupOnSystemTypes';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupOnSystemTypes createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupOnSystemTypes();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['types'] = (node) => types = node.getCollectionOfEnumValues<GroupOnSystemType>((stringValue) => GroupOnSystemType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfEnumValues<GroupOnSystemType>('types', types, (e) => e?.value);
    }
}
