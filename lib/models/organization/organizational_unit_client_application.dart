// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../client/client_application_primer.dart';
import './organizational_unit_client_application_additional_objects.dart';

/// auto generated
class OrganizationalUnitClientApplication extends ClientApplicationPrimer implements Parsable {
    ///  The additionalObjects property
    OrganizationalUnitClientApplicationAdditionalObjects? additionalObjects;
    /// Instantiates a new [OrganizationalUnitClientApplication] and sets the default values.
    OrganizationalUnitClientApplication() : super() {
        type_ = 'organization.OrganizationalUnitClientApplication';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OrganizationalUnitClientApplication createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnitClientApplication();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<OrganizationalUnitClientApplicationAdditionalObjects>(OrganizationalUnitClientApplicationAdditionalObjects.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<OrganizationalUnitClientApplicationAdditionalObjects>('additionalObjects', additionalObjects);
    }
}
