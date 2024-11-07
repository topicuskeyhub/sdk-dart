import 'package:kiota_abstractions/kiota_abstractions.dart';
import './access_profile_account.dart';
import './access_profile_account_attribute_rule_status.dart';

class AccessProfileAccountWithAttributes extends AccessProfileAccount implements Parsable {
    ///  The attributes property
    Iterable<AccessProfileAccountAttributeRuleStatus>? attributes;
    /// Instantiates a new [AccessProfileAccountWithAttributes] and sets the default values.
    AccessProfileAccountWithAttributes() : super() {
        typeEscaped = 'profile.AccessProfileAccountWithAttributes';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccessProfileAccountWithAttributes createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileAccountWithAttributes();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['attributes'] = (node) => attributes = node.getCollectionOfObjectValues<AccessProfileAccountAttributeRuleStatus>(AccessProfileAccountAttributeRuleStatus.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
