using System;
using System.Collections.Generic;

namespace eAccounting.Models;

public partial class User
{
    public int UserId { get; set; }

    public string? FirstName { get; set; }

    public string? LastName { get; set; }

    public string? MiddleName { get; set; }

    public DateTime? Birthday { get; set; }

    public string? TaxpayerCard { get; set; }

    public DateTime? CreateDate { get; set; }

    public DateTime? UpdateDate { get; set; }

    public int? LocationId { get; set; }

    public int? LoginId { get; set; }

    public virtual Location? Location { get; set; }

    public virtual Login? Login { get; set; }

    public virtual ICollection<Request> Requests { get; } = new List<Request>();
}
