module Components.Items exposing (..)

import Html exposing (div, h1, li, p, text, ul)
import Html.Attributes exposing (class, id)


update _ model =
    model


view _ =
    div []
        [ h1 [] [ text "Welcome to Todos!" ]
        , listItems
        ]


listItems =
    ul [ id "items" ]
        [ li [ class "item" ]
            [ p [ class "title" ]
                [ text "My Special Item" ]
            ]
        ]
