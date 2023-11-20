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
            \repeat volta 2 { \partial 8 e16 fs | g8. fs16 e8 e e' ds' | e'4.~4 d'16( c') | b8. a16 g8 fs g e | \mBreak
            \partial 8*5 <ds b>4.~4 } | \partial 8 b8 | b8. a16 g8 <d g>4 <d b>8 | <fs d'>4 d8 4 fs8 | \mBreak
            g8. fs16 e8 <b, e>4 <b, g>8 | <ds b>4 b,8 4 g16 fs | e8. fs16 g8 cs4 a16 g | \mBreak
            fs8. g16 a8 ds4 <e e'>16 <ds ds'> | <e e'>4 <e b>8 g8. <ds fs>16 e8 | \partial 8*5 e4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 | s4. e4 s8 |
            s2. | \stemUp d!4-> s8 s4. | s2. |
            b,4-> s8 s4. | s2.*2 |
            s2. | s4. e4 s8 | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Ev’ -- ry | man take his glass in his | hand, And | drink to the health of our | 
        King,
      }	% end lyrics verse one
      
      \new Lyrics \lyricsto "one" {	% verse two
        Many _ | years may he rule o’er this | land, And_his | lau -- rels for ev -- er fresh |
        spring. | Let wrang -- ling and jang -- ling | straight -- way cease, Let |
        ev’ -- ry man strive for_his | Coun -- try’s peace, Neith -- er | To -- ry nor Whig, With your |
        par -- ties look big, Here’s a | health to all ho -- nest | men. |
      }	% end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <e b>4. <g b>4 <fs a>8 | <e g>4 e'8 4 fs8 | \once \stemUp b4. s | 
            b,4 b8 4 | r8 | <g, g>4. <g b>4 8 | <d a>4 d8 4 r8 |
            <e, e>4. <e g>4 8 | <b, fs>4 b,8 4 r8 | <c, c>4. <cs, cs>-> |
            <d, d>4. <ds, ds>4-> <e, e>16 <ds, ds> | <e, e>4 <g, g>8 <b, b>4 <e, e>8 | \partial 8*5 4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2.*2 | ds4 e8 c4. | 
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