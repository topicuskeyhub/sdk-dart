import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import '../linkable.dart';
import './launchpad_tile_primer.dart';

class DisplayedLaunchpadTile extends Linkable implements Parsable {
    ///  The group property
    GroupPrimer? group;
    ///  The identiconCode property
    int? identiconCode;
    ///  The logo property
    String? logo;
    ///  The tile property
    LaunchpadTilePrimer? tile;
    ///  The title property
    String? title;
    ///  The uri property
    String? uri;
    /// Instantiates a new [DisplayedLaunchpadTile] and sets the default values.
    DisplayedLaunchpadTile() : super() {
        typeEscaped = 'launchpad.DisplayedLaunchpadTile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static DisplayedLaunchpadTile createFromDiscriminatorValue(ParseNode parseNode) {
        return DisplayedLaunchpadTile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['group'] = (node) => group = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['identiconCode'] = (node) => identiconCode = node.getIntValue();
        deserializerMap['logo'] = (node) => logo = node.getStringValue();
        deserializerMap['tile'] = (node) => tile = node.getObjectValue<LaunchpadTilePrimer>(LaunchpadTilePrimer.createFromDiscriminatorValue);
        deserializerMap['title'] = (node) => title = node.getStringValue();
        deserializerMap['uri'] = (node) => uri = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupPrimer>('group', group);
        writer.writeIntValue('identiconCode', identiconCode);
        writer.writeStringValue('logo', logo);
        writer.writeObjectValue<LaunchpadTilePrimer>('tile', tile);
        writer.writeStringValue('title', title);
        writer.writeStringValue('uri', uri);
    }
}
