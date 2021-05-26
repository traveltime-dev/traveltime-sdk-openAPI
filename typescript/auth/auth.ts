// typings for btoa are incorrect
import { RequestContext } from "../http/http";

/**
 * Interface authentication schemes.
 */
export interface SecurityAuthentication {
    /*
     * @return returns the name of the security authentication as specified in OAI
     */
    getName(): string;

    /**
     * Applies the authentication scheme to the request context
     *
     * @params context the request context which should use this authentication scheme
     */
    applySecurityAuthentication(context: RequestContext): void | Promise<void>;
}

export interface TokenProvider {
  getToken(): Promise<string> | string;
}

/**
 * Applies apiKey authentication to the request context.
 */
export class ApiKeyAuthentication implements SecurityAuthentication {
    /**
     * Configures this api key authentication with the necessary properties
     *
     * @param apiKey: The api key to be used for every request
     */
    public constructor(private apiKey: string) {}

    public getName(): string {
        return "ApiKey";
    }

    public applySecurityAuthentication(context: RequestContext) {
        context.setHeaderParam("X-Api-Key", this.apiKey);
    }
}

/**
 * Applies apiKey authentication to the request context.
 */
export class ApplicationIdAuthentication implements SecurityAuthentication {
    /**
     * Configures this api key authentication with the necessary properties
     *
     * @param apiKey: The api key to be used for every request
     */
    public constructor(private apiKey: string) {}

    public getName(): string {
        return "ApplicationId";
    }

    public applySecurityAuthentication(context: RequestContext) {
        context.setHeaderParam("X-Application-Id", this.apiKey);
    }
}


export type AuthMethods = {
    "ApiKey"?: SecurityAuthentication,
    "ApplicationId"?: SecurityAuthentication
}

export type ApiKeyConfiguration = string;
export type HttpBasicConfiguration = { "username": string, "password": string };
export type HttpBearerConfiguration = { tokenProvider: TokenProvider };
export type OAuth2Configuration = { accessToken: string };

export type AuthMethodsConfiguration = {
    "ApiKey"?: ApiKeyConfiguration,
    "ApplicationId"?: ApiKeyConfiguration
}

/**
 * Creates the authentication methods from a swagger description.
 *
 */
export function configureAuthMethods(config: AuthMethodsConfiguration | undefined): AuthMethods {
    let authMethods: AuthMethods = {}

    if (!config) {
        return authMethods;
    }

    if (config["ApiKey"]) {
        authMethods["ApiKey"] = new ApiKeyAuthentication(
            config["ApiKey"]
        );
    }

    if (config["ApplicationId"]) {
        authMethods["ApplicationId"] = new ApplicationIdAuthentication(
            config["ApplicationId"]
        );
    }

    return authMethods;
}