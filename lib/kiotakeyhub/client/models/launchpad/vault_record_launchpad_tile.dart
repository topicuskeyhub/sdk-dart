import 'package:kiota_abstractions/kiota_abstractions.dart';
import './launchpad_tile.dart';

class VaultRecordLaunchpadTile extends LaunchpadTile implements Parsable {
    /// Instantiates a new [VaultRecordLaunchpadTile] and sets the default values.
     VaultRecordLaunchpadTile() : super() {
        typeEscaped = 'launchpad.VaultRecordLaunchpadTile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static VaultRecordLaunchpadTile createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordLaunchpadTile();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
