import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import '../month.dart';

class GroupAuditConfig extends Linkable implements Parsable {
    ///  The months property
    Iterable<Month>? months;
    /// Instantiates a new [GroupAuditConfig] and sets the default values.
    GroupAuditConfig() : super() {
        typeEscaped = 'group.GroupAuditConfig';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupAuditConfig createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAuditConfig();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['months'] = (node) => months = node.getCollectionOfEnumValues<Month>((stringValue) => Month.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfEnumValues<Month>('months', months, (e) => e?.value);
    }
}
