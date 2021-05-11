using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestUnionOnIntersection
    /// </summary>
    public sealed class RequestUnionOnIntersection:  IEquatable<RequestUnionOnIntersection>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// SearchIds
        /// </summary>
        public List<string> SearchIds { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestUnionOnIntersection.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestUnionOnIntersection()
        {
        }

        private RequestUnionOnIntersection(string Id, List<string> SearchIds)
        {
            
            this.Id = Id;
            
            this.SearchIds = SearchIds;
            
        }

        /// <summary>
        /// Returns builder of RequestUnionOnIntersection.
        /// </summary>
        /// <returns>RequestUnionOnIntersectionBuilder</returns>
        public static RequestUnionOnIntersectionBuilder Builder()
        {
            return new RequestUnionOnIntersectionBuilder();
        }

        /// <summary>
        /// Returns RequestUnionOnIntersectionBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestUnionOnIntersectionBuilder</returns>
        public RequestUnionOnIntersectionBuilder With()
        {
            return Builder()
                .Id(Id)
                .SearchIds(SearchIds);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestUnionOnIntersection other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestUnionOnIntersection.
        /// </summary>
        /// <param name="left">Compared (RequestUnionOnIntersection</param>
        /// <param name="right">Compared (RequestUnionOnIntersection</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestUnionOnIntersection left, RequestUnionOnIntersection right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestUnionOnIntersection.
        /// </summary>
        /// <param name="left">Compared (RequestUnionOnIntersection</param>
        /// <param name="right">Compared (RequestUnionOnIntersection</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestUnionOnIntersection left, RequestUnionOnIntersection right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestUnionOnIntersection.
        /// </summary>
        public sealed class RequestUnionOnIntersectionBuilder
        {
            private string _Id;
            private List<string> _SearchIds;

            internal RequestUnionOnIntersectionBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestUnionOnIntersection.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestUnionOnIntersectionBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestUnionOnIntersection.SearchIds property.
            /// </summary>
            /// <param name="value">SearchIds</param>
            public RequestUnionOnIntersectionBuilder SearchIds(List<string> value)
            {
                _SearchIds = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestUnionOnIntersection.
            /// </summary>
            /// <returns>RequestUnionOnIntersection</returns>
            public RequestUnionOnIntersection Build()
            {
                Validate();
                return new RequestUnionOnIntersection(
                    Id: _Id,
                    SearchIds: _SearchIds
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for RequestUnionOnIntersection and cannot be null");
                } 
                if (_SearchIds == null)
                {
                    throw new ArgumentException("SearchIds is a required property for RequestUnionOnIntersection and cannot be null");
                } 
            }
        }

        
    }
}
