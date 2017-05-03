VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form MOVIE_DB 
   Caption         =   "movie_db"
   ClientHeight    =   8415
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   15870
   LinkTopic       =   "Form1"
   ScaleHeight     =   8415
   ScaleWidth      =   15870
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command4 
      Caption         =   "SHOW REPORT"
      Height          =   375
      Left            =   1440
      TabIndex        =   7
      Top             =   5520
      Width           =   3015
   End
   Begin VB.CommandButton Command6 
      Caption         =   "BACK"
      Height          =   375
      Left            =   7920
      TabIndex        =   6
      Top             =   5520
      Width           =   3015
   End
   Begin VB.CommandButton Command5 
      Caption         =   "REFRESH"
      Height          =   375
      Left            =   7920
      TabIndex        =   5
      Top             =   720
      Width           =   3015
   End
   Begin VB.CommandButton Command3 
      Caption         =   "DELETE MOVIE"
      Height          =   375
      Left            =   4680
      TabIndex        =   4
      Top             =   5520
      Width           =   3015
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ADD MOVIE"
      Height          =   375
      Left            =   4680
      TabIndex        =   3
      Top             =   720
      Width           =   3015
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   6360
      TabIndex        =   2
      Top             =   120
      Width           =   3855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "GO"
      Height          =   375
      Left            =   10320
      TabIndex        =   1
      Top             =   120
      Width           =   615
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   360
      Top             =   6120
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   $"MOVIE_DB.frx":0000
      OLEDBString     =   $"MOVIE_DB.frx":0097
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from movdetails"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "MOVIE_DB.frx":012E
      Height          =   3975
      Left            =   360
      TabIndex        =   0
      Top             =   1320
      Width           =   10575
      _ExtentX        =   18653
      _ExtentY        =   7011
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      AllowAddNew     =   -1  'True
      AllowDelete     =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "MOVIE_DB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim confirm As Integer
Dim con As ADODB.Connection
Dim rs As ADODB.Recordset

Private Sub Command1_Click()
Adodc1.RecordSource = "select * from movdetails where MOVIE_NAME = '" + Text1.Text + "'"
Adodc1.Refresh
If Adodc1.Recordset.EOF Then
MsgBox "Data Not Found", vbCritical, "Message"
Else
Adodc1.Caption = Adodc1.RecordSource
End If
End Sub

Private Sub Command2_Click()
ADDMOV.Show

End Sub

Private Sub Command3_Click()

Dim position As Integer

If DataGrid1.ApproxCount > 0 Then
position = DataGrid1.Columns(0).Value
 
con.Open
con.Execute "Delete from movdetails where ID =" & position & ";"
con.Close
MsgBox "selected item has been deleted."

Adodc1.Refresh
DataGrid1.Refresh

Else
  MsgBox "No selected row"
End If



'confirm = MsgBox("Do You Want To Delete The Record", vbYesNo + vbExclamation, "Warning Message")
'If confirm = vbYes Then
'Adodc1.Recordset.Delete
'MsgBox "Record Deleted Successfully", vbInformation, "Delete Record Confirmation"
'Else
'MsgBox "Record Not Deleted", vbInformation, "Record Not Deleted"
'End If


'Me.dname.Enabled = True

'If rs3.RecordCount > 0 Then
'rs3.MoveFirst
'   While (rs3.EOF = False)
'        If (rs3.Fields(0) = Me.dname.Text) Then
'rs3.Delete adAffectCurrent
'            MsgBox "record has been deleted", vbInformation
            
'        End If
'        rs3.MoveNext
'      Wend
'Me.dname.Clear
'Me.Frame1.Enabled = False
'Me.deleted.Enabled = False
'End If
End Sub

Private Sub Command4_Click()
DataReport1.Show
End Sub

Private Sub Command5_Click()
Adodc1.RecordSource = "select * from movdetails "
Adodc1.Refresh
Adodc1.Caption = Adodc1.RecordSource

End Sub

Private Sub Command6_Click()
    
    Unload Me
    admin_hm.Show
    
End Sub

Private Sub Form_Load()

Set con = New ADODB.Connection
Set rs = New ADODB.Recordset
rs.LockType = adLockOptimistic
con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Settings\Administrator\Desktop\bms\Database\movdetail.mdb;Persist Security Info=False"


End Sub
