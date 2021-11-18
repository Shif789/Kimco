
Partial Class CMBusnLocation_VTradeInForm
    Inherits System.Web.UI.Page

#Region "Declaration"

    Dim DAL As New endBuilder.EBDataAccessLayer.Func
    Dim Rtn As Integer = 0

#End Region
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try

            If Not Page.IsPostBack Then
                d1.Text = Date.Today
                d2.Text = Date.Today
                d3.Text = Date.Today

            End If


        Catch ex As Exception

        End Try

    End Sub

    Protected Sub Save()


        '# Maintenance Function (For Save and Add Record)


        'If endBuilder.EBAdmCustomControl.Ctrl.Print(PanelMsg, LblMsg, Rtn) Then
        '    'Response.Redirect("SalesEntry.aspx?UniqueCd=" & unique & "&Rtn=" & rtn)
        '    Alert.Show()
        'Else
        '    Alert.Show()
        'End If

        ''#
    End Sub
End Class
