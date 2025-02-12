// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './organizational_unit_client_application.dart';

/// auto generated
class OrganizationalUnitClientApplicationLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<OrganizationalUnitClientApplication>? items;
    /// Instantiates a new [OrganizationalUnitClientApplicationLinkableWrapper] and sets the default values.
    OrganizationalUnitClientApplicationLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OrganizationalUnitClientApplicationLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnitClientApplicationLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<OrganizationalUnitClientApplication>(OrganizationalUnitClientApplication.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<OrganizationalUnitClientApplication>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
