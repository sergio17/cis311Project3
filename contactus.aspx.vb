Imports Microsoft.VisualBasic

Public Class contactus
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim ContactList As String
        ContactList = txtFirstName.Text & " " & txtLastName.Text & " | " & txtEmail.Text & " | " & TxtNo.Text & " | " & Gender.Text & " | " & Purpose.Text & " | "
        For i = 0 To CheckBoxList1.Items.Count - 1
            If CheckBoxList1.Items(i).Selected Then
                ContactList &= CheckBoxList1.Items(i).Text & ", "
            End If
        Next
        ContactList &= " | " & txtComments.Text & " ~ "

        My.Computer.FileSystem.WriteAllText(Server.MapPath("~/contact.txt"), ContactList, True)
        Label1.Text = "Thank you for submitting!"
    End Sub
End Class
