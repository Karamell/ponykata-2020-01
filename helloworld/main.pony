use "collections"
primitive Red
primitive Green
primitive Blue
primitive Yellow
primitive Pink

type Colour is (Red | Green | Blue | Yellow | Pink)

class Sjekker

  new create() => None

  fun sjekk_linje (fasit: Array[Colour], gjett: Array[Colour]): (U32, U32) =>
    var korrekte:U32 = 0
    var rett_farge:U32 = 0
    try
      for i in Range(0, fasit.size()) do
        for j in Range(0, gjett.size()) do
          if fasit(i)? is gjett(j)? then
            if i == j then
              korrekte = korrekte + 1
            else
              rett_farge = rett_farge + 1
            end
          end
        end
      end
      (korrekte, rett_farge)
    else
      (0, 0)
    end

actor Main
  new create(env:Env) =>
    env.out.print("Hello, world!!1")
