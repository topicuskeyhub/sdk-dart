import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './displayed_launchpad_tile.dart';

class DisplayedLaunchpadTiles extends NonLinkable implements Parsable {
    ///  The items property
    Iterable<DisplayedLaunchpadTile>? items;
    /// Instantiates a new [DisplayedLaunchpadTiles] and sets the default values.
    DisplayedLaunchpadTiles() : super() {
        typeEscaped = 'launchpad.DisplayedLaunchpadTiles';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static DisplayedLaunchpadTiles createFromDiscriminatorValue(ParseNode parseNode) {
        return DisplayedLaunchpadTiles();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<DisplayedLaunchpadTile>(DisplayedLaunchpadTile.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<DisplayedLaunchpadTile>('items', items);
    }
}
