import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../provisioning/group_on_system.dart';
import '../serviceaccount/service_account_primer.dart';
import './modification_request.dart';

class GrantServiceAccountGroupRequest extends ModificationRequest implements Parsable {
    ///  The groupOnSystem property
    GroupOnSystem? groupOnSystem;
    ///  The serviceAccount property
    ServiceAccountPrimer? serviceAccount;
    /// Instantiates a new [GrantServiceAccountGroupRequest] and sets the default values.
    GrantServiceAccountGroupRequest() : super() {
        typeEscaped = 'request.GrantServiceAccountGroupRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GrantServiceAccountGroupRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return GrantServiceAccountGroupRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['groupOnSystem'] = (node) => groupOnSystem = node.getObjectValue<GroupOnSystem>(GroupOnSystem.createFromDiscriminatorValue);
        deserializerMap['serviceAccount'] = (node) => serviceAccount = node.getObjectValue<ServiceAccountPrimer>(ServiceAccountPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupOnSystem>('groupOnSystem', groupOnSystem);
        writer.writeObjectValue<ServiceAccountPrimer>('serviceAccount', serviceAccount);
    }
}
