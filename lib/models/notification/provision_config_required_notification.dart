import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../provisioning/provisioned_system_primer.dart';
import './notification.dart';

class ProvisionConfigRequiredNotification extends Notification implements Parsable {
    ///  The systems property
    Iterable<ProvisionedSystemPrimer>? systems;
    /// Instantiates a new [ProvisionConfigRequiredNotification] and sets the default values.
    ProvisionConfigRequiredNotification() : super() {
        typeEscaped = 'notification.ProvisionConfigRequiredNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ProvisionConfigRequiredNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionConfigRequiredNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['systems'] = (node) => systems = node.getCollectionOfObjectValues<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<ProvisionedSystemPrimer>('systems', systems);
    }
}
