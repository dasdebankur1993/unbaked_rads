VERSION 5.00
Begin VB.Form USRHM 
   Caption         =   "usrhm"
   ClientHeight    =   8400
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15840
   LinkTopic       =   "Form1"
   ScaleHeight     =   8400
   ScaleWidth      =   15840
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "LOGOUT"
      Height          =   375
      Left            =   8160
      TabIndex        =   9
      Top             =   5880
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SELECT"
      Height          =   375
      Index           =   3
      Left            =   8160
      TabIndex        =   8
      Top             =   5040
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SELECT"
      Height          =   375
      Index           =   2
      Left            =   3960
      TabIndex        =   7
      Top             =   5040
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SELECT"
      Height          =   375
      Index           =   1
      Left            =   8160
      TabIndex        =   6
      Top             =   2640
      Width           =   1575
   End
   Begin VB.Frame Frame4 
      Caption         =   "SCREEN4"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   5880
      TabIndex        =   4
      Top             =   3360
      Width           =   3975
   End
   Begin VB.Frame Frame3 
      Caption         =   "SCREEN3"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   1680
      TabIndex        =   3
      Top             =   3360
      Width           =   3975
   End
   Begin VB.Frame Frame2 
      Caption         =   "SCREEN2"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   5880
      TabIndex        =   2
      Top             =   960
      Width           =   3975
   End
   Begin VB.Frame Frame1 
      Caption         =   "SCREEN1"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   1680
      TabIndex        =   1
      Top             =   960
      Width           =   3975
      Begin VB.CommandButton Command1 
         Caption         =   "SELECT"
         Height          =   375
         Index           =   0
         Left            =   2280
         TabIndex        =   5
         Top             =   1680
         Width           =   1575
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "MOVIES"
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
      Left            =   1680
      TabIndex        =   0
      Top             =   240
      Width           =   8175
   End
End
Attribute VB_Name = "USRHM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As ADODB.Connection
Dim rs As ADODB.Recordset

Dim field1 As Integer
Dim field2 As Integer
Dim field3 As Integer
Dim field4 As Integer



Private Sub Command1_Click(Index As Integer)

If Index = 0 Then
MOVIE_ID = field1
ElseIf Index = 1 Then
MOVIE_ID = field2
ElseIf Index = 2 Then
MOVIE_ID = field3
ElseIf Index = 3 Then
MOVIE_ID = field4
End If

Unload Me
SEATIME.Show
End Sub

Private Sub Command2_Click()
    If MsgBox("Do you want to logout?", vbYesNo + vbCritical, "logout") = vbYes Then
    
    Unload Me
    LOGIN.Show
End If
End Sub

Private Sub Form_Load()
Set con = New ADODB.Connection
Set rs = New ADODB.Recordset
rs.LockType = adLockOptimistic
con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Settings\Administrator\Desktop\bms\Database\movdetail.mdb;Persist Security Info=False"


con.Open
rs.Open "Select * from movdetails;", con

If rs.EOF Then
  MsgBox "empty"
Else
Frame1.Caption = rs.Fields(1)
field1 = rs.Fields(0)

rs.MoveNext
End If


If rs.EOF Then
Else
  Frame2.Caption = rs.Fields(1)
  field2 = rs.Fields(0)
  
rs.MoveNext
End If


If rs.EOF Then
Else
  Frame3.Caption = rs.Fields(1)
  field3 = rs.Fields(0)
rs.MoveNext
End If


rs.Close
con.Close

End Sub

