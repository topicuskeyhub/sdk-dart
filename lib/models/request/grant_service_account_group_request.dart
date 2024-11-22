// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../provisioning/group_on_system.dart';
import '../serviceaccount/service_account_primer.dart';
import './modification_request.dart';

/// auto generated
class GrantServiceAccountGroupRequest extends ModificationRequest implements Parsable {
    ///  The groupOnSystem property
    GroupOnSystem? groupOnSystem;
    ///  The serviceAccount property
    ServiceAccountPrimer? serviceAccount;
    /// Instantiates a new [GrantServiceAccountGroupRequest] and sets the default values.
    GrantServiceAccountGroupRequest() : super() {
        type_ = 'request.GrantServiceAccountGroupRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GrantServiceAccountGroupRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return GrantServiceAccountGroupRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['groupOnSystem'] = (node) => groupOnSystem = node.getObjectValue<GroupOnSystem>(GroupOnSystem.createFromDiscriminatorValue);
        deserializerMap['serviceAccount'] = (node) => serviceAccount = node.getObjectValue<ServiceAccountPrimer>(ServiceAccountPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupOnSystem>('groupOnSystem', groupOnSystem);
        writer.writeObjectValue<ServiceAccountPrimer>('serviceAccount', serviceAccount);
    }
}
