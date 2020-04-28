﻿namespace Sibedge.GraphQlServer.Models.Introspection
{
    using Newtonsoft.Json;

    public abstract class FieldBase
    {
        /// <summary> Name </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary> Description </summary>
        [JsonProperty("description")]
        public string Description { get; set; }

        /// <summary> Type </summary>
        [JsonProperty("type")]
        public Type Type { get; set; }
    }
}