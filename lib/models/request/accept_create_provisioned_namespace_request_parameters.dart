// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accept_modification_request_parameters.dart';

/// auto generated
class AcceptCreateProvisionedNamespaceRequestParameters extends AcceptModificationRequestParameters implements Parsable {
    ///  The groupDN property
    String? groupDN;
    ///  The serviceAccountDN property
    String? serviceAccountDN;
    ///  The updatedName property
    String? updatedName;
    /// Instantiates a new [AcceptCreateProvisionedNamespaceRequestParameters] and sets the default values.
    AcceptCreateProvisionedNamespaceRequestParameters() : super() {
        type_ = 'request.AcceptCreateProvisionedNamespaceRequestParameters';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AcceptCreateProvisionedNamespaceRequestParameters createFromDiscriminatorValue(ParseNode parseNode) {
        return AcceptCreateProvisionedNamespaceRequestParameters();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['groupDN'] = (node) => groupDN = node.getStringValue();
        deserializerMap['serviceAccountDN'] = (node) => serviceAccountDN = node.getStringValue();
        deserializerMap['updatedName'] = (node) => updatedName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('groupDN', groupDN);
        writer.writeStringValue('serviceAccountDN', serviceAccountDN);
        writer.writeStringValue('updatedName', updatedName);
    }
}
