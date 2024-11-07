import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../client/client_application_primer.dart';
import '../group/group_primer.dart';
import '../vault/vault_record_primer.dart';
import './launchpad_tile_additional_objects.dart';
import './launchpad_tile_primer.dart';
import './launchpad_tile_type.dart';
import './manual_launchpad_tile.dart';
import './sso_application_launchpad_tile.dart';
import './vault_record_launchpad_tile.dart';

class LaunchpadTile extends LaunchpadTilePrimer implements Parsable {
    ///  The additionalObjects property
    LaunchpadTileAdditionalObjects? additionalObjects;
    ///  The application property
    ClientApplicationPrimer? application;
    ///  The group property
    GroupPrimer? group;
    ///  The identiconCode property
    int? identiconCode;
    ///  The type property
    LaunchpadTileType? launchpadTileType;
    ///  The logo property
    String? logo;
    ///  The vaultRecord property
    VaultRecordPrimer? vaultRecord;
    /// Instantiates a new [LaunchpadTile] and sets the default values.
    LaunchpadTile() : super() {
        typeEscaped = 'launchpad.LaunchpadTile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
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
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<LaunchpadTileAdditionalObjects>(LaunchpadTileAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['application'] = (node) => application = node.getObjectValue<ClientApplicationPrimer>(ClientApplicationPrimer.createFromDiscriminatorValue);
        deserializerMap['group'] = (node) => group = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['identiconCode'] = (node) => identiconCode = node.getIntValue();
        deserializerMap['type'] = (node) => launchpadTileType = node.getEnumValue<LaunchpadTileType>((stringValue) => LaunchpadTileType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['logo'] = (node) => logo = node.getStringValue();
        deserializerMap['vaultRecord'] = (node) => vaultRecord = node.getObjectValue<VaultRecordPrimer>(VaultRecordPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<LaunchpadTileAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<ClientApplicationPrimer>('application', application);
        writer.writeObjectValue<GroupPrimer>('group', group);
        writer.writeIntValue('identiconCode', identiconCode);
        writer.writeEnumValue<LaunchpadTileType>('type', launchpadTileType, (e) => e?.value);
        writer.writeStringValue('logo', logo);
        writer.writeObjectValue<VaultRecordPrimer>('vaultRecord', vaultRecord);
    }
}
