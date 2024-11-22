// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
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
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedSystemCleanupPeriod createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedSystemCleanupPeriod();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['days'] = (node) => days = node.getIntValue();
        deserializerMap['months'] = (node) => months = node.getIntValue();
        deserializerMap['years'] = (node) => years = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('days', days);
        writer.writeIntValue('months', months);
        writer.writeIntValue('years', years);
        writer.writeAdditionalData(additionalData);
    }
}
