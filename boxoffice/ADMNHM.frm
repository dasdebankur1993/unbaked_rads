VERSION 5.00
Begin VB.Form ADMNHM 
   Caption         =   "admnhm"
   ClientHeight    =   6060
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11865
   LinkTopic       =   "Form1"
   ScaleHeight     =   6060
   ScaleWidth      =   11865
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "DELETE"
      Height          =   375
      Index           =   3
      Left            =   10080
      TabIndex        =   12
      Top             =   4320
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "DELETE"
      Height          =   375
      Index           =   2
      Left            =   4320
      TabIndex        =   11
      Top             =   4320
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "DELETE"
      Height          =   375
      Index           =   1
      Left            =   10080
      TabIndex        =   10
      Top             =   2400
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CHANGE"
      Height          =   375
      Index           =   3
      Left            =   10080
      TabIndex        =   9
      Top             =   3840
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CHANGE"
      Height          =   375
      Index           =   2
      Left            =   4320
      TabIndex        =   8
      Top             =   3840
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CHANGE"
      Height          =   375
      Index           =   1
      Left            =   10080
      TabIndex        =   7
      Top             =   1920
      Width           =   1335
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
      Height          =   1695
      Left            =   6000
      TabIndex        =   4
      Top             =   3120
      Width           =   5535
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
      Height          =   1695
      Left            =   240
      TabIndex        =   3
      Top             =   3120
      Width           =   5535
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
      Height          =   1695
      Left            =   6000
      TabIndex        =   2
      Top             =   1200
      Width           =   5535
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
      Height          =   1695
      Left            =   240
      TabIndex        =   1
      Top             =   1200
      Width           =   5535
      Begin VB.CommandButton Command2 
         Caption         =   "DELETE"
         Height          =   375
         Index           =   0
         Left            =   4080
         TabIndex        =   6
         Top             =   1200
         Width           =   1335
      End
      Begin VB.CommandButton Command1 
         Caption         =   "CHANGE"
         Height          =   375
         Index           =   0
         Left            =   4080
         TabIndex        =   5
         Top             =   720
         Width           =   1335
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "ADD MOVIES"
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
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   11295
   End
End
Attribute VB_Name = "ADMNHM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As ADODB.Connection
Dim rs As ADODB.Recordset

Dim field1, field2, field3, field4 As Integer



Private Sub Command1_Click(Index As Integer)

Unload Me
ADDMOV.Show
End Sub

Private Sub Command2_Click(Index As Integer)
    con.Open
rs.Open "delete from movdetails where id =" & field1, con


con.Close

If MsgBox("Do you want to exit?", vbYesNo + vbCritical, "exit") = vbYes Then End
End Sub

Private Sub Form_Load()
Set con = New ADODB.Connection
Set rs = New ADODB.Recordset
rs.LockType = adLockOptimistic
con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Settings\Administrator\My Documents\movdetail.mdb;Mode=ReadWrite|Share Deny None;Persist Security Info=False"


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


