import 'package:kiota_abstractions/kiota_abstractions.dart';
import './account_organizational_unit.dart';

class AccountOrganizationalUnitLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<AccountOrganizationalUnit>? items;
    /// Instantiates a new [AccountOrganizationalUnitLinkableWrapper] and sets the default values.
     AccountOrganizationalUnitLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccountOrganizationalUnitLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountOrganizationalUnitLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<AccountOrganizationalUnit>(AccountOrganizationalUnit.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<AccountOrganizationalUnit>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
