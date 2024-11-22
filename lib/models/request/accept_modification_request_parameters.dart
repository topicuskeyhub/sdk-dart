// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './accept_create_group_on_system_request_parameters.dart';
import './accept_create_group_request_parameters.dart';
import './accept_create_provisioned_namespace_request_parameters.dart';
import './accept_create_service_account_request_parameters.dart';
import './accept_grant_access_request_parameters.dart';
import './accept_join_group_request_parameters.dart';

/// auto generated
class AcceptModificationRequestParameters extends NonLinkable implements Parsable {
    /// Instantiates a new [AcceptModificationRequestParameters] and sets the default values.
    AcceptModificationRequestParameters() : super() {
        type_ = 'request.AcceptModificationRequestParameters';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AcceptModificationRequestParameters createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'request.AcceptCreateGroupOnSystemRequestParameters' => AcceptCreateGroupOnSystemRequestParameters(),
            'request.AcceptCreateGroupRequestParameters' => AcceptCreateGroupRequestParameters(),
            'request.AcceptCreateProvisionedNamespaceRequestParameters' => AcceptCreateProvisionedNamespaceRequestParameters(),
            'request.AcceptCreateServiceAccountRequestParameters' => AcceptCreateServiceAccountRequestParameters(),
            'request.AcceptGrantAccessRequestParameters' => AcceptGrantAccessRequestParameters(),
            'request.AcceptJoinGroupRequestParameters' => AcceptJoinGroupRequestParameters(),
            _ => AcceptModificationRequestParameters(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
