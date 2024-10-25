import 'package:kiota_abstractions/kiota_abstractions.dart';
import './organizational_unit_account.dart';

class OrganizationalUnitAccountLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<OrganizationalUnitAccount>? items;
    /// Instantiates a new [OrganizationalUnitAccountLinkableWrapper] and sets the default values.
     OrganizationalUnitAccountLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static OrganizationalUnitAccountLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnitAccountLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<OrganizationalUnitAccount>(OrganizationalUnitAccount.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<OrganizationalUnitAccount>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
