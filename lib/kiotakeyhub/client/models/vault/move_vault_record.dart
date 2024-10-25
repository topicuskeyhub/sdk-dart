import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../group/group_primer.dart';
import '../non_linkable.dart';
import './move_vault_record_action.dart';
import './move_vault_record_share_duration.dart';

class MoveVaultRecord extends NonLinkable implements Parsable {
    ///  The account property
    AccountPrimer? account;
    ///  The action property
    MoveVaultRecordAction? action;
    ///  The group property
    GroupPrimer? group;
    ///  The shareDuration property
    MoveVaultRecordShareDuration? shareDuration;
    /// Instantiates a new [MoveVaultRecord] and sets the default values.
     MoveVaultRecord() : super() {
        typeEscaped = 'vault.MoveVaultRecord';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static MoveVaultRecord createFromDiscriminatorValue(ParseNode parseNode) {
        return MoveVaultRecord();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['account'] = (node) => account = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['action'] = (node) => action = node.getEnumValue<MoveVaultRecordAction>((stringValue) => MoveVaultRecordAction.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['group'] = (node) => group = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['shareDuration'] = (node) => shareDuration = node.getObjectValue<MoveVaultRecordShareDuration>(MoveVaultRecordShareDuration.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountPrimer>('account', account);
        writer.writeEnumValue<MoveVaultRecordAction>('action', action, (e) => e?.value);
        writer.writeObjectValue<GroupPrimer>('group', group);
        writer.writeObjectValue<MoveVaultRecordShareDuration>('shareDuration', shareDuration);
    }
}