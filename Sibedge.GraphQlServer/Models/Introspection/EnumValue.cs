﻿namespace Sibedge.GraphQlServer.Models.Introspection
{
    using Newtonsoft.Json;

    public class EnumValue
    {
        /// <summary> Name </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary> Description </summary>
        [JsonProperty("description")]
        public string Description { get; set; }

        /// <summary> Name </summary>
        [JsonProperty("isDeprecated")]
        public bool IsDeprecated { get; set; }

        /// <summary> DeprecationReason </summary>
        [JsonProperty("deprecation reason")]
        public string DeprecationReason { get; set; }
    }
}