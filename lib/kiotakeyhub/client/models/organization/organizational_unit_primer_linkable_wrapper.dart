import 'package:kiota_abstractions/kiota_abstractions.dart';
import './organizational_unit_primer.dart';

class OrganizationalUnitPrimerLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<OrganizationalUnitPrimer>? items;
    /// Instantiates a new [OrganizationalUnitPrimerLinkableWrapper] and sets the default values.
     OrganizationalUnitPrimerLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static OrganizationalUnitPrimerLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnitPrimerLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<OrganizationalUnitPrimer>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
