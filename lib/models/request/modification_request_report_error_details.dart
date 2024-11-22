// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './modification_request_report_error.dart';

/// auto generated
class ModificationRequestReportErrorDetails extends NonLinkable implements Parsable {
    ///  The error property
    ModificationRequestReportError? error;
    ///  The names property
    Iterable<String>? names;
    /// Instantiates a new [ModificationRequestReportErrorDetails] and sets the default values.
    ModificationRequestReportErrorDetails() : super() {
        type_ = 'request.ModificationRequestReportErrorDetails';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ModificationRequestReportErrorDetails createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestReportErrorDetails();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['error'] = (node) => error = node.getEnumValue<ModificationRequestReportError>((stringValue) => ModificationRequestReportError.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['names'] = (node) => names = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<ModificationRequestReportError>('error', error, (e) => e?.value);
        writer.writeCollectionOfPrimitiveValues<String?>('names', names);
    }
}
