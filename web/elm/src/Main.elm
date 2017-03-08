module Main exposing (..)

import Components.Items exposing (init, update, view)
import Html exposing (program)


main =
    program
        { init = init
        , update = update
        , subscriptions = always Sub.none
        , view = view
        }
