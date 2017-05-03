VERSION 5.00
Begin VB.Form TICKET 
   Caption         =   "ticket"
   ClientHeight    =   8310
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   15855
   LinkTopic       =   "Form1"
   ScaleHeight     =   8310
   ScaleWidth      =   15855
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   4080
      TabIndex        =   9
      Top             =   1920
      Width           =   3015
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   600
      TabIndex        =   8
      Top             =   3120
      Width           =   3015
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   4080
      TabIndex        =   7
      Top             =   3120
      Width           =   3015
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   600
      TabIndex        =   6
      Top             =   1920
      Width           =   3015
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   9120
      Top             =   4800
   End
   Begin VB.CommandButton Command1 
      Caption         =   "PRINT"
      Height          =   375
      Left            =   1320
      TabIndex        =   0
      Top             =   4680
      Width           =   1935
   End
   Begin VB.Label Label9 
      Caption         =   "Label9"
      Height          =   495
      Left            =   720
      TabIndex        =   5
      Top             =   600
      Width           =   2895
   End
   Begin VB.Label Label7 
      Caption         =   "MOVIE NAME"
      Height          =   375
      Left            =   4200
      TabIndex        =   4
      Top             =   1320
      Width           =   2895
   End
   Begin VB.Label Label6 
      Caption         =   "SEAT"
      Height          =   375
      Left            =   4200
      TabIndex        =   3
      Top             =   2520
      Width           =   2895
   End
   Begin VB.Label Label5 
      Caption         =   "TIME"
      Height          =   375
      Left            =   720
      TabIndex        =   2
      Top             =   2520
      Width           =   2895
   End
   Begin VB.Label Label4 
      Caption         =   "MOVIE ID"
      Height          =   375
      Left            =   720
      TabIndex        =   1
      Top             =   1320
      Width           =   2895
   End
End
Attribute VB_Name = "TICKET"
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
 
con.Open
rs.Open "Select * from show_timing WHERE  MOVIE_ID = " & MOVIE_ID & ";", con

If rs.EOF = False Then
Text1.Text = rs.Fields(0)
Text2.Text = rs.Fields(2)
Text3.Text = rs.Fields(3)
Text4.Text = rs.Fields(1)

End If

rs.Close
con.Close

End Sub

Private Sub Timer1_Timer()
Label9.Caption = Date

End Sub
