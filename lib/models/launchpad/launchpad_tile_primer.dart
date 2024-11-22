// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './launchpad_tile.dart';
import './manual_launchpad_tile.dart';
import './sso_application_launchpad_tile.dart';
import './vault_record_launchpad_tile.dart';

/// auto generated
class LaunchpadTilePrimer extends Linkable implements Parsable {
    /// Instantiates a new [LaunchpadTilePrimer] and sets the default values.
    LaunchpadTilePrimer() : super() {
        type_ = 'launchpad.LaunchpadTilePrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LaunchpadTilePrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'launchpad.LaunchpadTile' => LaunchpadTile(),
            'launchpad.ManualLaunchpadTile' => ManualLaunchpadTile(),
            'launchpad.SsoApplicationLaunchpadTile' => SsoApplicationLaunchpadTile(),
            'launchpad.VaultRecordLaunchpadTile' => VaultRecordLaunchpadTile(),
            _ => LaunchpadTilePrimer(),
        };
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
