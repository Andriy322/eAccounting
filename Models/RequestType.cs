using System;
using System.Collections.Generic;

namespace eAccounting.Models;

public partial class RequestType
{
    public int RequestTypeId { get; set; }

    public string RequestName { get; set; } = null!;

    public virtual ICollection<Request> Requests { get; } = new List<Request>();
}
