import 'package:kiota_abstractions/kiota_abstractions.dart';
import './client_application.dart';

class ClientApplicationLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<ClientApplication>? items;
    /// Instantiates a new [ClientApplicationLinkableWrapper] and sets the default values.
    ClientApplicationLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ClientApplicationLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ClientApplicationLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ClientApplication>(ClientApplication.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ClientApplication>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
