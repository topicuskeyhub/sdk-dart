import 'package:kiota_abstractions/kiota_abstractions.dart';
import './stored_user_session.dart';

class StoredUserSessionLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<StoredUserSession>? items;
    /// Instantiates a new [StoredUserSessionLinkableWrapper] and sets the default values.
    StoredUserSessionLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static StoredUserSessionLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return StoredUserSessionLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<StoredUserSession>(StoredUserSession.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<StoredUserSession>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
