﻿using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;

namespace DS.Domain.Interface
{
    public interface IDataTableSerializer
    {

        MemoryStream GetStream(DataTable dataTable);
    }
}
