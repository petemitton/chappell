\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

mBreak = { }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Moderate time and smoothly."}
  %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 8 <b, d g>8^\f |
            <a, d fs>4 e8 <d fs>4 <d g>8 |
            <d a>4.~<d a>4 <d g b>8 |
            <e g c'(>d'8) c'8 <d g b(>c'8) b8 | \mBreak
            <d fs a>4 fs8 a4 <b, d g>8 |
            <a, d fs>4 e8 <d fs>4 <d g>8 |
            <d a>4.~<d a>4 <d g b>8 |
            <e g c'>d'8 c'8 <d g b>c'8 b8 |
            \partial 8*5 <c fs a>4 <b, g>4 <b, g>8 | \mBreak
            \repeat volta 2 {\partial 8 g8 |
            d'8_( e'8) d'8 a4 b8 |
            c'8 d'8 b8 <c a>4. |
            g8^\p a8 g8 <c fs>4 <b, g>8 |
            \partial 8*5 a8_( fs8) d8 <b, g>4(} |
            \repeat volta 2 {\partial 8 <d g b>8) |  \mBreak
            <d a d'>4.^\f <cs a>4. |
            <d a d'>4. <cs a>4. |
            <d a d'>4^\p <fs a e'>8 <g d'>4 <e a c'>8 |
            \partial 8*5 <g b>4 <fs a>8 g4 | }            
         }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s8*5 |
            s8 |
            fs4.  f!4. |
            e4 d8 s4. |
            e4 d8 s4. |
            c4. s4 |
            s8 |
            s2.|
            s2.|
            s2.|
            s8*5
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \with {alignAboveContext = #"up"} \lyricmode {
        2*18 8
        \markup{\super a}8Row4 well,4. row4. well,4. Row4. well,4 ye8 ma4 -- rin8 -- ers.4
      }

      \new Lyrics \lyricmode {
        % verse one
        All8 you4 that8 news4 would8 8 hear,2 Give8 ear4 to8 me,4 poor8
        Fa4 -- byn8 Fly,4 At8 Rome4 I8 was4 this8 8 year,2 And8 in4 the8 Pope4 his8 nose4 did4 lie;8
        But8 there4 I8 could4 not8 long4 a8 -- bide,4 He8 blew4 me8 out4 of8 ev’4 ry8 side.4 8
        Then4. he4. with4. joy,4 --  Did8 sport4 him8 -- self4 with8 many4 a8 toy:4 |
      }	% end lyrics verse one

      \new Lyrics \lyricmode {
        % verse two
        2*12
        For8 first4 when8 he4 had8 heard4 the8 news4 That8 re4 bels8 did4 their8 prince4 mis8 use,4 8
        He4. then4. so4. -- stout,4 --  That8 from4 his8 nose4 he8 blew4 me8 out.4
      }

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            g,8 |
            d4. d4 e8 |
            fs4.~fs4 g8 |
            c4. g,4. |
            d4.~d4 g,8 |
            d4. d4 e8 |
            fs4.~fs4 g8 |
            c4. g,4. |
            d4 g8 g4 |
            g8 |
            <d a>4. <d a>4. |
            <e gs>4. <a, a>4. |
            c'4 b8 a4 g8 |
            <d fs>4. <g, g>4 |
            g8 |
            fs4 d8 a4 g8 |
            fs4 d8 a4 g8 |
            fs4 c'!8 b4 a8 |
            d'4 <d c'>8 <g b>4
          } % end voice three


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