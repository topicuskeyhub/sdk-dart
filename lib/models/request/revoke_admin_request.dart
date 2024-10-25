import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../auth/account_primer.dart';
import './modification_request.dart';

class RevokeAdminRequest extends ModificationRequest implements Parsable {
    ///  The admin property
    AccountPrimer? admin;
    /// Instantiates a new [RevokeAdminRequest] and sets the default values.
     RevokeAdminRequest() : super() {
        typeEscaped = 'request.RevokeAdminRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static RevokeAdminRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return RevokeAdminRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['admin'] = (node) => admin = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountPrimer>('admin', admin);
    }
}
