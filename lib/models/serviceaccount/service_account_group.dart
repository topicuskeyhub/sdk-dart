// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../provisioning/group_on_system_primer.dart';
import './service_account_group_additional_objects.dart';

/// auto generated
class ServiceAccountGroup extends GroupOnSystemPrimer implements Parsable {
    ///  The additionalObjects property
    ServiceAccountGroupAdditionalObjects? additionalObjects;
    /// Instantiates a new [ServiceAccountGroup] and sets the default values.
    ServiceAccountGroup() : super() {
        type_ = 'serviceaccount.ServiceAccountGroup';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ServiceAccountGroup createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountGroup();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ServiceAccountGroupAdditionalObjects>(ServiceAccountGroupAdditionalObjects.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ServiceAccountGroupAdditionalObjects>('additionalObjects', additionalObjects);
    }
}
