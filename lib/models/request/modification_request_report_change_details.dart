import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './modification_request_report_change.dart';

class ModificationRequestReportChangeDetails extends NonLinkable implements Parsable {
    ///  The change property
    ModificationRequestReportChange? change;
    ///  The objectName property
    String? objectName;
    ///  The subjectName property
    String? subjectName;
    /// Instantiates a new [ModificationRequestReportChangeDetails] and sets the default values.
    ModificationRequestReportChangeDetails() : super() {
        typeEscaped = 'request.ModificationRequestReportChangeDetails';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ModificationRequestReportChangeDetails createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestReportChangeDetails();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['change'] = (node) => change = node.getEnumValue<ModificationRequestReportChange>((stringValue) => ModificationRequestReportChange.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['objectName'] = (node) => objectName = node.getStringValue();
        deserializerMap['subjectName'] = (node) => subjectName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<ModificationRequestReportChange>('change', change, (e) => e?.value);
        writer.writeStringValue('objectName', objectName);
        writer.writeStringValue('subjectName', subjectName);
    }
}
