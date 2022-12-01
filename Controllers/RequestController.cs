using eAccounting.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Infrastructure;
using Microsoft.EntityFrameworkCore;

namespace eAccounting.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RequestController : ControllerBase
    {
        private readonly EAccountingDbContext _context;

        public RequestController(EAccountingDbContext context)
        {
            _context = context;

        }

        [HttpGet]
        [Route("Requests")]
        public List<Request> GetAll()
        {
            var empList = _context.Requests.OrderBy(c => c.RequestId).ToList();
            return empList;
        }

        //[HttpGet]
        //[Route("Requests")]
        //public async Task<IActionResult> Requests()
        //{
        //    List<Request> requests = await _context.Requests.OrderBy(c => c.RequestId).ToListAsync();

        //    return StatusCode(StatusCodes.Status200OK, requests);
        //}

        //[HttpPost]
        //[Route("Add")]
        //public async Task<IActionResult> Add([FromBody ] Request request)
        //{
        //    await _context.Requests.AddAsync(request);
        //    await _context.SaveChangesAsync();

        //    return StatusCode(StatusCodes.Status200OK, "ok");
        //}

        //[HttpPut]
        //[Route("Edit")]
        //public async Task<IActionResult> Edit([FromBody] Request request)
        //{
        //    _context.Requests.Update(request);
        //    await _context.SaveChangesAsync();

        //    return StatusCode(StatusCodes.Status200OK, "ok");
        //}

        //[HttpDelete]
        //[Route("Delete/{id:int}")]
        //public async Task<IActionResult> Delete(int id)
        //{
        //    Request requ = _context.Requests.Find(id);

        //    _context.Requests.Remove(requ);
        //    await _context.SaveChangesAsync();

        //    return StatusCode(StatusCodes.Status200OK, "ok");
        //}

    }
}
