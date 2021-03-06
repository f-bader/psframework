﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PSFramework.ComputerManagement
{
    /// <summary>
    /// Host class containing static iresources for the computer management component
    /// </summary>
    public static class ComputerManagementHost
    {
        /// <summary>
        /// The timespan a PSSession may be idle before it is cleared for cleanup
        /// </summary>
        public static TimeSpan PSSessionIdleTimeout = new TimeSpan(0, 15, 0);
    }
}
