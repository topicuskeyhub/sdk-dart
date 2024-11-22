// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import './group_classification_info.dart';

/// auto generated
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
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupClassificationAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupClassificationAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['info'] = (node) => info = node.getObjectValue<GroupClassificationInfo>(GroupClassificationInfo.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<GroupClassificationInfo>('info', info);
        writer.writeAdditionalData(additionalData);
    }
}
