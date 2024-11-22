// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './displayed_launchpad_tile.dart';

/// auto generated
class DisplayedLaunchpadTiles extends NonLinkable implements Parsable {
    ///  The items property
    Iterable<DisplayedLaunchpadTile>? items;
    /// Instantiates a new [DisplayedLaunchpadTiles] and sets the default values.
    DisplayedLaunchpadTiles() : super() {
        type_ = 'launchpad.DisplayedLaunchpadTiles';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static DisplayedLaunchpadTiles createFromDiscriminatorValue(ParseNode parseNode) {
        return DisplayedLaunchpadTiles();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<DisplayedLaunchpadTile>(DisplayedLaunchpadTile.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<DisplayedLaunchpadTile>('items', items);
    }
}
