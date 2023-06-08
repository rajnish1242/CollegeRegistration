<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormSubmissionDetails.aspx.cs" Inherits="CollegeRegistrationForm.FormSubmissionDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 113px;
        }
        .auto-style5 {
            width: 97px;
        }
        .auto-style6 {
            margin-bottom: 0px;
        }
        .auto-style7 {
            width: 97px;
            height: 20px;
        }
        .auto-style8 {
            width: 113px;
            height: 20px;
        }
        .auto-style10 {
            height: 20px;
        }
        .auto-style11 {
            width: 97px;
            height: 14px;
        }
        .auto-style12 {
            width: 113px;
            height: 14px;
        }
        .auto-style14 {
            height: 14px;
        }
        .auto-style15 {
            width: 97px;
            height: 23px;
        }
        .auto-style16 {
            width: 113px;
            height: 23px;
        }
        .auto-style18 {
            height: 23px;
        }
        .auto-style19 {
            width: 114px;
            height: 20px;
        }
        .auto-style20 {
            width: 114px;
        }
        .auto-style21 {
            width: 114px;
            height: 14px;
        }
        .auto-style22 {
            width: 114px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;<strong>Name&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style19"><strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender&nbsp;&nbsp; :</strong></td>
                    <td class="auto-style10">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;
                        </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style20">
                        <strong></strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DOB&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </strong>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style21"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;</strong></td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong></strong></td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>&nbsp;&nbsp;&nbsp; Country&nbsp;&nbsp;:&nbsp;&nbsp; </strong>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style20"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; </strong>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong></strong></td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </strong>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong></strong></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Course</strong></td>
                    <td class="auto-style3"><strong>&nbsp;ObtainedMarks</strong></td>
                    <td class="auto-style20"><strong>&nbsp;&nbsp;&nbsp;&nbsp; Total Marks</strong></td>
                    <td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Percentage</strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox7" runat="server" AutoPostBack="True"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="TextBox8" runat="server" AutoPostBack="True" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" AutoPostBack="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox11" runat="server" AutoPostBack="True"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="TextBox12" runat="server" AutoPostBack="True" OnTextChanged="TextBox12_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server" AutoPostBack="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox15" runat="server" AutoPostBack="True"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="TextBox16" runat="server" AutoPostBack="True" OnTextChanged="TextBox16_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox17" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Average&nbsp;&nbsp;&nbsp;&nbsp;:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3"><strong>
                        <asp:Button ID="Button1" runat="server" BackColor="Red" BorderStyle="Solid" ForeColor="Black" OnClick="Button1_Click" Text="SUBMIT" Width="120px" />
                        </strong></td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
