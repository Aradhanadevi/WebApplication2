<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 95px;
            width: 319px;
        }
        .auto-style1 {
            width: 54%;
        }
        .auto-style3 {
            width: 261px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 191px;
        }
        .auto-style6 {
            width: 259px;
        }
        .auto-style7 {
            width: 508px;
        }
        .auto-style8 {
            width: 354px;
        }
        </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align:center;" >
&nbsp;<asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile1.xml" Height="250px" Width="500px" />
            </div>
            <div style="text-align:center;">
                <br />
            <asp:Label ID="Label13" runat="server" Text="StudentForm" style="text-align:center; font-size:larger" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style1" ForeColor="Black"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label15" runat="server" Text="Multiview"></asp:Label>
            <br />
                <div >
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <div >
                      <asp:Label ID="Label1" runat="server" Text="FirstName" ToolTip="Enter your first name"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
  <asp:TextBox ID="FirstNameInput" runat="server"></asp:TextBox>
                      <br />
                      <br />
                      <asp:Label ID="Label3" runat="server" Text="LastName"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                      <asp:TextBox ID="LastNameInput" runat="server"></asp:TextBox>
                      <br />
                      <br />
                      <asp:Button ID="Next1" runat="server" Text="Next" OnClick="Button2_Click" />
                </div>
                        </asp:View>
                <asp:View ID="View2" runat="server">
    <div >
        <div style="display: inline-block; vertical-align: middle;">
            <asp:Label ID="Label5" runat="server" Text="DateOfBirth"></asp:Label>
        </div>
        <div style="display: inline-block; vertical-align: middle; margin-left: 10px;">
            <asp:Calendar ID="DateOfBirthInput" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
        </div>
        <br /><br />
        <asp:Label ID="Label4" runat="server" Text="EnrollmentNo"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="EnrollmentInput" runat="server" MaxLength="11" ToolTip="Write 11 digit number"></asp:TextBox>
        <br /><br /><br />
        <asp:Button ID="Previous1" runat="server" Text="Previous" OnClick="Button3_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Next2" runat="server" OnClick="Button4_Click" Text="Next" />
    </div>
</asp:View>

                <asp:View ID="View3" runat="server">
                    <div>
                        &nbsp;<br />&nbsp;&nbsp;<br /> &nbsp;
                        <br />
                        &nbsp;
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">Name:</td>
                                <td>
                                    <asp:Label ID="FirstNameOutput" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">LastName: </td>
                                <td>
                                    <asp:Label ID="LastNameOutput" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">EnrollmentNo:</td>
                                <td>
                                    <asp:Label ID="EnrollmentOutput" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">DOB:</td>
                                <td>
                                    <asp:Label ID="DateOfBirthOutput" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                    <br />
                    <asp:Button ID="Previous2" runat="server" OnClick="Button5_Click" Text="Previous" />
                </div>
                         </asp:View>
                   
            </asp:MultiView>
                     </div>
            <br />
                <asp:Label ID="Label14" runat="server" Text="WizardView"></asp:Label>
            <br />
                </div>
            </div>
        <div style="text-align:center;">
            <asp:Wizard ID="Wizard1" runat="server" Width="838px" ActiveStepIndex="0" Height="244px" OnFinishButtonClick="Wizard1_FinishButtonClick1">
                <WizardSteps>
                    <asp:WizardStep runat="server" title="Step 1">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style5">
                                    <asp:Label ID="Label6" runat="server" Text="Dept"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DeptInput" runat="server" ToolTip="Select your department">
                                        <asp:ListItem>C.E</asp:ListItem>
                                        <asp:ListItem>I.T</asp:ListItem>
                                        <asp:ListItem>Electrical</asp:ListItem>
                                        <asp:ListItem>Timepass</asp:ListItem>
                                        <asp:ListItem>Mechanical</asp:ListItem>
                                        <asp:ListItem>A.I</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Label ID="Label7" runat="server" Text="Class"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ClassInput" runat="server">
                                        <asp:ListItem>TC3</asp:ListItem>
                                        <asp:ListItem>TC2</asp:ListItem>
                                        <asp:ListItem>TC1 Loser Oversmart</asp:ListItem>
                                        <asp:ListItem>TC4 L</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                          
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="Gender"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="GenderMaleInput" runat="server" GroupName="Gender" Text="Male" />
                                    &nbsp;<asp:RadioButton ID="GenderFemaleInput" runat="server" GroupName="Gender" Text="Female" />
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Step 2">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="Label10" runat="server" Text="Subjects"></asp:Label>
                                </td>
                                <td>
                                    <asp:CheckBox ID="DNTInput" runat="server" Text="DNT" />
                                    &nbsp;<asp:CheckBox ID="PAInput" runat="server" Text="PA" />
                                    &nbsp;<asp:CheckBox ID="CSInput" runat="server" Text="CS" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="Label12" runat="server" Text="City"></asp:Label>
                                </td>
                                <td>
                                    <asp:ListBox ID="CityInput" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem>Jamnagar</asp:ListItem>
                                        <asp:ListItem>Rajkot </asp:ListItem>
                                        <asp:ListItem>Bhavanagar</asp:ListItem>
                                        <asp:ListItem>Kutch</asp:ListItem>
                                        <asp:ListItem>Surat</asp:ListItem>
                                    </asp:ListBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://aradhanadevi.netlify.app/">Click to know more</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="final">
                        <table class="auto-style4">
                            <tr>
                                <td>
                                    <asp:Label ID="DeptOutput" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="ClassOutput" runat="server"></asp:Label>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <asp:Label ID="GenderOutput" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="SubjectOutput" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="CityOutput" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
        <br />
        <table class="auto-style4">
            <tr>
                <td class="auto-style8">
                                    <asp:Label runat="server" Text="Result" ID="Label11"></asp:Label>

                                </td>
                <td class="auto-style7">
                    <asp:FileUpload runat="server" ToolTip="Attach your result here." ID="ResultInput"></asp:FileUpload>
                </td>
                <td>
                    <asp:Label runat="server" ID="ResultOutput"></asp:Label>
                </td>
            </tr>
        </table>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            <br />
            <br />
            <br />
            <br />
            <br />
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
