VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form USER_DB 
   Caption         =   "user_db"
   ClientHeight    =   8355
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   15870
   LinkTopic       =   "Form1"
   ScaleHeight     =   8355
   ScaleWidth      =   15870
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command6 
      Caption         =   "SHOW REPORT"
      Height          =   375
      Left            =   5520
      TabIndex        =   7
      Top             =   5280
      Width           =   3015
   End
   Begin VB.CommandButton Command5 
      Caption         =   "DELETE EMPLOYEE DETAILS"
      Height          =   375
      Left            =   5280
      TabIndex        =   6
      Top             =   1800
      Width           =   3255
   End
   Begin VB.CommandButton Command4 
      Caption         =   "ADD EMPLOYEE DETAILS"
      Height          =   375
      Left            =   1920
      TabIndex        =   5
      Top             =   1800
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      Caption         =   "BACK"
      Height          =   375
      Left            =   8760
      TabIndex        =   4
      Top             =   5280
      Width           =   3015
   End
   Begin VB.CommandButton Command2 
      Caption         =   "VIEW ALL DATA"
      Height          =   375
      Left            =   8760
      TabIndex        =   3
      Top             =   1800
      Width           =   3015
   End
   Begin VB.CommandButton Command1 
      Caption         =   "GO"
      Height          =   375
      Left            =   11040
      TabIndex        =   2
      Top             =   1200
      Width           =   615
   End
   Begin VB.TextBox Text1 
      Height          =   405
      Left            =   7920
      TabIndex        =   1
      Top             =   1200
      Width           =   3015
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "DATABASE.frx":0000
      Height          =   2655
      Left            =   840
      TabIndex        =   0
      Top             =   2400
      Width           =   10935
      _ExtentX        =   19288
      _ExtentY        =   4683
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
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   495
      Left            =   840
      Top             =   5760
      Visible         =   0   'False
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   873
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
      Connect         =   $"DATABASE.frx":0015
      OLEDBString     =   $"DATABASE.frx":00AC
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from show_timing"
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
End
Attribute VB_Name = "USER_DB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As ADODB.Connection
Dim rs As ADODB.Recordset

Private Sub Command1_Click()
Adodc1.RecordSource = "select * from user_details where Full_name = '" + Text1.Text + "' or Username='" + Text1.Text + "'"
Adodc1.Refresh
If Adodc1.Recordset.EOF Then
MsgBox "Data Not Found", vbCritical, "Message"
Else
Adodc1.Caption = Adodc1.RecordSource
End If
End Sub

Private Sub Command2_Click()
Adodc1.RecordSource = "select * from user_details "
Adodc1.Refresh
Adodc1.Caption = Adodc1.RecordSource
End Sub

Private Sub Command3_Click()
Unload Me
admin_hm.Show

End Sub

Private Sub Command4_Click()
Unload Me
SIGNUP.Show

End Sub

Private Sub Command5_Click()


Dim position As Integer

If DataGrid1.ApproxCount > 0 Then
position = DataGrid1.Columns(0).Value
 
con.Open
con.Execute "Delete from user_details where emp_id =" & position & ";"
con.Close
MsgBox "selected item has been deleted."

Adodc1.Refresh
DataGrid1.Refresh

Else
  MsgBox "No selected row"
End If
End Sub

Private Sub Command6_Click()
DataReport2.Show
End Sub

Private Sub Form_Load()
Set con = New ADODB.Connection
Set rs = New ADODB.Recordset
rs.LockType = adLockOptimistic
con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Settings\Administrator\Desktop\bms\Database\movdetail.mdb;Persist Security Info=False"


End Sub
