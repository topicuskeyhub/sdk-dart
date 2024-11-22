// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './organizational_unit_account.dart';

/// auto generated
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
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OrganizationalUnitAccountLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnitAccountLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<OrganizationalUnitAccount>(OrganizationalUnitAccount.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<OrganizationalUnitAccount>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
