\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
   #{
     \once \override DynamicText.X-offset = $offset
     \once \override DynamicLineSpanner.Y-offset = #0
   #})

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

%  meter = \markup {\italic ""}
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
            d'4 \mark \markup{ \caps "Willy." } g <c fs> <b, g> | a4. g8 <b, g>2 | a4. 8 <d gs>4 <c a> | b4. a8 <c a>2 | \mBreak
            b4. d'8 c'4 g | fs a g <g b> | <d a> <fs c'> <g b> <g d'> | cs' e' <fs d'> d' \bar "||" | \mBreak
            b4 \mark \markup { \caps "Cuddy." } b d' d' | a4. b8 <e c'>2 | g4. a8 b4 g | fs4. g8 <d a>2 | \mBreak
            e4. fs8 <b, g>4 <g b> | <d a> <fs c'> <g b> <fs b> | <e a> <d g> <c fs> <b, g> | a4. g8 <b, g>2 \fine | \mBreak
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            d2 s | \once \stemUp <c fs>4 s s2 | e4 s2. | <d gs>4 s2. |
            f!2_( \once \stemUp e4) s4 | c2_( \once \stemUp b,4) s | s1 | g2 s | 
            g2 fs | fs s | e d | d s |
            c2 s | s1*2 | <c fs>4 s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        How4 now, Shep -- herd, | what4. means8 that?2 | Why4. that8 wil4 -- low | in4. thy8 hat?2 |
        Why4. thy8 scarfs4 of | red and yel -- low | Turn’d to bran -- ches | of green wil -- low? |
        They4 are chang’d, and | so4. am8 I;2 | Sor4. -- rows8 live,4 but | plea4. -- sures8  die:2 |
        Phil4. -- lis8 hath4 for | sa -- ken me, Which | makes me wear the | wil4. -- low8 tree.2 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            b2 a4 g | d2 g | c' b4 a | e2 a |
            g2^( c'4) d\rest | d2^( e4) e | fs a g b | a2 d'4 d |
            e2 b, | d a, | c g, | b, fs, |
            a,2 e,4 4 | fs, d, g, d' | c' b a g | d2 g | \fine
            %\voiceThree
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
        %\override LyricText.self-alignment-X = #LEFT
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score