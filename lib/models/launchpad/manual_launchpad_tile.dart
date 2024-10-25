import 'package:kiota_abstractions/kiota_abstractions.dart';
import './launchpad_tile.dart';

class ManualLaunchpadTile extends LaunchpadTile implements Parsable {
    ///  The title property
    String? title;
    ///  The uri property
    String? uri;
    /// Instantiates a new [ManualLaunchpadTile] and sets the default values.
     ManualLaunchpadTile() : super() {
        typeEscaped = 'launchpad.ManualLaunchpadTile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ManualLaunchpadTile createFromDiscriminatorValue(ParseNode parseNode) {
        return ManualLaunchpadTile();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['title'] = (node) => title = node.getStringValue();
        deserializerMap['uri'] = (node) => uri = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('title', title);
        writer.writeStringValue('uri', uri);
    }
}
