// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './account_bulk_update_action.dart';

/// auto generated
class AccountBulkUpdate extends NonLinkable implements Parsable {
    ///  The action property
    AccountBulkUpdateAction? action;
    ///  The exclusiveSelection property
    bool? exclusiveSelection;
    ///  The selectedAccounts property
    Iterable<int>? selectedAccounts;
    /// Instantiates a new [AccountBulkUpdate] and sets the default values.
    AccountBulkUpdate() : super() {
        type_ = 'auth.AccountBulkUpdate';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountBulkUpdate createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountBulkUpdate();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['action'] = (node) => action = node.getEnumValue<AccountBulkUpdateAction>((stringValue) => AccountBulkUpdateAction.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['exclusiveSelection'] = (node) => exclusiveSelection = node.getBoolValue();
        deserializerMap['selectedAccounts'] = (node) => selectedAccounts = node.getCollectionOfPrimitiveValues<int>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccountBulkUpdateAction>('action', action, (e) => e?.value);
        writer.writeBoolValue('exclusiveSelection', value:exclusiveSelection);
        writer.writeCollectionOfPrimitiveValues<int?>('selectedAccounts', selectedAccounts);
    }
}
