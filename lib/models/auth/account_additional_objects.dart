// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import '../group/account_groups_wrapper.dart';
import '../vault/vault.dart';
import './account_recovery_status.dart';
import './account_settings.dart';
import './stored_account_attributes.dart';

/// auto generated
class AccountAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  The activeLogin property
    bool? activeLogin;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The groups property
    AccountGroupsWrapper? groups;
    ///  The pendingRecoveryRequests property
    AccountRecoveryStatus? pendingRecoveryRequests;
    ///  The settings property
    AccountSettings? settings;
    ///  The storedAttributes property
    StoredAccountAttributes? storedAttributes;
    ///  The vault property
    Vault? vault;
    /// Instantiates a new [AccountAdditionalObjects] and sets the default values.
    AccountAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['activeLogin'] = (node) => activeLogin = node.getBoolValue();
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['groups'] = (node) => groups = node.getObjectValue<AccountGroupsWrapper>(AccountGroupsWrapper.createFromDiscriminatorValue);
        deserializerMap['pendingRecoveryRequests'] = (node) => pendingRecoveryRequests = node.getObjectValue<AccountRecoveryStatus>(AccountRecoveryStatus.createFromDiscriminatorValue);
        deserializerMap['settings'] = (node) => settings = node.getObjectValue<AccountSettings>(AccountSettings.createFromDiscriminatorValue);
        deserializerMap['storedAttributes'] = (node) => storedAttributes = node.getObjectValue<StoredAccountAttributes>(StoredAccountAttributes.createFromDiscriminatorValue);
        deserializerMap['vault'] = (node) => vault = node.getObjectValue<Vault>(Vault.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<AccountGroupsWrapper>('groups', groups);
        writer.writeObjectValue<AccountRecoveryStatus>('pendingRecoveryRequests', pendingRecoveryRequests);
        writer.writeObjectValue<AccountSettings>('settings', settings);
        writer.writeObjectValue<StoredAccountAttributes>('storedAttributes', storedAttributes);
        writer.writeObjectValue<Vault>('vault', vault);
        writer.writeAdditionalData(additionalData);
    }
}
