// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './modification_request_report_change.dart';

/// auto generated
class ModificationRequestReportChangeDetails extends NonLinkable implements Parsable {
    ///  The change property
    ModificationRequestReportChange? change;
    ///  The objectName property
    String? objectName;
    ///  The subjectName property
    String? subjectName;
    /// Instantiates a new [ModificationRequestReportChangeDetails] and sets the default values.
    ModificationRequestReportChangeDetails() : super() {
        type_ = 'request.ModificationRequestReportChangeDetails';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ModificationRequestReportChangeDetails createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestReportChangeDetails();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['change'] = (node) => change = node.getEnumValue<ModificationRequestReportChange>((stringValue) => ModificationRequestReportChange.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['objectName'] = (node) => objectName = node.getStringValue();
        deserializerMap['subjectName'] = (node) => subjectName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<ModificationRequestReportChange>('change', change, (e) => e?.value);
        writer.writeStringValue('objectName', objectName);
        writer.writeStringValue('subjectName', subjectName);
    }
}
