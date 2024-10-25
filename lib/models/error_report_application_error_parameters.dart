import 'package:kiota_abstractions/kiota_abstractions.dart';

class ErrorReportApplicationErrorParameters implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    /// Instantiates a new [ErrorReportApplicationErrorParameters] and sets the default values.
     ErrorReportApplicationErrorParameters() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ErrorReportApplicationErrorParameters createFromDiscriminatorValue(ParseNode parseNode) {
        return ErrorReportApplicationErrorParameters();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeAdditionalData(additionalData);
    }
}
