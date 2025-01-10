// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../identity/account_attribute_value_summary.dart';
import './access_profile_account.dart';

/// auto generated
class AccessProfileAccountWithAttributes extends AccessProfileAccount implements Parsable {
    ///  The attributes property
    Iterable<AccountAttributeValueSummary>? attributes;
    /// Instantiates a new [AccessProfileAccountWithAttributes] and sets the default values.
    AccessProfileAccountWithAttributes() : super() {
        type_ = 'profile.AccessProfileAccountWithAttributes';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileAccountWithAttributes createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileAccountWithAttributes();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['attributes'] = (node) => attributes = node.getCollectionOfObjectValues<AccountAttributeValueSummary>(AccountAttributeValueSummary.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
