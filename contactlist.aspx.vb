Imports System.Data
Partial Class contactList
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Not IsPostBack) Then
            BindGrid()
        End If
    End Sub
    Private Sub BindGrid()
        Dim ContactList As New DataTable
        Dim ContactSubmitted As String
        Dim ContactListPath As String = Server.MapPath("~/contact.txt")
        ContactSubmitted = My.Computer.FileSystem.ReadAllText(ContactListPath)
        ContactList.Columns.Add(New DataColumn("Name"))
        ContactList.Columns.Add(New DataColumn("Email"))
        ContactList.Columns.Add(New DataColumn("Phone"))
        ContactList.Columns.Add(New DataColumn("Gender"))
        ContactList.Columns.Add(New DataColumn("Purpose"))
        ContactList.Columns.Add(New DataColumn("How did you find us?"))
        ContactList.Columns.Add(New DataColumn("Comments"))

        For Each Contact In ContactSubmitted.Split("~")
            If (Contact.Split("|").Length > 5) Then
                Dim ContactRow As DataRow = ContactList.NewRow
                ContactRow("Name") = Contact.Split("|")(0)
                ContactRow("Email") = Contact.Split("|")(1)
                ContactRow("Phone") = Contact.Split("|")(2)
                ContactRow("Gender") = Contact.Split("|")(3)
                ContactRow("Purpose") = Contact.Split("|")(4)
                ContactRow("How did you find us?") = Contact.Split("|")(5)
                ContactRow("Comments") = Contact.Split("|")(6).Replace(vbCrLf, "<br />")
                ContactList.Rows.Add(ContactRow)
            End If
        Next
        GridView1.DataSource = ContactList
        GridView1.DataBind()
    End Sub
End Class
