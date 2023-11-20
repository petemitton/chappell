\version "2.24"
\language "english"

global = {
  \time 3/4
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
            \partial 4 d8. c16 | b,4 d <b, g> | <c g>^( fs) <d g> | <e a d'>8 c' <g b>4 <fs a> | <g b>2 <g d'>4 | <g e'>2 <g c'>8 e' | \mBreak
            <b d'>2 <g b>8 d' | <d g d'>4 c' <d g b> | 4( <fs a>) <fs a d'> | %
            <g d'> cs' <g cs' e'> | <a cs' e'> d' <d fs a> | <b, e a>8 g <d fs>4 <cs e> | \mBreak
            <d fs>2 <e a>4 | <d g d'> g <d fs> | <d b d'> b <d a> | %
            <d g d'>8( g) <d fs a>( <e g>) <d fs>( <cs e>) | \partial 2 d2 \bar "||" | \partial 4 <d a>4 | <c a> <b, gs> <e d'> | \mBreak
            <e d'>4( c') <e a> | <f! c'>8 b <c a>4 <b, gs> | <c a>2 <c e a>4 d'4. c'8 <d g b>4 | <e g e'> e8 g <c fs> a | <d g>4 <d a c'> <d g b> | \mBreak
            <d g b>4( <fs a>) <a, d>8. c16 | b,8( d) g( b) <d g d'>4 | <fs c'>4 <g b> d8. c16 | %
            b,8( d) g( b) <d g d'>4 | <g d'>4( c') <g b> <g e'>4 e <d fs> | \mBreak
            <d g>4 d <d b d'> | <e a d'>8 c' <g b>4 <fs a> | <g b>2 <g b d'>4^\< | <g c' g'>4 c' <g b> | <g c' e'>-! <g d'>-! r8 <e a c'>^\p | %
            <d g b> d' b g <c a> fs | \partial 2 <b, g>2  | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo 
            s2.*16 | s4 | s2. |
            s2.*3 | <d a>4 s2 | s2.*2 |
            s2.*2 | d2 \once \stemUp a,4 | s2.*3 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Fare -- _ well to the | wood-lands, fare -- well _ to the | bow’rs; Fare -- well to the |
        home of our | hap -- pi -- est hours; To | plea -- sant com -- pa -- nions, to | mirth _ and to |
        song, And_the | kind -- hearted _ | friends we have | che -- rish’d so | long. | Our | cares and our |
        du -- ties for -- bid us to | stay, But_our | thoughts shall be | with you _ wher -- _ e -- ver we | 
        stray, And we’ll | long for the | sum -- mer to _ | smile on the | plain, To | bid us "re -" |
        turn to the | wood -- lands _ a -- gain, To | bid us re -- turn to the | wood -- _ lands _ a -- _ gain. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | g,2 4 | a,2 b,4 | c4 d2 | g2 b,4 | c2 e4 | 
            g2 g,4 | b, a, g, | d2 4 | e2 4 | fs2 d4 | g4 a2 |
            d2 cs4 | b,2 a,4 | g,2 fs,4 | e,4 s4 a8 g | <d fs>2 | <d f!>4 | e2 <gs, e>4 |
            <a, e>2 c4 | d4 e2 | a, a8. g16 | fs2 g4 | c2 a,4 | b, fs, g, |
            d,2 fs,4 | g,2 b4 | a( g) fs, | g,2 b4 | e'2 d'4 | c'2 4 |
            b2 g4 | c' d' d | g2 f!4 | e2 d4 | c-! b,-! r8 a, | d2 4 | g,2 | \fine
          } % end voice three

          \new 	Voice {
            %\voiceFour
            s4 | s2.*14 | s4 a,2 | s2.*2 |
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