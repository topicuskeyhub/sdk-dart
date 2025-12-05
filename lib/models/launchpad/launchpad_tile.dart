// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './launchpad_tile_additional_objects.dart';
import './launchpad_tile_primer.dart';
import './launchpad_tile_type.dart';
import './manual_launchpad_tile.dart';
import './sso_application_launchpad_tile.dart';
import './vault_record_launchpad_tile.dart';

/// auto generated
class LaunchpadTile extends LaunchpadTilePrimer implements Parsable {
    ///  The additionalObjects property
    LaunchpadTileAdditionalObjects? additionalObjects;
    ///  The identiconCode property
    int? identiconCode;
    ///  The type property
    LaunchpadTileType? launchpadTileType;
    ///  The logo property
    Iterable<int>? logo;
    /// Instantiates a new [LaunchpadTile] and sets the default values.
    LaunchpadTile() : super() {
        type_ = 'launchpad.LaunchpadTile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LaunchpadTile createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'launchpad.ManualLaunchpadTile' => ManualLaunchpadTile(),
            'launchpad.SsoApplicationLaunchpadTile' => SsoApplicationLaunchpadTile(),
            'launchpad.VaultRecordLaunchpadTile' => VaultRecordLaunchpadTile(),
            _ => LaunchpadTile(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<LaunchpadTileAdditionalObjects>(LaunchpadTileAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['identiconCode'] = (node) => identiconCode = node.getIntValue();
        deserializerMap['type'] = (node) => launchpadTileType = node.getEnumValue<LaunchpadTileType>((stringValue) => LaunchpadTileType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['logo'] = (node) => logo = node.getCollectionOfPrimitiveValues<int>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<LaunchpadTileAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeIntValue('identiconCode', identiconCode);
        writer.writeEnumValue<LaunchpadTileType>('type', launchpadTileType, (e) => e?.value);
        writer.writeCollectionOfPrimitiveValues<int>('logo', logo);
    }
}
