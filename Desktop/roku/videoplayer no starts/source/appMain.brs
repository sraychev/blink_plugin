'********************************************************************
'**  Video Player Example Application - Main
'**  November 2009
'**  Copyright (c) 2009 Roku Inc. All Rights Reserved.
'********************************************************************

Sub Main()

    'initialize theme attributes like titles, logos and overhang color
    initTheme()

    'prepare the screen for display and get ready to begin
    screen=preShowHomeScreen("", "")
    if screen=invalid then
        print "unexpected error in preShowHomeScreen"
        return
    end if

    'set to go, time to get started
    showHomeScreen(screen)

End Sub


'*************************************************************
'** Set the configurable theme attributes for the application
'** 
'** Configure the custom overhang and Logo attributes
'** Theme attributes affect the branding of the application
'** and are artwork, colors and offsets specific to the app
'*************************************************************

Sub initTheme()

    app = CreateObject("roAppManager")
    theme = CreateObject("roAssociativeArray")
	
'**	theme.BackgroundColor = "#8FBC8F"
'**	theme.FilterBannerSliceHD = "pkg:/images/Overhang_Background_SD.png"

    theme.OverhangOffsetSD_X = "72"
    theme.OverhangOffsetSD_Y = "31"
    theme.OverhangSliceSD = "pkg:/images/roku_greenheader_SD.jpg"
    theme.OverhangLogoSD  = "pkg:/images/small_C-Logo_sd.png"

    theme.OverhangOffsetHD_X = "125"
    theme.OverhangOffsetHD_Y = "35"
    theme.OverhangSliceHD = "pkg:/images/roku_greenheader_HD.jpg"
    theme.OverhangLogoHD  = "pkg:/images/Roku_C-Logo_hd.png"

	theme.BreadcrumbTextLeft = "#ffffff"
	theme.BreadcrumbTextRight = "#ffffff"
	theme.BreadcrumbDelimiter = "#ffffff"
	
    app.SetTheme(theme)

End Sub
