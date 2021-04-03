﻿namespace Sibedge.Plv8Demo.WebApi.Controllers
{
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Plv8Server;
    using Plv8Server.Helpers;
    using Plv8Server.Models;

    /// <summary> GraphQL controller </summary>
    [ApiController]
    [Route("[controller]")]
    public class GraphQlController : ControllerBase
    {
        private readonly GraphQlService _service;

        /// <inheritdoc />
        public GraphQlController(GraphQlService service)
        {
            this._service = service;
        }

        [HttpGet]
        public IActionResult Get()
        {
            return this.Ok();
        }

        /// <summary> Execute graphQL query </summary>
        /// <param name="query"> Query data </param>
        [HttpPost]
        public ValueTask<IActionResult> Query([FromBody]GraphQlQuery query)
        {
            return this._service.PerformQuery(query).GetFuncData(this);
        }
    }
}