import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './password_reset_email_type.dart';

class PasswordResetRequestStatus extends NonLinkable implements Parsable {
    ///  The cooldownEnd property
    DateTime? cooldownEnd;
    ///  The managers property
    Iterable<String>? managers;
    ///  The nrAccepted property
    int? nrAccepted;
    ///  The resetViaMail property
    PasswordResetEmailType? resetViaMail;
    /// Instantiates a new [PasswordResetRequestStatus] and sets the default values.
     PasswordResetRequestStatus() : super() {
        typeEscaped = 'request.PasswordResetRequestStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static PasswordResetRequestStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return PasswordResetRequestStatus();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['cooldownEnd'] = (node) => cooldownEnd = node.getDateTimeValue();
        deserializerMap['managers'] = (node) => managers = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['nrAccepted'] = (node) => nrAccepted = node.getIntValue();
        deserializerMap['resetViaMail'] = (node) => resetViaMail = node.getEnumValue<PasswordResetEmailType>((stringValue) => PasswordResetEmailType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeDateTimeValue('cooldownEnd', cooldownEnd);
        writer.writeCollectionOfPrimitiveValues<String?>('managers', managers);
        writer.writeIntValue('nrAccepted', nrAccepted);
        writer.writeEnumValue<PasswordResetEmailType>('resetViaMail', resetViaMail, (e) => e?.value);
    }
}
