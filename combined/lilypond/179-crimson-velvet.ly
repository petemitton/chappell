\version "2.22.0"
\language "english"

global = {
	\time 3/4
	\key g \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Slow."}
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
				 \repeat volta 2 {\partial 8d8 | g8. a16 <d bf>8 a16_( g16) <fs a>4 | g8. a16 <d bf>8 a16_( g16) fs8 d8 | bf8. bf16 s2 | \mBreak } 
				 \alternative { {\partial 8*5 bf8. c'16 <c fs a>8 a8 <bf, g>8 | } {bf8. c'16 <c fs a>8 a8 <bf, g>4 | } } |
				 \repeat volta 2 { d'8. d'16 <ef a d'>8 c'8 <d bf>4 | \mBreak 
				 a8.[ bf16_( c'8) <d bf>8] <fs a>8 d8 | g8. a16 <d bf>8 d'8  <g c'>16_( bf16) a16_( g16) |  <fs a>2~ <fs a>8 a8 \mBreak | }
				 \key g \major a8.[ a16 a8 a8] <a, fs>8 d8 | a8.[ a16 d'8 c'8] <d b>8 g8 | c'8. c'16 <d g b>8 b8 <c fs a>8 a8 | <b, g>2. | \mBreak
				 a8.[ a16 a8 a8] <a, fs>8 d8 | a8.[ a16 d'8 c'8] <d b>8 g8 | d'8. d'16 <d g b>8 b8 <c fs a>8 a8 | <b, g>2. \fine |
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s8 | d4 s2 | d4 s2 | d4 <g c'>8 <g ef'>8 <g d'>4 |
				<d g>4 s4. | <d g>4 s2 | <d f!>4 s2 |
				d4 s2 | d4 s2 | s2. |
				<a, e>2 s4 | d2 s4 | <c e>4 s2 | s2. |
				<a, e>2 s4 | d2 s4 | <c e>4 s2 | s2. |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  It8 | was8. a16 youth8. -- ful16 knight4 | Lov’d8. a16 gal8 --  lant8 la8 -- dy,8 | Fair8. she16 was8 and8 bright;4 | 
		  And8. of16 vir8 -- tues8 rare.8 | Joy8. with16 -- out8 com8 -- pare.4 | Here8. be16 -- gan8 the8 grief,4 |
		  Pain8. with8. -- out8 re8 -- lief;16 Her16 | husband4 soon8 her8 love8 for8 | sook,2 8 To8
		  Lady4 she8 sat8 16 weeping,8 16 | While8. that16 he8 was8 16 keeping8 16 |  16 Company4 16 with8 others4 | moe.2  Her4 |
		  words,8. My16 love,8 be8 -- lieve8 not,8 | Come8. to16 me,8 and8 grieve8 not;8 | 16 Wantons8 16 will8 thee8 o8 -- ver8-throw.2. |
		}	% end lyrics verse one
		\new Lyrics \lyricmode {	% verse two
		  Her8 -- self8. she16 did8 be16 -- have,16 So4 | courteously4. as8 may8 be,8 | Wedded4 they8 were,8 brave;4 |
		  2 8 | 2. | Wo8. -- men16 lewd8 of8 mind,4 |
		  Be8. -- ing8. bad8 in8 -- clin’d,16 He16 | on8. -- ly16 lent8 a8 plea8 -- sant8 look,2 8 The |
		  2.*3 | [more]2 4 |
		}	% end lyrics verse two
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				r8 | bf4 g4 d4 | bf,4 g,4 d,4 | g4 ef8 c8 bf,8. c16 |
				d4 d,4 g,8 | d4 d,4 g4 | bf,4 f4 bf4 | 
				fs8. g16 ef8 g8 d4 | bf,4 g,4 ef,4 | d,2. |
				\key g \major cs2 d4 | fs,2 g,4 | a,4 d4 d4 | e8.[ fs16 g8 fs8 e8 d8] |
				cs2 d4 | fs,2 g,4 | a,4 d4 d,4 | g,2. | \fine
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