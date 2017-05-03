VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form FLASH 
   Caption         =   "flash"
   ClientHeight    =   8400
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15750
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   12
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   8400
   ScaleWidth      =   15750
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   720
      Top             =   4920
   End
   Begin ComctlLib.ProgressBar ProgressBar1 
      Height          =   375
      Left            =   600
      TabIndex        =   1
      Top             =   3240
      Width           =   10095
      _ExtentX        =   17806
      _ExtentY        =   661
      _Version        =   327682
      Appearance      =   1
   End
   Begin VB.Label Label2 
      Height          =   375
      Left            =   600
      TabIndex        =   2
      Top             =   2520
      Width           =   6015
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "BOXOFFICE"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   600
      TabIndex        =   0
      Top             =   600
      Width           =   10095
   End
End
Attribute VB_Name = "FLASH"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()

Timer1.Interval = Rnd * 300 + 10
ProgressBar1.Value = ProgressBar1.Value + 2

If ProgressBar1.Value = 5 Then
Label2.Caption = "Loading Files..."

ElseIf ProgressBar1.Value = 10 Then
Label2.Caption = "Loading Files....."

ElseIf ProgressBar1.Value = 15 Then
Label2.Caption = "Loading Files..."

ElseIf ProgressBar1.Value = 20 Then
Label2.Caption = "Checking Files..."

ElseIf ProgressBar1.Value = 40 Then
Label2.Caption = "Connecting Database"

ElseIf ProgressBar1.Value = 60 Then
Label2.Caption = "Connection Succesfull"

ElseIf ProgressBar1.Value = 80 Then
Label2.Caption = "Opening Main Page"

ElseIf ProgressBar1.Value >= 100 Then

Unload Me

LOGIN.Show
End If
End Sub
