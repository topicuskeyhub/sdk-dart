import 'package:kiota_abstractions/kiota_abstractions.dart';
import './abstract_access_profile_modification_request.dart';

class TransferAccessProfileOwnershipRequest extends AbstractAccessProfileModificationRequest implements Parsable {
    /// Instantiates a new [TransferAccessProfileOwnershipRequest] and sets the default values.
     TransferAccessProfileOwnershipRequest() : super() {
        typeEscaped = 'request.TransferAccessProfileOwnershipRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static TransferAccessProfileOwnershipRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferAccessProfileOwnershipRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
