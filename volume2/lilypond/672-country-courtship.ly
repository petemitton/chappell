\version "2.24"
\language "english"

global = {
  \time 6/8
  \key c \major
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
            \partial 8 g8 | e( d) c c d c | e( f) g g( a) g | f e d d( e) d | \mBreak
            f g a a( b) a | e d c c d c | e f g <c g> a g | <a, g> f e <b, d> g f | \mBreak
            \partial 8*5 e([ c) c] c4 \bar "||" | \partial 8 g8 | c' b c' g a g | c' d' c' e'( d') c' | \mBreak
            b a b g a g | b c' b d' c' b | a c' c' g c' c' | \mBreak
            f8. e16 f8 e4 8 | f e f d( g) f | \partial 8*5 e c c c4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        In | Taun -- ton Dean che were | bore and bred, To | tell you the truth, my |
        name’s a cauld Ned, Cham no An -- a -- bap -- tist, for | Ich caunt a -- bide ’em, Cham sure che re -- ceiv -- ed his |
        Chris -- ten -- dome. | Ich | put on my boots and a | zourd by my zide, And |
        up vor to Lun -- din Ich | mean for to ride; Ich told | va -- ther and ma -- ther Ich’d |
        zee that vine town, Che’d | stay there a -- while and | then Ich come down. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <c e g>2. | 2. | <c d f a> |
            4. 4. | <c e g c'>4 r8 r4. | <c g>4. e | d g |
            <c g>4.~4 | r8 | <c e g>2. | 2. |
            <g, d g>2. | 2. | <f c'>4. <e c'> |
            <d c'>4. <b, c'> | <d a> <g b> | <c g>4.~4 | \fine
          } % end voice three

          \new 	Voice {
            %\voiceFour
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