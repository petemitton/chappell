\version "2.24"
\language "english"

global = {
  \time 6/8
  \key g \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 8 d8\f | <b, d g>4 r8 <d fs a>4 r8 | b4.~4 c'8\p | <g d'>8 e' d' <fs c'> b c' | <g b>4.~4 d8\f | \mBreak
            <b, d g>4 r8 <d fs a>4 r8 | <d g b>4. <e c'>4 c'8\p | <d b> c' b a g a | \partial 8*5 g4.~4 \bar "||" | \partial 8 b16( c') | \mBreak
            <a d'>4 d'8 <gs d'>4 b8 | <a c'>4 c'8 <fs! c'>4 a8 | <g b> c' d' <d d'> c' b | <g b>4._( <fs a>4) d16\f d | \mBreak
            <b, g>4 r8 <e a>4 r8 | \stemUp b4.^~4 <e c'>8 | <g b> c' b <fs a> g a | \partial 8*5 g4.~4  | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2. | <d g>4 s2 | s2.*2 | 
            s2.*9 | ds8 e_( fs g4) s8 | s2. | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Be -- gone, dull | "care! . ." I | prith -- ee be -- gone _ from | me! "Be -" | 
        "- gone," dull | care! You and | I _ shall ne -- ver a -- gree. | Long |
        time thou hast been | tar -- rying here, And | fain _ thou would’st _ me | kill, But i’ |
        faith, dull | "care!   .   .   ." Thou | nev -- er shalt have _ thy | "will  .  .  ." |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            d8 | <g, g>4 r8 <d a>4 r8 | <g b>4 r8 r4 r8 | b4. a4 s8 | g4.~4 d8 |
            <g, g>4 r8 <d a>4 r8 | <g b>4. <c c'>4 r8 | <d g>4. <d fs c'> | <g b>4.~4 | r8 |
            f!4. e | a d | g b, | d4.~4 8 |
            e4 r8 <c a>4 r8 | \stemUp fs4. e4 a,8 | \stemNeutral d4 r8 <d c'>4 r8 | <g b>4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*8 |
            s8 | s2.*5 | b,8 cs ds e4 s8 | s2. | s8*5 | 
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score