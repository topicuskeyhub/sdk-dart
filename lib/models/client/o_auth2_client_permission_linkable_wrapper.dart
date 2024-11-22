// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './o_auth2_client_permission.dart';

/// auto generated
class OAuth2ClientPermissionLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<OAuth2ClientPermission>? items;
    /// Instantiates a new [OAuth2ClientPermissionLinkableWrapper] and sets the default values.
    OAuth2ClientPermissionLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OAuth2ClientPermissionLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return OAuth2ClientPermissionLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<OAuth2ClientPermission>(OAuth2ClientPermission.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<OAuth2ClientPermission>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
