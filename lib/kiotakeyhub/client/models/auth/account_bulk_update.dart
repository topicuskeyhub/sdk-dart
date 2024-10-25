import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './account_bulk_update_action.dart';

class AccountBulkUpdate extends NonLinkable implements Parsable {
    ///  The action property
    AccountBulkUpdateAction? action;
    ///  The exclusiveSelection property
    bool? exclusiveSelection;
    ///  The selectedAccounts property
    Iterable<int>? selectedAccounts;
    /// Instantiates a new [AccountBulkUpdate] and sets the default values.
     AccountBulkUpdate() : super() {
        typeEscaped = 'auth.AccountBulkUpdate';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccountBulkUpdate createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountBulkUpdate();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['action'] = (node) => action = node.getEnumValue<AccountBulkUpdateAction>((stringValue) => AccountBulkUpdateAction.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['exclusiveSelection'] = (node) => exclusiveSelection = node.getBoolValue();
        deserializerMap['selectedAccounts'] = (node) => selectedAccounts = node.getCollectionOfPrimitiveValues<int>();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccountBulkUpdateAction>('action', action, (e) => e?.value);
        writer.writeBoolValue('exclusiveSelection', value:exclusiveSelection);
        writer.writeCollectionOfPrimitiveValues<int?>('selectedAccounts', selectedAccounts);
    }
}
