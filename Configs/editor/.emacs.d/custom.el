(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-math-list
   '((38 "land") (124 "lor") (right "Rightarrow") (up "iff") (64 "aleph")
     (49 "preceq") (50 "succeq") (51 "cong") (61 "equiv")
     (95 "models") (118 "varphi") (37 "emptyctx") (32 "sqrt")
     (33 "neg") (35 "frac") (36 "sum") (34 "dots")))
 '(compilation-always-kill t)
 '(compilation-read-command nil)
 '(compilation-scroll-output t)
 '(delete-selection-mode nil)
 '(face-font-family-alternatives
   '(("arial black" "arial" "DejaVu Sans") ("arial" "DejaVu Sans")
     ("courier" "Monospace") ("monaco" "Monospace") ("xiki" "verdana")
     ("verdana" "DejaVu Sans")))
 '(font-lock-keywords-case-fold-search t t)
 '(global-font-lock-mode t nil (font-lock))
 '(haskell-notify-p t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-path-ghci "ghci")
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-program-name "ghci \"+.\"")
 '(haskell-tags-on-save t)
 '(load-home-init-file t t)
 '(lsp-haskell-plugin-fourmolu-config-external t)
 '(lsp-yaml-schema-store-enable nil)
 '(mark-even-if-inactive t)
 '(menu-bar-mode nil)
 '(org-agenda-files '("~/notes/"))
 '(package-selected-packages
   '(anaphora attrap auctex auto-yasnippet catppuccin-theme company
	      ef-themes exec-path-from-shell flycheck git-link
	      git-timemachine gnu-elpa-keyring-update haskell-mode
	      haskell-snippets highlight-indentation lsp-haskell
	      lsp-ivy lsp-mode lsp-ui magit polymode
	      rainbow-delimiters request rust-mode smart-compile
	      synosaurus ultra-scroll unicode-fonts vimish-fold
	      writegood-mode yaml-mode yasnippet yasnippet-snippets))
 '(perl-indent-level 2)
 '(safe-local-variable-values
   '((lsp-haskell-formatting-provider . "fourmolu")
     (lsp-haskell-formatting-provider . "stylish-haskell")))
 '(scroll-bar-mode nil)
 '(scroll-conservatively 101)
 '(show-trailing-whitespace t)
 '(smart-compile-alist
   '(("\\.lhs$" . "./build.sh") (emacs-lisp-mode emacs-lisp-byte-compile)
     (html-mode browse-url-of-buffer)
     (nxhtml-mode browse-url-of-buffer)
     (html-helper-mode browse-url-of-buffer) (octave-mode run-octave)
     ("\\.c$" . "gcc -O2 %f -lm -o %n")
     ("\\.[Cc]+[Pp]*$" . "g++ -O2 %f -lm -o %n")
     ("\\.m$" . "gcc -O2 %f -lobjc -lpthread -o %n")
     ("\\.java$" . "javac %f") ("\\.php$" . "php -l %f")
     ("\\.cron\\(tab\\)?$" . "crontab %f")
     ("\\.tex$" . "rubber -d %f") ("\\.texi$" . "makeinfo %f")
     ("\\.mp$" . "mptopdf %f") ("\\.pl$" . "perl %f")
     ("\\.rb$" . "ruby %f")))
 '(tex-dvi-view-command "xdvi -s 5")
 '(tex-start-commands "")
 '(tool-bar-mode nil)
 '(unicode-fonts-block-font-mapping
   '(("Aegean Numbers"
      ("Noto Sans Symbols" "Aegean" "Symbola" "Quivira" "Code2001"
       "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Alchemical Symbols"
      ("Noto Sans Symbols" "Symbola" "Quivira"
       "Everson Mono:weight=bold"))
     ("Alphabetic Presentation Forms"
      ("DejaVu Sans:width=condensed" "Arial Unicode MS" "Cardo"
       "Code2000" "Quivira" "Everson Mono:weight=bold" "FreeMono"
       "ALPHABETUM Unicode"))
     ("Ancient Greek Numbers"
      ("Noto Sans Symbols" "Apple Symbols" "New Athena Unicode"
       "Cardo" "Aegean" "Quivira" "Symbola" "Everson Mono:weight=bold"
       "ALPHABETUM Unicode"))
     ("Ancient Symbols"
      ("Noto Sans Symbols" "Analecta" "New Athena Unicode" "Cardo"
       "Aegean" "Quivira" "Symbola" "Everson Mono:weight=bold"
       "ALPHABETUM Unicode"))
     ("Arabic Mathematical Alphabetic Symbols" ("Amiri"))
     ("Arrows"
      ("DejaVu Sans Mono" "Apple Symbols" "Cambria Math"
       "Segoe UI Symbol" "DejaVu Sans:width=condensed"
       "Arial Unicode MS" "BabelStone Modern" "Symbola" "Quivira"
       "Code2000" "Noto Sans Symbols" "Everson Mono:weight=bold"
       "FreeMono"))
     ("Block Elements"
      ("DejaVu Sans Mono" "Noto Sans Symbols" "FreeMono"
       "DejaVu Sans:width=condensed" "Apple Symbols" "Segoe UI Symbol"
       "BabelStone Modern" "Symbola" "Quivira" "Code2000"
       "Everson Mono:weight=bold"))
     ("Box Drawing"
      ("DejaVu Sans Mono" "FreeMono" "DejaVu Sans" "Everson Mono"
       "Quivira" "Code2000" "Noto Sans Symbols" "Segoe UI Symbol"
       "Symbola"))
     ("Braille Patterns"
      ("Quivira" "Apple Braille" "DejaVu Sans:width=condensed"
       "Apple Symbols" "Segoe UI Symbol" "Symbola" "Noto Sans Symbols"
       "FreeMono" "Code2000" "Everson Mono:weight=bold"))
     ("Cherokee"
      ("Aboriginal Sans" "Aboriginal Serif" "Plantagenet Cherokee"
       "Noto Sans Cherokee" "Gadugi" "MPH 2B Damase" "Quivira"
       "Everson Mono:weight=bold" "FreeMono" "Code2000"))
     ("Cherokee Supplement" ("Everson Mono:weight=bold"))
     ("CJK Compatibility"
      ("SimHei" "FangSong" "SimSun" "MingLiU" "Meiryo"
       "Microsoft JhengHei" "Microsoft JhengHei UI" "Lantinghei SC"
       "Lantinghei TC" "HAN NOM A" "Arial Unicode MS"
       "WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han" "Code2000"))
     ("CJK Compatibility Forms"
      ("WenQuanYi Zen Hei Mono" "Lantinghei SC" "SimHei" "FangSong"
       "SimSun" "LiSong Pro" "Baoli SC" "Microsoft YaHei"
       "Microsoft YaHei UI" "Lantinghei TC" "BabelStone Han" "MingLiU"
       "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A"
       "Symbola" "Xingkai SC" "DFKai-SB" "Code2000"))
     ("CJK Compatibility Ideographs"
      ("SimHei" "FangSong" "SimSun" "Microsoft YaHei"
       "Microsoft YaHei UI" "WenQuanYi Zen Hei Mono" "BabelStone Han"
       "UnBatang" "MingLiU" "Microsoft JhengHei"
       "Microsoft JhengHei UI" "HAN NOM A" "Arial Unicode MS"
       "Lantinghei SC" "HanaMinA"))
     ("CJK Compatibility Ideographs Supplement"
      ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "SimSun" "MingLiU"
       "HanaMinA" "Hiragino Kaku Gothic Pro"
       "Hiragino Maru Gothic Pro" "Hiragino Mincho Pro"
       "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM B"
       "LiSong Pro"))
     ("CJK Radicals Supplement"
      ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "SimSun"
       "Microsoft YaHei" "Microsoft YaHei UI" "HanaMinA"
       "BabelStone Han" "MingLiU" "Microsoft JhengHei"
       "Microsoft JhengHei UI" "HAN NOM A" "DFKai-SB" "Apple Symbols"
       "Code2000"))
     ("CJK Strokes"
      ("WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han" "Code2000"))
     ("CJK Symbols and Punctuation"
      ("Lantinghei SC" "SimHei" "FangSong" "SimSun" "HanaMinA"
       "WenQuanYi Zen Hei Mono" "LiSong Pro" "STFangsong"
       "Microsoft YaHei" "Microsoft YaHei UI" "Lantinghei TC"
       "MingLiU" "HAN NOM A" "Arial Unicode MS" "PCMyungjo"
       "BabelStone Han" "Osaka:spacing=m" "Code2000"))
     ("CJK Unified Ideographs"
      ("WenQuanYi Zen Hei Mono" "Lantinghei SC" "Songti SC" "SimHei"
       "FangSong" "STFangsong" "SimSun" "LiSong Pro" "Baoli SC"
       "HanaMinA" "BabelStone Han" "Apple LiGothic" "Lantinghei TC"
       "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI"
       "HAN NOM A" "DFKai-SB" "Arial Unicode MS" "Xingkai SC"
       "GB18030 Bitmap" "UnBatang"))
     ("CJK Unified Ideographs Extension A"
      ("SimHei" "FangSong" "STFangsong" "SimSun" "Songti SC"
       "Microsoft YaHei" "Microsoft YaHei UI" "MingLiU"
       "Microsoft JhengHei" "Microsoft JhengHei UI" "HanaMinA"
       "HAN NOM A" "Code2000" "DFKai-SB" "BabelStone Han"
       "GB18030 Bitmap"))
     ("CJK Unified Ideographs Extension B"
      ("SimHei" "FangSong" "SimSun" "LiSong Pro" "Microsoft YaHei"
       "Microsoft YaHei UI" "HanaMinB" "HAN NOM B" "Code2002"
       "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI"
       "BabelStone Han" "DFKai-SB"))
     ("CJK Unified Ideographs Extension C"
      ("HanaMinB" "BabelStone Han" "HAN NOM B"))
     ("CJK Unified Ideographs Extension D"
      ("HanaMinB" "BabelStone Han"))
     ("CJK Unified Ideographs Extension E"
      ("HanaMinB" "BabelStone Han"))
     ("Combining Diacritical Marks"
      ("Monaco" "Consolas" "Noto Sans" "Cambria Math" "Charis SIL"
       "Doulos SIL" "Courier New" "DejaVu Sans:width=condensed"
       "DejaVu Sans Mono" "Cardo" "Code2000" "Gentium Plus" "Junicode"
       "Tahoma" "Microsoft Sans Serif" "Arial" "Quivira" "Symbola"
       "Everson Mono" "FreeMono" "Arial Unicode MS"
       "ALPHABETUM Unicode"))
     ("Combining Diacritical Marks Extended" ("Monlam Uni Sans Serif"))
     ("Combining Diacritical Marks Supplement"
      ("Cardo" "FreeSerif" "Junicode" "Doulos SIL"
       "DejaVu Sans:width=condensed" "Noto Sans" "Segoe UI" "Code2000"
       "Everson Mono" "ALPHABETUM Unicode"))
     ("Combining Diacritical Marks for Symbols"
      ("Cambria Math" "Segoe UI Symbol" "Noto Sans Symbols" "Symbola"
       "Code2000" "Everson Mono" "Arial Unicode MS"))
     ("Combining Half Marks"
      ("Consolas" "DejaVu Sans:width=condensed"
       "Everson Mono:weight=bold" "Symbola"))
     ("Common Indic Number Forms"
      ("Noto Sans Kaithi" "Nirmala UI" "Siddhanta"))
     ("Control Pictures"
      ("Apple Symbols" "BabelStone Modern" "Noto Sans Symbols"
       "Segoe UI Symbol" "Arial Unicode MS" "Symbola" "Quivira"
       "FreeMono" "Code2000" "Everson Mono:weight=bold"))
     ("Counting Rod Numerals"
      ("WenQuanYi Zen Hei Mono" "Noto Sans Symbols"
       "BabelStone Modern" "Symbola" "Quivira" "Apple Symbols"
       "Code2001"))
     ("Cuneiform"
      ("Segoe UI Historic" "Noto Sans Cuneiform"
       "Noto Sans Sumero-Akkadian Cuneiform" "Akkadian"))
     ("Cuneiform Numbers and Punctuation"
      ("Akkadian" "Segoe UI Historic" "Noto Sans Cuneiform"
       "Noto Sans Sumero-Akkadian Cuneiform"))
     ("Currency Symbols"
      ("Monaco" "DejaVu Sans Mono" "DejaVu Sans:width=condensed"
       "Consolas" "Noto Sans Symbols" "Noto Sans" "Segoe UI"
       "Apple Symbols" "Symbola" "Quivira" "Everson Mono:weight=bold"
       "FreeMono"))
     ("Cyrillic"
      ("Consolas" "Monaco" "DejaVu Sans Mono"
       "DejaVu Sans:width=condensed" "Noto Sans" "Courier New"
       "Calibri" "Microsoft Sans Serif" "Code2000" "Arial Unicode MS"
       "Charis SIL" "Doulos SIL" "Symbola" "Quivira"
       "Everson Mono:weight=bold" "FreeMono" "Charcoal CY" "Geneva CY"
       "ALPHABETUM Unicode"))
     ("Cyrillic Extended-A"
      ("Quivira" "Everson Mono:weight=bold" "FreeSerif"
       "ALPHABETUM Unicode"))
     ("Cyrillic Extended-B"
      ("Quivira" "Code2000" "Everson Mono:weight=bold"))
     ("Cyrillic Supplement"
      ("Consolas" "Courier New" "Calibri" "Noto Sans"
       "DejaVu Sans:width=condensed" "Charis SIL" "Doulos SIL"
       "Symbola" "Quivira" "Code2000" "Everson Mono:weight=bold"))
     ("Dingbats"
      ("Apple Color Emoji" "DejaVu Sans Mono" "Segoe UI Symbol"
       "Zapf Dingbats" "DejaVu Sans:width=condensed"
       "Arial Unicode MS" "Code2000" "Noto Sans Symbols" "Symbola"
       "Quivira" "Everson Mono:weight=bold"))
     ("Domino Tiles"
      ("DejaVu Sans:width=condensed" "Symbola" "Quivira"
       "Segoe UI Symbol" "Noto Sans Symbols" "Code2001"
       "Everson Mono:weight=bold"))
     ("Early Dynastic Cuneiform" ("Akkadian"))
     ("Egyptian Hieroglyphs"
      ("Segoe UI Historic:weight=bold"
       "Noto Sans Egyptian Hieroglyphs:weight=bold"
       "Aegyptus:weight=bold" "Gardiner"))
     ("Emoticons"
      ("Apple Color Emoji" "Segoe UI Symbol" "Symbola" "Quivira"))
     ("Enclosed Alphanumeric Supplement"
      ("Segoe UI Symbol" "Noto Sans Symbols" "Symbola" "Quivira"
       "BabelStone Han" "BabelStone Modern"))
     ("Enclosed Alphanumerics"
      ("Noto Sans Symbols" "Segoe UI Symbol" "Junicode"
       "Arial Unicode MS" "Symbola" "Quivira" "Code2000"
       "BabelStone Han" "WenQuanYi Zen Hei Mono" "BabelStone Modern"
       "HAN NOM A" "Everson Mono:weight=bold"))
     ("Enclosed CJK Letters and Months"
      ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "MingLiU"
       "Arial Unicode MS" "HanaMinA" "Meiryo" "BabelStone Han"
       "Quivira" "Code2000" "UnBatang" "HAN NOM A"))
     ("Enclosed Ideographic Supplement"
      ("Segoe UI Symbol" "Noto Sans Symbols" "HanaMinA"
       "BabelStone Han" "Symbola"))
     ("General Punctuation"
      ("Monaco" "Apple Symbols" "Segoe UI Symbol" "Cambria Math"
       "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Charis SIL"
       "Doulos SIL" "Antinoou" "Symbola" "Code2000" "Quivira"
       "Noto Sans" "Everson Mono:weight=bold" "FreeMono"
       "BabelStone Modern"))
     ("Geometric Shapes"
      ("DejaVu Sans Mono" "DejaVu Sans:width=condensed"
       "Segoe UI Symbol" "Arial Unicode MS" "Symbola"
       "Noto Sans Symbols" "Quivira" "BabelStone Modern"
       "Everson Mono" "FreeMono" "Code2000"))
     ("Geometric Shapes Extended" ("Symbola" "Quivira"))
     ("Gothic"
      ("Noto Sans Gothic" "Segoe UI Historic" "Segoe UI Symbol"
       "Analecta" "Junicode" "Sadagolthina" "MPH 2B Damase"
       "FreeSerif" "Code2001" "Quivira" "Everson Mono:weight=bold"
       "ALPHABETUM Unicode"))
     ("Greek Extended"
      ("Consolas" "DejaVu Sans Mono" "Courier New" "Antinoou"
       "Noto Sans" "DejaVu Sans:width=condensed" "Cardo" "Junicode"
       "New Athena Unicode" "Microsoft Sans Serif"
       "Gentium Plus Compact" "Gentium Plus" "Arial Unicode MS"
       "Arial" "Tahoma" "Aegean" "Code2000" "Quivira"
       "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Greek and Coptic"
      ("Consolas" "DejaVu Sans Mono" "DejaVu Sans:width=condensed"
       "Antinoou" "Noto Sans" "Segoe UI Historic" "Segoe UI Symbol"
       "New Athena Unicode" "Calibri" "Microsoft Sans Serif"
       "Gentium Plus Compact" "Gentium Plus" "Lucida Console"
       "Arial Unicode MS" "Cardo" "Aegean" "Code2000" "Symbola"
       "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"
       "Noto Sans Coptic"))
     ("Halfwidth and Fullwidth Forms"
      ("Meiryo" "Arial Unicode MS" "Microsoft JhengHei"
       "Microsoft JhengHei UI" "Microsoft YaHei" "Microsoft YaHei UI"
       "BabelStone Han" "Apple Symbols" "Quivira" "Code2000"
       "HAN NOM A"))
     ("Hebrew"
      ("Miriam Fixed" "Ezra SIL" "Ezra SIL SR" "Arial Hebrew"
       "Raanana" "New Peninim MT" "Aharoni" "David" "FrankRuehl"
       "Gisha" "Levenim MT" "Narkisim" "Rod" "Cardo" "Courier New"
       "Adobe Hebrew" "Code2000" "Aramaic Imperial Yeb"
       "Microsoft Sans Serif" "Tahoma" "Lucida Sans Unicode"
       "Arial Unicode MS" "Arial" "Quivira" "Everson Mono:weight=bold"
       "ALPHABETUM Unicode"))
     ("IPA Extensions"
      ("Monaco" "Consolas" "DejaVu Sans Mono" "Courier New"
       "Noto Sans" "Arial Unicode MS" "Arial" "Tahoma"
       "Microsoft Sans Serif" "Aboriginal Sans" "Cardo" "Symbola"
       "Quivira" "Everson Mono:weight=bold" "FreeMono" "Code2000"
       "ALPHABETUM Unicode"))
     ("Kannada"
      ("Kannada Sangam MN" "Noto Sans Kannada" "Noto Sans Kannada UI"
       "Tunga" "Akshar Unicode" "Kedage" "Nirmala UI" "Kannada MN"
       "Arial Unicode MS" "Code2000"))
     ("Latin Extended-C"
      ("DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Noto Sans"
       "Cambria Math" "Gentium Plus" "Charis SIL" "Doulos SIL"
       "Code2000" "Quivira" "Everson Mono:weight=bold"
       "ALPHABETUM Unicode"))
     ("Latin Extended-D"
      ("FreeMono" "DejaVu Sans Mono" "DejaVu Sans:width=condensed"
       "Charis SIL" "Doulos SIL" "Junicode" "Cardo" "Quivira"
       "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Latin Extended-E"
      ("Quivira" "Everson Mono:weight=bold" "HanaMinA"))
     ("Letterlike Symbols"
      ("Monaco" "Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols"
       "Cambria Math" "DejaVu Sans:width=condensed" "Arial Unicode MS"
       "Code2000" "Symbola" "Quivira" "HAN NOM A"
       "Everson Mono:weight=bold"))
     ("Mathematical Alphanumeric Symbols"
      ("Quivira" "Cambria Math" "Noto Sans Symbols" "Code2001"
       "Symbola" "Everson Mono:weight=bold"))
     ("Mathematical Operators"
      ("Monaco" "DejaVu Sans Mono" "Segoe UI Symbol" "Cambria Math"
       "DejaVu Sans:width=condensed" "Noto Sans Symbols"
       "Apple Symbols" "Arial Unicode MS" "Code2000" "Symbola"
       "Quivira" "Everson Mono:weight=bold" "FreeMono"))
     ("Miscellaneous Mathematical Symbols-A"
      ("Noto Sans Symbols" "Apple Symbols" "Segoe UI Symbol"
       "Code2000" "Symbola" "Quivira" "Cambria Math"
       "Everson Mono:weight=bold"))
     ("Miscellaneous Mathematical Symbols-B"
      ("Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols"
       "Cambria Math" "Code2000" "Symbola" "Quivira"))
     ("Miscellaneous Symbols"
      ("Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols"
       "DejaVu Sans Mono" "DejaVu Sans:width=condensed"
       "Arial Unicode MS" "Symbola" "Quivira"
       "MS Reference Sans Serif" "Cardo" "Code2000"
       "Everson Mono:weight=bold"))
     ("Miscellaneous Symbols and Arrows"
      ("Symbola" "Quivira" "Code2000" "Segoe UI Symbol"
       "Noto Sans Symbols"))
     ("Miscellaneous Symbols and Pictographs"
      ("Apple Color Emoji" "Segoe UI Symbol" "Symbola" "Quivira"))
     ("Miscellaneous Technical"
      ("Segoe UI Symbol" "Noto Sans Symbols" "Apple Symbols"
       "Cambria Math" "DejaVu Sans Mono" "Code2000" "Symbola"
       "Quivira" "Everson Mono:weight=bold"))
     ("Musical Symbols"
      ("Noto Sans Symbols" "Musica" "FreeSerif" "Symbola" "Quivira"))
     ("Number Forms"
      ("DejaVu Sans:width=condensed" "Arial Unicode MS" "Junicode"
       "Symbola" "Quivira" "Charis SIL" "Doulos SIL" "Code2000"
       "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Optical Character Recognition"
      ("Apple Symbols" "Segoe UI Symbol" "Noto Sans Symbols"
       "Arial Unicode MS" "Symbola" "Quivira" "FreeMono"
       "BabelStone Modern" "Code2000" "Everson Mono"))
     ("Ornamental Dingbats" ("Symbola"))
     ("Phonetic Extensions"
      ("Monaco" "Consolas" "Calibri" "Noto Sans" "Aboriginal Sans"
       "Charis SIL" "Doulos SIL" "Quivira" "Courier New"
       "DejaVu Sans:width=condensed" "Code2000"
       "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Phonetic Extensions Supplement"
      ("Consolas" "Calibri" "Courier New" "Noto Sans"
       "Aboriginal Sans" "Charis SIL" "Doulos SIL" "Quivira"
       "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Code2000"
       "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Playing Cards"
      ("DejaVu Sans:width=condensed" "Symbola" "Noto Sans Symbols"
       "Segoe UI Symbol" "Quivira"))
     ("Runic"
      ("Noto Sans Runic" "Segoe UI Historic" "Segoe UI Symbol"
       "Aboriginal Serif" "Junicode" "FreeMono" "Quivira" "Code2000"
       "Cardo" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Small Form Variants"
      ("Apple Symbols" "Arial Unicode MS" "WenQuanYi Zen Hei Mono"
       "Microsoft YaHei" "Microsoft YaHei UI" "Code2000"))
     ("Specials"
      ("BabelStone Modern" "Noto Sans Symbols" "Apple Symbols"
       "Arial Unicode MS" "Symbola" "DejaVu Sans Mono"
       "DejaVu Sans:width=condensed" "Quivira" "FreeMono"
       "BabelStone Han"))
     ("Superscripts and Subscripts"
      ("Consolas" "Monaco" "Apple Symbols" "Cambria Math"
       "DejaVu Sans Mono" "DejaVu Sans:width=condensed"
       "Segoe UI Symbol" "Charis SIL" "Doulos SIL" "Symbola" "Quivira"
       "Everson Mono:weight=bold" "FreeMono"))
     ("Supplemental Arrows-A"
      ("Segoe UI Symbol" "Cambria Math" "DejaVu Sans:width=condensed"
       "Quivira" "Symbola" "Apple Symbols" "Noto Sans Symbols"
       "Code2000" "Everson Mono:weight=bold" "FreeMono"
       "BabelStone Modern"))
     ("Supplemental Arrows-B"
      ("Cambria Math" "Segoe UI Symbol" "Apple Symbols"
       "Noto Sans Symbols" "Quivira" "Symbola" "Code2000"
       "Everson Mono:weight=bold"))
     ("Supplemental Arrows-C" ("Symbola"))
     ("Supplemental Mathematical Operators"
      ("Cambria Math" "Segoe UI Symbol" "Noto Sans Symbols"
       "Apple Symbols" "Code2000" "Symbola" "Quivira"
       "Everson Mono:weight=bold"))
     ("Supplemental Punctuation"
      ("DejaVu Sans Mono" "Segoe UI Symbol" "Noto Sans Symbols"
       "Antinoou" "New Athena Unicode" "Cardo" "Aegean" "Symbola"
       "Quivira" "Everson Mono:weight=bold" "Code2000"
       "ALPHABETUM Unicode"))
     ("Supplemental Symbols and Pictographs" ("Symbola"))
     ("Transport and Map Symbols"
      ("Apple Color Emoji" "Segoe UI Symbol" "Symbola"))
     ("Variation Selectors"
      ("BabelStone Modern" "BabelStone Han" "Code2000"))
     ("Variation Selectors Supplement"
      ("BabelStone Modern" "BabelStone Han"))
     ("Vertical Forms"
      ("Microsoft YaHei" "Microsoft YaHei UI" "Symbola"))))
 '(unicode-fonts-fallback-font-list '("Symbola" "Quivira" "DejaVu Sans Mono"))
 '(user-mail-address "conrad@sprqpt.com")
 '(vimish-fold-marks '("-- {{{" . "-- }}}"))
 '(warning-suppress-types '((comp)))
 '(whitespace-style
   '(face tabs trailing lines space-before-tab newline empty
	  space-after-tab tab-mark))
 '(writegood-weasel-words
   '("many" "much" "various" "very" "fairly" "several" "extremely"
     "exceedingly" "quite" "remarkably" "few" "surprisingly" "mostly"
     "largely" "huge" "tiny" "are a number" "is a number" "excellent"
     "interestingly" "significantly" "substantially" "clearly" "vast"
     "relatively" "completely" "literally" "not rocket science"
     "outside the box" "note that" "a number of" "trivial" "trivially"
     "not hard" "easy" "easily" "clear" "clearly" "obvious"
     "obviously" "of course" "really" "nice" "in fact")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
