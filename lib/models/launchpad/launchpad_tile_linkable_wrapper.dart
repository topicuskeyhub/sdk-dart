import 'package:kiota_abstractions/kiota_abstractions.dart';
import './launchpad_tile.dart';

class LaunchpadTileLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<LaunchpadTile>? items;
    /// Instantiates a new [LaunchpadTileLinkableWrapper] and sets the default values.
    LaunchpadTileLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static LaunchpadTileLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return LaunchpadTileLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<LaunchpadTile>(LaunchpadTile.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<LaunchpadTile>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
