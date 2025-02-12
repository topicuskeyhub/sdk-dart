// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './client_application_organizational_unit.dart';

/// auto generated
class ClientApplicationOrganizationalUnitLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<ClientApplicationOrganizationalUnit>? items;
    /// Instantiates a new [ClientApplicationOrganizationalUnitLinkableWrapper] and sets the default values.
    ClientApplicationOrganizationalUnitLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ClientApplicationOrganizationalUnitLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ClientApplicationOrganizationalUnitLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ClientApplicationOrganizationalUnit>(ClientApplicationOrganizationalUnit.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ClientApplicationOrganizationalUnit>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
