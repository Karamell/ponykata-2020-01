use "ponytest"
use "../helloworld"

actor Main is TestList
  new create(env: Env) =>
    PonyTest(env, this)

  new make() =>
    None

  fun tag tests(test: PonyTest) =>
    test(_TestBlueRed)
    test(_TestBlueBlue)
    test(_TestRedYellowVsBlueRed)
    test(_TestGBRPvsYYGG)

class iso _TestBlueRed is UnitTest
  fun name():String => "Blå, rød -> 0, 0"

  fun apply(h: TestHelper) =>
    let s = Sjekker.create()
    let fasit : Array[Colour] = [Blue]
    let gjett : Array[Colour] = [Red]
    (let korrekt, let farge_rett) = s.sjekk_linje(fasit, gjett)
    h.assert_eq[U32](korrekt, 0)
    h.assert_eq[U32](farge_rett, 0)

class iso _TestBlueBlue is UnitTest
  fun name():String => "Blå, blå -> 1, 0"

  fun apply(h: TestHelper) =>
    let s = Sjekker.create()
    let fasit : Array[Colour] = [Blue]
    let gjett : Array[Colour] = [Blue]
    (let korrekt, let farge_rett) = s.sjekk_linje(fasit, gjett)
    h.assert_eq[U32](korrekt, 1)
    h.assert_eq[U32](farge_rett, 0)

class iso _TestRedYellowVsBlueRed is UnitTest
  fun name():String => "Rød, gul vs blå, rød -> 0, 1"

  fun apply(h: TestHelper) =>
    let s = Sjekker.create()
    let fasit : Array[Colour] = [Red; Yellow]
    let gjett : Array[Colour] = [Blue; Red]
    (let korrekt, let farge_rett) = s.sjekk_linje(fasit, gjett)
    h.assert_eq[U32](korrekt, 0)
    h.assert_eq[U32](farge_rett, 1)

class iso _TestGBRPvsYYGG is UnitTest
  fun name():String => "GBRP vs YYGG -> 0, 1"

  fun apply(h: TestHelper) =>
    let s = Sjekker.create()
    let fasit : Array[Colour] = [Green; Blue; Red; Pink]
    let gjett : Array[Colour] = [Yellow; Yellow; Green; Green]
    (let korrekt, let farge_rett) = s.sjekk_linje(fasit, gjett)
    h.assert_eq[U32](korrekt, 0)
    h.assert_eq[U32](farge_rett, 1)