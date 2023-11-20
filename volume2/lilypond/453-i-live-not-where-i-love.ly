\version "2.22.2"
\language "english"

global = {
  \time 2/4
  \key ef \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
   #{
     \once \override DynamicText.X-offset = $offset
     \once \override DynamicLineSpanner.Y-offset = #0
   #})
hyphen = { \once \override LyricHyphen.minimum-distance = #1.0 }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  meter = \markup {\italic ""}
  %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            <f af>8 af g g16 af | <bf, bf>8[ <c ef> <af, d> <g, ef>] | g8. af16 <f bf>8 <c e! c'> | <df f bf>16 <c af> <af, f>8 <af, f>4 | \mBreak
            <f af>8 af g g16_( af) | <bf, bf>8 <c ef> d16_( c) bf,8 | g8. af16 <ef bf>8 <ef c'> | <c ef c'>16 <bf, g> <g, ef>8 <g ef>4 \bar "||" | \mBreak  
            af8[ g af bf] | \stemUp c'16 d' ef'8 d'16 c' bf8 | <bf ef'> bf bf16 af g8 | <ef af> <ef g bf> f4 | \mBreak
            bf8. af16 g8. af16 | <bf, bf>8 <c ef> d16_( c) bf,8 | g8. af16 <ef bf>8 <ef c'> | <c ef af>16_( <bf, g>) <g, ef>8 <g, ef>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            bf,4. ef8 | s2 | \stemUp bf,4 s4 | s2 |
            \stemDown bf,4. ef8 | s2 | bf,8 ef s4 | s2 |
            ef2~ | 8[ ef f f] | s4 f8 ef | s4 <c ef>8 <bf, d> |  
            <bf, ef>8[ <bf, d> <bf, ef> ef] | s2 | bf,8 ef s4 | s2 | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Gen8 -- tly is the | fair stream flow -- ing, | O’er8. it16 waves8 the | wil -- low tree:4 |
        Fo8 -- rest gems are | round me grow -- ing, | Wild8. birds16 chant8 their | ca -- rols free.4 | 
        Lo!8 the pla -- cid | lake -- let vy -- ing | With the calm -- er | heav’ns a -- bove;4 | 
        Yet8. for16 o8. -- other16 | scenes8 I‘m sigh -- ing, | For8. I16 live8 not | where I love.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            
            %\voiceThree
            d4_( ef8) c | g,[ af, bf, ef] | \stemUp ef,[ \stemDown ef df c] | \stemUp f,[ \stemDown f f ef!] | 
            d4_( ef8) c | g, af, \stemUp f8 s8 | ef[ c g, af,] | \stemUp ef, \stemDown ef ef4 |
            c'8 bf c' g | af[ <af c'> <af c'> <af d'>] | <g ef'>4 d8 ef | c[ bf, a,! af,] |
            \stemUp g,8[ f, ef, c] | s4 f8 s8 | ef[ c g, af,] | ef, \stemDown ef ef4 | \fine  
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2*5 | s4 bf,8 d | s1 |
            s1*2 |
            s2 | g,8 af, bf, d | 
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
        %\override Beam.auto-knee-gap = #1
        %\override LyricText.self-alignment-X = #LEFT
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score