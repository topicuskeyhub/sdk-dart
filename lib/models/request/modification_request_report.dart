import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './modification_request_report_conclusion.dart';
import './modification_request_report_error_details.dart';
import './modification_request_report_object_change_details.dart';

class ModificationRequestReport extends NonLinkable implements Parsable {
    ///  The changeDetails property
    Iterable<ModificationRequestReportObjectChangeDetails>? changeDetails;
    ///  The conclusion property
    ModificationRequestReportConclusion? conclusion;
    ///  The errorDetails property
    Iterable<ModificationRequestReportErrorDetails>? errorDetails;
    /// Instantiates a new [ModificationRequestReport] and sets the default values.
    ModificationRequestReport() : super() {
        typeEscaped = 'request.ModificationRequestReport';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ModificationRequestReport createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestReport();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['changeDetails'] = (node) => changeDetails = node.getCollectionOfObjectValues<ModificationRequestReportObjectChangeDetails>(ModificationRequestReportObjectChangeDetails.createFromDiscriminatorValue);
        deserializerMap['conclusion'] = (node) => conclusion = node.getEnumValue<ModificationRequestReportConclusion>((stringValue) => ModificationRequestReportConclusion.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['errorDetails'] = (node) => errorDetails = node.getCollectionOfObjectValues<ModificationRequestReportErrorDetails>(ModificationRequestReportErrorDetails.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<ModificationRequestReportObjectChangeDetails>('changeDetails', changeDetails);
        writer.writeEnumValue<ModificationRequestReportConclusion>('conclusion', conclusion, (e) => e?.value);
        writer.writeCollectionOfObjectValues<ModificationRequestReportErrorDetails>('errorDetails', errorDetails);
    }
}
