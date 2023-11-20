\version "2.24"
\language "english"

global = {
  \time 9/8
  \key bf \major
}

mBreak = { }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 8 bf,8 | <bf, d> <c ef> <d f> <ef g>4 <d f>8 8 d bf, | <bf, d^(> <c ef)> <d f> <e! bf>4 g8 <f c'>4 c8 | \mBreak
            <bf, d>8 <c ef> <d f> <ef g>4 <d f>8 8 d f | <e! g> a bf <ef c'> a f <d bf>4 bf,8 | \mBreak
            <bf, d>8 <c ef> <d f> <ef g>4 <d f>8 8 d bf, | <bf, d> <c ef> <d f> <e! bf> a g <f c'>4 c8 | <bf, d> <c ef> <d f> <ef g>4 <d f>8 8 d f | \mBreak
            \partial 1 <e! g>8( a) bf <ef c'> a f <d bf>4 | \repeat volta 2 { \partial 8 g'8 | f' g' d' f'4 bf8 c'4 g8 | \mBreak
            <ef c'>8 d' ef' <c g>4 c'8 <c a>4 f8 | <ef bf>8 g ef <e! g> bf g <f c'> a <f d'> | \partial 1 <ef g> a bf <c ef bf>4 a8 <d bf>4 |
            }
          }	% end voice one 
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        At8 | Win8 -- chest -- er was4 a8 wed -- ding, The | like4 was8 ne4 -- ver8 seen,4 ’Twixt8 |
        lus8 -- ty young Ralph4 of8 Read -- ing, And | bon -- ny black Bess of the green;4 The8 |
        fidd8 -- lers did crowd4 be8 -- fore,4 Each8 | lass was as fine as a queen,4 A8 | hund -- red there were4 and8 more,4 For8 | 
        all4 the8 coun -- try came in.4 | Brisk8 | Ro -- bin led Rose4 so8 fair,4 She8 |
        look’d8 like a Lilly4 o’th’8 Vale,4 And8 | ruddy4 -- fac’d8 Har -- ry led Ma -- ry, And8 | Rog -- er led boun4 -- cing8 Nell.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | bf,4. bf bf4 r8 | bf,4. g, a, |
            bf,4. bf bf | <g bf> <f a> <bf, bf>4 r8 |
            bf,4. bf bf4 r8 | bf,4. g, a, | bf, bf bf |
            <g bf>4. <f a> <bf, bf>4 | r8 | <bf d'>4. <d bf> <ef g> | 
            c4. ef f | g g a8 f bf | ef4. f bf,4 |
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