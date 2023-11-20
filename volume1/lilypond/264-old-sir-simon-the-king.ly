\version "2.22.0"
\language "english"

global = {
  \time 9/8
  \key g \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Cheerfully."}
%  arranger = \markup {\caps "First Tune."}
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \repeat volta 2 { \partial 8 d8 | <b, g>4 g8 g8.( a16) g8 <d g>4 d8 | <b, g>4 g8 g8. a16 g8 <d fs>4 d8 | \mBreak
            <g, e>4^\< e8 <c e>4 e8 <c e>8 fs g | \partial 1 <c fs a>4\sf <e g>8 <d fs>4 <c e>8 <b, d>4 } | \repeat volta 2 { \partial 8 d8 |
            <d g>4 g8 g8. b16 c'8 <fs d'>4 d8 | <d g>4 g8 g8. a16 b8 <e c'>4 e8 |
            <g, e>4^\< e8 <c e>4 e8 <c e> fs! g | \partial 1 <c fs a>4\sf <e g>8 <d fs>4 <c e>8 <b, d>4 } |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. e4 s8 s4. | s4. cs4 s8 s4. |
            s1 s8 | s4. f!4 s8 s4. |
            s1 s8 | s4. f!4 s8 s4. |
            s1 s8 | s1 |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        In16 a | humour4 I8 was4 of8 late,4 As8 | many4 good8 fel8. -- lows16 may8 be,4 To8 |
        think8 of no matters4 of8 state, But to | seek8 for good com4 -- pa8 -- ny.4 | My8 |
        hostess4 was8 sick8. of16 the8 mumps,4 The8 | maid4 was8 ill8. at16 her8 ease,4 The8 |
        tapster4 was8 drunk8 in his dumps, They were | all4 of8 one4 dis8 -- ease.4 |
      }	% end lyrics verse one
      \new Lyrics \lyricmode {	% verse two
        That8 best4 might8 suit4 my8 mind,4 So16 I16 tra4 -- vell’d8 up4 and8 down,4 No8 |
        compa4 -- ny8 I4 could8 find, Till I | came8 to the sight of the Crown.4 | Says8 |
        old4 [Sir]8 Si8. -- mon16 the8 king,4 [Says8 old4 Sir8 Si8. -- mon16 the8 king,4 With16 his16 |
                                               ale4 -- dropt8 hose, and his Malm -- sey nose, | Sing hey ding ding a ding, ding.]4 |

      }	% end lyrics verse two

      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 | g,4. c b, | e a, d |
            c!4. b, a, | d,2. g,4 | r8 |
            b,4. g, d, | b, g, c, |
            c4. b, a, | d,2. g,4 |
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
