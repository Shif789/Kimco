Imports System.IO
Imports System.Net

Partial Class PublicV3_SignUp
    Inherits System.Web.UI.Page

    Dim Rtn As Integer = 0

    Public Enum MessageType
        Success
        [Error]
        Info
        Warning
    End Enum

    Private Sub Community_Register_Load(sender As Object, e As EventArgs) Handles Me.Load

        'ShowMessage("Record submitted successfully", MessageType.Success)

    End Sub

    Public Sub BtnSignUp_Click(sender As Object, e As EventArgs)


    End Sub

    Protected Sub ShowMessage(ByVal Message As String, ByVal type As MessageType)
        ScriptManager.RegisterStartupScript(Me, Me.[GetType](), System.Guid.NewGuid().ToString(), "ShowMessage('" & Message & "','" & type & "');", True)
    End Sub



    Public Sub ReadMore_Click(sender As Object, e As EventArgs)


        ScriptManager.RegisterClientScriptBlock(Me, [GetType](), "redirect", "location.href = 'https://api.whatsapp.com/send/?phone=601116836319&text&app_absent=0';", True)


    End Sub

    Public Sub ShopNow_Click(sender As Object, e As EventArgs)

        ScriptManager.RegisterClientScriptBlock(Me, [GetType](), "redirect", "location.href = 'Search.aspx';", True)

    End Sub


End Class
