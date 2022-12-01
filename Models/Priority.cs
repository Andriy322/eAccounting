using System;
using System.Collections.Generic;

namespace eAccounting.Models;

public partial class Priority
{
    public int PriorityId { get; set; }

    public string PriorityName { get; set; } = null!;

    public virtual ICollection<Request> Requests { get; } = new List<Request>();
}
