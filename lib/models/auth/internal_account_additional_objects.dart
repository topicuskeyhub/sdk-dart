import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit_info.dart';

class InternalAccountAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The reason property
    String? reason;
    /// Instantiates a new [InternalAccountAdditionalObjects] and sets the default values.
     InternalAccountAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static InternalAccountAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return InternalAccountAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['reason'] = (node) => reason = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeStringValue('reason', reason);
        writer.writeAdditionalData(additionalData);
    }
}
