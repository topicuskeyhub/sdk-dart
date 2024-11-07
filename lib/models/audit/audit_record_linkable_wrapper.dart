import 'package:kiota_abstractions/kiota_abstractions.dart';
import './audit_record.dart';

class AuditRecordLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<AuditRecord>? items;
    /// Instantiates a new [AuditRecordLinkableWrapper] and sets the default values.
    AuditRecordLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AuditRecordLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AuditRecordLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<AuditRecord>(AuditRecord.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<AuditRecord>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
