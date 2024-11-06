import 'package:kiota_abstractions/kiota_abstractions.dart';

class AcceptGrantAccessRequestParametersAccessDuration implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The nanos property
    int? nanos;
    ///  The seconds property
    int? seconds;
    /// Instantiates a new [AcceptGrantAccessRequestParametersAccessDuration] and sets the default values.
    AcceptGrantAccessRequestParametersAccessDuration() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AcceptGrantAccessRequestParametersAccessDuration createFromDiscriminatorValue(ParseNode parseNode) {
        return AcceptGrantAccessRequestParametersAccessDuration();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['nanos'] = (node) => nanos = node.getIntValue();
        deserializerMap['seconds'] = (node) => seconds = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('nanos', nanos);
        writer.writeIntValue('seconds', seconds);
        writer.writeAdditionalData(additionalData);
    }
}
