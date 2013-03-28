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

    theme.OverhangOffsetSD_X = "72"
    theme.OverhangOffsetSD_Y = "31"
    theme.OverhangSliceSD = "pkg:/images/Overhang_Background_SD.png"
    theme.OverhangLogoSD  = "pkg:/images/Overhang_Logo_SD.png"
    theme.OverhangOffsetHD_X = "125"
    theme.OverhangOffsetHD_Y = "35"
    theme.OverhangSliceHD = "pkg:/images/Overhang_Background_HD.png"
    theme.OverhangLogoHD  = "pkg:/images/Overhang_Logo_HD.png"
    theme.BackgroundColor = "#464646"
    theme.GridScreenBackgroundColor = "#262626"
    theme.ParagraphHeaderText = "#FFFFFF"
    theme.ParagraphBodyText = "#E1E1E1"
    theme.PosterScreenLine1Text = "#FFFFFF"
    theme.PosterScreenLine2Text = "#FFFFFF"
    theme.BreadcrumbTextLeft = "#464646"
    theme.BreadcrumbDelimiter = "#464646"
    theme.BreadcrumbTextRight = "#FFFFFF"
    theme.SpringboardActorColor = "#E1E1E1"
    theme.SpringboardTitleText = "#FFFFFF"
    theme.ThemeType = "generic-dark"
    theme.FilterBannerSliceHD = "pkg:/images/filter.png"
    


    app.SetTheme(theme)

End Sub
