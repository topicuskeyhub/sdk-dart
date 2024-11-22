// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import './provisioned_account_additional_objects.dart';

/// auto generated
class ProvisionedAccount extends AccountPrimer implements Parsable {
    ///  The additionalObjects property
    ProvisionedAccountAdditionalObjects? additionalObjects;
    ///  The uid property
    int? uid;
    /// Instantiates a new [ProvisionedAccount] and sets the default values.
    ProvisionedAccount() : super() {
        type_ = 'provisioning.ProvisionedAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedAccount createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedAccount();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ProvisionedAccountAdditionalObjects>(ProvisionedAccountAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['uid'] = (node) => uid = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ProvisionedAccountAdditionalObjects>('additionalObjects', additionalObjects);
    }
}
