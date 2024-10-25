import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../auth/account_primer.dart';
import './access_profile_account_additional_objects.dart';

class AccessProfileAccount extends AccountPrimer implements Parsable {
    ///  The additionalObjects property
    AccessProfileAccountAdditionalObjects? additionalObjects;
    ///  The manual property
    bool? manual;
    /// Instantiates a new [AccessProfileAccount] and sets the default values.
     AccessProfileAccount() : super() {
        typeEscaped = 'profile.AccessProfileAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccessProfileAccount createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileAccount();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccessProfileAccountAdditionalObjects>(AccessProfileAccountAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['manual'] = (node) => manual = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccessProfileAccountAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeBoolValue('manual', value:manual);
    }
}
