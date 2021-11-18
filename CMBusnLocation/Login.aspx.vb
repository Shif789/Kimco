

Imports System.Data

Partial Class EBAdmin_Login
    Inherits System.Web.UI.Page

    Dim DAL As New endBuilder.EBDataAccessLayer.Func
    Dim Rtn As Integer = 0

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        'Page set focus
        'Dim id As String = CType(LoginCtrl.FindControl("LoginButton"), Button).UniqueID
        'Page.SetFocus(LoginCtrl)
        Page.Form.DefaultButton = BtnLogin.UniqueID

        'capcha init
        'RadCaptcha1.CaptchaImage.RenderImageOnly = True
        'RadCaptcha1.ValidatedTextBoxID = "txtRadCaptcha"
        'TxtRadCaptcha.Enabled = True

        If Not Page.IsPostBack Then

            UserName.Focus()

            Dim ClsInit As New endBuilder.Init.Param


            'Page custom function
            If Request.QueryString("s") <> "" Then
                endBuilder.EBAdmCustomControl.Ctrl.Print(PanelMsgFrame, LblMsg, 41019)  'Session has expired, please login to the system again.	               
                Alert.Show()
            End If

        End If

    End Sub

    Protected Sub HideMsgBox(ByVal s As Object, ByVal e As EventArgs)
        Alert.Hide()
    End Sub

    Protected Sub ForgetPassword(sender As Object, e As EventArgs)

        ScriptManager.RegisterClientScriptBlock(Me, [GetType](), "redirect", "location.href = 'ForgetPassword.aspx';", True)

    End Sub

    Protected Sub BtnLogin_Click1(sender As Object, e As EventArgs) Handles BtnLogin.Click

        Dim IP As String = ""

        IP = System.Net.Dns.GetHostEntry(System.Net.Dns.GetHostName()).AddressList.GetValue(0).ToString()

        Dim DT As New DataTable
        Rtn = 40004 'Preset error code invalid login

        DT = DAL.WebLoginOthers(UserName.Text, Password.Text, IP)

        If Not DT Is Nothing Then
            If DT.Rows.Count > 0 Then

                Dim MsgCd As String = ""
                Dim UserGroupId As String = ""
                Dim Name As String = ""
                Dim ResetPasswordInd As Integer = 0

                ResetPasswordInd = DT.Rows(0)("ResetPasswordInd")
                MsgCd = DT.Rows(0)("MsgCd")

                If ResetPasswordInd = "1" Then

                    'User Authenticated
                    UserGroupId = DT.Rows(0)("UserGroupId")
                    Name = DT.Rows(0)("Name")

                    Session("UserIdAdm") = UserName.Text
                    Session("UserGroupId") = UserGroupId
                    Session("Name") = Name
                    Session("BusnID") = DT.Rows(0)("BusnCd")

                    ScriptManager.RegisterClientScriptBlock(Me, [GetType](), "redirect", "location.href = 'ResetPassword.aspx';", True)

                End If


                If MsgCd = "0" Then

                    'User Authenticated
                    UserGroupId = DT.Rows(0)("UserGroupId")
                    Name = DT.Rows(0)("Name")

                    Session("UserIdAdm") = UserName.Text
                    Session("UserGroupId") = UserGroupId
                    Session("Name") = Name
                    Session("BusnID") = DT.Rows(0)("BusnCd")

                    ScriptManager.RegisterClientScriptBlock(Me, [GetType](), "redirect", "location.href = 'Default.aspx';", True)

                    Exit Sub

                End If

                Rtn = MsgCd

            End If
        End If

        If Rtn > 0 Then
            endBuilder.EBAdmCustomControl.Ctrl.Print(PanelMsgFrame, LblMsg, Rtn)
            Alert.Show()
        End If

    End Sub

End Class
