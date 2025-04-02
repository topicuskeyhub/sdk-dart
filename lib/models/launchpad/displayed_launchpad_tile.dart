// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import '../linkable.dart';
import './launchpad_tile_primer.dart';

/// auto generated
class DisplayedLaunchpadTile extends Linkable implements Parsable {
    ///  The group property
    GroupPrimer? group;
    ///  The identiconCode property
    int? identiconCode;
    ///  The logo property
    Iterable<int>? logo;
    ///  The tile property
    LaunchpadTilePrimer? tile;
    ///  The title property
    String? title;
    ///  The uri property
    String? uri;
    /// Instantiates a new [DisplayedLaunchpadTile] and sets the default values.
    DisplayedLaunchpadTile() : super() {
        type_ = 'launchpad.DisplayedLaunchpadTile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static DisplayedLaunchpadTile createFromDiscriminatorValue(ParseNode parseNode) {
        return DisplayedLaunchpadTile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['group'] = (node) => group = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['identiconCode'] = (node) => identiconCode = node.getIntValue();
        deserializerMap['logo'] = (node) => logo = node.getCollectionOfPrimitiveValues<int>();
        deserializerMap['tile'] = (node) => tile = node.getObjectValue<LaunchpadTilePrimer>(LaunchpadTilePrimer.createFromDiscriminatorValue);
        deserializerMap['title'] = (node) => title = node.getStringValue();
        deserializerMap['uri'] = (node) => uri = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupPrimer>('group', group);
        writer.writeIntValue('identiconCode', identiconCode);
        writer.writeCollectionOfPrimitiveValues<int>('logo', logo);
        writer.writeObjectValue<LaunchpadTilePrimer>('tile', tile);
        writer.writeStringValue('title', title);
        writer.writeStringValue('uri', uri);
    }
}
