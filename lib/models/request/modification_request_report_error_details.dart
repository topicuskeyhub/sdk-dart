import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './modification_request_report_error.dart';

class ModificationRequestReportErrorDetails extends NonLinkable implements Parsable {
    ///  The error property
    ModificationRequestReportError? error;
    ///  The groupNames property
    Iterable<String>? groupNames;
    /// Instantiates a new [ModificationRequestReportErrorDetails] and sets the default values.
     ModificationRequestReportErrorDetails() : super() {
        typeEscaped = 'request.ModificationRequestReportErrorDetails';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ModificationRequestReportErrorDetails createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestReportErrorDetails();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['error'] = (node) => error = node.getEnumValue<ModificationRequestReportError>((stringValue) => ModificationRequestReportError.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['groupNames'] = (node) => groupNames = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<ModificationRequestReportError>('error', error, (e) => e?.value);
        writer.writeCollectionOfPrimitiveValues<String?>('groupNames', groupNames);
    }
}
