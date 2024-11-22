// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../organization/organizational_unit_primer.dart';
import './create_group_request.dart';
import './modification_request.dart';
import './move_groups_request.dart';
import './remove_organizational_unit_request.dart';
import './transfer_organizational_unit_ownership_request.dart';

/// auto generated
class AbstractOrganizationalUnitModificationRequest extends ModificationRequest implements Parsable {
    ///  The organizationalUnit property
    OrganizationalUnitPrimer? organizationalUnit;
    /// Instantiates a new [AbstractOrganizationalUnitModificationRequest] and sets the default values.
    AbstractOrganizationalUnitModificationRequest() : super() {
        type_ = 'request.AbstractOrganizationalUnitModificationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
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
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['organizationalUnit'] = (node) => organizationalUnit = node.getObjectValue<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<OrganizationalUnitPrimer>('organizationalUnit', organizationalUnit);
    }
}
