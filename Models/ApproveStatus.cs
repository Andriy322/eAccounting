using System;
using System.Collections.Generic;

namespace eAccounting.Models;

public partial class ApproveStatus
{
    public int ApproveStatusId { get; set; }

    public string ApproveName { get; set; } = null!;

    public virtual ICollection<Organization> Organizations { get; } = new List<Organization>();

    public virtual ICollection<Request> Requests { get; } = new List<Request>();
}
