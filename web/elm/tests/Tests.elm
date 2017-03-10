module Tests exposing (..)

import App exposing (Msg(FetchItems), update)
import Test exposing (..)
import Expect as To
import Tuple exposing (first)


all : Test
all =
    describe "Update"
        [ test "leaves model unchanged" <|
            \() ->
                first (update (FetchItems <| Ok []) { items = [] })
                    |> To.equal { items = [] }
        ]
