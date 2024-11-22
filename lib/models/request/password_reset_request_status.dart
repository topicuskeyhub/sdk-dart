// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './password_reset_email_type.dart';

/// auto generated
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
        type_ = 'request.PasswordResetRequestStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static PasswordResetRequestStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return PasswordResetRequestStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['cooldownEnd'] = (node) => cooldownEnd = node.getDateTimeValue();
        deserializerMap['managers'] = (node) => managers = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['nrAccepted'] = (node) => nrAccepted = node.getIntValue();
        deserializerMap['resetViaMail'] = (node) => resetViaMail = node.getEnumValue<PasswordResetEmailType>((stringValue) => PasswordResetEmailType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeDateTimeValue('cooldownEnd', cooldownEnd);
        writer.writeCollectionOfPrimitiveValues<String?>('managers', managers);
        writer.writeIntValue('nrAccepted', nrAccepted);
        writer.writeEnumValue<PasswordResetEmailType>('resetViaMail', resetViaMail, (e) => e?.value);
    }
}
