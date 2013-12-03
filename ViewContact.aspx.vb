'This code-behind parse the saved GuestBook.Txt using a Split () function
'First split using "~", will get the entire guest book entry for one visitor. 
'Take that entry and parse again using split with "|", 
'First element is Name, second element is e-mail, third element is comments. 
'All elements of this entry are then saved in a DataTable object called GuestBook.
'Loop to process all entries in the file.

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
        ContactList.Columns.Add(New DataColumn("Content"))

        For Each Guest In GuestsLogged.Split("~")
            If (Guest.Split("|").Length > 2) Then
                Dim GuestRow As DataRow = GuestBook.NewRow
                GuestRow("GuestName") = Guest.Split("|")(0)
                GuestRow("Email") = Guest.Split("|")(1)
                GuestRow("Content") = Guest.Split("|")(2).Replace(vbCrLf, "<br />")
                GuestBook.Rows.Add(GuestRow)
            End If
        Next
        GridView1.DataSource = GuestBook
        GridView1.DataBind()
    End Sub
End Class
