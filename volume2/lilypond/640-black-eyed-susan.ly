\version "2.24"
\language "english"

global = {
  \time 3/4
  \key bf \major
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
            \partial 4. d8  <bf g> <c a> | <d bf>4. a16( g) <a, fs>8 <bf, g> | <bf d>4. g8 <c f>8[ ef] | \mBreak
            d4. bf,8 c8. 16 | d4. <c d>8 <bf, g>[ <ef a>] | <d bf>4. f8 <f bf>[ <ef a c'>] | <d bf d'>4. d'8 c'16( bf) a( g) | \mBreak
            \stemUp f4. bf8 c'[ a] | bf2 d'8 c'16 bf | c'8 bf16 a bf8 a16 g fs8 g | d4. c8 bf,[ d] | \mBreak 
            <c f>4 d8 d <d g> <c fs a> | <bf, g bf>4 <d d'> c'16( bf) a( g) | d2 <c fs>4 | \partial 4. <bf g>4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s4. | s4. c16 bf, s4 | s2. | 
            s2.*4 |
            \stemDown s2 ef4 | d8 d d d d4~ | d4 s2 | s2. | 
            \stemUp s2. | s2 ef4 | s2. | s4. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        All in the | Downs the fleet was | moor‘d, The stream -- ers |
        wav -- ing in the | wind, When black -- eyed | Su -- san came on | board— “O where shall | 
        I my true love | find? Tell me ye | jo -- vial _ sai -- lors, _ tell me | true, If my sweet |
        Wil -- liam, if my sweet | Wil -- liam sails a -- mong your | crew.” |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 r8 | g4( g,) r | g4( g,) a |
            bf4( bf,) \stemUp g | <fs a>4. s4. | bf,4( bf,,) \stemUp d'8 c' | bf4 <d f bf> <ef g c'> |
            s2 a8 c' | s2.*3 |
            s4. fs8 \noBeam g s8 | s2.*2 | s4. |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4. | s2.*2 |
            s2 ef4 | d8. c16 bf,8 a, g, f,! | s2.*2 | 
            <f bf d'>2 f4 | <bf, bf>2 d4\rest | d4\rest d'8 c'16 bf a8 bf | fs2 g4 |
            a4( bf8) d16 c  bf,8 a, | g,4 <bf, g> <c g> | <d g bf>2 <d a>4 | <g, g>4. | \fine  
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