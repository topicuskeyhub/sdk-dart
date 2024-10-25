enum OIDCVendor {
    generic("GENERIC"),
    google("GOOGLE"),
    azureAd("AZURE_AD");
    const OIDCVendor(this.value);
    final String value;
}
