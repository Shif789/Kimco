
Partial Class Logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'FormsAuthentication.SignOut()               
        Session.Clear()
        Response.Redirect("login.aspx")
    End Sub

End Class
