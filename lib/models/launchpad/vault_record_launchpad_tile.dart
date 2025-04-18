// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './launchpad_tile.dart';

/// auto generated
class VaultRecordLaunchpadTile extends LaunchpadTile implements Parsable {
    /// Instantiates a new [VaultRecordLaunchpadTile] and sets the default values.
    VaultRecordLaunchpadTile() : super() {
        type_ = 'launchpad.VaultRecordLaunchpadTile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static VaultRecordLaunchpadTile createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordLaunchpadTile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
