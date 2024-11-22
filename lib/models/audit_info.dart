// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './non_linkable.dart';

/// auto generated
class AuditInfo extends NonLinkable implements Parsable {
    ///  The createdAt property
    DateTime? createdAt;
    ///  The createdBy property
    String? createdBy;
    ///  The lastModifiedAt property
    DateTime? lastModifiedAt;
    ///  The lastModifiedBy property
    String? lastModifiedBy;
    /// Instantiates a new [AuditInfo] and sets the default values.
    AuditInfo() : super() {
        type_ = 'AuditInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AuditInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return AuditInfo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['createdAt'] = (node) => createdAt = node.getDateTimeValue();
        deserializerMap['createdBy'] = (node) => createdBy = node.getStringValue();
        deserializerMap['lastModifiedAt'] = (node) => lastModifiedAt = node.getDateTimeValue();
        deserializerMap['lastModifiedBy'] = (node) => lastModifiedBy = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
