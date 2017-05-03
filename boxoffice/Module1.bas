Attribute VB_Name = "Module1"
Public MOVIE_ID As Integer



Public Function ContainsNumber(ByVal Text As String) As Single
    Dim lX As Long

    For lX = 1 To Len(Text)
        If IsNumeric(Mid$(Text, lX, 1)) Then
            ContainsNumber = Val(Mid$(Text, lX))
            Exit For
        End If
    Next
End Function


Public Function IsValidEmailAddress(AddressString As String) As Boolean

Dim sHost As String
Dim iPos As Integer
Dim sInvalidChars As String

If Len(Trim(AddressString)) = 0 Then
    IsValidEmailAddress = False
    Exit Function
End If

sInvalidChars = "!#$%^&*()=+{}[]|\;:'/?>,< "

    For iPos = 1 To Len(AddressString)
        If InStr(sInvalidChars, _
            Mid(AddressString, iPos, 1)) > 0 Then
            
            IsValidEmailAddress = False
            Exit Function
        End If
    Next


iPos = InStr(AddressString, "@")

If iPos = 0 Or Left(AddressString, 1) = "@" Then
    IsValidEmailAddress = False
    Exit Function
End If

sHost = Mid(AddressString, iPos + 1)
'can't have multiple "@" chars in the string
If InStr(sHost, "@") > 0 Then
    IsValidEmailAddress = False
    Exit Function
End If

IsValidEmailAddress = IsValidIPHost(UCase(sHost))


End Function
Private Function IsValidIPHost(HostString As String) As Boolean

Dim sHost As String
Dim bDottedQuad As Boolean
Dim sSplit() As String
Dim ictr As Integer
Dim bAns As Boolean
Dim sTopLevelDomains() As String

sHost = HostString

If InStr(sHost, ".") = 0 Then
    IsValidIPHost = False
    Exit Function
End If

sSplit = Split(sHost, ".")

If UBound(sSplit) = 3 Then
    bDottedQuad = True
    For ictr = 0 To 3
        If Not IsNumeric(sSplit(ictr)) Then
            bDottedQuad = False
            Exit For
        End If
    Next
    
    If bDottedQuad Then
        bAns = True
        For ictr = 0 To 3
            If ictr = 0 Then
            bAns = Val(sSplit(ictr)) <= 239
                If bAns = False Then Exit For
            Else
                bAns = Val(sSplit(ictr)) <= 255
                If bAns = False Then Exit For
            End If
        Next
        
        IsValidIPHost = bAns

        
        Exit Function
    End If
End If 'ubound(ssplit) = 3

    IsValidIPHost = isTopLevelDomain(sSplit(UBound(sSplit)))


End Function

Private Function isTopLevelDomain(DomainString As String) As Boolean
Dim asTopLevels() As String
Dim ictr As Integer
Dim iNumDomains As Integer
Dim bAns As Boolean

iNumDomains = 251
ReDim asTopLevels(iNumDomains - 1) As String


