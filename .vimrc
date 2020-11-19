:map <F12><F12> :edit ~/.vimrc<Enter>
:mkview
runtime macros/matchit.vim
let b:match_words='\<begin\>:\<end\>'
let b:match_words='\<`if.\>:\<\`endif\>'
let b:match_words='\<module\>:\<endmodule\>'
let b:match_words='\<generate\>:\<endgenerate\>'
let b:match_words='\</*\>:\<*/\>'
:set hlsearch
:set number
:set autoindent
:set ruler
:set showcmd
filetype plugin indent on
:set list
:set statusline=%F\ [%{&fenc}\ %{&ff}\ L%l/&L\ C%c]\ %=%{strftime('%Y-%m-%d\ %H:%M')}
:set laststatus=2
:set listchars=tab:>-,trail:-
:syntax enable
:set whichwrap=b,s
":set nowrap
:set sidescroll=10
:map para oparameter
:map \  ma:%s/\s\+$//ge<Enter>:%s/\s\+,/,/ge<Enter>:%s/\s\+;/;/ge<Enter>`a
:map \( v:s/ //ge<Enter>0f(d00100i <Esc>0lpf(ma0f)d`a040lpf)d$080lpV:s/\s\+$//ge<Enter>:noh<ENTER>j
:map \* maomb<Esc>`bO/*<Esc>`ao*/<Esc>
:map \d *Nvwgeyo$display("<Esc>pA = %5.5f",<Esc>$pA);<Esc>:noh<Enter>
:map \p 0w100i <Esc>0wde0lp02wvf=hd015lp03wdl050lp04wd$052lpma:%s/\s\+$//ge<Enter>:%s/\s\+,/,/ge<Enter>:%s/\s\+;/;/ge<Enter>`aj
:map \c $a,,<Esc>0f,i=<Esc>0f=vf,;dV:s/\s\+,/,/ge<Enter>V:s/\s\+$//ge<Enter>0v$F s  .<Esc>$a,<Esc>0f,100i <Esc>041li(<C-p><Esc>081li)<Esc>V:s/\s\+$//ge<Enter>V:s/\s\+,//ge<Enter>:%s/^\+,\+$//ge<Enter>:noh<Enter>j
:map FF 0mAV:s/origin_dir/origin_dir ./ge<Enter>:w<Enter>^f.gfmB`AV:s/origin_dir ./origin_dir/ge<Enter>:w<Enter>`B
:map FM *Nvwgey$8a <Esc>0mA$80a <Esc>041la// File path: ./<Esc>pa.v<Esc>:noh<Enter>:%s/\s\+$//ge<Enter>:w<Enter>0f.gfmB`A0/\/\/<Enter>d$:%s/\s\+$//ge<Enter>:w<Enter>`B:noh<Enter>
:map FP :wp<Enter>
:map FA mF:w<Enter>:args *<Enter>`F
:map FE /Err<Enter>/\.<ENTER>:noh<Enter>
:map FN :wn<Enter>
:map FT /co<Enter>mA/el<Enter>mB/si<Enter>mC:noh<Enter>`Agf:%s/-debug_access+all//ge<Enter>:%s/+define+VCD_PLUS_ON=//ge<Enter>:w<Enter>`Bgf:%s/-debug_pp//ge<Enter>:w<Enter>`Cgf:%s/-gui//ge<Enter>:wq<Enter>
:map FR /co<Enter>mA/el<Enter>mB/si<Enter>mC:noh<Enter>`Agf/-full64 -v2005<Enter>$i-debug_access+all<Esc>[[/+v2k<Enter>f a+define+VCD_PLUS_ON=<Esc>:w<Enter>`Bgf/-full64<Enter>f a-debug_pp<Esc>:w<Enter>`Cgf]]f a-gui<Esc>:wq<Enter>
iabbrev alwa\ <Esc>ialways@(posedge clk or negedge rst_n) begin<Enter>end<Esc>Oif (~rst_n)
iabbrev zhu <Esc>o<Esc>82i/<Esc>YpO<Esc>\ :noh<Enter>k$a
iabbrev zhu2 <Esc>$a  //
iabbrev begin begin<Enter>end<Esc>kA
inoremap <C-j> <Esc>ji
inoremap <C-h> <Esc>ha
inoremap <C-k> <Esc>ki
inoremap <C-l> <Esc>la
iabbrev zhu1 <Esc>0i//
iabbrev init\ initial begin<Esc>oend<Esc>O
iabbrev para\ parameter
iabbrev gene\ generate<Esc>oendgenerate<Esc>O
iabbrev genv\ genvar
iabbrev inte\ integer
iabbrev modu\ module<Esc>oendmodule<Esc>O
iabbrev modu2 <Esc>82i/<Esc>o Company: <Enter>Engineer: <Enter><Enter>Create Date: <Enter>Design Name: <Enter>Module Name: <Enter>Project Name: <Enter>Target Devices: <Enter>Tool Versions: <Enter>Description: <Enter><Enter>Dependencies: <Enter><Enter>Revision: <Enter>Revision 0.01 - File Created <Enter>Additional Comments: <Enter><Enter><Esc>080i/<Esc>o<Esc>0d$i<Enter>`timescale 1ns/1ps<Esc>o<Esc>o<Esc>0imodule<Esc>]]10o<Esc>iendmodule<Esc>10k$a
iabbrev -\ -1 : 0<Esc>f]a
iabbrev dispms\ integer cnt_ms;<Enter>initial begin<Enter>cnt_ms = 0;<Enter>forever begin<Enter>#1ms $display("\ncnt_ms = %d", cnt_ms);<Enter>end<Enter>end<Esc>
:map <C-A> ggVGY
:map! <C-A> <Esc>ggVGY
