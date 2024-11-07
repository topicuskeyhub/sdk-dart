import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit_info.dart';

class ServiceAccountGroupAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    /// Instantiates a new [ServiceAccountGroupAdditionalObjects] and sets the default values.
    ServiceAccountGroupAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ServiceAccountGroupAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountGroupAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeAdditionalData(additionalData);
    }
}
