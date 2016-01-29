export HISTSIZE=100000                          #500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p '         #using strftime format
export HISTCONTROL=ingnoreboth                  #ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll"
export EDITOR="$HOME/bin/mate -w"

#custom bash
export PS1='\W > '              #default '\h:\W \u$ '
#alias python='python3'

#custom aliases
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .5='cd ../../../../..'
alias ll='ls -laG'	#display contents of directory
alias lsd='ls -l | grep "^d"'
alias lA='ls -A'	#display contents of directory in columns
alias l1='ls -1'	#display contents of directory vertially 
alias lA1='ls -A1'
alias home='cd ~'
alias brc='open -a "sublime text 2" ~/.bashrc'
alias aliasPrint='less ~/.bashrc > ~/Desktop/bashrc.txt'	#print all alises to file
alias tpro='top -o cpu -O +rsize -s 1 -n 20'            #top -o cpu -O +rsize -s (number in secends) -n (how many lines to dis$
alias indexOff='sudo mdutil -a -i off'
alias indexOn='sudo mdutil -a -i on'
alias delete='mv *.epub ~/.Trash'
alias qlON='defaults write com.apple.finder QLEnableTextSelection -bool TRUE; killall Finder'
alias qlOFF='defaults write com.apple.finder QLEnableTextSelection -bool FALSE; killall Finder'
alias diff='colordiff'
alias h='history'	#display terminal history
alias getimages='php /Volumes/Active/ScriptsLibrary/php/getimages.php'
alias df='df -h'	#display volume sizes
alias getip='ipconfig getifaddr en1'
alias ext='shopt -s extglob'
alias strc='mkdir ~src;mv !(~src) ~src;mkdir ~finals;mkdir EPUB2;mkdir EPUB3;mkdir KF8;mkdir pages'
alias cpanShell='perl -MCPAN -e shell'

#Turn On/Off HiddenFiles
alias hiddenOn='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hiddenOff='defaults write com.apple.finder AppleShowAllFiles FALSE'

#Restart Finder
alias killFind='killall Finder && open /System/Library/CoreServices/Finder.app'
alias eject='drutil tray eject'

#Keep computer from going to sleep, Cmd+C in bash to end
alias dontsleep='pmset noidle'

#KindleGen aliases
alias mkkf8='cd OEBPS;kindle29;mv content.mobi ../../Amz_KF8_v$(date +'%Y%m%d-%H%M%S').mobi; cd ../..; mv *.mobi ~finals; cd ~finals; open "`ls -t | grep .mobi | head -1`"'     # adds incrementing number to file name an$
#alias kindle20='/Volumes/Active/ScriptsLibrary/bin/kindlegen2.9/kindlegen content.opf -c0 -verbose'
#alias kindle21='/Volumes/Active/ScriptsLibrary/bin/kindlegen2.9/kindlegen content.opf -c1 -verbose'
alias kindle29='/Volumes/Active/ScriptsLibrary/bin/kindlegen2.9/kindlegen content.opf -c2 -verbose'
#alias kindle22='/Volumes/Active/ScriptsLibrary/bin/kindlegen2.9/kindlegen -dont_append_source content.opf -c2 -verbose'

#ePub aliases
#alias mkepub='step1; step2; step3; epc; fnRename; ..; open "`ls -t | grep .epub | head -1`"'        #combine the aliases step1, step2, step3 and epc to one alias
alias mkepub='e2_step1; e2_step2; e2_step3; epc; fnRename; ..; mvEpub; cd ~finals; opnEpub'
alias mkepub3='e3_step1; e3_step2; e3_step3; epc; epca; fnRename3; ..; mvEpub; cd ~finals; opnEpub'
#alias mkepub3test='e3_step1; e3_step2; e3_step3; fnRename3; ..; mvEpub; cd ~finals; opnEpub'
alias mkapple='step1; step2; step3; epc; fnRename2; ..; mv *.epub ~finals; cd ~finals; open "`ls -t | grep .epub | head -1`"'
alias nzp='unzip *.epub; fnDel'	#unzip .epub file then move file to Trash
alias e2_step1='find . -name '*DS_Store' -type f -delete;find . -name '._*' -type f -delete'     # deletes the dot files before zipping
alias e2_step2='zip -0Xq book.epub mimetype'       # correctly zips the mimetype before other files
alias e2_step3='zip -Xr9Dq book.epub *'    # completes file zip
alias e3_step1='zip -X book.epub mimetype'
alias e3_step2='zip -rg book.epub META-INF -x \*.DS_Store'
alias e3_step3='zip -rg book.epub OEBPS -x \*.DS_Store'
alias fnRename='mv book.epub ../ePub_Gen_v$(date +'%Y%m%d-%H%M%S').epub'     # renames zipped file with incrementing version number
alias fnRename2='mv book.epub ../ePub_Apple_v$(date +'%Y%m%d-%H%M%S').epub'
alias fnRename3='mv book.epub ../ePub3_Gen_v$(date +'%Y%m%d-%H%M%S').epub'
#alias fnRename4='mv book.epub ../ePub3_Gen_v$(date +'%Y%m%d-%H%M%S').epub && touch ../~finals/ePub3_Gen_v$(date +'%Y%m%d-%H%M%S').ini'
alias fnTest='for i in *; do mv $i/book.epub $i/$i$((j++)).epub ; done' # this is a test...
alias fnDel='cp *.epub ~/.Trashes && rm *.epub'
#alias mvepub='mv *.epub ../ePub_Gen_v$(date +'%Y%m%d-%H%M%S').epub'     # adds date and time as file name and moves file up in directory tree
#alias mvepub='mv *.epub ../ePub_Gen_v$((j++)).epub'     # adds incrementing number as file name and moves file up in directory tree
alias mvEpub='mv *.epub ~finals'
alias opnEpub='open "`ls -t | grep .epub | head -1`"'
alias epubDate='date +%Y%m%d-%H%M%S'
alias changeExt='for file in *.html ; do mv $file `echo $file | sed 's/\(.*\.\)html/\1xhtml/'` ; done'  #rename .html files wi$
alias runPerl='for i in *.xhtml; do perl ~/ScriptsLibrary/perl/regex.pl $i; done'
alias xmax='changeExt; runPerl'
alias rubyNCX='ruby -pi.bak -e "BEGIN{\$num=0}; gsub(/(playOrder=.)\d*/) {|s| \$num+=1; \$1+\$num.to_s}" *.ncx'
alias uuid='uuidgen -hdr'
alias showDots='find . -name '._*' -type f'
alias dotClean='find . -name '._*' -type f -delete'
alias dotClean2='dot_clean .'
alias changePages='for file in *.pages ; do mv $file `echo $file | sed 's/\(.*\.\)pages/\1zip/'` ; done'

#ePubCheck
alias epc='java -jar /Volumes/Active/ScriptsLibrary/bin/epubcheck-3.0.1/epubcheck-3.0.1.jar *.epub'
alias epca='java -jar /Volumes/Active/ScriptsLibrary/bin/epubcheck-4.0.1/epubcheck.jar *.epub'

#perlScript
alias regex='perl /Volumes/Active/ScriptsLibrary/perl/regex.pl *.xhtml'
