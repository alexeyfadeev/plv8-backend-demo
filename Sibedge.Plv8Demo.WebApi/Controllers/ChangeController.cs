﻿namespace Sibedge.Plv8Demo.WebApi.Controllers
{
    using System.Collections.Generic;
    using System.Text.Json;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Plv8Server;
    using Plv8Server.Helpers;
    using Plv8Server.Models;

    /// <summary> Controller for inserting / updating data </summary>
    [ApiController]
    [Route("[controller]")]
    public class ChangeController : ControllerBase
    {
        private readonly ChangeService _service;

        /// <inheritdoc />
        public ChangeController(ChangeService service)
        {
            this._service = service;
        }

        /// <summary> Insert data into table </summary>
        /// <param name="tableName"> Table name </param>
        /// <param name="body"> Data to insert </param>
        /// <param name="idKeys"> Primary key fields </param>
        [HttpPost("{tableName}")]
        public ValueTask<IActionResult> Insert(
            [FromBody] JsonElement body,
            [FromRoute] string tableName,
            [FromQuery] IList<string> idKeys = null)
        {
            var data = JsonSerializer.Serialize(body);

            return this._service.Change(tableName, data, idKeys, ChangeOperation.Insert)
                .GetFuncData(this);
        }

        /// <summary> Update or insert data in table </summary>
        /// <param name="tableName"> Table name </param>
        /// <param name="body"> Data to update </param>
        /// <param name="idKeys"> Primary key fields </param>
        [HttpPut("{tableName}")]
        public ValueTask<IActionResult> Upsert(
            [FromBody] JsonElement body,
            [FromRoute] string tableName,
            [FromQuery] IList<string> idKeys = null)
        {
            var data = JsonSerializer.Serialize(body);

            return this._service.Change(tableName, data, idKeys, ChangeOperation.Update)
                .GetFuncData(this);
        }

        /// <summary> Delete data from table </summary>
        /// <param name="tableName"> Table name </param>
        /// <param name="body"> Data to delete </param>
        /// <param name="idKeys"> Primary key fields </param>
        [HttpDelete("{tableName}")]
        public ValueTask<IActionResult> Delete(
            [FromBody] JsonElement body,
            [FromRoute] string tableName,
            [FromQuery] IList<string> idKeys = null)
        {
            var data = JsonSerializer.Serialize(body);

            return this._service.Change(tableName, data, idKeys, ChangeOperation.Delete)
                .GetFuncData(this);
        }
    }
}