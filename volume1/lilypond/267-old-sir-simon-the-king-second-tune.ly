\version "2.22.0"
\language "english"

global = {
  \time 9/8
  \key c \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Cheerfully."}
%  arranger = \markup {\caps "Second Tune."}
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 8 <b, d>8 | e8. f16 g8 g8.( a16) g8 <b, g>4 <b, d>8 | e8.( f16) g8 g8. a16 b8 <e c'>4 <g b>8 | \mBreak
            < g c'>8( c) c c4 d8 e8.( f16) g8 |\partial 1 <c a>4 g8 <c f>4 e8 <b, d>4 \repeat volta 2 { | \mBreak
            \partial 8 s8 | s4. b4 a8 g4 s8 | d'8.( e'16) c'8 s4. g8.( a16) <g b>8 |
            <g c'>8( c) c c4 d8 e8.( f16) g8 | \partial 1 <c a>4 g8 <c f>4 e8 <b, d>4  } |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | c4 s8 c4 s8 s4. | c4 s8 d4 s8 s4. |
            s2. b,4 s8 | s1 |
            <g e'>8 | <fs d'>4 c'8 s4. s4 <g e'>8 | fs4 s8 b8.( c'16) a8 s4. |
            s4.*2 b,4 s8 | s1 |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        I8 am8. a16 poor8 man,4 God8 knows,4 And8 | all4 my8 neigh8. -- bours16 can8 tell,4 I8 |
        want4 both8 money4 and8 clothes,4 And8 | yet8 I live wond’4 -- rous8 well:4 |
        I8 | have a con -- tent4 -- ed8 mind,4 And16 a16 | heart4 to8 bear4 out8 all,4 Though8 |
        for4 -- tune8 being4 un8 -- kind4 Hath8 | giv’n4 me8 sub4 -- stance8 small.4|
      }	% end lyrics verse one
      \new Lyrics \lyricmode { % verse two
        s4.*12 |
        Then8 | hang4 up8 sor4 -- row16 and16 care,4 It8 | never4 shall8 make4 me8 rue;4 What8 |
        though4 my8 back4 goes8 bare,4 I’m8 ragged4 and8 torn4 and8 true.4 |
      } %end lyrics verse two
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            g,8 | c4. e g4 g,8 | c4. b,4. a,4 g,16 f, |
            e,4. a, g, | f, d, g,4 |
            c8 | d2.->( e8.) d16 c8 | d2.-> g4 f!8 |
            e4. a g | f d g4 |

          } % end voice three
          \new Voice { % voice four

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
