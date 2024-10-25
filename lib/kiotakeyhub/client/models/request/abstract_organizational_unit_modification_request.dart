import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../organization/organizational_unit_primer.dart';
import './create_group_request.dart';
import './modification_request.dart';
import './move_groups_request.dart';
import './remove_organizational_unit_request.dart';
import './transfer_organizational_unit_ownership_request.dart';

class AbstractOrganizationalUnitModificationRequest extends ModificationRequest implements Parsable {
    ///  The organizationalUnit property
    OrganizationalUnitPrimer? organizationalUnit;
    /// Instantiates a new [AbstractOrganizationalUnitModificationRequest] and sets the default values.
     AbstractOrganizationalUnitModificationRequest() : super() {
        typeEscaped = 'request.AbstractOrganizationalUnitModificationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AbstractOrganizationalUnitModificationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'request.CreateGroupRequest' => CreateGroupRequest(),
            'request.MoveGroupsRequest' => MoveGroupsRequest(),
            'request.RemoveOrganizationalUnitRequest' => RemoveOrganizationalUnitRequest(),
            'request.TransferOrganizationalUnitOwnershipRequest' => TransferOrganizationalUnitOwnershipRequest(),
            _ => AbstractOrganizationalUnitModificationRequest(),
        };
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['organizationalUnit'] = (node) => organizationalUnit = node.getObjectValue<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<OrganizationalUnitPrimer>('organizationalUnit', organizationalUnit);
    }
}
