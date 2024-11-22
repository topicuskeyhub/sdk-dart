// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import '../generated_secret.dart';
import '../group/group_client_linkable_wrapper.dart';
import '../group/group_linkable_wrapper.dart';
import '../launchpad/sso_application_launchpad_tile.dart';

/// auto generated
class ClientApplicationAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The deleteTile property
    bool? deleteTile;
    ///  The groupclients property
    GroupClientLinkableWrapper? groupclients;
    ///  The groups property
    GroupLinkableWrapper? groups;
    ///  The secret property
    GeneratedSecret? secret;
    ///  The tile property
    SsoApplicationLaunchpadTile? tile;
    ///  The vaultRecordCount property
    int? vaultRecordCount;
    /// Instantiates a new [ClientApplicationAdditionalObjects] and sets the default values.
    ClientApplicationAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ClientApplicationAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return ClientApplicationAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['deleteTile'] = (node) => deleteTile = node.getBoolValue();
        deserializerMap['groupclients'] = (node) => groupclients = node.getObjectValue<GroupClientLinkableWrapper>(GroupClientLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['groups'] = (node) => groups = node.getObjectValue<GroupLinkableWrapper>(GroupLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['secret'] = (node) => secret = node.getObjectValue<GeneratedSecret>(GeneratedSecret.createFromDiscriminatorValue);
        deserializerMap['tile'] = (node) => tile = node.getObjectValue<SsoApplicationLaunchpadTile>(SsoApplicationLaunchpadTile.createFromDiscriminatorValue);
        deserializerMap['vaultRecordCount'] = (node) => vaultRecordCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeBoolValue('deleteTile', value:deleteTile);
        writer.writeObjectValue<GroupClientLinkableWrapper>('groupclients', groupclients);
        writer.writeObjectValue<GroupLinkableWrapper>('groups', groups);
        writer.writeObjectValue<GeneratedSecret>('secret', secret);
        writer.writeObjectValue<SsoApplicationLaunchpadTile>('tile', tile);
        writer.writeAdditionalData(additionalData);
    }
}
