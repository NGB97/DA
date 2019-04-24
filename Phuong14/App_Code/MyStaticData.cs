using System;
using System.Collections.Generic;
using System.Text;
using System.Security.Cryptography;
using System.Net.NetworkInformation;
using Microsoft.Win32;
using System.Text.RegularExpressions;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

/// <summary>
/// Summary description for MyStaticData
/// </summary>
public class MyStaticData
{
    
    public static string GetRole(string email)
    {
        string idRole = "";
        idRole = StaticData.getField("tb_Role", "idRole", "email", email).Trim();
        if(idRole == "")
        {
            string NameUser = StaticData.getField("tb_Account", "nameUser", "email", email).Trim();
            if (NameUser != "")
                idRole = "NguoiDan";
        }
        return idRole;
    }
}