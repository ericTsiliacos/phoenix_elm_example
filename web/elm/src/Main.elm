module Main exposing (..)

import App exposing (init, update, view)
import Html exposing (program)


main =
    program
        { init = init
        , update = update
        , subscriptions = always Sub.none
        , view = view
        }
