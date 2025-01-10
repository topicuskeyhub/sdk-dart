// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './account_attribute_value_selection_status.dart';

/// auto generated
class AccountAttributeValueSelection extends NonLinkable implements Parsable {
    ///  The context property
    String? context;
    ///  The currentValue property
    String? currentValue;
    ///  The status property
    AccountAttributeValueSelectionStatus? status;
    /// Instantiates a new [AccountAttributeValueSelection] and sets the default values.
    AccountAttributeValueSelection() : super() {
        type_ = 'identity.AccountAttributeValueSelection';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountAttributeValueSelection createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountAttributeValueSelection();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['context'] = (node) => context = node.getStringValue();
        deserializerMap['currentValue'] = (node) => currentValue = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<AccountAttributeValueSelectionStatus>((stringValue) => AccountAttributeValueSelectionStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('context', context);
        writer.writeStringValue('currentValue', currentValue);
        writer.writeEnumValue<AccountAttributeValueSelectionStatus>('status', status, (e) => e?.value);
    }
}
