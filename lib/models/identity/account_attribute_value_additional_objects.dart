// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import './account_attribute_value.dart';
import './account_attribute_value_selection.dart';

/// auto generated
class AccountAttributeValueAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The previous property
    AccountAttributeValue? previous;
    ///  The selection property
    AccountAttributeValueSelection? selection;
    /// Instantiates a new [AccountAttributeValueAdditionalObjects] and sets the default values.
    AccountAttributeValueAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountAttributeValueAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountAttributeValueAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['previous'] = (node) => previous = node.getObjectValue<AccountAttributeValue>(AccountAttributeValue.createFromDiscriminatorValue);
        deserializerMap['selection'] = (node) => selection = node.getObjectValue<AccountAttributeValueSelection>(AccountAttributeValueSelection.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<AccountAttributeValue>('previous', previous);
        writer.writeObjectValue<AccountAttributeValueSelection>('selection', selection);
        writer.writeAdditionalData(additionalData);
    }
}
