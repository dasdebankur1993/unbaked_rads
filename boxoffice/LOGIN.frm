VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form LOGIN 
   Caption         =   "login"
   ClientHeight    =   8430
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   15825
   LinkTopic       =   "Form1"
   ScaleHeight     =   8430
   ScaleWidth      =   15825
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   375
      Left            =   360
      Top             =   5400
      Visible         =   0   'False
      Width           =   3015
      _ExtentX        =   5318
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
      Connect         =   $"LOGIN.frx":0000
      OLEDBString     =   $"LOGIN.frx":0097
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from user_details"
      Caption         =   "Adodc2"
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
   Begin VB.CommandButton Command4 
      Caption         =   "ADMIN LOGIN"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   360
      TabIndex        =   7
      Top             =   3840
      Width           =   6015
   End
   Begin VB.CommandButton Command2 
      Caption         =   "EXIT"
      Height          =   375
      Left            =   3360
      TabIndex        =   6
      Top             =   3240
      Width           =   3015
   End
   Begin VB.CommandButton Command1 
      Caption         =   "LOGIN"
      Height          =   375
      Left            =   360
      TabIndex        =   5
      Top             =   3240
      Width           =   2895
   End
   Begin VB.TextBox Text2 
      DataField       =   "Password"
      DataSource      =   "Adodc2"
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   3240
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   2400
      Width           =   3135
   End
   Begin VB.TextBox Text1 
      DataField       =   "Username"
      DataSource      =   "Adodc2"
      Height          =   375
      Left            =   3240
      TabIndex        =   2
      Top             =   1800
      Width           =   3135
   End
   Begin VB.Label Label3 
      Caption         =   "ENTER USERNAME AND PASSWORD"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   600
      Width           =   5895
   End
   Begin VB.Label Label2 
      Caption         =   "PASSWORD"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   2400
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "USERNAME"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   1800
      Width           =   2415
   End
End
Attribute VB_Name = "LOGIN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Adodc2.RecordSource = "select * from user_details where Username = '" + Text1.Text + "'"
Adodc2.Refresh


If (Adodc2.Recordset.EOF = False) Then
    
    If (Text2.Text = Adodc2.Recordset.Fields("Password")) Then
    MsgBox "Login Succeeded!"
    Unload Me
    USRHM.Show
    Else
    MsgBox "Invalid Password!", vbCritical, "Login"
    Text1.Text = ""
    Text2.Text = ""
    Text1.SetFocus
    End If
Else
    MsgBox "Invalid Username or Password!", vbCritical, "Login"
    Text1.Text = ""
    Text2.Text = ""
    Text1.SetFocus
End If


End Sub


Private Sub Command2_Click()
 If MsgBox("Do you want to exit?", vbYesNo + vbCritical, "exit") = vbYes Then End
End Sub

Private Sub Command3_Click()
Unload Me
SIGNUP.Show
End Sub

Private Sub Command4_Click()
Unload Me
ADMLOGIN.Show

End Sub

