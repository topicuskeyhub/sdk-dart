import 'package:kiota_abstractions/kiota_abstractions.dart';
import './o_auth2_client_permission_with_client.dart';

class OAuth2ClientPermissionWithClientLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<OAuth2ClientPermissionWithClient>? items;
    /// Instantiates a new [OAuth2ClientPermissionWithClientLinkableWrapper] and sets the default values.
     OAuth2ClientPermissionWithClientLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static OAuth2ClientPermissionWithClientLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return OAuth2ClientPermissionWithClientLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<OAuth2ClientPermissionWithClient>(OAuth2ClientPermissionWithClient.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<OAuth2ClientPermissionWithClient>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
