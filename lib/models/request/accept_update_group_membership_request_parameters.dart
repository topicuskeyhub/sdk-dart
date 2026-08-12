// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accept_modification_request_parameters.dart';

/// auto generated
class AcceptUpdateGroupMembershipRequestParameters extends AcceptModificationRequestParameters implements Parsable {
    ///  The endDate property
    DateOnly? endDate;
    /// Instantiates a new [AcceptUpdateGroupMembershipRequestParameters] and sets the default values.
    AcceptUpdateGroupMembershipRequestParameters() : super() {
        type_ = 'request.AcceptUpdateGroupMembershipRequestParameters';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AcceptUpdateGroupMembershipRequestParameters createFromDiscriminatorValue(ParseNode parseNode) {
        return AcceptUpdateGroupMembershipRequestParameters();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['endDate'] = (node) => endDate = node.getDateOnlyValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeDateOnlyValue('endDate', endDate);
    }
}
