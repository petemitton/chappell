\version "2.24"
\language "english"

global = {
  \time 4/4
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
            <c f a c'>4 4 <d f bf>4 4 | <c f a> <c g>8 f <c e>4 c | d8 e f a <d g> f e f | c f e g f2 \bar "||" | \mBreak
            \autoBeamOff c'8.[ d'16 c'8. bf16] a8.[ g16] f4 | f'8.[ g'16 f'8. e'16] d'8.[ c'16] bf4 | g'8.[ a'16 g'8. f'16] e'8.[ d'16 c'8. e'16] | f'8.[ g'16] g'4\trill \grace { f'16[ g'] } a'4 c'4 \bar "||" | \mBreak
            \autoBeamOn f'8. g'16 g'4\trill \grace { f'16 g'} a'8 f' a' f' | f'8. g'16 g'4\trill \grace { f'16 g' } a'8 f' a' c' | f' a' g' bf' a' g' f' a' | c' f' e' g' f2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree 
            <f, f>4 4 <bf, f>4 4 | <f, f>4 <a, f> <c g> <c e> | <f bf> <f a> <bf, bf>2 | <c a>4 <c g bf> <f a> f, |
            <e g c'>4 4 <f a c'>2 | \clef treble <a c' f'>4 4 <bf d' f'>2 | <bf d' g'>4 4 <c' g'>4 4 | <a c' f'> \clef bass <g bf e'>4 <f c' f'>2 |
            <f a>4 <c e g> <f, c f> r | <f a> <c e g> <f, c f> r | <f a> <e g c'> <f c'> \clef treble <a c' f'> | <c' f' a'> <c' g' bf'> <f' a'> \clef bass f, |
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