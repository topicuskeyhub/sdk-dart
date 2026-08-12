// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../linkable.dart';
import './access_profile_account_prediction_additional_objects.dart';
import './access_profile_lifecycle_anchor.dart';

/// auto generated
class AccessProfileAccountPrediction extends Linkable implements Parsable {
    ///  The account property
    AccountPrimer? account;
    ///  The additionalObjects property
    AccessProfileAccountPredictionAdditionalObjects? additionalObjects;
    ///  The anchor property
    AccessProfileLifecycleAnchor? anchor;
    ///  The transitionDate property
    DateOnly? transitionDate;
    /// Instantiates a new [AccessProfileAccountPrediction] and sets the default values.
    AccessProfileAccountPrediction() : super() {
        type_ = 'profile.AccessProfileAccountPrediction';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileAccountPrediction createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileAccountPrediction();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['account'] = (node) => account = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccessProfileAccountPredictionAdditionalObjects>(AccessProfileAccountPredictionAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['anchor'] = (node) => anchor = node.getEnumValue<AccessProfileLifecycleAnchor>((stringValue) => AccessProfileLifecycleAnchor.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['transitionDate'] = (node) => transitionDate = node.getDateOnlyValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountPrimer>('account', account);
        writer.writeObjectValue<AccessProfileAccountPredictionAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeEnumValue<AccessProfileLifecycleAnchor>('anchor', anchor, (e) => e?.value);
    }
}
