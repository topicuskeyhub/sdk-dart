// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import './access_profile_account_additional_objects.dart';
import './access_profile_account_with_attributes.dart';

/// auto generated
class AccessProfileAccount extends AccountPrimer implements Parsable {
    ///  The additionalObjects property
    AccessProfileAccountAdditionalObjects? additionalObjects;
    ///  The manual property
    bool? manual;
    /// Instantiates a new [AccessProfileAccount] and sets the default values.
    AccessProfileAccount() : super() {
        type_ = 'profile.AccessProfileAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileAccount createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'profile.AccessProfileAccountWithAttributes' => AccessProfileAccountWithAttributes(),
            _ => AccessProfileAccount(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccessProfileAccountAdditionalObjects>(AccessProfileAccountAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['manual'] = (node) => manual = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccessProfileAccountAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeBoolValue('manual', value:manual);
    }
}
