import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/provisioning_group.dart';
import '../non_linkable.dart';
import './account_provisioning_result.dart';
import './provisioned_system_primer.dart';

class AccountProvisioningStatus extends NonLinkable implements Parsable {
    ///  The description property
    String? description;
    ///  The provisionedSystem property
    ProvisionedSystemPrimer? provisionedSystem;
    ///  The provisioningGroup property
    ProvisioningGroup? provisioningGroup;
    ///  The result property
    AccountProvisioningResult? result;
    /// Instantiates a new [AccountProvisioningStatus] and sets the default values.
     AccountProvisioningStatus() : super() {
        typeEscaped = 'provisioning.AccountProvisioningStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccountProvisioningStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountProvisioningStatus();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['provisionedSystem'] = (node) => provisionedSystem = node.getObjectValue<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        deserializerMap['provisioningGroup'] = (node) => provisioningGroup = node.getObjectValue<ProvisioningGroup>(ProvisioningGroup.createFromDiscriminatorValue);
        deserializerMap['result'] = (node) => result = node.getEnumValue<AccountProvisioningResult>((stringValue) => AccountProvisioningResult.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('description', description);
        writer.writeObjectValue<ProvisionedSystemPrimer>('provisionedSystem', provisionedSystem);
        writer.writeObjectValue<ProvisioningGroup>('provisioningGroup', provisioningGroup);
        writer.writeEnumValue<AccountProvisioningResult>('result', result, (e) => e?.value);
    }
}
