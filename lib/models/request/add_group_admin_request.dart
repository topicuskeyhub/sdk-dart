// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import './modification_request.dart';

/// auto generated
class AddGroupAdminRequest extends ModificationRequest implements Parsable {
    ///  The newAdmin property
    AccountPrimer? newAdmin;
    ///  The privateKey property
    String? privateKey;
    /// Instantiates a new [AddGroupAdminRequest] and sets the default values.
    AddGroupAdminRequest() : super() {
        type_ = 'request.AddGroupAdminRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AddGroupAdminRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return AddGroupAdminRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['newAdmin'] = (node) => newAdmin = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['privateKey'] = (node) => privateKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountPrimer>('newAdmin', newAdmin);
        writer.writeStringValue('privateKey', privateKey);
    }
}
