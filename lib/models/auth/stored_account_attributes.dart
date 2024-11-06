import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './stored_account_attribute.dart';

class StoredAccountAttributes extends NonLinkable implements Parsable {
    ///  The attributes property
    Iterable<StoredAccountAttribute>? attributes;
    /// Instantiates a new [StoredAccountAttributes] and sets the default values.
    StoredAccountAttributes() : super() {
        typeEscaped = 'auth.StoredAccountAttributes';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static StoredAccountAttributes createFromDiscriminatorValue(ParseNode parseNode) {
        return StoredAccountAttributes();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['attributes'] = (node) => attributes = node.getCollectionOfObjectValues<StoredAccountAttribute>(StoredAccountAttribute.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<StoredAccountAttribute>('attributes', attributes);
    }
}
