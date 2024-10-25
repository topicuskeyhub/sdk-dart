import 'package:kiota_abstractions/kiota_abstractions.dart';

class ProvisionedSystemCleanupPeriod implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The days property
    int? days;
    ///  The months property
    int? months;
    ///  The years property
    int? years;
    /// Instantiates a new [ProvisionedSystemCleanupPeriod] and sets the default values.
     ProvisionedSystemCleanupPeriod() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ProvisionedSystemCleanupPeriod createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedSystemCleanupPeriod();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['days'] = (node) => days = node.getIntValue();
        deserializerMap['months'] = (node) => months = node.getIntValue();
        deserializerMap['years'] = (node) => years = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeIntValue('days', days);
        writer.writeIntValue('months', months);
        writer.writeIntValue('years', years);
        writer.writeAdditionalData(additionalData);
    }
}
