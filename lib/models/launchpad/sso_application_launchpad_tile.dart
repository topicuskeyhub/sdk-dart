import 'package:kiota_abstractions/kiota_abstractions.dart';
import './launchpad_tile.dart';

class SsoApplicationLaunchpadTile extends LaunchpadTile implements Parsable {
    ///  The uri property
    String? uri;
    /// Instantiates a new [SsoApplicationLaunchpadTile] and sets the default values.
    SsoApplicationLaunchpadTile() : super() {
        typeEscaped = 'launchpad.SsoApplicationLaunchpadTile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static SsoApplicationLaunchpadTile createFromDiscriminatorValue(ParseNode parseNode) {
        return SsoApplicationLaunchpadTile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['uri'] = (node) => uri = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('uri', uri);
    }
}
