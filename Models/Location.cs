using System;
using System.Collections.Generic;

namespace eAccounting.Models;

public partial class Location
{
    public int LocationId { get; set; }

    public string Country { get; set; } = null!;

    public string City { get; set; } = null!;

    public string Address { get; set; } = null!;

    public virtual ICollection<Organization> Organizations { get; } = new List<Organization>();

    public virtual ICollection<User> Users { get; } = new List<User>();
}
