import 'package:kiota_abstractions/kiota_abstractions.dart';
import './account.dart';
import './internal_account_status.dart';

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
        typeEscaped = 'auth.InternalAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static InternalAccount createFromDiscriminatorValue(ParseNode parseNode) {
        return InternalAccount();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['activationCode'] = (node) => activationCode = node.getStringValue();
        deserializerMap['activationDeadline'] = (node) => activationDeadline = node.getDateTimeValue();
        deserializerMap['company'] = (node) => company = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<InternalAccountStatus>((stringValue) => InternalAccountStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('company', company);
        writer.writeEnumValue<InternalAccountStatus>('status', status, (e) => e?.value);
    }
}
