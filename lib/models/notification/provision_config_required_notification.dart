// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../provisioning/provisioned_system_primer.dart';
import './notification.dart';

/// auto generated
class ProvisionConfigRequiredNotification extends Notification implements Parsable {
    ///  The keyhubPassword property
    bool? keyhubPassword;
    ///  The systems property
    Iterable<ProvisionedSystemPrimer>? systems;
    /// Instantiates a new [ProvisionConfigRequiredNotification] and sets the default values.
    ProvisionConfigRequiredNotification() : super() {
        type_ = 'notification.ProvisionConfigRequiredNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionConfigRequiredNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionConfigRequiredNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['keyhubPassword'] = (node) => keyhubPassword = node.getBoolValue();
        deserializerMap['systems'] = (node) => systems = node.getCollectionOfObjectValues<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('keyhubPassword', value:keyhubPassword);
        writer.writeCollectionOfObjectValues<ProvisionedSystemPrimer>('systems', systems);
    }
}
