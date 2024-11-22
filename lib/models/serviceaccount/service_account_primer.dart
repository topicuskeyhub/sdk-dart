// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import '../provisioning/provisioned_system_primer.dart';
import './service_account.dart';

/// auto generated
class ServiceAccountPrimer extends Linkable implements Parsable {
    ///  The active property
    bool? active;
    ///  The name property
    String? name;
    ///  The system property
    ProvisionedSystemPrimer? system;
    ///  The username property
    String? username;
    ///  The uuid property
    String? uuid;
    /// Instantiates a new [ServiceAccountPrimer] and sets the default values.
    ServiceAccountPrimer() : super() {
        type_ = 'serviceaccount.ServiceAccountPrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ServiceAccountPrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'serviceaccount.ServiceAccount' => ServiceAccount(),
            _ => ServiceAccountPrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['active'] = (node) => active = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['system'] = (node) => system = node.getObjectValue<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        deserializerMap['username'] = (node) => username = node.getStringValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('active', value:active);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<ProvisionedSystemPrimer>('system', system);
        writer.writeStringValue('username', username);
    }
}
