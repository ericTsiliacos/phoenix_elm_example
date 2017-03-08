module Main exposing (..)

import Components.Items exposing (update, view)
import Html exposing (beginnerProgram)


main =
    beginnerProgram
        { model = {}
        , view = view
        , update = update
        }
