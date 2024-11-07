import 'package:kiota_abstractions/kiota_abstractions.dart';
import './accept_modification_request_parameters.dart';

class AcceptJoinGroupRequestParameters extends AcceptModificationRequestParameters implements Parsable {
    ///  The endDate property
    DateOnly? endDate;
    ///  The makeManager property
    bool? makeManager;
    /// Instantiates a new [AcceptJoinGroupRequestParameters] and sets the default values.
    AcceptJoinGroupRequestParameters() : super() {
        typeEscaped = 'request.AcceptJoinGroupRequestParameters';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AcceptJoinGroupRequestParameters createFromDiscriminatorValue(ParseNode parseNode) {
        return AcceptJoinGroupRequestParameters();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['endDate'] = (node) => endDate = node.getDateOnlyValue();
        deserializerMap['makeManager'] = (node) => makeManager = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeDateOnlyValue('endDate', endDate);
        writer.writeBoolValue('makeManager', value:makeManager);
    }
}
