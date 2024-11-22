// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './internal_account_status.dart';

/// auto generated
class InternalAccountStatusObject extends NonLinkable implements Parsable {
    ///  The status property
    InternalAccountStatus? status;
    /// Instantiates a new [InternalAccountStatusObject] and sets the default values.
    InternalAccountStatusObject() : super() {
        type_ = 'auth.InternalAccountStatusObject';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static InternalAccountStatusObject createFromDiscriminatorValue(ParseNode parseNode) {
        return InternalAccountStatusObject();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['status'] = (node) => status = node.getEnumValue<InternalAccountStatus>((stringValue) => InternalAccountStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<InternalAccountStatus>('status', status, (e) => e?.value);
    }
}
