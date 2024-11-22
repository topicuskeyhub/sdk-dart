// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class AccountChangeLocale extends NonLinkable implements Parsable {
    ///  The locale property
    String? locale;
    /// Instantiates a new [AccountChangeLocale] and sets the default values.
    AccountChangeLocale() : super() {
        type_ = 'auth.AccountChangeLocale';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountChangeLocale createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountChangeLocale();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['locale'] = (node) => locale = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('locale', locale);
    }
}
