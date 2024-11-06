import 'package:kiota_abstractions/kiota_abstractions.dart';

class ServiceAccountsAuditStatsSystemStats implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    /// Instantiates a new [ServiceAccountsAuditStatsSystemStats] and sets the default values.
    ServiceAccountsAuditStatsSystemStats() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ServiceAccountsAuditStatsSystemStats createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountsAuditStatsSystemStats();
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
