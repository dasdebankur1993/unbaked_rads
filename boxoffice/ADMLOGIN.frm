VERSION 5.00
Begin VB.Form ADMLOGIN 
   Caption         =   "admlogin"
   ClientHeight    =   8355
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   15840
   LinkTopic       =   "Form1"
   ScaleHeight     =   8355
   ScaleWidth      =   15840
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "BACK"
      Height          =   375
      Left            =   1920
      TabIndex        =   6
      Top             =   3600
      Width           =   7335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "LOGIN"
      Height          =   375
      Left            =   1920
      TabIndex        =   5
      Top             =   3000
      Width           =   7335
   End
   Begin VB.TextBox Text2 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   5640
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   2280
      Width           =   3615
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   5640
      TabIndex        =   3
      Top             =   1680
      Width           =   3615
   End
   Begin VB.Label Label3 
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
      Left            =   2040
      TabIndex        =   2
      Top             =   2280
      Width           =   3255
   End
   Begin VB.Label Label2 
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
      Left            =   2040
      TabIndex        =   1
      Top             =   1680
      Width           =   3255
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "WELCOME ADMIN"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2040
      TabIndex        =   0
      Top             =   480
      Width           =   7215
   End
End
Attribute VB_Name = "ADMLOGIN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
 
 If (Text1.Text = "Admin" And Text2.Text = "Admin") Then
    Unload Me
    admin_hm.Show
Else
    MsgBox "Admin Login Error!!"
    Text1.SetFocus
End If
    
 
End Sub

Private Sub Command2_Click()
Unload Me
LOGIN.Show

End Sub
