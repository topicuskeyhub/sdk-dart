import 'package:kiota_abstractions/kiota_abstractions.dart';
import './error_report_application_error_parameters.dart';

class ErrorReport extends ApiException implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The applicationError property
    String? applicationError;
    ///  The applicationErrorParameters property
    ErrorReportApplicationErrorParameters? applicationErrorParameters;
    ///  The code property
    int? code;
    ///  The errorDetails property
    Iterable<String>? errorDetails;
    ///  The exception property
    String? exception;
    ///  The reason property
    String? reason;
    ///  The stacktrace property
    Iterable<String>? stacktrace;
    /// Instantiates a new [ErrorReport] and sets the default values.
    ErrorReport( {
        super.message,
        super.statusCode,
        super.responseHeaders,
        super.innerExceptions,
        required this.additionalData,
        this.applicationError,
        this.applicationErrorParameters,
        this.code,
        this.errorDetails,
        this.exception,
        this.reason,
        this.stacktrace,
    });
    /// Creates a copy of the object.
    @override
    ErrorReport copyWith({int? statusCode, String? message, Map<String, List<String>>? responseHeaders, Iterable<Object?>? innerExceptions, Map<String, Object?>? additionalData, String? applicationError, ErrorReportApplicationErrorParameters? applicationErrorParameters, int? code, Iterable<String>? errorDetails, String? exception, String? reason, Iterable<String>? stacktrace }){
        return ErrorReport(
        message : message ?? this.message, 
        statusCode : statusCode ?? this.statusCode, 
        responseHeaders : responseHeaders ?? this.responseHeaders, 
        innerExceptions : innerExceptions ?? this.innerExceptions, 
        additionalData : additionalData ?? this.additionalData, 
        applicationError : applicationError ?? this.applicationError, 
        applicationErrorParameters : applicationErrorParameters ?? this.applicationErrorParameters, 
        code : code ?? this.code, 
        errorDetails : errorDetails ?? this.errorDetails, 
        exception : exception ?? this.exception, 
        reason : reason ?? this.reason, 
        stacktrace : stacktrace ?? this.stacktrace, 
        );
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ErrorReport createFromDiscriminatorValue(ParseNode parseNode) {
        return ErrorReport(additionalData: {});
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['applicationError'] = (node) => applicationError = node.getStringValue();
        deserializerMap['applicationErrorParameters'] = (node) => applicationErrorParameters = node.getObjectValue<ErrorReportApplicationErrorParameters>(ErrorReportApplicationErrorParameters.createFromDiscriminatorValue);
        deserializerMap['code'] = (node) => code = node.getIntValue();
        deserializerMap['errorDetails'] = (node) => errorDetails = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['exception'] = (node) => exception = node.getStringValue();
        deserializerMap['reason'] = (node) => reason = node.getStringValue();
        deserializerMap['stacktrace'] = (node) => stacktrace = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('applicationError', applicationError);
        writer.writeObjectValue<ErrorReportApplicationErrorParameters>('applicationErrorParameters', applicationErrorParameters);
        writer.writeIntValue('code', code);
        writer.writeCollectionOfPrimitiveValues<String?>('errorDetails', errorDetails);
        writer.writeStringValue('exception', exception);
        writer.writeStringValue('reason', reason);
        writer.writeCollectionOfPrimitiveValues<String?>('stacktrace', stacktrace);
        writer.writeAdditionalData(additionalData);
    }
}
