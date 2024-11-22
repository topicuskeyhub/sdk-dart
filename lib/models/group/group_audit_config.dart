// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import '../month.dart';

/// auto generated
class GroupAuditConfig extends Linkable implements Parsable {
    ///  The months property
    Iterable<Month>? months;
    /// Instantiates a new [GroupAuditConfig] and sets the default values.
    GroupAuditConfig() : super() {
        type_ = 'group.GroupAuditConfig';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupAuditConfig createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAuditConfig();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['months'] = (node) => months = node.getCollectionOfEnumValues<Month>((stringValue) => Month.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfEnumValues<Month>('months', months, (e) => e?.value);
    }
}
