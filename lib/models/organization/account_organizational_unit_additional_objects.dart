import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit_info.dart';

class AccountOrganizationalUnitAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    /// Instantiates a new [AccountOrganizationalUnitAdditionalObjects] and sets the default values.
    AccountOrganizationalUnitAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccountOrganizationalUnitAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountOrganizationalUnitAdditionalObjects();
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
