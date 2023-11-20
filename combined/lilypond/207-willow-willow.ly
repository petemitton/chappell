\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key e \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Rather slow and smoothly."}
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
            \partial 4 b4\mf | <b, g b>4. e8 <a, ds fs>4 | e4 e4 b8 b8 | <g d'>4^\sf <d g>4 <fs a>4 | g2 b4^\pp | \mBreak
            <e g b>4.^\markup{\italic "Ritard.~~~~~~~~~~~~~~~~~~"} e8 g8 a8 | b4 b4 b8^\mf b8^\markup{\italic "A tempo."}  | <d! d'>4^\sf <d g>4 <c fs a>4 | <b, g b>4 g4 <b, g b>4 | <e a>4. g8 fs8 e8 | \mBreak
            <ds fs>2 <d! d'>4^\f cs'8 b8 a8 g8 fs8 fs8 | e4 e4 <a e'>4 | ds'8 cs'8 b8 a8 gs8 fs8 | <e gs>4 e4 <b, e g!>4^\pp | \mBreak
            <e fs>4. e8 <ds fs>4 | e2 g4^\f | g4. g8 <c fs a>4 | <b, g b>4 <b, g b>4 r4 | d'4.^\p b8  c'8 a8 | \mBreak
            b4 b4 e'4^\cresc | d'4. b8 c'8_(a8) | <g b>4.^\> <fs a>8 <e g>4 | <e fs>4\!^\pp e4 <ds fs>4 | \partial 2 e2 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s2. | s2 g4 | s2. | s2 g4 |
            s2 e4 | <ds fs>2 ds4 | s2.*3 |
            s2. | e4 cs4 d4 | cs2 s4 | fs4 ds4 ds4 | s2. |
            a,2 s4 | s2 e4 | e4 d4 s4 | s2. | g2 fs4 |
            g2 g4 | g2 fs4 | s2.*2 | s2 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        The4 | poor4. soul8 sat4 | sigh4 -- ing4 by8 a8 | si4 -- ca4 -- more4 | tree.2 Sing4 |
        wil4. -- low,8 wil8 -- low,8 | wil4 -- low!4 With8 his8 | hand4 in4 his4 | bo4 -- som,4 and8 his8 | head4. up8 -- on8 his8 |
        knee;2 Oh!4 | wil8 -- low,8 wil8 -- low,8 wil8 -- low,8 | wil4 -- low,4 Oh!4 | wil8 -- low,8 wil8 -- low,8 wil8 -- low,8 | wil4 -- low,4 Shall4 |
        be4. my8 gar4 -- land:2 Sing4 | all4. a8 green4 | wil4 -- low,4 4 | wil4. -- low,8 wil8 -- low,8 |
        wil4 -- low.4 Ah4 | me!4. the8 gre8 -- en8 | wil4. -- low8 must4 | be4 my4 gar4 -- land.2 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            r4 | e,4 g,4 s4 | g2 s4 | b4 b4 s4 | s2. |
            s2.*3 | s2 g,4 | c2 s4 |
            s2.*4 | s2 e,4 |
            s2 a4 | g2 g4 | g4 s2 | s2.*2 |
            s2.*2 | s4 e,4 g,4 | a2 a4 | g2 | \fine
          } % end voice three
          \new Voice { % voice four
            \voiceFour
            s4 | s2 b,4 | e2 <e g>4 | d2 <d c'>4 | <g b>2 e4 |
            c'4 c'4 c'4 | b2 <b, fs>4 | <g, b>4 b,4 d4 | g2 s4 | s2 <c a>4 |
            <b, fs>2 <b, fs>4 | <a, a>4 <a, a>4 <d a>4 | <a, a>2 <a, cs'>4 | <b, b>4 <b, b>4 <b, b>4 | <e b>2 s4 |
            c2 b,4 | e2 e8 d8 | c4 b,4 a,4 | g,4 g,4 r4 | b2 a4 |
            g2 c'4 | b2 a4 | e4 s2 | c2 b,4 | e2 |

          } % end voice four
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
