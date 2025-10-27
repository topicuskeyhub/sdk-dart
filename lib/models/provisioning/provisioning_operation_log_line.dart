// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './provisioning_operation_action.dart';
import './provisioning_operation_log_level.dart';

/// auto generated
class ProvisioningOperationLogLine extends Linkable implements Parsable {
    ///  The accessProfile property
    String? accessProfile;
    ///  The account property
    String? account;
    ///  The action property
    ProvisioningOperationAction? action;
    ///  The group property
    String? group;
    ///  The groupOnSystem property
    String? groupOnSystem;
    ///  The level property
    ProvisioningOperationLogLevel? level;
    ///  The message property
    String? message;
    ///  The serviceAccount property
    String? serviceAccount;
    ///  The system property
    String? system;
    ///  The thread property
    String? thread;
    ///  The time property
    DateTime? time;
    /// Instantiates a new [ProvisioningOperationLogLine] and sets the default values.
    ProvisioningOperationLogLine() : super() {
        type_ = 'provisioning.ProvisioningOperationLogLine';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisioningOperationLogLine createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisioningOperationLogLine();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accessProfile'] = (node) => accessProfile = node.getStringValue();
        deserializerMap['account'] = (node) => account = node.getStringValue();
        deserializerMap['action'] = (node) => action = node.getEnumValue<ProvisioningOperationAction>((stringValue) => ProvisioningOperationAction.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['group'] = (node) => group = node.getStringValue();
        deserializerMap['groupOnSystem'] = (node) => groupOnSystem = node.getStringValue();
        deserializerMap['level'] = (node) => level = node.getEnumValue<ProvisioningOperationLogLevel>((stringValue) => ProvisioningOperationLogLevel.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['message'] = (node) => message = node.getStringValue();
        deserializerMap['serviceAccount'] = (node) => serviceAccount = node.getStringValue();
        deserializerMap['system'] = (node) => system = node.getStringValue();
        deserializerMap['thread'] = (node) => thread = node.getStringValue();
        deserializerMap['time'] = (node) => time = node.getDateTimeValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<ProvisioningOperationAction>('action', action, (e) => e?.value);
        writer.writeEnumValue<ProvisioningOperationLogLevel>('level', level, (e) => e?.value);
    }
}
