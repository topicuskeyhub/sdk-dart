import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class ServiceAccountStatus extends NonLinkable implements Parsable {
    ///  The accountEnabled property
    bool? accountEnabled;
    /// Instantiates a new [ServiceAccountStatus] and sets the default values.
    ServiceAccountStatus() : super() {
        typeEscaped = 'serviceaccount.ServiceAccountStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ServiceAccountStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountEnabled'] = (node) => accountEnabled = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('accountEnabled', value:accountEnabled);
    }
}
