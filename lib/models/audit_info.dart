import 'package:kiota_abstractions/kiota_abstractions.dart';
import './non_linkable.dart';

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
        typeEscaped = 'AuditInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AuditInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return AuditInfo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['createdAt'] = (node) => createdAt = node.getDateTimeValue();
        deserializerMap['createdBy'] = (node) => createdBy = node.getStringValue();
        deserializerMap['lastModifiedAt'] = (node) => lastModifiedAt = node.getDateTimeValue();
        deserializerMap['lastModifiedBy'] = (node) => lastModifiedBy = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