'Obtained from www.IANA.com.  Can and will change
asTopLevels(0) = "COM"
asTopLevels(1) = "ORG"
asTopLevels(2) = "NET"
asTopLevels(3) = "EDU"
asTopLevels(4) = "GOV"
asTopLevels(5) = "MIL"
asTopLevels(6) = "INT"
asTopLevels(7) = "AF"
asTopLevels(8) = "AL"
asTopLevels(9) = "DZ"
asTopLevels(10) = "AS"
asTopLevels(11) = "AD"
asTopLevels(12) = "AO"
asTopLevels(13) = "AI"
asTopLevels(14) = "AQ"
asTopLevels(15) = "AG"
asTopLevels(16) = "AR"
asTopLevels(17) = "AM"
asTopLevels(18) = "AW"
asTopLevels(19) = "AC"
asTopLevels(20) = "AU"
asTopLevels(21) = "AT"
asTopLevels(22) = "AZ"
asTopLevels(23) = "BS"
asTopLevels(24) = "BH"
asTopLevels(25) = "BD"
asTopLevels(26) = "BB"
asTopLevels(27) = "BY"
asTopLevels(28) = "BZ"
asTopLevels(29) = "BT"
asTopLevels(30) = "BJ"
asTopLevels(31) = "BE"
asTopLevels(32) = "BM"
asTopLevels(33) = "BO"
asTopLevels(34) = "BA"
asTopLevels(35) = "BW"
asTopLevels(36) = "BV"
asTopLevels(37) = "BR"
asTopLevels(38) = "IO"
asTopLevels(39) = "BN"
asTopLevels(40) = "BG"
asTopLevels(41) = "BF"
asTopLevels(42) = "BI"
asTopLevels(43) = "KH"
asTopLevels(44) = "CM"
asTopLevels(45) = "CA"
asTopLevels(46) = "CV"
asTopLevels(47) = "KY"
asTopLevels(48) = "CF"
asTopLevels(49) = "TD"
asTopLevels(50) = "CL"
asTopLevels(51) = "CN"
asTopLevels(52) = "CX"
asTopLevels(53) = "CC"
asTopLevels(54) = "CO"
asTopLevels(55) = "KM"
asTopLevels(56) = "CD"
asTopLevels(57) = "CG"
asTopLevels(58) = "CK"
asTopLevels(59) = "CR"
asTopLevels(60) = "CI"
asTopLevels(61) = "HR"
asTopLevels(62) = "CU"
asTopLevels(63) = "CY"
asTopLevels(64) = "CZ"
asTopLevels(65) = "DK"
asTopLevels(66) = "DJ"
asTopLevels(67) = "DM"
asTopLevels(68) = "DO"
asTopLevels(69) = "TP"
asTopLevels(70) = "EC"
asTopLevels(71) = "EG"
asTopLevels(72) = "SV"
asTopLevels(73) = "GQ"
asTopLevels(74) = "ER"
asTopLevels(75) = "EE"
asTopLevels(76) = "ET"
asTopLevels(77) = "FK"
asTopLevels(78) = "FO"
asTopLevels(79) = "FJ"
asTopLevels(80) = "FI"
asTopLevels(81) = "FR"
asTopLevels(82) = "GF"
asTopLevels(83) = "PF"
asTopLevels(84) = "TF"
asTopLevels(85) = "GA"
asTopLevels(86) = "GM"
asTopLevels(87) = "GE"
asTopLevels(88) = "DE"
asTopLevels(89) = "GH"
asTopLevels(90) = "GI"
asTopLevels(91) = "GR"
asTopLevels(92) = "GL"
asTopLevels(93) = "GD"
asTopLevels(94) = "GP"
asTopLevels(95) = "GU"
asTopLevels(96) = "GT"
asTopLevels(97) = "GG"
asTopLevels(98) = "GN"
asTopLevels(99) = "GW"
asTopLevels(100) = "GY"
asTopLevels(101) = "HT"
asTopLevels(102) = "HM"
asTopLevels(103) = "VA"
asTopLevels(104) = "HN"
asTopLevels(105) = "HK"
asTopLevels(106) = "HU"
asTopLevels(107) = "IS"
asTopLevels(108) = "IN"
asTopLevels(109) = "ID"
asTopLevels(110) = "IR"
asTopLevels(111) = "IQ"
asTopLevels(112) = "IE"
asTopLevels(113) = "IM"
asTopLevels(114) = "IL"
asTopLevels(115) = "IT"
asTopLevels(116) = "JM"
asTopLevels(117) = "JP"
asTopLevels(118) = "JE"
asTopLevels(119) = "JO"
asTopLevels(120) = "KZ"
asTopLevels(121) = "KE"
asTopLevels(122) = "KI"
asTopLevels(123) = "KP"
asTopLevels(124) = "KR"
asTopLevels(125) = "KW"
asTopLevels(126) = "KG"
asTopLevels(127) = "LA"
asTopLevels(128) = "LV"
asTopLevels(129) = "LB"
asTopLevels(130) = "LS"
asTopLevels(131) = "LR"
asTopLevels(132) = "LY"
asTopLevels(133) = "LI"
asTopLevels(134) = "LT"
asTopLevels(135) = "LU"
asTopLevels(136) = "MO"
asTopLevels(137) = "MK"
asTopLevels(138) = "MG"
asTopLevels(139) = "MW"
asTopLevels(140) = "MY"
asTopLevels(141) = "MV"
asTopLevels(142) = "ML"
asTopLevels(143) = "MT"
asTopLevels(144) = "MH"
asTopLevels(145) = "MQ"
asTopLevels(146) = "MR"
asTopLevels(147) = "MU"
asTopLevels(148) = "YT"
asTopLevels(149) = "MX"
asTopLevels(150) = "FM"
asTopLevels(151) = "MD"
asTopLevels(152) = "MC"
asTopLevels(153) = "MN"
asTopLevels(154) = "MS"
asTopLevels(155) = "MA"
asTopLevels(156) = "MZ"
asTopLevels(157) = "MM"
asTopLevels(158) = "NA"
asTopLevels(159) = "NR"
asTopLevels(160) = "NP"
asTopLevels(161) = "NL"
asTopLevels(162) = "AN"
asTopLevels(163) = "NC"
asTopLevels(164) = "NZ"
asTopLevels(165) = "NI"
asTopLevels(166) = "NE"
asTopLevels(167) = "NG"
asTopLevels(168) = "NU"
asTopLevels(169) = "NF"
asTopLevels(170) = "MP"
asTopLevels(171) = "NO"
asTopLevels(172) = "OM"
asTopLevels(173) = "PK"
asTopLevels(174) = "PW"
asTopLevels(175) = "PA"
asTopLevels(176) = "PG"
asTopLevels(177) = "PY"
asTopLevels(178) = "PE"
asTopLevels(179) = "PH"
asTopLevels(180) = "PN"
asTopLevels(181) = "PL"
asTopLevels(182) = "PT"
asTopLevels(183) = "PR"
asTopLevels(184) = "QA"
asTopLevels(185) = "RE"
asTopLevels(186) = "RO"
asTopLevels(187) = "RU"
asTopLevels(188) = "RW"
asTopLevels(189) = "KN"
asTopLevels(190) = "LC"
asTopLevels(191) = "VC"
asTopLevels(192) = "WS"
asTopLevels(193) = "SM"
asTopLevels(194) = "ST"
asTopLevels(195) = "SA"
asTopLevels(196) = "SN"
asTopLevels(197) = "SC"
asTopLevels(198) = "SL"
asTopLevels(199) = "SG"
asTopLevels(200) = "SK"
asTopLevels(201) = "SI"
asTopLevels(202) = "SB"
asTopLevels(203) = "SO"
asTopLevels(204) = "ZA"
asTopLevels(205) = "GS"
asTopLevels(206) = "ES"
asTopLevels(207) = "LK"
asTopLevels(208) = "SH"
asTopLevels(209) = "PM"
asTopLevels(210) = "SD"
asTopLevels(211) = "SR"
asTopLevels(212) = "SJ"
asTopLevels(213) = "SZ"
asTopLevels(214) = "SE"
asTopLevels(215) = "CH"
asTopLevels(216) = "SY"
asTopLevels(217) = "TW"
asTopLevels(218) = "TJ"
asTopLevels(219) = "TZ"
asTopLevels(220) = "TH"
asTopLevels(221) = "TG"
asTopLevels(222) = "TK"
asTopLevels(223) = "TO"
asTopLevels(224) = "TT"
asTopLevels(225) = "TN"
asTopLevels(226) = "TR"
asTopLevels(227) = "TM"
asTopLevels(228) = "TC"
asTopLevels(229) = "TV"
asTopLevels(230) = "UG"
asTopLevels(231) = "UA"
asTopLevels(232) = "AE"
asTopLevels(233) = "GB"
asTopLevels(234) = "US"
asTopLevels(235) = "UM"
asTopLevels(236) = "UY"
asTopLevels(237) = "UZ"
asTopLevels(238) = "VU"
asTopLevels(239) = "VE"
asTopLevels(240) = "VN"
asTopLevels(241) = "VG"
asTopLevels(242) = "VI"
asTopLevels(243) = "WF"
asTopLevels(244) = "EH"
asTopLevels(245) = "YE"
asTopLevels(246) = "YU"
asTopLevels(247) = "ZR"
asTopLevels(248) = "ZM"
asTopLevels(249) = "ZW"
asTopLevels(250) = "UK"

For ictr = 0 To iNumDomains - 1
    If asTopLevels(ictr) = DomainString Then
        bAns = True
        Exit For
    End If
Next

isTopLevelDomain = bAns

End Function





