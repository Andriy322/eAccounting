using System;
using System.Collections.Generic;

namespace eAccounting.Models;

public partial class Login
{
    public int LoginId { get; set; }

    public string Login1 { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string? Email { get; set; }

    public string? Phone { get; set; }

    public int? RoleId { get; set; }

    public virtual ICollection<Organization> Organizations { get; } = new List<Organization>();

    public virtual Role? Role { get; set; }

    public virtual ICollection<User> Users { get; } = new List<User>();
}
