VERSION 5.00
Begin VB.Form SIGNUP 
   Caption         =   "signup"
   ClientHeight    =   8415
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   15840
   LinkTopic       =   "Form1"
   ScaleHeight     =   8415
   ScaleWidth      =   15840
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text7 
      Height          =   375
      Left            =   4440
      TabIndex        =   14
      Top             =   960
      Width           =   4095
   End
   Begin VB.TextBox Text6 
      Height          =   375
      Left            =   4440
      TabIndex        =   12
      Top             =   2760
      Width           =   4095
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   4440
      TabIndex        =   10
      Top             =   2160
      Width           =   4095
   End
   Begin VB.TextBox Text3 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   4440
      PasswordChar    =   "*"
      TabIndex        =   8
      Top             =   3960
      Width           =   4095
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   4440
      TabIndex        =   7
      Top             =   3360
      Width           =   4095
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   4440
      TabIndex        =   6
      Top             =   1560
      Width           =   4095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "BACK"
      Height          =   375
      Left            =   840
      TabIndex        =   5
      Top             =   5160
      Width           =   7815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ADD DETAILS"
      Height          =   375
      Left            =   840
      TabIndex        =   4
      Top             =   4560
      Width           =   7815
   End
   Begin VB.Label Label8 
      Caption         =   "EMPLOYEE ID"
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
      Left            =   840
      TabIndex        =   13
      Top             =   960
      Width           =   3255
   End
   Begin VB.Label Label7 
      Caption         =   "PHONE No."
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
      Left            =   840
      TabIndex        =   11
      Top             =   2760
      Width           =   3255
   End
   Begin VB.Label Label5 
      Caption         =   "E-MAIL ID"
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
      Left            =   840
      TabIndex        =   9
      Top             =   2160
      Width           =   3255
   End
   Begin VB.Label Label4 
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
      Left            =   840
      TabIndex        =   3
      Top             =   3960
      Width           =   3255
   End
   Begin VB.Label Label3 
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
      Left            =   840
      TabIndex        =   2
      Top             =   3360
      Width           =   3255
   End
   Begin VB.Label Label2 
      Caption         =   "FULL NAME"
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
      Left            =   840
      TabIndex        =   1
      Top             =   1560
      Width           =   3255
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "ENTER DETAILS"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   840
      TabIndex        =   0
      Top             =   240
      Width           =   7695
   End
End
Attribute VB_Name = "SIGNUP"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As ADODB.Connection
Dim rs As ADODB.Recordset


Private Sub Form_Load()


Set con = New ADODB.Connection
Set rs = New ADODB.Recordset
rs.LockType = adLockOptimistic
con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Settings\Administrator\Desktop\bms\Database\movdetail.mdb;Persist Security Info=False"


End Sub
Private Sub Command1_Click()

If (Text1.Text = "" And Text4.Text = "" And Text7.Text = "" And Text6.Text = "" And Text2.Text = "" And Text3.Text = "") Then
    MsgBox "Incomplete Data!!", vbCritical, "add"

ElseIf (Text4.Text = "" And Text7.Text = "" And Text6.Text = "" And Text2.Text = "" And Text3.Text = "") Then
    MsgBox "Incomplete Data!!", vbCritical, "signup"
Text1.SetFocus

ElseIf (Text7.Text = "" And Text6.Text = "" And Text2.Text = "" And Text3.Text = "") Then
    MsgBox "Incomplete Data!!", vbCritical, "signup"
Text1.SetFocus

ElseIf (Text6.Text = "" And Text2.Text = "" And Text3.Text = "") Then
    MsgBox "Incomplete Data!!", vbCritical, "signup"
Text1.SetFocus

ElseIf (Text2.Text = "" And Text3.Text = "") Then
    MsgBox "Incomplete Data!!", vbCritical, "signup"
Text1.SetFocus

ElseIf (Text3.Text = "") Then
    MsgBox "Incomplete Data!!", vbCritical, "signup"
Text1.SetFocus

ElseIf Not IsValidEmailAddress(Text4.Text) Then
 MsgBox "invalid email"
 
ElseIf Not IsNumeric(Text6.Text) Then
 MsgBox "invalid phone number"
Else
  
con.Open
rs.Open "user_details", con
rs.AddNew

rs.Fields(0) = Text7.Text
rs.Fields(1) = Text1.Text
rs.Fields(2) = Text4.Text
rs.Fields(3) = Text6.Text
rs.Fields(4) = Text2.Text
rs.Fields(5) = Text3.Text

Text7.Text = ""
Text1.Text = ""
Text4.Text = ""
Text6.Text = ""
Text3.Text = ""
Text2.Text = ""

rs.Update
rs.Close


MsgBox "Details Added!!"

End If

End Sub

Private Sub Command2_Click()
    Unload Me
    USER_DB.Show
End Sub

