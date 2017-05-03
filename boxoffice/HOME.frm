VERSION 5.00
Begin VB.Form HOME 
   Caption         =   "home"
   ClientHeight    =   6015
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10560
   LinkTopic       =   "Form1"
   ScaleHeight     =   6015
   ScaleWidth      =   10560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "LOGIN"
      Height          =   375
      Left            =   3000
      TabIndex        =   2
      Top             =   3480
      Width           =   5055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SIGN UP"
      Height          =   375
      Left            =   3000
      TabIndex        =   1
      Top             =   2400
      Width           =   5055
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "WELCOME"
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
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   9375
   End
End
Attribute VB_Name = "HOME"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
SIGNUP.Show

End Sub

Private Sub Command2_Click()
Unload Me
LOGIN.Show

End Sub
