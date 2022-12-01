using System;
using System.Collections.Generic;

namespace eAccounting.Models;

public partial class SupportStatus
{
    public int SupportStatusId { get; set; }

    public string SupportStatusName { get; set; } = null!;

    public virtual ICollection<Request> Requests { get; } = new List<Request>();
}
