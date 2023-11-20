\version "2.22.2"
\language "english"

global = {
  \time 6/8
  \key f \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
   #{
     \once \override DynamicText.X-offset = $offset
     \once \override DynamicLineSpanner.Y-offset = #0
   #})
hyphen = { \once \override LyricHyphen.minimum-distance = #1.0 }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  meter = \markup {\italic ""}
  %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \repeat volta 2 { \partial 8 <a, cs e>8_\f | <a, d f>8. e16 d8 4 <a, cs e>8 | <a, d f>8. e16 d8 4\p <a d'>8 | <g cs'>4 <f d'>8 <e a>4 <a d'>8 | <g cs'>4 <f d'>8 <e a>4 <a, cs e>8\f | <a, d f>8. e16 d8 4 <a cs e>8 | <a, d f>8. e16 d8 4 <a e'>8 | \mBreak 
            <a d' f'>8. e'16 <a d'>8 <a c'!>8. d'16 <gs b!>8 | \partial 8*5 a4.~4 } | \partial 8 <g c'>8\p | <f a>8. bf16 c'8 f4 <g c'>8 | <f a>8. b16 c'8 f4 <f c' f'>8 | <f bf d'>8. e'16 f'8 bf4 <d a d'>8 | <d g bf>8. c'16 d'8 g4 <g d' g'>8 | \mBreak
            <g c' e'>8. f'16 g'8 <bf c'>4 e'8 | <a f'>8. g'16 a'8 d'4 <d' f' a'>8 | <d' g' bf'>8. a'16 g'8 <bf e' g'>4 f'8 | <a f'>4.~4 <a e' a'>8 \f | <a d' f'>8 g' a' <a d'> e' f' | <bf e'> f' g' <e cs'> d' e' |  \mBreak
            <a d'>8 e' f' <d' f'> g' d' | <e cs'>4._( a4) <d' a'>8 | <d' bf'> g' bf' <d' a'> a <d' a'> | <d' bf'> g' bf' <d' a'> a <d' a'> | <d' bf'> a' <d' g'> <d' f'> g' <g cs' e> | \partial 8*5 <f d'>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2. | s4. s4 f8 | e4 d8 cs4 f8 | e4 d8 cs4 s8 | s2.*2 |
            s2.*6 |
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
            a,8 | d4 r8 r4 a,8 | d4 r8 r4 s8 | s2. | s4. s4 a,8 | d4 r8 r4 a,8 | d4 r8 r4 cs8 |
            d4 <f d'>8 <e e'>4 <e d'>8 | <a c'>4 e8 a,4 | <e c'>8 | <f c'>4 r8 r4 <e c'>8 | <f c'>4 r8 r4 a8 | bf4 r8 r4 fs8 | g4 r8 r4 bf,8 |
            c4. c | d4 r8 r4 d8 | g,4 bf8 c4. | f4 c8 f,4 cs8 | d4. f | g a |  
            f4. g | a4 r8 r4 <f d'>8 | \stemUp d'4.~4 8 | d'4.~4 8 | \stemDown <g d'>4 <e d'>8 <a d'>4 \stemUp a,8 | d4 a,8 d,4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2.*20 | g4 e8 f8 r8 f8 | g4 e8 f8 r8 f8 |
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