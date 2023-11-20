\version "2.24"
\language "english"

global = {
  \time 6/8
  \key f \major
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
            \repeat volta 2 { f4 c'8 a f4 | <bf, bf>4 g8 e c4 | a4 f8 d bf,4 | <bf, g>8( c) e <a, f>4. | } \mBreak
            f4 f'8 8 c'4 | f4 d'8 d' bf4 | e4 c'8 c'( f) e | d( c') <f b!> <e c'>4. | \mBreak
            <c f>4 c'8 a f4 | <d bf> g8 e c4 | <cs a>4 f8 d bf,4 | g8( c) e <a, f>4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*11 | \stemUp bf,4 s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Cease your fun -- ning, | Force or cun -- ning | Ne -- ver shall my | heart tre -- pan; |
        ’Tis most cer -- tain, | By their flirt -- ing, | Wo -- men oft have | en -- vy shown; |
        Pleas’d to ru -- in | O -- thers’ woo -- ing; | Nev -- er hap -- py | in their own. |
      }	% end lyrics verse one
      
      \new Lyrics \lyricsto "one" {	% verse two
        All these sal -- lies | Are but ma -- lice | To se -- duce my | con -- stant man. |
      }	% end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4. <f a> | \stemUp g, g | a f | c, f, |
            \stemNeutral r4. <a c'> | <bf d'> <g bf> | <c bf> \stemUp a4 g8 | f4 g,8 c4 bf,!8 |
            \stemNeutral <a, f>4. <d f> | <g, g> <c g> | <f, f> <bf, f> | c, f, | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2. | s4. c | f, bf, | s2. |
            s2.*2 | s4. d~ | d4 s2 |
            
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