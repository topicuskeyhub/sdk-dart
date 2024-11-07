import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class AccountChangeLocale extends NonLinkable implements Parsable {
    ///  The locale property
    String? locale;
    /// Instantiates a new [AccountChangeLocale] and sets the default values.
    AccountChangeLocale() : super() {
        typeEscaped = 'auth.AccountChangeLocale';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccountChangeLocale createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountChangeLocale();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['locale'] = (node) => locale = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('locale', locale);
    }
}
