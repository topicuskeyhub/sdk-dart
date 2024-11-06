import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './modification_request_report_change_details.dart';

class ModificationRequestReportObjectChangeDetails extends NonLinkable implements Parsable {
    ///  The changeDetails property
    Iterable<ModificationRequestReportChangeDetails>? changeDetails;
    ///  The name property
    String? name;
    /// Instantiates a new [ModificationRequestReportObjectChangeDetails] and sets the default values.
    ModificationRequestReportObjectChangeDetails() : super() {
        typeEscaped = 'request.ModificationRequestReportObjectChangeDetails';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ModificationRequestReportObjectChangeDetails createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestReportObjectChangeDetails();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['changeDetails'] = (node) => changeDetails = node.getCollectionOfObjectValues<ModificationRequestReportChangeDetails>(ModificationRequestReportChangeDetails.createFromDiscriminatorValue);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<ModificationRequestReportChangeDetails>('changeDetails', changeDetails);
        writer.writeStringValue('name', name);
    }
}
