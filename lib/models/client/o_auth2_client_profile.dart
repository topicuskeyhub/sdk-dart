enum OAuth2ClientProfile {
    serverToServer('SERVER_TO_SERVER'),
    webApplication('WEB_APPLICATION'),
    browserBasedApplication('BROWSER_BASED_APPLICATION'),
    browserBasedApplicationWithRefreshToken('BROWSER_BASED_APPLICATION_WITH_REFRESH_TOKEN'),
    publicNativeApplication('PUBLIC_NATIVE_APPLICATION'),
    publicNativeApplicationWithSecureStorage('PUBLIC_NATIVE_APPLICATION_WITH_SECURE_STORAGE'),
    confidentialNativeApplication('CONFIDENTIAL_NATIVE_APPLICATION');
    const OAuth2ClientProfile(this.value);
    final String value;
}
