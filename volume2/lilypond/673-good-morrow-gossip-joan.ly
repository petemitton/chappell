\version "2.24"
\language "english"

global = {
  \time 4/4
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
            \partial 4 bf( | <g ef'>4\staccato) ef\staccato g\staccato af\staccato | bf2.-> af8( g) | af4\staccato f\staccato bf, <d af> | \mBreak
            \stemUp <bf, af>4( g) r bf | c'^\staccato c'^\staccato c' bf8 af | %
            bf^\staccato af^\staccato bf^\staccato c'^\staccato bf4 af8 g | af4 af^\staccato af^\staccato g8 f | \mBreak
            g^\staccato \stemNeutral f^\staccato g^\staccato af^\staccato g4 <ef ef'>4^( | bf) <ef ef'>( bf) <ef ef'> | %
            <c' f'>8 ef' d' c' bf4 <c f af> | <bf, ef g>2 <d f> | \partial 2. ef2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*4 | ef2 d | ef1 | 2 d | 
            ef2. s4 | s1*3 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Good_mor -- row, Gos -- sip | Joan, Where | have you been a |
        walking? I | have for you at _ | "home,  .  .  " _ _ _ _ I _ | have for  you at _ |
        "home  .  .  " _ _ _ _ A_bud -- get_full of talk -- _ _ _ _ ing, | Gos -- sip | Joan. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | ef,\staccato r r c\staccato | d\staccato bf,\staccato ef2->~ | 4( d8 c d4\staccato) bf,\staccato |
            ef4 ef,8 d, ef,4 r | af r f r | g8\staccato f\staccato g\staccato af\staccato g4 f8 ef | f4 r bf, r |
            ef8\staccato d\staccato ef\staccato f\staccato ef4 <c g>( | <g, ef>4) <c g>( <g, ef>) <c g> | <af, f>2. af,4 | \stemUp s2 af |  g2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s1*10 | bf,2 2 | ef2. | 
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