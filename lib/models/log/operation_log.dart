// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './operation_type.dart';

/// auto generated
class OperationLog extends Linkable implements Parsable {
    ///  The context property
    String? context;
    ///  The endTime property
    DateTime? endTime;
    ///  The type property
    OperationType? operationLogType;
    ///  The startTime property
    DateTime? startTime;
    ///  The successful property
    bool? successful;
    /// Instantiates a new [OperationLog] and sets the default values.
    OperationLog() : super() {
        type_ = 'log.OperationLog';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OperationLog createFromDiscriminatorValue(ParseNode parseNode) {
        return OperationLog();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['context'] = (node) => context = node.getStringValue();
        deserializerMap['endTime'] = (node) => endTime = node.getDateTimeValue();
        deserializerMap['type'] = (node) => operationLogType = node.getEnumValue<OperationType>((stringValue) => OperationType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['startTime'] = (node) => startTime = node.getDateTimeValue();
        deserializerMap['successful'] = (node) => successful = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<OperationType>('type', operationLogType, (e) => e?.value);
    }
}
