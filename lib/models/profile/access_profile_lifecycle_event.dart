// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../linkable.dart';
import './access_profile_lifecycle_anchor.dart';
import './access_profile_lifecycle_event_additional_objects.dart';
import './access_profile_lifecycle_event_status.dart';

/// auto generated
class AccessProfileLifecycleEvent extends Linkable implements Parsable {
    ///  The account property
    AccountPrimer? account;
    ///  The actionName property
    String? actionName;
    ///  The additionalObjects property
    AccessProfileLifecycleEventAdditionalObjects? additionalObjects;
    ///  The anchor property
    AccessProfileLifecycleAnchor? anchor;
    ///  The attempts property
    int? attempts;
    ///  The dueDate property
    DateOnly? dueDate;
    ///  The dueImmediately property
    bool? dueImmediately;
    ///  The firedAt property
    DateTime? firedAt;
    ///  The lastAttemptAt property
    DateTime? lastAttemptAt;
    ///  The lastError property
    String? lastError;
    ///  The status property
    AccessProfileLifecycleEventStatus? status;
    /// Instantiates a new [AccessProfileLifecycleEvent] and sets the default values.
    AccessProfileLifecycleEvent() : super() {
        type_ = 'profile.AccessProfileLifecycleEvent';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileLifecycleEvent createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileLifecycleEvent();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['account'] = (node) => account = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['actionName'] = (node) => actionName = node.getStringValue();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccessProfileLifecycleEventAdditionalObjects>(AccessProfileLifecycleEventAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['anchor'] = (node) => anchor = node.getEnumValue<AccessProfileLifecycleAnchor>((stringValue) => AccessProfileLifecycleAnchor.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['attempts'] = (node) => attempts = node.getIntValue();
        deserializerMap['dueDate'] = (node) => dueDate = node.getDateOnlyValue();
        deserializerMap['dueImmediately'] = (node) => dueImmediately = node.getBoolValue();
        deserializerMap['firedAt'] = (node) => firedAt = node.getDateTimeValue();
        deserializerMap['lastAttemptAt'] = (node) => lastAttemptAt = node.getDateTimeValue();
        deserializerMap['lastError'] = (node) => lastError = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<AccessProfileLifecycleEventStatus>((stringValue) => AccessProfileLifecycleEventStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountPrimer>('account', account);
        writer.writeObjectValue<AccessProfileLifecycleEventAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeEnumValue<AccessProfileLifecycleAnchor>('anchor', anchor, (e) => e?.value);
        writer.writeEnumValue<AccessProfileLifecycleEventStatus>('status', status, (e) => e?.value);
    }
}
