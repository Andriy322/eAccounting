using System;
using System.Collections.Generic;

namespace eAccounting.Models;

public partial class Request
{
    public int RequestId { get; set; }

    public int? UserId { get; set; }

    public int? RequestTypeId { get; set; }

    public int? ApproveStatusId { get; set; }

    public int? SupportStatusId { get; set; }

    public int? PriorityId { get; set; }

    public int? OrganizationId { get; set; }

    public DateTime? CreateDate { get; set; }

    public DateTime? UpdateDate { get; set; }

    public string? RequestDetails { get; set; }

    public virtual ApproveStatus? ApproveStatus { get; set; }

    public virtual Organization? Organization { get; set; }

    public virtual Priority? Priority { get; set; }

    public virtual RequestType? RequestType { get; set; }

    public virtual SupportStatus? SupportStatus { get; set; }

    public virtual User? User { get; set; }
}
