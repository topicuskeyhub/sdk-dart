import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './internal_account_status.dart';

class InternalAccountStatusObject extends NonLinkable implements Parsable {
    ///  The status property
    InternalAccountStatus? status;
    /// Instantiates a new [InternalAccountStatusObject] and sets the default values.
    InternalAccountStatusObject() : super() {
        typeEscaped = 'auth.InternalAccountStatusObject';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static InternalAccountStatusObject createFromDiscriminatorValue(ParseNode parseNode) {
        return InternalAccountStatusObject();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['status'] = (node) => status = node.getEnumValue<InternalAccountStatus>((stringValue) => InternalAccountStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<InternalAccountStatus>('status', status, (e) => e?.value);
    }
}
