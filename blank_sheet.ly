%%Blank sheet template v.1.1.1%%

\include "english.ly"
\version "2.10.33"

#(set-global-staff-size 24)

\header { 
	footer = ""
	tagline = ""
	}

\paper {
	head-separation = 0\mm
	top-margin = 7\mm
	indent = 0\mm
	after-title-space = 1\mm
	%between-system-space = 18\mm
	between-system-padding = #1
	#(set-paper-size "letter" 'letter)
	}

emptymusic = {
  	\repeat unfold 12 % Change this for more lines.
  		{ s1\break }
		}

\layout { 
  	indent = 0.0\cm
  	pagenumber = no
	}

\new Score \with {
  	\override TimeSignature #'transparent = ##t
  	\override Clef #'transparent = ##t
  	defaultBarType = #""
  	\remove Bar_number_engraver
  	\remove Clef_engraver
		} 

	<<
	\context Staff \emptymusic
	>>
