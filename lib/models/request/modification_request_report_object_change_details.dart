// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './modification_request_report_change_details.dart';

/// auto generated
class ModificationRequestReportObjectChangeDetails extends NonLinkable implements Parsable {
    ///  The changeDetails property
    Iterable<ModificationRequestReportChangeDetails>? changeDetails;
    ///  The name property
    String? name;
    /// Instantiates a new [ModificationRequestReportObjectChangeDetails] and sets the default values.
    ModificationRequestReportObjectChangeDetails() : super() {
        type_ = 'request.ModificationRequestReportObjectChangeDetails';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ModificationRequestReportObjectChangeDetails createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestReportObjectChangeDetails();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['changeDetails'] = (node) => changeDetails = node.getCollectionOfObjectValues<ModificationRequestReportChangeDetails>(ModificationRequestReportChangeDetails.createFromDiscriminatorValue);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<ModificationRequestReportChangeDetails>('changeDetails', changeDetails);
        writer.writeStringValue('name', name);
    }
}
