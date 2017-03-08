module Tests exposing (..)

import Components.Items exposing (update)
import Test exposing (..)
import Expect as To


all : Test
all =
    describe "Update"
        [ test "leaves model unchanged" <|
            \() ->
                update {} {} |> To.equal {}
        ]
