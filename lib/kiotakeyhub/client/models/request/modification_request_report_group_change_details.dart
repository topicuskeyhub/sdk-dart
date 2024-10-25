import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './modification_request_report_change_details.dart';

class ModificationRequestReportGroupChangeDetails extends NonLinkable implements Parsable {
    ///  The changeDetails property
    Iterable<ModificationRequestReportChangeDetails>? changeDetails;
    ///  The groupName property
    String? groupName;
    /// Instantiates a new [ModificationRequestReportGroupChangeDetails] and sets the default values.
     ModificationRequestReportGroupChangeDetails() : super() {
        typeEscaped = 'request.ModificationRequestReportGroupChangeDetails';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ModificationRequestReportGroupChangeDetails createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestReportGroupChangeDetails();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['changeDetails'] = (node) => changeDetails = node.getCollectionOfObjectValues<ModificationRequestReportChangeDetails>(ModificationRequestReportChangeDetails.createFromDiscriminatorValue);
        deserializerMap['groupName'] = (node) => groupName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<ModificationRequestReportChangeDetails>('changeDetails', changeDetails);
        writer.writeStringValue('groupName', groupName);
    }
}
