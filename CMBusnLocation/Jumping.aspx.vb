Imports System.Net
Imports System.Data
Imports Telerik.Web.UI
Imports System.IO

Partial Class Apply_Loan
    Inherits System.Web.UI.Page

    Dim DAL As New endBuilder.EBDataAccessLayer.Func

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Dim today As String = DateTime.Now.ToString("dd/MM/yyyy")
            aDate.Text = today
            submitForm()
            'Dim name As String = txtName.Text.ToString
            'aName.Text = name
            'Dim nric As String = txtNRIC.Text.ToString
            'aNRIC.Text = nric

        End If


    End Sub
    'Public Sub rbtnListMode_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rbtnListMode.SelectedIndexChanged
    '    Dim AcknowledgementMode As String = rbtnListMode.SelectedItem.Text
    'End Sub
    'Protected Sub rbtnListPrice_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rbtnListPrice.SelectedIndexChanged
    '    Dim PricePackage As String = rbtnListPrice.SelectedItem.Text
    'End Sub


    Protected Sub submitForm()
        Dim rtn As Integer = 0

        DAL.RegisterMaint(
            "Add", FullName.Text, NRIC.Text, DOB.Text, MobileNo.Text, Email.Text, FullAddress.Text, "Flyer", WaterConsumption.Text, Breakfast.Text,
            Lunch.Text, Dinner.Text, Vitamins.Text, "Single Jump", ManagerName.Text,
            endBuilder.EBUtility.Func.GetUserId, rtn)

        If endBuilder.EBAdmCustomControl.Ctrl.Print(PanelMsg, LblMsg, rtn) Then
            'Response.Redirect("SalesEntry.aspx?UniqueCd=" & unique & "&Rtn=" & rtn)
            Alert.Show()
        Else
            Alert.Show()
        End If
    End Sub

    Protected Sub HideMsgBox(ByVal s As Object, ByVal e As EventArgs)

        Alert.Hide()

    End Sub




End Class
