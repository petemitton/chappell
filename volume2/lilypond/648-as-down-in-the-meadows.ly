\version "2.24"
\language "english"

global = {
  \time 6/8
  \key ef \major
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
            \repeat volta 2 { \partial 8 bf,8 | bf, ef ef8 8. d16 c8 | c f f <d f>4 ef16( f) | g8. f16 ef8 c8. d16 ef8 | \mBreak
            \partial 8*5 bf,8 ef d ef4 | } \partial 8 <c af>8 | g8. af16 bf8 <ef bf> g ef | <c ef> c' c' <f c'>4 bf16([ af)] | \mBreak
            g8. af16 bf8 <ef bf> g ef | ef ef' <f d'> <g ef'>4 bf8 | c'8. d'16 ef'8 <ef bf> g ef | \mBreak
            f8. g16 <d af>8 <ef g>4 ef16( f) | g8. f16 <c ef>8 c d ef | \partial 8*5 bf, ef d ef4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s8 | s4. c4 s8 | s2. | ef4 s2 |
            s2. | bf,4 s2 | s2. |
            ef4 s2 | s2. | \once \stemDown ef4 s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        As | down in the mea -- dows I | chanc’d for to pass, O | there I be -- held a young | 
        beau -- ti -- ful lass, | 
      }	% end lyrics verse one

      \new Lyrics \lyricsto "one" {	% verse two
        Her | age, I am sure, it was | scarce -- ly fif -- teen, And | she on her head wore a |
        gar -- land of green. | Her lips were like ru -- bies, and | as for her eyes, They |
        spark -- led like dia -- monds, or | stars in the skies; And | then, O her voice, it was |
        charm -- ing and clear, As | sad -- ly she sung for the | loss of her dear. |
      }	% end lyrics verse two
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d8\rest | g4 s2 | af4 s2 |  s2. |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | ef,4. af, | f, bf, | ef <af, ef> |
            <bf, g>4 <bf, f>8 <ef g>4 | d8\rest | ef4. g | af d | 
            ef4. \once \stemUp g, | <c g>4 <bf, bf>8 <ef bf>4 d8\rest | af4. g | 
            \stemNeutral d4 bf,8 c4. | g,4 c8 <af, ef>4. | <bf, g>4 <bf, af>8 <ef g>4 | \fine
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