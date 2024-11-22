// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account.dart';
import './internal_account_status.dart';

/// auto generated
class InternalAccount extends Account implements Parsable {
    ///  The activationCode property
    String? activationCode;
    ///  The activationDeadline property
    DateTime? activationDeadline;
    ///  The company property
    String? company;
    ///  The status property
    InternalAccountStatus? status;
    /// Instantiates a new [InternalAccount] and sets the default values.
    InternalAccount() : super() {
        type_ = 'auth.InternalAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static InternalAccount createFromDiscriminatorValue(ParseNode parseNode) {
        return InternalAccount();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['activationCode'] = (node) => activationCode = node.getStringValue();
        deserializerMap['activationDeadline'] = (node) => activationDeadline = node.getDateTimeValue();
        deserializerMap['company'] = (node) => company = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<InternalAccountStatus>((stringValue) => InternalAccountStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('company', company);
        writer.writeEnumValue<InternalAccountStatus>('status', status, (e) => e?.value);
    }
}
