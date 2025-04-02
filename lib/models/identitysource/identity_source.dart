// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './a_f_a_s_identity_source.dart';
import './identity_source_additional_objects.dart';
import './identity_source_primer.dart';

/// auto generated
class IdentitySource extends IdentitySourcePrimer implements Parsable {
    ///  The additionalObjects property
    IdentitySourceAdditionalObjects? additionalObjects;
    /// Instantiates a new [IdentitySource] and sets the default values.
    IdentitySource() : super() {
        type_ = 'identitysource.IdentitySource';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static IdentitySource createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'identitysource.AFASIdentitySource' => AFASIdentitySource(),
            _ => IdentitySource(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<IdentitySourceAdditionalObjects>(IdentitySourceAdditionalObjects.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<IdentitySourceAdditionalObjects>('additionalObjects', additionalObjects);
    }
}
