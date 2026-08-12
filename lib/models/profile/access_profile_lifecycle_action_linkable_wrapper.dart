// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './access_profile_lifecycle_action.dart';

/// auto generated
class AccessProfileLifecycleActionLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<AccessProfileLifecycleAction>? items;
    /// Instantiates a new [AccessProfileLifecycleActionLinkableWrapper] and sets the default values.
    AccessProfileLifecycleActionLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileLifecycleActionLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileLifecycleActionLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<AccessProfileLifecycleAction>(AccessProfileLifecycleAction.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<AccessProfileLifecycleAction>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
