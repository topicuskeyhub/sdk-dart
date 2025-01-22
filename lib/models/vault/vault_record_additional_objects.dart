// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import '../launchpad/vault_record_launchpad_tile.dart';
import '../linkable.dart';
import './password_metadata.dart';
import './vault_activation_status.dart';
import './vault_record_primer.dart';
import './vault_record_primer_linkable_wrapper.dart';
import './vault_record_secrets.dart';
import './vault_record_share_summary.dart';

/// auto generated
class VaultRecordAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  The activationStatus property
    VaultActivationStatus? activationStatus;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The deleteTile property
    bool? deleteTile;
    ///  The parent property
    VaultRecordPrimer? parent;
    ///  The passwordMetadata property
    PasswordMetadata? passwordMetadata;
    ///  The secret property
    VaultRecordSecrets? secret;
    ///  The shares property
    VaultRecordPrimerLinkableWrapper? shares;
    ///  The shareSummary property
    VaultRecordShareSummary? shareSummary;
    ///  The tile property
    VaultRecordLaunchpadTile? tile;
    ///  The vaultholder property
    Linkable? vaultholder;
    /// Instantiates a new [VaultRecordAdditionalObjects] and sets the default values.
    VaultRecordAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static VaultRecordAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['activationStatus'] = (node) => activationStatus = node.getObjectValue<VaultActivationStatus>(VaultActivationStatus.createFromDiscriminatorValue);
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['deleteTile'] = (node) => deleteTile = node.getBoolValue();
        deserializerMap['parent'] = (node) => parent = node.getObjectValue<VaultRecordPrimer>(VaultRecordPrimer.createFromDiscriminatorValue);
        deserializerMap['passwordMetadata'] = (node) => passwordMetadata = node.getObjectValue<PasswordMetadata>(PasswordMetadata.createFromDiscriminatorValue);
        deserializerMap['secret'] = (node) => secret = node.getObjectValue<VaultRecordSecrets>(VaultRecordSecrets.createFromDiscriminatorValue);
        deserializerMap['shares'] = (node) => shares = node.getObjectValue<VaultRecordPrimerLinkableWrapper>(VaultRecordPrimerLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['shareSummary'] = (node) => shareSummary = node.getObjectValue<VaultRecordShareSummary>(VaultRecordShareSummary.createFromDiscriminatorValue);
        deserializerMap['tile'] = (node) => tile = node.getObjectValue<VaultRecordLaunchpadTile>(VaultRecordLaunchpadTile.createFromDiscriminatorValue);
        deserializerMap['vaultholder'] = (node) => vaultholder = node.getObjectValue<Linkable>(Linkable.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<VaultActivationStatus>('activationStatus', activationStatus);
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeBoolValue('deleteTile', value:deleteTile);
        writer.writeObjectValue<VaultRecordPrimer>('parent', parent);
        writer.writeObjectValue<PasswordMetadata>('passwordMetadata', passwordMetadata);
        writer.writeObjectValue<VaultRecordSecrets>('secret', secret);
        writer.writeObjectValue<VaultRecordPrimerLinkableWrapper>('shares', shares);
        writer.writeObjectValue<VaultRecordShareSummary>('shareSummary', shareSummary);
        writer.writeObjectValue<VaultRecordLaunchpadTile>('tile', tile);
        writer.writeObjectValue<Linkable>('vaultholder', vaultholder);
        writer.writeAdditionalData(additionalData);
    }
}
