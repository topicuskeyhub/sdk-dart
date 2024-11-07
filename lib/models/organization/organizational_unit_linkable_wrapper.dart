import 'package:kiota_abstractions/kiota_abstractions.dart';
import './organizational_unit.dart';

class OrganizationalUnitLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<OrganizationalUnit>? items;
    /// Instantiates a new [OrganizationalUnitLinkableWrapper] and sets the default values.
    OrganizationalUnitLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static OrganizationalUnitLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnitLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<OrganizationalUnit>(OrganizationalUnit.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<OrganizationalUnit>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
