module Helper exposing (..)

import Html


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 num1 num2 num3 =
    num1 + num2 + num3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


languages : List { name : String, releaseYear : Int, currentVersion : String }
languages =
    [ { name = "Elm"
      , releaseYear = 2012
      , currentVersion = "WMWE2034"
      }
    , { name = "JavaScript"
      , releaseYear = 2000
      , currentVersion = "EWIWO 320"
      }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videoGames : List Videogame
videoGames =
    [ { title = "Minecraft"
      , releaseYear = 2002
      , available = True
      , downloads = 4
      , genres = [ "Aventura", "Solitario" ]
      }
    , { title = "Roblox"
      , releaseYear = 2002
      , available = False
      , downloads = 6
      , genres = [ "Aventura", "Action" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list


onlyStudents : List { a | name : String, uType : String } -> List String
onlyStudents list =
    List.map
        (\u ->
            if u.uType == "Student" then
                u.name

            else
                ""
        )
        list


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "XPS 13"
    , brand = "Dell"
    , screenSize = "13.3-inch"
    }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 [] [ Html.text "My laptop" ]
        , Html.div []
            [ Html.ul []
                [ Html.li [] [ Html.text ("Ram: " ++ .ram myLaptop) ]
                , Html.li [] [ Html.text ("Modelo: " ++ .model myLaptop) ]
                , Html.li [] [ Html.text ("Marca: " ++ .brand myLaptop) ]
                , Html.li [] [ Html.text ("Pulgadas: " ++ .screenSize myLaptop) ]
                ]
            ]
        ]
