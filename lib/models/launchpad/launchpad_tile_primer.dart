import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './launchpad_tile.dart';
import './manual_launchpad_tile.dart';
import './sso_application_launchpad_tile.dart';
import './vault_record_launchpad_tile.dart';

class LaunchpadTilePrimer extends Linkable implements Parsable {
    /// Instantiates a new [LaunchpadTilePrimer] and sets the default values.
    LaunchpadTilePrimer() : super() {
        typeEscaped = 'launchpad.LaunchpadTilePrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
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
