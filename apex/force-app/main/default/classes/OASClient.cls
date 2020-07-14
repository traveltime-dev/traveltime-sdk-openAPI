public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://api.traveltimeapp.com';
        calloutName = 'TravelTime_API';
        authentications.put('ApiKey', new OAS.ApiKeyHeaderAuth('X-Api-Key'));
        authentications.put('ApplicationId', new OAS.ApiKeyHeaderAuth('X-Application-Id'));
    }
}
