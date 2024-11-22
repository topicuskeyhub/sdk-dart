// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './launchpad_tile.dart';

/// auto generated
class SsoApplicationLaunchpadTile extends LaunchpadTile implements Parsable {
    ///  The uri property
    String? uri;
    /// Instantiates a new [SsoApplicationLaunchpadTile] and sets the default values.
    SsoApplicationLaunchpadTile() : super() {
        type_ = 'launchpad.SsoApplicationLaunchpadTile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static SsoApplicationLaunchpadTile createFromDiscriminatorValue(ParseNode parseNode) {
        return SsoApplicationLaunchpadTile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['uri'] = (node) => uri = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('uri', uri);
    }
}
