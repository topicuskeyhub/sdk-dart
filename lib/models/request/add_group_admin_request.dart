import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../auth/account_primer.dart';
import './modification_request.dart';

class AddGroupAdminRequest extends ModificationRequest implements Parsable {
    ///  The newAdmin property
    AccountPrimer? newAdmin;
    ///  The privateKey property
    String? privateKey;
    /// Instantiates a new [AddGroupAdminRequest] and sets the default values.
    AddGroupAdminRequest() : super() {
        typeEscaped = 'request.AddGroupAdminRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AddGroupAdminRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return AddGroupAdminRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['newAdmin'] = (node) => newAdmin = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['privateKey'] = (node) => privateKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountPrimer>('newAdmin', newAdmin);
        writer.writeStringValue('privateKey', privateKey);
    }
}
