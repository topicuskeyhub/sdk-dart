import 'package:kiota_abstractions/kiota_abstractions.dart';
import './accept_grant_access_request_parameters_access_duration.dart';
import './accept_modification_request_parameters.dart';

class AcceptGrantAccessRequestParameters extends AcceptModificationRequestParameters implements Parsable {
    ///  The accessDuration property
    AcceptGrantAccessRequestParametersAccessDuration? accessDuration;
    /// Instantiates a new [AcceptGrantAccessRequestParameters] and sets the default values.
     AcceptGrantAccessRequestParameters() : super() {
        typeEscaped = 'request.AcceptGrantAccessRequestParameters';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AcceptGrantAccessRequestParameters createFromDiscriminatorValue(ParseNode parseNode) {
        return AcceptGrantAccessRequestParameters();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['accessDuration'] = (node) => accessDuration = node.getObjectValue<AcceptGrantAccessRequestParametersAccessDuration>(AcceptGrantAccessRequestParametersAccessDuration.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AcceptGrantAccessRequestParametersAccessDuration>('accessDuration', accessDuration);
    }
}
