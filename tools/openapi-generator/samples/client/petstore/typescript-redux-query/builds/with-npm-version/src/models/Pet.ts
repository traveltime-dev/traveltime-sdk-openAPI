// tslint:disable
/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { exists, mapValues } from '../runtime';
import {
    Category,
    CategoryFromJSON,
    CategoryToJSON,
    Tag,
    TagFromJSON,
    TagToJSON,
} from './';

/**
 * A pet for sale in the pet store
 * @export
 * @interface Pet
 */
export interface Pet  {
    /**
     * 
     * @type {number}
     * @memberof Pet
     */
    id?: number;
    /**
     * 
     * @type {Category}
     * @memberof Pet
     */
    category?: Category;
    /**
     * 
     * @type {string}
     * @memberof Pet
     */
    name: string;
    /**
     * 
     * @type {Array<string>}
     * @memberof Pet
     */
    photoUrls: Array<string>;
    /**
     * 
     * @type {Array<Tag>}
     * @memberof Pet
     */
    tags?: Array<Tag>;
    /**
     * pet status in the store
     * @type {string}
     * @memberof Pet
     */
    status?: PetStatusEnum;
}

export function PetFromJSON(json: any): Pet {
    return {
        'id': !exists(json, 'id') ? undefined : json['id'],
        'category': !exists(json, 'category') ? undefined : CategoryFromJSON(json['category']),
        'name': json['name'],
        'photoUrls': json['photoUrls'],
        'tags': !exists(json, 'tags') ? undefined : (json['tags'] as Array<any>).map(TagFromJSON),
        'status': !exists(json, 'status') ? undefined : json['status'],
    };
}

export function PetToJSON(value?: Pet): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'id': value.id,
        'category': CategoryToJSON(value.category),
        'name': value.name,
        'photoUrls': value.photoUrls,
        'tags': value.tags === undefined ? undefined : (value.tags as Array<any>).map(TagToJSON),
        'status': value.status,
    };
}

/**
* @export
* @enum {string}
*/
export enum PetStatusEnum {
    Available = 'available',
    Pending = 'pending',
    Sold = 'sold'
}


