{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.GI.Base
import qualified GI.Gtk as Gtk

main :: IO ()
main = do 
    Gtk.init Nothing

    win <- Gtk.windowNew Gtk.WindowTypeToplevel
    Gtk.setContainerBorderWidth win 10
    Gtk.setWindowTitle win "Alvida"
    Gtk.setWindowResizeable win False
    Gtk.setWindowDefaultWidth win 750
    Gtk.setWindowDefaultHeight win 225
    Gtk.setWindowWindowPosition win Gtk.WindowPositionCenter
    Gtk.windowSetDecorated win False

    Gtk.onWidgetDestroy win Gtk.mainQuit
    #showAll win
    Gtk.main