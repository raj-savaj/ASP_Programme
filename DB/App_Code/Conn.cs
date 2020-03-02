using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Conn
/// </summary>
public class Conn
{
   public static string scon = "Data Source=KSC_LEB-PC;Initial Catalog=Student;Integrated Security=True";

   public static string con
   {
       get
       {
           return scon;
       }
   }
}