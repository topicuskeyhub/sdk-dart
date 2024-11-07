import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../provisioning/group_on_system_primer.dart';
import './service_account_group_additional_objects.dart';

class ServiceAccountGroup extends GroupOnSystemPrimer implements Parsable {
    ///  The additionalObjects property
    ServiceAccountGroupAdditionalObjects? additionalObjects;
    /// Instantiates a new [ServiceAccountGroup] and sets the default values.
    ServiceAccountGroup() : super() {
        typeEscaped = 'serviceaccount.ServiceAccountGroup';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ServiceAccountGroup createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountGroup();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ServiceAccountGroupAdditionalObjects>(ServiceAccountGroupAdditionalObjects.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ServiceAccountGroupAdditionalObjects>('additionalObjects', additionalObjects);
    }
}
