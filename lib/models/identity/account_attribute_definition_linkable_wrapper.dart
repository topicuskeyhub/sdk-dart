// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_attribute_definition.dart';

/// auto generated
class AccountAttributeDefinitionLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<AccountAttributeDefinition>? items;
    /// Instantiates a new [AccountAttributeDefinitionLinkableWrapper] and sets the default values.
    AccountAttributeDefinitionLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountAttributeDefinitionLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountAttributeDefinitionLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<AccountAttributeDefinition>(AccountAttributeDefinition.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<AccountAttributeDefinition>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
