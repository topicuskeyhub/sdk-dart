// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './access_profile_account_activation.dart';
import './access_profile_primer.dart';
import './account_access_profile_additional_objects.dart';

/// auto generated
class AccountAccessProfile extends AccessProfilePrimer implements Parsable {
    ///  The activation property
    AccessProfileAccountActivation? activation;
    ///  The additionalObjects property
    AccountAccessProfileAdditionalObjects? additionalObjects;
    ///  The manual property
    bool? manual;
    /// Instantiates a new [AccountAccessProfile] and sets the default values.
    AccountAccessProfile() : super() {
        type_ = 'profile.AccountAccessProfile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountAccessProfile createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountAccessProfile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['activation'] = (node) => activation = node.getEnumValue<AccessProfileAccountActivation>((stringValue) => AccessProfileAccountActivation.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccountAccessProfileAdditionalObjects>(AccountAccessProfileAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['manual'] = (node) => manual = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccessProfileAccountActivation>('activation', activation, (e) => e?.value);
        writer.writeObjectValue<AccountAccessProfileAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeBoolValue('manual', value:manual);
    }
}
