// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './launchpad_tile.dart';

/// auto generated
class ManualLaunchpadTile extends LaunchpadTile implements Parsable {
    ///  The title property
    String? title;
    ///  The uri property
    String? uri;
    /// Instantiates a new [ManualLaunchpadTile] and sets the default values.
    ManualLaunchpadTile() : super() {
        type_ = 'launchpad.ManualLaunchpadTile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ManualLaunchpadTile createFromDiscriminatorValue(ParseNode parseNode) {
        return ManualLaunchpadTile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['title'] = (node) => title = node.getStringValue();
        deserializerMap['uri'] = (node) => uri = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('title', title);
        writer.writeStringValue('uri', uri);
    }
}
