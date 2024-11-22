// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../profile/access_profile_primer.dart';
import './grant_group_on_system_request.dart';
import './grant_group_on_system_request_request.dart';
import './link_directory_to_access_profile_request.dart';
import './modification_request.dart';
import './transfer_access_profile_ownership_request.dart';

/// auto generated
class AbstractAccessProfileModificationRequest extends ModificationRequest implements Parsable {
    ///  The accessProfile property
    AccessProfilePrimer? accessProfile;
    /// Instantiates a new [AbstractAccessProfileModificationRequest] and sets the default values.
    AbstractAccessProfileModificationRequest() : super() {
        type_ = 'request.AbstractAccessProfileModificationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AbstractAccessProfileModificationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'request.GrantGroupOnSystemRequest' => GrantGroupOnSystemRequest(),
            'request.GrantGroupOnSystemRequestRequest' => GrantGroupOnSystemRequestRequest(),
            'request.LinkDirectoryToAccessProfileRequest' => LinkDirectoryToAccessProfileRequest(),
            'request.TransferAccessProfileOwnershipRequest' => TransferAccessProfileOwnershipRequest(),
            _ => AbstractAccessProfileModificationRequest(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accessProfile'] = (node) => accessProfile = node.getObjectValue<AccessProfilePrimer>(AccessProfilePrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccessProfilePrimer>('accessProfile', accessProfile);
    }
}
