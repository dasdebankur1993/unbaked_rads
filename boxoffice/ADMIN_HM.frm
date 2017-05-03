VERSION 5.00
Begin VB.Form ADMIN_HM 
   Caption         =   "admin_hm"
   ClientHeight    =   8370
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   15825
   LinkTopic       =   "Form1"
   ScaleHeight     =   8370
   ScaleWidth      =   15825
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "BOOKING DETAILS"
      Height          =   375
      Left            =   2160
      TabIndex        =   4
      Top             =   1560
      Width           =   7695
   End
   Begin VB.CommandButton Command4 
      Caption         =   "EXIT"
      Height          =   375
      Left            =   8040
      TabIndex        =   3
      Top             =   5520
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "MOVIE DATABASE"
      Height          =   375
      Left            =   2160
      TabIndex        =   2
      Top             =   2760
      Width           =   7695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "USER DATABASE"
      Height          =   375
      Left            =   2160
      TabIndex        =   1
      Top             =   2160
      Width           =   7695
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
      Height          =   495
      Left            =   2160
      TabIndex        =   0
      Top             =   600
      Width           =   7695
   End
End
Attribute VB_Name = "admin_hm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
Unload Me
BOOKING_DB.Show

End Sub

Private Sub Command2_Click()
Unload Me
USER_DB.Show

End Sub

Private Sub Command3_Click()
Unload Me
MOVIE_DB.Show

End Sub

Private Sub Command4_Click()
   If MsgBox("Do you want to logout?", vbYesNo + vbExclamation, "logout") = vbYes Then
    
    Unload Me
    LOGIN.Show
End If

End Sub

