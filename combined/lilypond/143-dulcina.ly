\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key c \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Cheerfully."}
  % arranger = \markup {\italic "Tune of " \caps "Dulcina."}
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            <e c'>4 s2 g4 | e4 c4 g4 <f g>4 | <g c'>4 g4 <g d'>4 s4 | <g b>4 <fs a>8( g8) g2 | \mBreak
            <g c'>4 s2 g4 | e4 c4 g4 <b, f g>4 | <c e c'>4 g4 <c f a>4 <e g>8( <d f>8) | <c e>4 <b, d>8( c8) c2 \bar "||" |  \mBreak
            e4^\p a8 gs8 a4 b4 | <e a c'>4 <c a>4 <e gs b>4 <e gs e'>4 | <e a e'>4 a4 <a f'>8( e') d'8( c'8) | <gs b>8( c'8) b8( a8) a2 | \mBreak
            <e d'>4\f s2 g4 | e4 c4 g4 <f g>4 | <g c'>4 g4 <c f a>4 <e g>8( <d f>8) | <c e>4 <b, d>8( c8) c2 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 e'8 d'8 c'4 s4 | s1 | s2. e'8( d'8) | s1 |
            s4 e'8 d'8 c'4 s4 | s1*3 |
            c2 c2 | s1*3 |
            s4 e'8 d'8 c'4 s4 | s1*3 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        From4 O8 -- beron,4. in4 fai4 -- ry4 -- land,4 The4 king4 of4 ghosts4 and4 sha4 -- dows4 there,2
        Mad4 Rob8 -- in8 I,4 at4 his4 com4 -- mand,4 Am4 sent4 to4 view4 the4 night4 -- sports4 here.2
        What4 re8 -- vel8 rout4 Is4 kept4 a4 -- bout,4 In4 ev'4 -- ry4 cor4 -- ner4 where4 I4 go,2
        I4 will8 o’er8 -- see,4 And4 mer4 -- ry4 be,4 And4 make4 good4 sport,4 With4 ho,4 ho,4 ho!2
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s1 | s1 | s1 | s2 b2 |
            s1*2 | c2 f,2 | s1 |
            a2 s2 | s1 | c2 s2 | s1 |
            s1*4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            <c g>1~ | <c g>2. <d b>4 | <e c'>2 <b, g>2 | <d d'>4 <d c'>4 g4 f!4 |
            <e~ c'>1 | e2. d4 | s1 | <g, g>4 <g, f>4 <c e>2 |
            s2 f2 | e2. d4 | s2 d2 | <e d'>2 <a c'>2 |
            <c g>1~ | <c g>2. <d b>4 | <e c>2 f2 | g4 <g, f>4 <c e>2 |
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
        %\override LyricText.self-alignment-X = #LEFT
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score