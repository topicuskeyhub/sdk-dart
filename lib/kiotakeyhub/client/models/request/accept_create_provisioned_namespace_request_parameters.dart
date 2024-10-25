import 'package:kiota_abstractions/kiota_abstractions.dart';
import './accept_modification_request_parameters.dart';

class AcceptCreateProvisionedNamespaceRequestParameters extends AcceptModificationRequestParameters implements Parsable {
    ///  The groupDN property
    String? groupDN;
    ///  The serviceAccountDN property
    String? serviceAccountDN;
    /// Instantiates a new [AcceptCreateProvisionedNamespaceRequestParameters] and sets the default values.
     AcceptCreateProvisionedNamespaceRequestParameters() : super() {
        typeEscaped = 'request.AcceptCreateProvisionedNamespaceRequestParameters';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AcceptCreateProvisionedNamespaceRequestParameters createFromDiscriminatorValue(ParseNode parseNode) {
        return AcceptCreateProvisionedNamespaceRequestParameters();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['groupDN'] = (node) => groupDN = node.getStringValue();
        deserializerMap['serviceAccountDN'] = (node) => serviceAccountDN = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('groupDN', groupDN);
        writer.writeStringValue('serviceAccountDN', serviceAccountDN);
    }
}
