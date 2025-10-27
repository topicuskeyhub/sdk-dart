// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './provisioning_operation_type.dart';

/// auto generated
class ProvisioningOperationLog extends Linkable implements Parsable {
    ///  The context property
    String? context;
    ///  The endTime property
    DateTime? endTime;
    ///  The type property
    ProvisioningOperationType? provisioningOperationLogType;
    ///  The startTime property
    DateTime? startTime;
    /// Instantiates a new [ProvisioningOperationLog] and sets the default values.
    ProvisioningOperationLog() : super() {
        type_ = 'provisioning.ProvisioningOperationLog';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisioningOperationLog createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisioningOperationLog();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['context'] = (node) => context = node.getStringValue();
        deserializerMap['endTime'] = (node) => endTime = node.getDateTimeValue();
        deserializerMap['type'] = (node) => provisioningOperationLogType = node.getEnumValue<ProvisioningOperationType>((stringValue) => ProvisioningOperationType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['startTime'] = (node) => startTime = node.getDateTimeValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<ProvisioningOperationType>('type', provisioningOperationLogType, (e) => e?.value);
    }
}
