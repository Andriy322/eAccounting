using System;
using System.Collections.Generic;

namespace eAccounting.Models;

public partial class Role
{
    public int RoleId { get; set; }

    public string RoleName { get; set; } = null!;

    public virtual ICollection<Login> Logins { get; } = new List<Login>();
}
