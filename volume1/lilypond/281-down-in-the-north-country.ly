\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key ef \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Cheerfully."}
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
            \partial 4 ef4 | bf g af8( bf) c'( bf) | s1 | bf4 af8 bf c'( bf) af( g) | \mBreak
            ef2 bf | g4 f8( ef) f4 ef8( d) | c( d) ef4 af4 bf | g ef' af8 g f( ef) | ef2. ef4 | \mBreak
            bf4 g4 af8( bf8) c'8( bf8) | bf2( \sdown ef'2) \sup | bf4 af8( bf8) c'8( bf8) af8( g8) | f2 bf | \mBreak
            g4 f8( ef) f4 ef8( d) | c( d) ef4 af bf | g f8( ef) d( ef) f( d) | \partial 2. <g, ef>2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1 | bf2( ef') | s1 |
            s1*2 | s2. f4 | ef2 ef4 d | ef2. s4 |
            s1*4 |
            s1 | s2. f4 | ef c bf, af, | s2.
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Down4 in the North Coun -- try,2 As | an4 -- cient8 re -- ports4 do |
        tell,2 There | lies4 a fa -- mous | coun4 -- try town, Some | call it merry Wake -- field,2. And4 |
        in4 this coun4 -- try | town,2 A | far4 -- mer there did | dwell,2 Whose |
        daugh4 -- ter would to | mar -- ket go, Her | trea -- sure for to | sell.2. |
      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s4 | s1*3 |
            s1 | ef'4 d'8 c'8 d'4 c'8 bf8 | af4 g4 c'4 s4 | s4 c4 s4 bf,4 | s4 bf,4 ef,4 r4 |
            s1*4 |
            ef'4 d'8 c' d'4 c'8 bf | af4 g c' s | s af, bf, bf,, | ef,2. | \fine
          } % end voice three
          \new Voice { % voice four
            \voiceFour
            r4 | <ef g ef'>2 <f af ef'> | <g bf ef'>1 | <g bf ef'>2 <af c' ef'> |
            <bf d'>1 | ef1~ | ef4 ef4 f4 d4 | ef4 s4 f4 s4 | ef4 s2. |
            <ef g ef'>2 <f af ef'> | <g bf ef'>1 | <g bf ef'>2 <af c' ef'> | <bf d'>1 |
            ef1~ | ef4 ef f d | ef s2. | s2. |
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
