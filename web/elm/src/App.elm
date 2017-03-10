module App exposing (..)

import Debug exposing (log)
import Html exposing (div, h1, li, p, text, ul)
import Html.Attributes exposing (class, id)
import Http
import Json.Decode exposing (at, list, string)
import Json.Decode.Pipeline exposing (decode, required)
import List exposing (map)


type alias Model =
    { items : List Item }


type Msg
    = FetchItems (Result Http.Error (List Item))


init =
    { items = [] }
        ! [ Http.send FetchItems getItems ]


update msg model =
    case msg of
        FetchItems (Ok items) ->
            { model | items = items }
                ! [ Cmd.none ]

        FetchItems (Err err) ->
            let
                showErr =
                    log ("Err: " ++ toString err) err
            in
                model
                    ! [ Cmd.none ]


view model =
    div []
        [ h1 [] [ text "Welcome to Todos!" ]
        , listItems model.items
        ]


listItems items =
    ul [ id "items" ] <|
        map
            (\item ->
                li [ class "item" ]
                    [ p [ class "title" ]
                        [ text <| item.title ]
                    ]
            )
            items


type alias Item =
    { title : String
    , description : String
    }


itemDecoder =
    decode Item
        |> required "title" string
        |> required "description" string


getItems =
    Http.get "/api/items" (at [ "items" ] (list itemDecoder))
