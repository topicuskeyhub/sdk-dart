import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit_info.dart';
import '../generated_secret.dart';
import '../group/group_client_linkable_wrapper.dart';
import '../group/group_linkable_wrapper.dart';
import '../launchpad/sso_application_launchpad_tile.dart';

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
    /// <param name="parseNode">parseNode</param>
    static ClientApplicationAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return ClientApplicationAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
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
    /// <param name="writer">writer</param>
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
