import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit_info.dart';
import '../mark/item_markers.dart';
import './account_directory_status_report.dart';

class AccountDirectoryAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The markers property
    ItemMarkers? markers;
    ///  The status property
    AccountDirectoryStatusReport? status;
    /// Instantiates a new [AccountDirectoryAdditionalObjects] and sets the default values.
     AccountDirectoryAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccountDirectoryAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountDirectoryAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['markers'] = (node) => markers = node.getObjectValue<ItemMarkers>(ItemMarkers.createFromDiscriminatorValue);
        deserializerMap['status'] = (node) => status = node.getObjectValue<AccountDirectoryStatusReport>(AccountDirectoryStatusReport.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<ItemMarkers>('markers', markers);
        writer.writeObjectValue<AccountDirectoryStatusReport>('status', status);
        writer.writeAdditionalData(additionalData);
    }
}
