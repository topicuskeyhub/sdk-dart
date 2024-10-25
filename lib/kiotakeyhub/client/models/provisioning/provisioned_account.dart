import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../auth/account_primer.dart';
import './provisioned_account_additional_objects.dart';

class ProvisionedAccount extends AccountPrimer implements Parsable {
    ///  The additionalObjects property
    ProvisionedAccountAdditionalObjects? additionalObjects;
    ///  The uid property
    int? uid;
    /// Instantiates a new [ProvisionedAccount] and sets the default values.
     ProvisionedAccount() : super() {
        typeEscaped = 'provisioning.ProvisionedAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ProvisionedAccount createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedAccount();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ProvisionedAccountAdditionalObjects>(ProvisionedAccountAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['uid'] = (node) => uid = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ProvisionedAccountAdditionalObjects>('additionalObjects', additionalObjects);
    }
}
