/*
  Name: AutoAttach.cs
  Author: kura#0999 (877231123476906035) (AKA Alpine Development)
  Description: This may not work because it was an old file that I used for my old exploits to auto-attach, can be modified at will.
  Usage: Use your brain :>.
*/

using System;
using System.Diagnostics;
using System.Threading;

namespace AA{
  internal class Program {
    static void Main(string[] args) {
        while (true) {
        Process[] procs = Process.GetProcessesByName("RobloxPlayerBeta");
        if (procs.Length > 0 && procs[0].MainWindowHandle != IntPtr.Zero) Console.WriteLine("Roblox opened");
        else Console.WriteLine("Roblox not opened");
        Thread.Sleep(500);
      }
    }
  }
}
