// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './modification_request_report_conclusion.dart';
import './modification_request_report_object_change_details.dart';

/// auto generated
class ModificationRequestReport extends NonLinkable implements Parsable {
    ///  The changeDetails property
    Iterable<ModificationRequestReportObjectChangeDetails>? changeDetails;
    ///  The conclusion property
    ModificationRequestReportConclusion? conclusion;
    /// Instantiates a new [ModificationRequestReport] and sets the default values.
    ModificationRequestReport() : super() {
        type_ = 'request.ModificationRequestReport';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ModificationRequestReport createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestReport();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['changeDetails'] = (node) => changeDetails = node.getCollectionOfObjectValues<ModificationRequestReportObjectChangeDetails>(ModificationRequestReportObjectChangeDetails.createFromDiscriminatorValue);
        deserializerMap['conclusion'] = (node) => conclusion = node.getEnumValue<ModificationRequestReportConclusion>((stringValue) => ModificationRequestReportConclusion.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<ModificationRequestReportObjectChangeDetails>('changeDetails', changeDetails);
        writer.writeEnumValue<ModificationRequestReportConclusion>('conclusion', conclusion, (e) => e?.value);
    }
}
