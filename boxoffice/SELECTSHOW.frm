VERSION 5.00
Begin VB.Form SELECTSHOW 
   Caption         =   "selectshow"
   ClientHeight    =   5775
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11235
   LinkTopic       =   "Form1"
   ScaleHeight     =   5775
   ScaleWidth      =   11235
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command5 
      Caption         =   "BACK"
      Height          =   375
      Left            =   4560
      TabIndex        =   5
      Top             =   4080
      Width           =   2415
   End
   Begin VB.CommandButton Command4 
      Caption         =   "21:00"
      Height          =   375
      Left            =   480
      TabIndex        =   4
      Top             =   3360
      Width           =   10455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "17:30"
      Height          =   375
      Left            =   480
      TabIndex        =   3
      Top             =   2640
      Width           =   10455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "14:00"
      Height          =   375
      Left            =   480
      TabIndex        =   2
      Top             =   1920
      Width           =   10455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "10:30"
      Height          =   375
      Left            =   480
      TabIndex        =   1
      Top             =   1200
      Width           =   10455
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "SELECT SHOW "
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
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   10335
   End
End
Attribute VB_Name = "SELECTSHOW"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command5_Click()
Unload Me
USRHM.Show

End Sub
