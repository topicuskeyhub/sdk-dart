// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../provisioning/group_on_system.dart';
import './abstract_access_profile_modification_request.dart';

/// auto generated
class GrantGroupOnSystemRequest extends AbstractAccessProfileModificationRequest implements Parsable {
    ///  The activationRequired property
    bool? activationRequired;
    ///  The groupOnSystem property
    GroupOnSystem? groupOnSystem;
    ///  The originalRequester property
    AccountPrimer? originalRequester;
    /// Instantiates a new [GrantGroupOnSystemRequest] and sets the default values.
    GrantGroupOnSystemRequest() : super() {
        type_ = 'request.GrantGroupOnSystemRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GrantGroupOnSystemRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return GrantGroupOnSystemRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['activationRequired'] = (node) => activationRequired = node.getBoolValue();
        deserializerMap['groupOnSystem'] = (node) => groupOnSystem = node.getObjectValue<GroupOnSystem>(GroupOnSystem.createFromDiscriminatorValue);
        deserializerMap['originalRequester'] = (node) => originalRequester = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('activationRequired', value:activationRequired);
        writer.writeObjectValue<GroupOnSystem>('groupOnSystem', groupOnSystem);
        writer.writeObjectValue<AccountPrimer>('originalRequester', originalRequester);
    }
}
