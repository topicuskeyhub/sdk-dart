// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../client/client_application_primer.dart';
import '../group/group_primer.dart';
import '../non_linkable.dart';

/// auto generated
class InvalidSignatureOwner extends NonLinkable implements Parsable {
    ///  The account property
    AccountPrimer? account;
    ///  The client property
    ClientApplicationPrimer? client;
    ///  The group property
    GroupPrimer? group;
    ///  The retiredInVersion property
    int? retiredInVersion;
    /// Instantiates a new [InvalidSignatureOwner] and sets the default values.
    InvalidSignatureOwner() : super() {
        type_ = 'notification.InvalidSignatureOwner';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static InvalidSignatureOwner createFromDiscriminatorValue(ParseNode parseNode) {
        return InvalidSignatureOwner();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['account'] = (node) => account = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['client'] = (node) => client = node.getObjectValue<ClientApplicationPrimer>(ClientApplicationPrimer.createFromDiscriminatorValue);
        deserializerMap['group'] = (node) => group = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['retiredInVersion'] = (node) => retiredInVersion = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountPrimer>('account', account);
        writer.writeObjectValue<ClientApplicationPrimer>('client', client);
        writer.writeObjectValue<GroupPrimer>('group', group);
        writer.writeIntValue('retiredInVersion', retiredInVersion);
    }
}
