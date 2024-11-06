import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit_info.dart';
import './group_classification_info.dart';

class GroupClassificationAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The info property
    GroupClassificationInfo? info;
    /// Instantiates a new [GroupClassificationAdditionalObjects] and sets the default values.
    GroupClassificationAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupClassificationAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupClassificationAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['info'] = (node) => info = node.getObjectValue<GroupClassificationInfo>(GroupClassificationInfo.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<GroupClassificationInfo>('info', info);
        writer.writeAdditionalData(additionalData);
    }
}
