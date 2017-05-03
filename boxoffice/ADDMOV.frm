VERSION 5.00
Begin VB.Form ADDMOV 
   Caption         =   "addmov"
   ClientHeight    =   8310
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   15630
   LinkTopic       =   "Form1"
   ScaleHeight     =   8310
   ScaleWidth      =   15630
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text11 
      Height          =   375
      Left            =   6000
      TabIndex        =   21
      Top             =   1440
      Width           =   4695
   End
   Begin VB.TextBox Text10 
      Height          =   375
      Left            =   6000
      TabIndex        =   19
      Top             =   5040
      Width           =   2175
   End
   Begin VB.Frame Frame1 
      Caption         =   "TIMINGS"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4215
      Left            =   120
      TabIndex        =   13
      Top             =   1320
      Width           =   3255
      Begin VB.TextBox Text9 
         Height          =   375
         Left            =   600
         TabIndex        =   17
         Top             =   2760
         Width           =   2175
      End
      Begin VB.TextBox Text8 
         Height          =   375
         Left            =   600
         TabIndex        =   16
         Top             =   2040
         Width           =   2175
      End
      Begin VB.TextBox Text7 
         Height          =   375
         Left            =   600
         TabIndex        =   15
         Top             =   1320
         Width           =   2175
      End
      Begin VB.TextBox Text6 
         Height          =   375
         Left            =   600
         TabIndex        =   14
         Top             =   600
         Width           =   2175
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "BACK"
      Height          =   375
      Left            =   8640
      TabIndex        =   12
      Top             =   5760
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ADD"
      Height          =   375
      Left            =   8640
      TabIndex        =   11
      Top             =   5160
      Width           =   2055
   End
   Begin VB.TextBox Text5 
      DataField       =   "CIRTIFICATION"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   6000
      TabIndex        =   10
      Top             =   4440
      Width           =   4695
   End
   Begin VB.TextBox Text4 
      DataField       =   "DURATION"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   6000
      TabIndex        =   9
      Top             =   3840
      Width           =   4695
   End
   Begin VB.TextBox Text3 
      DataField       =   "RATING"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   6000
      TabIndex        =   8
      Top             =   3240
      Width           =   4695
   End
   Begin VB.TextBox Text2 
      DataField       =   "DIRECTOR"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   6000
      TabIndex        =   7
      Top             =   2640
      Width           =   4695
   End
   Begin VB.TextBox Text1 
      DataField       =   "MOVIE_NAME"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   6000
      TabIndex        =   6
      Top             =   2040
      Width           =   4695
   End
   Begin VB.Label Label8 
      Caption         =   "MOVIE ID"
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
      Left            =   3600
      TabIndex        =   20
      Top             =   1440
      Width           =   2055
   End
   Begin VB.Label Label7 
      Caption         =   "TICKET COST"
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
      Left            =   3600
      TabIndex        =   18
      Top             =   5040
      Width           =   2055
   End
   Begin VB.Label Label6 
      Caption         =   "CIRTIFITATION"
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
      Left            =   3600
      TabIndex        =   5
      Top             =   4440
      Width           =   2055
   End
   Begin VB.Label Label5 
      Caption         =   "DURATION"
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
      Left            =   3600
      TabIndex        =   4
      Top             =   3840
      Width           =   2055
   End
   Begin VB.Label Label4 
      Caption         =   "RATING"
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
      Left            =   3600
      TabIndex        =   3
      Top             =   3240
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "DIRECTOR"
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
      Left            =   3600
      TabIndex        =   2
      Top             =   2640
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "MOVIE NAME"
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
      Left            =   3600
      TabIndex        =   1
      Top             =   2040
      Width           =   2055
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "ADDING MOVIE"
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
      Top             =   600
      Width           =   10455
   End
End
Attribute VB_Name = "ADDMOV"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As ADODB.Connection
Dim rs As ADODB.Recordset


Private Sub Command1_Click()

con.Open
rs.Open "movdetails", con
rs.AddNew

rs.Fields(1) = Text1.Text
rs.Fields(2) = Text2.Text
rs.Fields(3) = Text3.Text
rs.Fields(4) = Text4.Text
rs.Fields(5) = Text5.Text
rs.Fields(6) = Text6.Text
rs.Fields(7) = Text7.Text
rs.Fields(8) = Text8.Text
rs.Fields(9) = Text9.Text
rs.Fields(10) = Text10.Text
rs.Fields(0) = Text11.Text
rs.Update
rs.Close


MsgBox "MOVIE ADDED!!"

Unload Me

End Sub

Private Sub Command2_Click()
Unload Me
MOVIE_DB.Show
End Sub


Private Sub Form_Load()
Set con = New ADODB.Connection
Set rs = New ADODB.Recordset
rs.LockType = adLockOptimistic
con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Settings\Administrator\Desktop\bms\Database\movdetail.mdb;Persist Security Info=False"
End Sub

