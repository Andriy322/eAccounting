using System;
using System.Collections.Generic;

namespace eAccounting.Models;

public partial class Organization
{
    public int OrganizationId { get; set; }

    public string OrganizationName { get; set; } = null!;

    public int? LocationId { get; set; }

    public int? LoginId { get; set; }

    public int? ApproveStatusId { get; set; }

    public DateTime? CreateDate { get; set; }

    public DateTime? UpdateDate { get; set; }

    public DateTime? ApproveDate { get; set; }

    public string? Details { get; set; }

    public virtual ApproveStatus? ApproveStatus { get; set; }

    public virtual Location? Location { get; set; }

    public virtual Login? Login { get; set; }

    public virtual ICollection<Request> Requests { get; } = new List<Request>();
}
