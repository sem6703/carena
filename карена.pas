label esc;

//var h: string='ЮШРЗХОВЗ ВКЖБ ШИЯЕВ ЮЦЩЭА';//нравится теще
//var h: string='СУШФЬ ТХНЗ ПАУ УВМФИЩ БРСР ОИЕОФБЕУ КНХОАЧМУ';//пусть
//var h: string='МАИ ЧЭВЖ ЬКОЯЕМОХЬН ЫПРПХ ЭФПОЧ ФОФ СУЫФОХШ РШОЙ ЛХУЬЭУХТ';//всю ночь
const h: string='ЭДП ЫЙКН ЫЫЦВИЭТЭЯЩ ГЦПАЮ АЧАТЯ ЧЫЭ ШТЛЭСШЙ ФАСХ УЭТМЕЦШГ';//
//const h: string='УЗШ НБЙС ИАЦВРЭАЮГФ ЛЕФЦБ ЙКЧСГ ЕАЭ ШЫЛКТЭД ЭОЦМ ЦЖЕДДЫЖИ';
//эуя д о юдопщбяфзёъ - хе що дагзсч//https://otvet.mail.ru/question/231017740
//var h: string='Е АЪЖЖЭ ЯБ ТБХП УУЫОО ВЧНУС, ЬКШБВЬЕ АТУОАТБШДС: ЬЩ УЕ ЬЩ ЮЧОЧ ЯЪ ЙЖЖ';
var l3k: integer=4;// начальная длина ключа 3
var ek: integer=4;// кончная длина ключа
var o: string;
a: array[0..7] of string;

var n:integer=0;
s,s2,d: string;
key: string;

strip: array[0..2]of string;
gap: string;///зазор

ufo: integer=-1;// код ошибки
aba: integer;// цикл алфавитов
e5: string; //
gap5: string;//
limit: integer;// сколько вариантов проверить
key4,key5: string;//
ak47: string;
//******************************/

function kolt(x: string): string;//
var k: integer;
begin
  k:=1;
  var r: string =o;
  if aba in[4..7] then
  begin
    for var i:=1 to length(o) do
      if pos(o[i],a[aba])>0 then 
        begin 
          if k>length(x) then
            writeln('overlord ',length(x),' ',length(o),' ',length(h));
          r[i]:=x[k]; inc(k); 
        end;
  
   for var i:=1 to length(r) do if r[i]='_' then r[i]:=' ';
   for var i:=1 to length(r) do if r[i]='@' then r[i]:='_';     
  end
  else
  begin
    for var i:=1 to length(o) do
      if pos(o[i],a[aba])>0 then 
        begin 
          if k>length(x) then
          begin
writeln(key,' h=',h);            
            writeln(x,' ',o);
            writeln('overlord ',length(x),' ',length(o),' ',length(h));
            end;
          r[i]:=x[k]; inc(k); 
        end;
   for var i:=1 to length(r) do if r[i]='@' then r[i]:='_';    
   
   if (pos(' ',r)=0)and(pos('_',r)=0)and(aba in [0..3]) then 
     writeln('pizda   '); 
  end;
result:=r;
end;

function pot(x: char): integer;//конверсия прямого ключа обратный
begin
  if pos(x,a[aba])=0 then begin writeln('outof alphavit ',x); result:= 1;exit end;
  result:=1+(length(a[aba])*2-pos(x,a[aba])+1)mod length(a[aba]);  
end;  


function dict(x: string): boolean;// наличие слов из словаря
begin
  result:= true;
end;


function fnn1(s: string): integer;// 
begin
   
   result:=0;
 
	if Regex.IsMatch(s,'аъ' ) then begin result:=9001; exit end;//пусььлучанацсвеьитяъкоолгонйемичомАЪку   9001
	if Regex.IsMatch(s,'аы' ) then begin result:=9002; exit end;
	if Regex.IsMatch(s,'аь' ) then begin result:=9003; exit end;
	if Regex.IsMatch(s,'бй' ) then begin result:=9004; exit end;
	if Regex.IsMatch(s,'бф' ) then begin result:=9005; exit end;
	if Regex.IsMatch(s,'вй' ) then begin result:=9006; exit end;
	if Regex.IsMatch(s,'гё' ) then begin result:=9007; exit end;
	if Regex.IsMatch(s,'гй' ) then begin result:=9008; exit end;
	if Regex.IsMatch(s,'гц' ) then begin result:=9009; exit end;
	if Regex.IsMatch(s,'гщ' ) then begin result:=9010; exit end;

	if Regex.IsMatch(s,'гъ' ) then begin result:=9011; exit end;
	if Regex.IsMatch(s,'гы' ) then begin result:=9012; exit end;
	if Regex.IsMatch(s,'гь' ) then begin result:=9013; exit end;
	if Regex.IsMatch(s,'дй' ) then begin result:=9014; exit end;
	if Regex.IsMatch(s,'еъ' ) then begin result:=9015; exit end;
	if Regex.IsMatch(s,'еы' ) then begin result:=9016; exit end;
	if Regex.IsMatch(s,'ёё' ) then begin result:=9017; exit end;
	if Regex.IsMatch(s,'ёъ' ) then begin result:=9018; exit end;
	if Regex.IsMatch(s,'ёы' ) then begin result:=9019; exit end;
	if Regex.IsMatch(s,'ёь' ) then begin result:=9020; exit end;
	if Regex.IsMatch(s,'ёю' ) then begin result:=9021; exit end;
	if Regex.IsMatch(s,'жй' ) then begin result:=9022; exit end;
	if Regex.IsMatch(s,'жф' ) then begin result:=9023; exit end;
	if Regex.IsMatch(s,'жх' ) then begin result:=9024; exit end;
	if Regex.IsMatch(s,'жщ' ) then begin result:=9025; exit end;
	if Regex.IsMatch(s,'жъ' ) then begin result:=9026; exit end;
	if Regex.IsMatch(s,'жы' ) then begin result:=9027; exit end;
	if Regex.IsMatch(s,'жю' ) then begin result:=9028; exit end;
	if Regex.IsMatch(s,'зй' ) then begin result:=9029; exit end;
	if Regex.IsMatch(s,'зщ' ) then begin result:=9030; exit end;
	if Regex.IsMatch(s,'иъ' ) then begin result:=9031; exit end;
	if Regex.IsMatch(s,'иы' ) then begin result:=9032; exit end;
	if Regex.IsMatch(s,'иь' ) then begin result:=9033; exit end;
	if Regex.IsMatch(s,'йё' ) then begin result:=9034; exit end;
	if Regex.IsMatch(s,'йй' ) then begin result:=9035; exit end;
	if Regex.IsMatch(s,'йъ' ) then begin result:=9036; exit end;
	if Regex.IsMatch(s,'йы' ) then begin result:=9037; exit end;
	if Regex.IsMatch(s,'йь' ) then begin result:=9038; exit end;
	if Regex.IsMatch(s,'кё' ) then begin result:=9039; exit end;
	if Regex.IsMatch(s,'кй' ) then begin result:=9040; exit end;
	if Regex.IsMatch(s,'къ' ) then begin result:=9041; exit end;
	if Regex.IsMatch(s,'кы' ) then begin result:=9042; exit end;
	if Regex.IsMatch(s,'кь' ) then begin result:=9043; exit end;
	if Regex.IsMatch(s,'лй' ) then begin result:=9044; exit end;
	if Regex.IsMatch(s,'лъ' ) then begin result:=9045; exit end;
	if Regex.IsMatch(s,'мй' ) then begin result:=9046; exit end;
	if Regex.IsMatch(s,'мъ' ) then begin result:=9047; exit end;
	if Regex.IsMatch(s,'нй' ) then begin result:=9048; exit end;
	if Regex.IsMatch(s,'нъ' ) then begin result:=9049; exit end;
	if Regex.IsMatch(s,'оъ' ) then begin result:=9050; exit end;
	if Regex.IsMatch(s,'оы' ) then begin result:=9051; exit end;
	if Regex.IsMatch(s,'оь' ) then begin result:=9052; exit end;
	if Regex.IsMatch(s,'пг' ) then begin result:=9053; exit end;
	if Regex.IsMatch(s,'пй' ) then begin result:=9054; exit end;
	if Regex.IsMatch(s,'пх' ) then begin result:=9055; exit end;
	if Regex.IsMatch(s,'пъ' ) then begin result:=9057; exit end;
	if Regex.IsMatch(s,'рй' ) then begin result:=9058; exit end;
	if Regex.IsMatch(s,'ръ' ) then begin result:=9059; exit end;
	if Regex.IsMatch(s,'сй' ) then begin result:=9060; exit end;
	if Regex.IsMatch(s,'тй' ) then begin result:=9061; exit end;
	if Regex.IsMatch(s,'уё' ) then begin result:=9062; exit end;
	if Regex.IsMatch(s,'уъ' ) then begin result:=9063; exit end;
	if Regex.IsMatch(s,'уы' ) then begin result:=9064; exit end;
	if Regex.IsMatch(s,'уь' ) then begin result:=9065; exit end;
	if Regex.IsMatch(s,'фд' ) then begin result:=9066; exit end;
	if Regex.IsMatch(s,'фж' ) then begin result:=9067; exit end;
	if Regex.IsMatch(s,'фз' ) then begin result:=9068; exit end;
	if Regex.IsMatch(s,'фй' ) then begin result:=9069; exit end;
	if Regex.IsMatch(s,'фх' ) then begin result:=9070; exit end;

	if Regex.IsMatch(s,'фц' ) then begin result:=9071; exit end;
	if Regex.IsMatch(s,'фш' ) then begin result:=9072; exit end;
	if Regex.IsMatch(s,'фщ' ) then begin result:=9073; exit end;
	if Regex.IsMatch(s,'фъ' ) then begin result:=9074; exit end;
	if Regex.IsMatch(s,'фэ' ) then begin result:=9075; exit end;
	if Regex.IsMatch(s,'хё' ) then begin result:=9076; exit end;
	if Regex.IsMatch(s,'хй' ) then begin result:=9077; exit end;
	if Regex.IsMatch(s,'хы' ) then begin result:=9078; exit end;
	if Regex.IsMatch(s,'хь' ) then begin result:=9079; exit end;
	if Regex.IsMatch(s,'цё' ) then begin result:=9080; exit end;
	if Regex.IsMatch(s,'цй' ) then begin result:=9081; exit end;
	if Regex.IsMatch(s,'цф' ) then begin result:=9082; exit end;
	if Regex.IsMatch(s,'цш' ) then begin result:=9083; exit end;
	if Regex.IsMatch(s,'цщ' ) then begin result:=9084; exit end;
	if Regex.IsMatch(s,'цъ' ) then begin result:=9085; exit end;
	if Regex.IsMatch(s,'ць' ) then begin result:=9086; exit end;
	if Regex.IsMatch(s,'цю' ) then begin result:=9087; exit end;
	if Regex.IsMatch(s,'чй' ) then begin result:=9088; exit end;
	if Regex.IsMatch(s,'чф' ) then begin result:=9089; exit end;
	if Regex.IsMatch(s,'чщ' ) then begin result:=9090; exit end;
	if Regex.IsMatch(s,'чъ' ) then begin result:=9091; exit end;
	if Regex.IsMatch(s,'чы' ) then begin result:=9092; exit end;
	if Regex.IsMatch(s,'чю' ) then begin result:=9093; exit end;
	if Regex.IsMatch(s,'шй' ) then begin result:=9094; exit end;
	if Regex.IsMatch(s,'шф' ) then begin result:=9095; exit end;
	if Regex.IsMatch(s,'шщ' ) then begin result:=9096; exit end;
	if Regex.IsMatch(s,'шъ' ) then begin result:=9097; exit end;
	if Regex.IsMatch(s,'шы' ) then begin result:=9098; exit end;
	if Regex.IsMatch(s,'щб' ) then begin result:=9099; exit end;
	if Regex.IsMatch(s,'щг' ) then begin result:=9100; exit end;
	if Regex.IsMatch(s,'щд' ) then begin result:=9101; exit end;
	if Regex.IsMatch(s,'щж' ) then begin result:=9102; exit end;
	if Regex.IsMatch(s,'щз' ) then begin result:=9103; exit end;
	if Regex.IsMatch(s,'щй' ) then begin result:=9104; exit end;
	if Regex.IsMatch(s,'щк' ) then begin result:=9105; exit end;
	if Regex.IsMatch(s,'щт' ) then begin result:=9106; exit end;
	if Regex.IsMatch(s,'щф' ) then begin result:=9107; exit end;
	if Regex.IsMatch(s,'щх' ) then begin result:=9108; exit end;
	if Regex.IsMatch(s,'щц' ) then begin result:=9109; exit end;
	if Regex.IsMatch(s,'щч' ) then begin result:=9110; exit end;
	if Regex.IsMatch(s,'щш' ) then begin result:=9111; exit end;
	if Regex.IsMatch(s,'щщ' ) then begin result:=9112; exit end;
	if Regex.IsMatch(s,'щъ' ) then begin result:=9113; exit end;
	if Regex.IsMatch(s,'щы' ) then begin result:=9114; exit end;
	if Regex.IsMatch(s,'щю' ) then begin result:=9115; exit end;
	if Regex.IsMatch(s,'щя' ) then begin result:=9116; exit end;
	if Regex.IsMatch(s,'ъа' ) then begin result:=9117; exit end;
	if Regex.IsMatch(s,'ъб' ) then begin result:=9118; exit end;
	if Regex.IsMatch(s,'ъв' ) then begin result:=9119; exit end;
	if Regex.IsMatch(s,'ъг' ) then begin result:=9120; exit end;
	if Regex.IsMatch(s,'ъд' ) then begin result:=9121; exit end;
	if Regex.IsMatch(s,'ъз' ) then begin result:=9122; exit end;
	if Regex.IsMatch(s,'ъи' ) then begin result:=9123; exit end;
	if Regex.IsMatch(s,'ъй' ) then begin result:=9124; exit end;
	if Regex.IsMatch(s,'ък' ) then begin result:=9125; exit end;
	if Regex.IsMatch(s,'ъл' ) then begin result:=9126; exit end;
	if Regex.IsMatch(s,'ъм' ) then begin result:=9127; exit end;
	if Regex.IsMatch(s,'ън' ) then begin result:=9128; exit end;
	if Regex.IsMatch(s,'ъп' ) then begin result:=9129; exit end;
	if Regex.IsMatch(s,'ър' ) then begin result:=9130; exit end;
	if Regex.IsMatch(s,'ъс' ) then begin result:=9131; exit end;
	if Regex.IsMatch(s,'ът' ) then begin result:=9132; exit end;
	if Regex.IsMatch(s,'ъу' ) then begin result:=9133; exit end;
	if Regex.IsMatch(s,'ъф' ) then begin result:=9134; exit end;
	if Regex.IsMatch(s,'ъх' ) then begin result:=9135; exit end;
	if Regex.IsMatch(s,'ъц' ) then begin result:=9136; exit end;
	if Regex.IsMatch(s,'ъч' ) then begin result:=9137; exit end;
	if Regex.IsMatch(s,'ъш' ) then begin result:=9138; exit end;
	if Regex.IsMatch(s,'ъщ' ) then begin result:=9139; exit end;
	if Regex.IsMatch(s,'ъъ' ) then begin result:=9140; exit end;
	if Regex.IsMatch(s,'ъы' ) then begin result:=9141; exit end;
	if Regex.IsMatch(s,'ъь' ) then begin result:=9142; exit end;
	if Regex.IsMatch(s,'ъэ' ) then begin result:=9143; exit end;
	if Regex.IsMatch(s,'ыё' ) then begin result:=9144; exit end;
	if Regex.IsMatch(s,'ыъ' ) then begin result:=9145; exit end;
	if Regex.IsMatch(s,'ыы' ) then begin result:=9146; exit end;
	if Regex.IsMatch(s,'ыь' ) then begin result:=9147; exit end;
	if Regex.IsMatch(s,'ыю' ) then begin result:=9148; exit end;
	if Regex.IsMatch(s,'ьй' ) then begin result:=9149; exit end;
	if Regex.IsMatch(s,'ьъ' ) then begin result:=9150; exit end;
	if Regex.IsMatch(s,'ьы' ) then begin result:=9151; exit end;
	if Regex.IsMatch(s,'ьь' ) then begin result:=9152; exit end;
	if Regex.IsMatch(s,'эа' ) then begin result:=9153; exit end;
	if Regex.IsMatch(s,'эб' ) then begin result:=9154; exit end;
	if Regex.IsMatch(s,'эв' ) then begin result:=9155; exit end;
	if Regex.IsMatch(s,'эе' ) then begin result:=9156; exit end;
	if Regex.IsMatch(s,'эё' ) then begin result:=9157; exit end;
	if Regex.IsMatch(s,'эж' ) then begin result:=9158; exit end;
	if Regex.IsMatch(s,'эи' ) then begin result:=9159; exit end;
	if Regex.IsMatch(s,'эо' ) then begin result:=9160; exit end;
	if Regex.IsMatch(s,'эу' ) then begin result:=9161; exit end;
	if Regex.IsMatch(s,'эц' ) then begin result:=9162; exit end;
	if Regex.IsMatch(s,'эч' ) then begin result:=9163; exit end;
	if Regex.IsMatch(s,'эщ' ) then begin result:=9164; exit end;
	if Regex.IsMatch(s,'эъ' ) then begin result:=9165; exit end;
	if Regex.IsMatch(s,'эы' ) then begin result:=9166; exit end;
	if Regex.IsMatch(s,'эь' ) then begin result:=9167; exit end;
	if Regex.IsMatch(s,'ээ' ) then begin result:=9168; exit end;
	if Regex.IsMatch(s,'эю' ) then begin result:=9169; exit end;
	if Regex.IsMatch(s,'эя' ) then begin result:=9170; exit end;
	if Regex.IsMatch(s,'юё' ) then begin result:=9171; exit end;
	if Regex.IsMatch(s,'юй' ) then begin result:=9172; exit end;
	if Regex.IsMatch(s,'юъ' ) then begin result:=9173; exit end;
	if Regex.IsMatch(s,'юы' ) then begin result:=9174; exit end;
	if Regex.IsMatch(s,'юь' ) then begin result:=9175; exit end;
	if Regex.IsMatch(s,'яё' ) then begin result:=9176; exit end;
	if Regex.IsMatch(s,'яъ' ) then begin result:=9177; exit end;
	if Regex.IsMatch(s,'яы' ) then begin result:=9178; exit end;
	if Regex.IsMatch(s,'яь' ) then begin result:=9179; exit end;




 var s2:=s;  
  

end;//fnn1  


function fnn2(d: string): integer; // 
begin
result:=0;  
if Regex.IsMatch(d, 'аъ|аы|аь|бй|бф|вй|гё|гй|гц|гщ|гъ|гы|гь|дй|еъ|еы|ёё|'+
  'фц|фш|фщ|фъ|фэ|хё|хй|хы|хь|цё|цй|цф|цш|цщ|цъ|ць|цю|чй|чф|чщ|чъ|чы|чю|шй|шф|шщ|'+
  'шъ|шы|щб|щг|щд|щж|щз|щй|щк|щт|щф|щх|щц|щч|щш|щщ|щъ|щы|щю|щя|ъа|ъб|ъв|ъг|ъд|ъз|'+  
  'ъи|ъй|ък|ъл|ъм|ън|ъп|ър|ъс|ът|ъу|ъф|ъх|ъц|ъч|ъш|ъщ|ъъ|ъы|ъь|ъэ|ыё|ыъ|ыы|ыь|ыю|'+
  'ёъ|ёы|ёь|ёю|жй|жф|жх|жщ|жъ|жы|жю|зй|зщ|иъ|иы|иь|йё|йй|йъ|йы|йь|кё|кй|къ|кы|кь|'+
  'лй|лъ|мй|мъ|нй|нъ|оъ|оы|оь|пг|пй|пх|пъ|рй|ръ|сй|тй|уё|уъ|уы|уь|фд|фж|фз|фй|фх|'+
  'ьй|ьъ|ьы|ьь|эа|эб|эв|эе|эё|эж|эи|эо|эу|эц|эч|эщ|эъ|эы|эь|ээ|эю|эя|юё|юй|юъ|юы|'+
  'юь|яё|яъ|яы|яь')// плохие биграммы на стыке слов и в середине
  then begin result:=10000; exit end; 

    
  if Regex.IsMatch(d, '[айцуеъыоэяиью]ь') then begin result:=11090; exit end;
  if  Regex.IsMatch(d, 'ь[ъы]') then begin result:=11091; exit end;//нет слов начинающ с ъ
  if  Regex.IsMatch(d, 'ааа|ббб|ггг|ддд|еее|жжж|ззз|ллл|ммм|ппп|ррр|ттт|ффф|ххх|ццц|ччч|шшш|щщщ|ыыы|эээ|ююю') then begin result:=11092; exit end;//
  if  Regex.IsMatch(d, '[бвгдёжзийклмнпстфхцчэю]бь') then begin result:=11093; exit end;//
  if  Regex.IsMatch(d, '[бвгдёжзйклмнпстфхцчэю]вь') then begin result:=11094; exit end;//    
if Regex.IsMatch(d, '[абвгджзйклмпрстфхцчшщъыьэюя]бь') then begin result:=11095; exit end;
if Regex.IsMatch(d, '[бвгёжзйклмнпуфхцчшщъьэюя]вь') then begin result:=11096; exit end;
if Regex.IsMatch(d, '[бгдёзклнпрфхцчшщъэ]дь') then begin result:=11097; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпрстфхцчшщъыьэю]жь') then begin result:=11098; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэю]зь') then begin result:=11099; exit end;
if Regex.IsMatch(d, '[вгдёжзфцчшъ]ль') then begin result:=11100; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнпрстфхцчшщъыьэюя]мь') then begin result:=11101; exit end;
if Regex.IsMatch(d, '[бвгдёжйклмнпртфхцчшщъьэ]нь') then begin result:=11102; exit end;
if Regex.IsMatch(d, '[бгёжзпртфхцчшщъэю]пь') then begin result:=11103; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрсфхцчшщъьэя]рь') then begin result:=11104; exit end;
if Regex.IsMatch(d, '[бгдёжзйклмнпрстфхцчшщъьэ]сь') then begin result:=11105; exit end;
if Regex.IsMatch(d, '[бвгжйклмнптфхцчшщъэ]ть') then begin result:=11106; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]фь') then begin result:=11107; exit end;
if Regex.IsMatch(d, '[бгдёжзйкмнпрстфхцчшщъэю]чь') then begin result:=11108; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъыэюя]шь') then begin result:=11109; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпрстуфхцчшщъыьэюя]щь') then begin result:=11110; exit end;

// ы
if Regex.IsMatch(d, '[фщъэ]бы') then begin result:=11111; exit end;
if Regex.IsMatch(d, '[пфщъэ]вы') then begin result:=11112; exit end;
if Regex.IsMatch(d, '[бгдпсфхцчшщъэ]ды') then begin result:=11113; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]жы') then begin result:=11114; exit end;
if Regex.IsMatch(d, '[бгджзйклмнпрсфхцчшщъэю]зы') then begin result:=11115; exit end;
if Regex.IsMatch(d, '[бвжнфцчщъьэ]лы') then begin result:=11116; exit end;
if Regex.IsMatch(d, '[пфцщъэ]мы') then begin result:=11117; exit end;
if Regex.IsMatch(d, '[гцщъэ]ны') then begin result:=11118; exit end;
if Regex.IsMatch(d, '[бвгдёжйфхцчшщъэ]пы') then begin result:=11119; exit end;
if Regex.IsMatch(d, '[вжнфхцчшщъэ]ры') then begin result:=11120; exit end;
if Regex.IsMatch(d, '[гжпфцчщъэ]сы') then begin result:=11121; exit end;
if Regex.IsMatch(d, '[бгщъэ]ты') then begin result:=11122; exit end;
if Regex.IsMatch(d, '[бвгдеёжзклмнпрсуфцчшщъыэя]фы') then begin result:=11123; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]чы') then begin result:=11124; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]шы') then begin result:=11125; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]щы') then begin result:=11126; exit end;

//  ф
if Regex.IsMatch(d, '[абёжиопуфхщъыэю]аф') then begin result:=11127; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмопстфхцчшщъыьэюя]гф') then begin result:=11128; exit end;
if Regex.IsMatch(d, '[агёзйлуфхшщъьэю]еф') then begin result:=11129; exit end;
if Regex.IsMatch(d, '[ёйпуфхъэюя]иф') then begin result:=11130; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнпрстуфхцчшщъьэюя]йф') then begin result:=11131; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйкмопрстуфхцчшщъэюя]кф') then begin result:=11132; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопстуфхцчшщъьэю]лф') then begin result:=11133; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъьэюя]мф') then begin result:=11134; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэюя]нф') then begin result:=11135; exit end;
if Regex.IsMatch(d, '[дёзфцшщъыэ]оф') then begin result:=11136; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]пф') then begin result:=11137; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстуфхцчшщъыьэюя]рф') then begin result:=11138; exit end;
if Regex.IsMatch(d, '[абгджзклмпртфцчшщъыэюя]сф') then begin result:=11139; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнптфхцчшщъыьэю]тф') then begin result:=11140; exit end;
if Regex.IsMatch(d, '[вдеёжзйлпсухчшщъыэю]уф') then begin result:=11141; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстфхцчшщъыьюя]фф') then begin result:=11142; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстуфхцчшщъыьэя]эф') then begin result:=11143; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпфхцчшщъыэюя]юф') then begin result:=11144; exit end;
// х
if Regex.IsMatch(d, '[ёъэ]ах') then begin result:=11145; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэюя]бх') then begin result:=11146; exit end;
if Regex.IsMatch(d, '[бвгжрфхцщъыэ]вх') then begin result:=11147; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэю]дх') then begin result:=11148; exit end;
if Regex.IsMatch(d, '[ёзщэ]ех') then begin result:=11149; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнптуфхцчшъыьэюя]ёх') then begin result:=11150; exit end;
if Regex.IsMatch(d, '[пфцъэ]их') then begin result:=11151; exit end;
if Regex.IsMatch(d, '[вгдёжзйкнпрсфхцчшщъэюя]кх') then begin result:=11152; exit end;
if Regex.IsMatch(d, '[бвгджйклмнпстуфхцчшщъьэю]мх') then begin result:=11153; exit end;
if Regex.IsMatch(d, '[жфщъэ]ох') then begin result:=11154; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]рх') then begin result:=11155; exit end;
if Regex.IsMatch(d, '[дёжпсфхцчшщъэю]сх') then begin result:=11156; exit end;
if Regex.IsMatch(d, '[бвгджзйклмпрстфхцчшщъыьэ]тх') then begin result:=11157; exit end;
if Regex.IsMatch(d, '[фхшщъыэ]ух') then begin result:=11158; exit end;
if Regex.IsMatch(d, '[агеёжзийкоуфхчшщъыьэюя]ых') then begin result:=11159; exit end;
if Regex.IsMatch(d, '[абвгеёжийкмопуфхцщъыьэюя]ьх') then begin result:=11160; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэю]эх') then begin result:=11161; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмпфхцчшщъыэя]юх') then begin result:=11162; exit end;
if Regex.IsMatch(d, '[гжпфцшщъэ]ях') then begin result:=11163; exit end;
// ц
 if Regex.IsMatch(d, '[геёжйосуфчшщъыьэюя]ац') then begin result:=11164; exit end;
if Regex.IsMatch(d, '[абвгдёзийклмнопрстфхцчшщъыьэюя]бц') then begin result:=11165; exit end;
if Regex.IsMatch(d, '[бвгдёжзнпрстфхцчшщъэю]вц') then begin result:=11166; exit end;
if Regex.IsMatch(d, '[бвгдеёжйклмнпстуфхцчшщъыьэюя]дц') then begin result:=11167; exit end;
if Regex.IsMatch(d, '[агеёйкуфхчъьэюя]ец') then begin result:=11168; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]жц') then begin result:=11169; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]зц') then begin result:=11170; exit end;
if Regex.IsMatch(d, '[гёйхцшъэ]иц') then begin result:=11171; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнпрстуфхцчшщъьэю]йц') then begin result:=11172; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклпрстуфхцчшщъыьэю]кц') then begin result:=11173; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэю]лц') then begin result:=11174; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]мц') then begin result:=11175; exit end;
if Regex.IsMatch(d, '[бвгджзйкмнпрстуфхцчшщъыьэю]нц') then begin result:=11176; exit end;
if Regex.IsMatch(d, '[бвёжзуфхцчшщъыэю]оц') then begin result:=11177; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстфхцчшщъыьэюя]пц') then begin result:=11178; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпрстфхцчшщъыьэюя]рц') then begin result:=11179; exit end;
if Regex.IsMatch(d, '[бвгдёжзмпрстфцчшщъыэю]сц') then begin result:=11180; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэя]тц') then begin result:=11181; exit end;
if Regex.IsMatch(d, '[абвгеёжзйлнпухцшщъыэюя]уц') then begin result:=11182; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъыьэю]цц') then begin result:=11183; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъьэюя]шц') then begin result:=11184; exit end;
if Regex.IsMatch(d, '[агдеёжзийклнопсуфхчшщъыьэюя]ыц') then begin result:=11185; exit end;
if Regex.IsMatch(d, '[абгеёзийкмопруфхцчшщъыьэюя]ьц') then begin result:=11186; exit end;
if Regex.IsMatch(d, '[абвгдёжзйкмнпртфхцчщъыэюя]юц') then begin result:=11187; exit end;
if Regex.IsMatch(d, '[вгдеёжзйкпртуфхцчшщъыьэю]яц') then begin result:=11188; exit end;
//ч
if Regex.IsMatch(d, '[ёщъэю]ач') then begin result:=11189; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстфхцчшщъыьэя]бч') then begin result:=11190; exit end;
if Regex.IsMatch(d, '[бгджзпрсфшщъэ]вч') then begin result:=11191; exit end;
if Regex.IsMatch(d, '[бвгдёжзийкмнпрстфхцчшщъыьэю]гч') then begin result:=11192; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]дч') then begin result:=11193; exit end;
if Regex.IsMatch(d, '[гёзйуфхъэюя]еч') then begin result:=11194; exit end;
if Regex.IsMatch(d, '[абвгдёжзийкмнпртуфхцчшъыьэюя]ёч') then begin result:=11195; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]жч') then begin result:=11196; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэю]зч') then begin result:=11197; exit end;
if Regex.IsMatch(d, '[ъэ]ич') then begin result:=11198; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йч') then begin result:=11199; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]лч') then begin result:=11200; exit end;
if Regex.IsMatch(d, '[бвгджйклмнпрстфхцчшщъьэ]мч') then begin result:=11201; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъьэю]нч') then begin result:=11202; exit end;
if Regex.IsMatch(d, '[щъэ]оч') then begin result:=11203; exit end;
if Regex.IsMatch(d, '[бвгджзлмнпртфцчшщъыэю]пч') then begin result:=11204; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрсфхцчшщъыьэю]рч') then begin result:=11205; exit end;
if Regex.IsMatch(d, '[бдзфшщъэ]сч') then begin result:=11206; exit end;
if Regex.IsMatch(d, '[бвгджзйлмнптфхцчшщъыьэ]тч') then begin result:=11207; exit end;
if Regex.IsMatch(d, '[фщъэ]уч') then begin result:=11208; exit end;
if Regex.IsMatch(d, '[бвгдеёжзиклмнопрстуфхцчшщъыьэюя]фч') then begin result:=11209; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнопстфхцчшщъьэю]хч') then begin result:=11210; exit end;
if Regex.IsMatch(d, '[агеёжзийкоуфхчшщъыьэюя]ыч') then begin result:=11211; exit end;
if Regex.IsMatch(d, '[абвгеёийкопуфхцщъыьэюя]ьч') then begin result:=11212; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмпстфхцчшщъыэ]юч') then begin result:=11213; exit end;
if Regex.IsMatch(d, '[гёжйпфцчшщъыэ]яч') then begin result:=11214; exit end;
//ш
if Regex.IsMatch(d, '[аеёийофщъыьэюя]аш') then begin result:=11215; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстуфхцчшщъыьэю]бш') then begin result:=11216; exit end;
if Regex.IsMatch(d, '[бвгджзкпртфцшщъэю]вш') then begin result:=11217; exit end;
if Regex.IsMatch(d, '[абвгджзйклмнпрстфхцчшщъыьэюя]гш') then begin result:=11218; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыэю]дш') then begin result:=11219; exit end;
if Regex.IsMatch(d, '[ёзйфхъэю]еш') then begin result:=11220; exit end;
if Regex.IsMatch(d, '[бгёжзийкптуфхцчшъыэюя]ёш') then begin result:=11221; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопстуфхцчшщъыьэю]зш') then begin result:=11222; exit end;
if Regex.IsMatch(d, '[цъэ]иш') then begin result:=11223; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йш') then begin result:=11224; exit end;
if Regex.IsMatch(d, '[бвгжзйлмнпрстфхцчшщъьэюя]кш') then begin result:=11225; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]лш') then begin result:=11226; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмнпстфхцчшщъьэя]мш') then begin result:=11227; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]нш') then begin result:=11228; exit end;
if Regex.IsMatch(d, '[ёжчшщъэ]ош') then begin result:=11229; exit end;
if Regex.IsMatch(d, '[бгдёжзкмпрстфхцчшщъыэя]пш') then begin result:=11230; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]рш') then begin result:=11231; exit end;
if Regex.IsMatch(d, '[бдёжзлмпрстфхцчшщъэ]сш') then begin result:=11232; exit end;
if Regex.IsMatch(d, '[абвгджзйклмнпртфхцчшщъыьэюя]тш') then begin result:=11233; exit end;
if Regex.IsMatch(d, '[зфшщъэ]уш') then begin result:=11234; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]хш') then begin result:=11235; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстфхцчшщъыьэюя]чш') then begin result:=11236; exit end;
if Regex.IsMatch(d, '[бвгдежзийклмнопрстуфхцчщъыьэюя]шш') then begin result:=11237; exit end;
if Regex.IsMatch(d, '[агеёжзийкостуфхчшщъыьэюя]ыш') then begin result:=11238; exit end;
if Regex.IsMatch(d, '[абвгеёжийкмопуфхцъыьэюя]ьш') then begin result:=11239; exit end;
if Regex.IsMatch(d, '[абвгдеёжзиклмнопрстуфхцчшщъыьэюя]эш') then begin result:=11240; exit end;
if Regex.IsMatch(d, '[бвгеёжзийклмпсфхцчшщъыэя]юш') then begin result:=11241; exit end;
if Regex.IsMatch(d, '[бвгёжзфхцшщъэ]яш') then begin result:=11242; exit end;
//щ
if Regex.IsMatch(d, '[абгеёийкопсуфхцщъыьэюя]ащ') then begin result:=11243; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэюя]бщ') then begin result:=11244; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстуфхцчшщъыэюя]вщ') then begin result:=11245; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]дщ') then begin result:=11246; exit end;
if Regex.IsMatch(d, '[фшъэ]ещ') then begin result:=11247; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрсуфхцчшщъыьэюя]ёщ') then begin result:=11248; exit end;
if Regex.IsMatch(d, '[бгдеёзсфъэ]ищ') then begin result:=11249; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстуфхцчшщъьэюя]йщ') then begin result:=11250; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнпрстфхцчшщъыьэюя]лщ') then begin result:=11251; exit end;
if Regex.IsMatch(d, '[абгдеёжзйклмнпрсуфхцчшщъьэю]мщ') then begin result:=11252; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъыьэюя]нщ') then begin result:=11253; exit end;
if Regex.IsMatch(d, '[ёжфчшщъэю]ощ') then begin result:=11254; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстфхцчшщъыьэюя]пщ') then begin result:=11255; exit end;
if Regex.IsMatch(d, '[бвгеёжзийклмнпрсуфхцчшщъыьэюя]рщ') then begin result:=11256; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнопрстуфцчшщъыьэюя]сщ') then begin result:=11257; exit end;
if Regex.IsMatch(d, '[бвгдёжзкнпртуфхцчшщъьэю]тщ') then begin result:=11258; exit end;
if Regex.IsMatch(d, '[абеёзийоруфхшъыьэя]ущ') then begin result:=11259; exit end;
if Regex.IsMatch(d, '[абгдеёжзийклмопртуфхчшщъыьэюя]ыщ') then begin result:=11260; exit end;
if Regex.IsMatch(d, '[абвгдеёжийкмопрсуфхцчшщъыьэюя]ьщ') then begin result:=11261; exit end;
if Regex.IsMatch(d, '[бвгдёжзийкмнпстфхцчшщъыэю]ющ') then begin result:=11262; exit end;
if Regex.IsMatch(d, '[геёжфхцчшщъыьэю]ящ') then begin result:=11263; exit end;
//э
if Regex.IsMatch(d, '[ёпъыэюя]аэ') then begin result:=11264; exit end;
if Regex.IsMatch(d, '[беёжзийсуфчщъыьэюя]оэ') then begin result:=11265; exit end;
if Regex.IsMatch(d, '[бвгджзпруфцчшщъэю]сэ') then begin result:=11266; exit end;
if Regex.IsMatch(d, '[бвгджзлмнптфцчшщъыьэ]тэ') then begin result:=11267; exit end;
if Regex.IsMatch(d, '[аёзйлоуфхщъыэю]уэ') then begin result:=11268; exit end;
if Regex.IsMatch(d, '[абгеёжийкмопуфхцщъыьэюя]ьэ') then begin result:=11269; exit end;
//ю
if Regex.IsMatch(d, '[аеёийоуфъыьэюя]аю') then begin result:=11270; exit end;
if Regex.IsMatch(d, '[абгдеёжзйклнопрстфхцчшщъыьэюя]бю') then begin result:=11271; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыэюя]вю') then begin result:=11272; exit end;
if Regex.IsMatch(d, '[абгдеёжзийклмнопрстуфхцчшщъыьэюя]гю') then begin result:=11273; exit end;
if Regex.IsMatch(d, '[бвгдеёзийклмопрстфхцчшщъыьэю]дю') then begin result:=11274; exit end;
if Regex.IsMatch(d, '[ёзцъыэ]ею') then begin result:=11275; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэю]зю') then begin result:=11276; exit end;
if Regex.IsMatch(d, '[ёжйопуфщъыьэюя]ию') then begin result:=11277; exit end;
if Regex.IsMatch(d, '[жфцщъэ]лю') then begin result:=11278; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]мю') then begin result:=11279; exit end;
if Regex.IsMatch(d, '[гёзкпуфцчщъэю]ню') then begin result:=11280; exit end;
if Regex.IsMatch(d, '[аеёийоуфцчщъыьэюя]ою') then begin result:=11281; exit end;
if Regex.IsMatch(d, '[бгдеёжзйклмнопрсуфхцчшщъыьэюя]пю') then begin result:=11282; exit end;
if Regex.IsMatch(d, '[вгджзйнпрсхцчшщъыьэ]рю') then begin result:=11283; exit end;
if Regex.IsMatch(d, '[бгджзпсфчшщъэю]сю') then begin result:=11284; exit end;
if Regex.IsMatch(d, '[бджкптфцчшщъыя]тю') then begin result:=11285; exit end;
if Regex.IsMatch(d, '[аеёйуфъыьэюя]ую') then begin result:=11286; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэю]фю') then begin result:=11287; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]шю') then begin result:=11288; exit end;
if Regex.IsMatch(d, '[абвгеёжзийклмнопрстуфхцчшщъыьэюя]ъю') then begin result:=11289; exit end;
if Regex.IsMatch(d, '[агеёийкоухцъыьэюя]ью') then begin result:=11290; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмпрстуфхцчшщъыэюя]юю') then begin result:=11291; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйкмптуфхцчшщъыьэюя]яю') then begin result:=11292; exit end;
//я
if Regex.IsMatch(d, '[ёфъэ]ая') then begin result:=11293; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэя]бя') then begin result:=11294; exit end;
if Regex.IsMatch(d, '[вгёжймнпфцчшщъыэ]вя') then begin result:=11295; exit end;
if Regex.IsMatch(d, '[бвгдмнпсфцчшщъэ]дя') then begin result:=11296; exit end;
if Regex.IsMatch(d, '[ёзйуфхъэюя]ея') then begin result:=11297; exit end;
if Regex.IsMatch(d, '[бгджзклмнпрфхцчшщъэю]зя') then begin result:=11298; exit end;
if Regex.IsMatch(d, '[ъэ]ия') then begin result:=11299; exit end;
if Regex.IsMatch(d, '[жзйлнцчщъьэ]ля') then begin result:=11300; exit end;
if Regex.IsMatch(d, '[бгджлнпфцчшщъэ]мя') then begin result:=11301; exit end;
if Regex.IsMatch(d, '[пфцчщъэ]ня') then begin result:=11302; exit end;
if Regex.IsMatch(d, '[аеёжзйсуфчщъыьэюя]оя') then begin result:=11303; exit end;
if Regex.IsMatch(d, '[бгпфхцчшщъыэ]пя') then begin result:=11304; exit end;
if Regex.IsMatch(d, '[жфшъэ]ря') then begin result:=11305; exit end;
if Regex.IsMatch(d, '[джзнпфцшщъэ]ся') then begin result:=11306; exit end;
if Regex.IsMatch(d, '[жзфцшщъэ]тя') then begin result:=11307; exit end;
if Regex.IsMatch(d, '[ёуфшщъыэю]уя') then begin result:=11308; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэя]фя') then begin result:=11309; exit end;
if Regex.IsMatch(d, '[авгдеёжийклмнопрстуфхцчшщъыьэюя]ъя') then begin result:=11310; exit end;
if Regex.IsMatch(d, '[агеёжийклопуфхцчшщъыьэюя]ыя') then begin result:=11311; exit end;
if Regex.IsMatch(d, '[агеёийкоухцъыьэюя]ья') then begin result:=11312; exit end;
if Regex.IsMatch(d, '[вгеёжйпуфхцчшщъэю]яя') then begin result:=11313; exit end;
//-----------------------------------------
//-----------------------------------------
//-----------------------------------------
if Regex.IsMatch(d, '[ёийщъыэя]аа') then begin result:=11314; exit end;
if Regex.IsMatch(d, '[бпфщъэ]ба') then begin result:=11315; exit end;
if Regex.IsMatch(d, '[жпцщъэ]ва') then begin result:=11316; exit end;
if Regex.IsMatch(d, '[бгджпфчшщъэ]га') then begin result:=11317; exit end;
if Regex.IsMatch(d, '[фщъ]да') then begin result:=11318; exit end;
if Regex.IsMatch(d, '[ёзйпуфщъэюя]еа') then begin result:=11319; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшъыьэюя]ёа') then begin result:=11320; exit end;
if Regex.IsMatch(d, '[бпфцшщъэ]жа') then begin result:=11321; exit end;
if Regex.IsMatch(d, '[бфщъэ]за') then begin result:=11322; exit end;
if Regex.IsMatch(d, '[бщъэ]иа') then begin result:=11323; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]йа') then begin result:=11324; exit end;
if Regex.IsMatch(d, '[щъ]ка') then begin result:=11325; exit end;
if Regex.IsMatch(d, '[жщъ]ла') then begin result:=11326; exit end;
if Regex.IsMatch(d, '[чщъ]ма') then begin result:=11327; exit end;
if Regex.IsMatch(d, '[ъ]на') then begin result:=11328; exit end;
if Regex.IsMatch(d, '[аеёжзйосуфчщъыьэюя]оа') then begin result:=11329; exit end;
if Regex.IsMatch(d, '[рщъэ]па') then begin result:=11330; exit end;
if Regex.IsMatch(d, '[щъэ]ра') then begin result:=11331; exit end;
if Regex.IsMatch(d, '[жшщъэ]са') then begin result:=11332; exit end;
if Regex.IsMatch(d, '[цщъ]та') then begin result:=11333; exit end;
if Regex.IsMatch(d, '[еёйуфхшъыэю]уа') then begin result:=11334; exit end;
if Regex.IsMatch(d, '[бгдёжзпрцчшщъыэ]фа') then begin result:=11335; exit end;
if Regex.IsMatch(d, '[бгдёжнптфхцчшщъьэ]ха') then begin result:=11336; exit end;
if Regex.IsMatch(d, '[гёжлуфхчшщъэю]ца') then begin result:=11337; exit end;
if Regex.IsMatch(d, '[бфцчщъэ]ча') then begin result:=11338; exit end;
if Regex.IsMatch(d, '[пфцшщъ]ша') then begin result:=11339; exit end;
if Regex.IsMatch(d, '[вгджзклмнпсфхцчшщъыэ]ща') then begin result:=11340; exit end;
if Regex.IsMatch(d, '[агеёжийклоуфхчшщъыьэюя]ыа') then begin result:=11341; exit end;
if Regex.IsMatch(d, '[агеёжийкмопуфхцъыьэюя]ьа') then begin result:=11342; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмпсфхцчшщъыэюя]юа') then begin result:=11343; exit end;
if Regex.IsMatch(d, '[вгёжпуфхцчшщъыэю]яа') then begin result:=11344; exit end;
if Regex.IsMatch(d, '[ёщъэюя]аб') then begin result:=11345; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстфхцчшщъыьэюя]бб') then begin result:=11346; exit end;
if Regex.IsMatch(d, '[бгджзпсфцшщъэ]вб') then begin result:=11347; exit end;
if Regex.IsMatch(d, '[абвгдёжзийкмнпстфхцчшщъыьэюя]гб') then begin result:=11348; exit end;
if Regex.IsMatch(d, '[бвгджйклмнпрстфхцчшщъыьэю]дб') then begin result:=11349; exit end;
if Regex.IsMatch(d, '[аёзйпуфъэюя]еб') then begin result:=11350; exit end;
if Regex.IsMatch(d, '[абвгдёжзийкмнптуфхцчшъыьэюя]ёб') then begin result:=11351; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]жб') then begin result:=11352; exit end;
if Regex.IsMatch(d, '[бгджзйклмнпрстуфхцчшщъыьэюя]зб') then begin result:=11353; exit end;
if Regex.IsMatch(d, '[цъэ]иб') then begin result:=11354; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йб') then begin result:=11355; exit end;
if Regex.IsMatch(d, '[бвгджзпсфцчшщъэ]кб') then begin result:=11356; exit end;
if Regex.IsMatch(d, '[бвгжзйклнпрстфхцчшщъэю]лб') then begin result:=11357; exit end;
if Regex.IsMatch(d, '[бвгджзйклмпрстфхцчшщъьэю]мб') then begin result:=11358; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъыьэю]нб') then begin result:=11359; exit end;
if Regex.IsMatch(d, '[щъэ]об') then begin result:=11360; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстфхцчшщъыьэюя]пб') then begin result:=11361; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэя]рб') then begin result:=11362; exit end;
if Regex.IsMatch(d, '[бджпфчшщъэ]сб') then begin result:=11363; exit end;
if Regex.IsMatch(d, '[бвгжзйклмнптфхцчшщъыьэ]тб') then begin result:=11364; exit end;
if Regex.IsMatch(d, '[фщъэ]уб') then begin result:=11365; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыьэюя]фб') then begin result:=11366; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъью]хб') then begin result:=11367; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмопрстуфхцчшщъыэя]цб') then begin result:=11368; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнорстуфхцчшщъьэю]чб') then begin result:=11369; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъьэюя]шб') then begin result:=11370; exit end;
if Regex.IsMatch(d, '[агеёжийкопуфхчшщъыьэюя]ыб') then begin result:=11371; exit end;
if Regex.IsMatch(d, '[абгеёийкопуфхцщъыьэюя]ьб') then begin result:=11372; exit end;
if Regex.IsMatch(d, '[бёжзкмпфцчшщъыэ]юб') then begin result:=11373; exit end;
if Regex.IsMatch(d, '[гпфцшщъэ]яб') then begin result:=11374; exit end;
if Regex.IsMatch(d, '[ъэ]ав') then begin result:=11375; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэя]бв') then begin result:=11376; exit end;
if Regex.IsMatch(d, '[бдзпрфцчшщъэ]вв') then begin result:=11377; exit end;
if Regex.IsMatch(d, '[бгджзийклнптфхцчшщъьэюя]гв') then begin result:=11378; exit end;
if Regex.IsMatch(d, '[бпфшщъ]дв') then begin result:=11379; exit end;
if Regex.IsMatch(d, '[ёэ]ев') then begin result:=11380; exit end;
if Regex.IsMatch(d, '[абвгёзийкмнпртуфхцшъыэюя]ёв') then begin result:=11381; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстфхцчшщъыьэя]жв') then begin result:=11382; exit end;
if Regex.IsMatch(d, '[бгджпрфцчшщъэ]зв') then begin result:=11383; exit end;
if Regex.IsMatch(d, '[фъэ]ив') then begin result:=11384; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]йв') then begin result:=11385; exit end;
if Regex.IsMatch(d, '[бвгдзпфчщъэ]кв') then begin result:=11386; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэю]лв') then begin result:=11387; exit end;
if Regex.IsMatch(d, '[бвгджйклмнпстфхцчшщъьэю]мв') then begin result:=11388; exit end;
if Regex.IsMatch(d, '[бвгджзклмнпрстфхцчшщъьэю]нв') then begin result:=11389; exit end;
if Regex.IsMatch(d, '[ёщъэ]ов') then begin result:=11390; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнопрсфхцчшщъыьэюя]пв') then begin result:=11391; exit end;
if Regex.IsMatch(d, '[бвжзйклмнпсфхцчшщъэю]рв') then begin result:=11392; exit end;
if Regex.IsMatch(d, '[бфшщъэ]св') then begin result:=11393; exit end;
if Regex.IsMatch(d, '[бгфхцшщъэ]тв') then begin result:=11394; exit end;
if Regex.IsMatch(d, '[ъэ]ув') then begin result:=11395; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыьэюя]фв') then begin result:=11396; exit end;
if Regex.IsMatch(d, '[жзптфхцчшщъэю]хв') then begin result:=11397; exit end;
if Regex.IsMatch(d, '[бгдёжзлнпрфцчшщъыэ]цв') then begin result:=11398; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнпрстуфхцчшщъьэю]чв') then begin result:=11399; exit end;
if Regex.IsMatch(d, '[бгджнпрфхцшщъэю]шв') then begin result:=11400; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]щв') then begin result:=11401; exit end;
if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ыв') then begin result:=11402; exit end;
if Regex.IsMatch(d, '[абгёийкопуфхцщъыьэюя]ьв') then begin result:=11403; exit end;
if Regex.IsMatch(d, '[вгдёжйкпфхцчшщъыэ]юв') then begin result:=11404; exit end;
if Regex.IsMatch(d, '[фцшщэ]яв') then begin result:=11405; exit end;
if Regex.IsMatch(d, '[ёфъэ]аг') then begin result:=11406; exit end;
if Regex.IsMatch(d, '[бвгдеёжзклмнпрстфхцчшщъыьэюя]бг') then begin result:=11407; exit end;
if Regex.IsMatch(d, '[бгзпсфцшщъэ]вг') then begin result:=11408; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийкмнпрстфхцчшщъыьэюя]гг') then begin result:=11409; exit end;
if Regex.IsMatch(d, '[бвгджзийклмнпстуфхцчшщъыьэю]дг') then begin result:=11410; exit end;
if Regex.IsMatch(d, '[фъэ]ег') then begin result:=11411; exit end;
if Regex.IsMatch(d, '[абвгдёзийкмнпуфхцчшъыьэюя]ёг') then begin result:=11412; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклнпрстфхцчшщъыьэю]жг') then begin result:=11413; exit end;
if Regex.IsMatch(d, '[бгджзйклмнпрстуфхцчшщъьэю]зг') then begin result:=11414; exit end;
if Regex.IsMatch(d, '[пцъэ]иг') then begin result:=11415; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]йг') then begin result:=11416; exit end;
if Regex.IsMatch(d, '[бгдёзнптфхцчшщъыэ]кг') then begin result:=11417; exit end;
if Regex.IsMatch(d, '[бвгджзйкмнпрстфхцчшщъэ]лг') then begin result:=11418; exit end;
if Regex.IsMatch(d, '[бгджзйклстуфхцчшщъьэю]мг') then begin result:=11419; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъьэю]нг') then begin result:=11420; exit end;
if Regex.IsMatch(d, '[щъэ]ог') then begin result:=11421; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрсфхцчшщъыьэюя]рг') then begin result:=11422; exit end;
if Regex.IsMatch(d, '[бгджпфцшщъэ]сг') then begin result:=11423; exit end;
if Regex.IsMatch(d, '[бвгджзйклнпрстфхцчшщъьэ]тг') then begin result:=11424; exit end;
if Regex.IsMatch(d, '[фщъэ]уг') then begin result:=11425; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыьэюя]фг') then begin result:=11426; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопстфхцчшщъьэю]хг') then begin result:=11427; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъыьэюя]цг') then begin result:=11428; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэю]чг') then begin result:=11429; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]шг') then begin result:=11430; exit end;
if Regex.IsMatch(d, '[агеёжзийкопухчшщъыьэюя]ыг') then begin result:=11431; exit end;
if Regex.IsMatch(d, '[абгеёийкмопуфхцщъыьэюя]ьг') then begin result:=11432; exit end;
if Regex.IsMatch(d, '[абвгдёжзиклмнпрстуфхцчшщъыэюя]эг') then begin result:=11433; exit end;
if Regex.IsMatch(d, '[бвгдёжзийпфхцчшщъыэ]юг') then begin result:=11434; exit end;
if Regex.IsMatch(d, '[гёжпфцшщъэ]яг') then begin result:=11435; exit end;
if Regex.IsMatch(d, '[ёфъэ]ад') then begin result:=11436; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстфхцчшщъыьэюя]бд') then begin result:=11437; exit end;
if Regex.IsMatch(d, '[бжпфцшщъэ]вд') then begin result:=11438; exit end;
if Regex.IsMatch(d, '[бжзпсчшщъэ]гд') then begin result:=11439; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъыьэ]дд') then begin result:=11440; exit end;
if Regex.IsMatch(d, '[ёхэю]ед') then begin result:=11441; exit end;
if Regex.IsMatch(d, '[абвгдёжзийкнптухцчшъыэюя]ёд') then begin result:=11442; exit end;
if Regex.IsMatch(d, '[бджзклпфхцшщъэ]жд') then begin result:=11443; exit end;
if Regex.IsMatch(d, '[гжзпсфцшщъэ]зд') then begin result:=11444; exit end;
if Regex.IsMatch(d, '[фцъэ]ид') then begin result:=11445; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьюя]йд') then begin result:=11446; exit end;
if Regex.IsMatch(d, '[бджзкпрсфцчшщъыэ]кд') then begin result:=11447; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэю]лд') then begin result:=11448; exit end;
if Regex.IsMatch(d, '[бвгджзйклнпрстфхцчшщъьэю]мд') then begin result:=11449; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]нд') then begin result:=11450; exit end;
if Regex.IsMatch(d, '[щъэ]од') then begin result:=11451; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]пд') then begin result:=11452; exit end;
if Regex.IsMatch(d, '[бвгжзйклмнпрсуфхцчшщъыью]рд') then begin result:=11453; exit end;
if Regex.IsMatch(d, '[бжпфшъэ]сд') then begin result:=11454; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэ]тд') then begin result:=11455; exit end;
if Regex.IsMatch(d, '[щъэ]уд') then begin result:=11456; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]хд') then begin result:=11457; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмопрстуфхцчшщъыьэю]цд') then begin result:=11458; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъьэю]чд') then begin result:=11459; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]шд') then begin result:=11460; exit end;
if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ыд') then begin result:=11461; exit end;
if Regex.IsMatch(d, '[абгеёжийкопуфхцъыьэюя]ьд') then begin result:=11462; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнопртуфхцчшщъыьэюя]эд') then begin result:=14163; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмпфхцчшщъыэ]юд') then begin result:=11464; exit end;
if Regex.IsMatch(d, '[жпфцшщъэ]яд') then begin result:=11465; exit end;
if Regex.IsMatch(d, '[ёъыэ]ае') then begin result:=11466; exit end;
if Regex.IsMatch(d, '[бцщъэ]бе') then begin result:=11467; exit end;
if Regex.IsMatch(d, '[пщъэ]ве') then begin result:=11468; exit end;
if Regex.IsMatch(d, '[бгжзпфхцчшщъы]ге') then begin result:=11469; exit end;
if Regex.IsMatch(d, '[пфшщъэ]де') then begin result:=11470; exit end;
if Regex.IsMatch(d, '[ёзйухъэюя]ее') then begin result:=11471; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопртуфхцчшъыьэюя]ёе') then begin result:=11472; exit end;
if Regex.IsMatch(d, '[фшщэ]же') then begin result:=11473; exit end;
if Regex.IsMatch(d, '[гжфшщъэ]зе') then begin result:=11474; exit end;
if Regex.IsMatch(d, '[ъэ]ие') then begin result:=11475; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йе') then begin result:=11475; exit end;
if Regex.IsMatch(d, '[гзфхцщъэ]ке') then begin result:=11476; exit end;
if Regex.IsMatch(d, '[жцъ]ле') then begin result:=11477; exit end;
if Regex.IsMatch(d, '[жпцщъэ]ме') then begin result:=11478; exit end;
if Regex.IsMatch(d, '[щъ]не') then begin result:=11479; exit end;
if Regex.IsMatch(d, '[ёзщъэ]ое') then begin result:=11480; exit end;
if Regex.IsMatch(d, '[фщъэ]пе') then begin result:=11481; exit end;
if Regex.IsMatch(d, '[шъэ]ре') then begin result:=11482; exit end;
if Regex.IsMatch(d, '[фшщъэ]се') then begin result:=11483; exit end;
if Regex.IsMatch(d, '[фшщъэ]те') then begin result:=11484; exit end;
if Regex.IsMatch(d, '[фъэ]уе') then begin result:=11485; exit end;
if Regex.IsMatch(d, '[бгдёжкпрхцчшщъьэюя]фе') then begin result:=11486; exit end;
if Regex.IsMatch(d, '[бвгджзйлмнпрфцчшщъьэ]хе') then begin result:=11487; exit end;
if Regex.IsMatch(d, '[гфшщъэ]це') then begin result:=11488; exit end;
if Regex.IsMatch(d, '[бфшщъэ]че') then begin result:=11489; exit end;
if Regex.IsMatch(d, '[жфцшщъэ]ше') then begin result:=11490; exit end;
if Regex.IsMatch(d, '[вгжзпфцчшщъэ]ще') then begin result:=11491; exit end;
if Regex.IsMatch(d, '[агеёжийклмнопруфцчшщъыьэюя]ъе') then begin result:=11492; exit end;
if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ые') then begin result:=11493; exit end;
if Regex.IsMatch(d, '[агеёийкоухцщъыьэюя]ье') then begin result:=11494; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмптфхцчшщъыэю]юе') then begin result:=11495; exit end;
if Regex.IsMatch(d, '[гёжпфшщъыэ]яе') then begin result:=11496; exit end;
if Regex.IsMatch(d, '[ийоуфщъыьэя]аж') then begin result:=11497; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]бж') then begin result:=11498; exit end;
if Regex.IsMatch(d, '[бдёжйпрсфцчшщъэю]вж') then begin result:=11499; exit end;
if Regex.IsMatch(d, '[бвгдёжзийлмнпрфхцчшщъыьэюя]гж') then begin result:=11500; exit end;
if Regex.IsMatch(d, '[бвгджийкмнпстфхцчшщъыьэюя]дж') then begin result:=11501; exit end;
if Regex.IsMatch(d, '[ёзуфхъэюя]еж') then begin result:=11502; exit end;
if Regex.IsMatch(d, '[абвгёжзийкмнпуфхцчшъыьэюя]ёж') then begin result:=11503; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстфхцчшщъыьэюя]жж') then begin result:=11504; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]зж') then begin result:=11505; exit end;
if Regex.IsMatch(d, '[пфцъэ]иж') then begin result:=11506; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йж') then begin result:=11507; exit end;
if Regex.IsMatch(d, '[бвгдёжзкпрстфхцшщъэю]кж') then begin result:=11508; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрфхцчшщъьэ]лж') then begin result:=11509; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]мж') then begin result:=11510; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]нж') then begin result:=11511; exit end;
if Regex.IsMatch(d, '[жфцщъэ]ож') then begin result:=11512; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]пж') then begin result:=11513; exit end;
if Regex.IsMatch(d, '[бгдёжзлмнпрстфхцчшщъэ]рж') then begin result:=11514; exit end;
if Regex.IsMatch(d, '[бвдзпстфцчшщъэ]сж') then begin result:=11515; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъыьэ]тж') then begin result:=11516; exit end;
if Regex.IsMatch(d, '[пщъэ]уж') then begin result:=11517; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопстуфхцчшщъьэю]хж') then begin result:=11518; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмопрстуфхцчшщъыьэю]цж') then begin result:=11519; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъьэю]чж') then begin result:=11520; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъьэюя]шж') then begin result:=11521; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрсуфхцчшщъыьэюя]ъж') then begin result:=11522; exit end;
if Regex.IsMatch(d, '[агеёжийкопуфхчшщъыьэюя]ыж') then begin result:=11523; exit end;
if Regex.IsMatch(d, '[абгеёжийкмопуфхцчщъыьэюя]ьж') then begin result:=11524; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмптфхцчшщъыэя]юж') then begin result:=11525; exit end;
if Regex.IsMatch(d, '[гдёжпуфхцчшщъэю]яж') then begin result:=11526; exit end;
if Regex.IsMatch(d, '[ёъыэ]аз') then begin result:=11527; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклнпстуфхцчшщъыьэюя]бз') then begin result:=11528; exit end;
if Regex.IsMatch(d, '[бжфшщъэ]вз') then begin result:=11529; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпстфхцчшщъыьэюя]гз') then begin result:=11530; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрсфхцчшщъьэю]дз') then begin result:=11531; exit end;
if Regex.IsMatch(d, '[э]ез') then begin result:=11532; exit end;
if Regex.IsMatch(d, '[абгдёжзийкмптуфхцчшъыэюя]ёз') then begin result:=11533; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстфхцчшщъыьэюя]жз') then begin result:=11534; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмпрстфхцчшщъыьэюя]зз') then begin result:=11535; exit end;
if Regex.IsMatch(d, '[цъэ]из') then begin result:=11536; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]йз') then begin result:=11537; exit end;
if Regex.IsMatch(d, '[бгдёжзйкнпртфхцчшщъю]кз') then begin result:=11538; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]лз') then begin result:=11539; exit end;
if Regex.IsMatch(d, '[бгджзйклмнпрстфхцчшщъьэю]мз') then begin result:=11540; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъьэюя]нз') then begin result:=11541; exit end;
if Regex.IsMatch(d, '[жзчщъэ]оз') then begin result:=11542; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]пз') then begin result:=11543; exit end;
if Regex.IsMatch(d, '[вгдёжзйклмнпрстфхцчшщъыьэюя]рз') then begin result:=11544; exit end;
if Regex.IsMatch(d, '[бгджзпстфхцчшщъэ]сз') then begin result:=11545; exit end;
if Regex.IsMatch(d, '[бвгджзйклмпртфхцчшщъыьэ]тз') then begin result:=11546; exit end;
if Regex.IsMatch(d, '[ёщъэ]уз') then begin result:=11547; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопстфхцчшщъьэю]хз') then begin result:=11548; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъыьэю]цз') then begin result:=11549; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъьэю]чз') then begin result:=11550; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчщъыьэюя]шз') then begin result:=11551; exit end;
if Regex.IsMatch(d, '[агеёжийкопуфхчшщъыьэюя]ыз') then begin result:=11552; exit end;
if Regex.IsMatch(d, '[агеёжзийкмопуфхцщъыьэюя]ьз') then begin result:=11553; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэюя]эз') then begin result:=11554; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмптфхцчшщъыэ]юз') then begin result:=11555; exit end;
if Regex.IsMatch(d, '[гёпфщъэ]яз') then begin result:=11556; exit end;
if Regex.IsMatch(d, '[уъыьэ]аи') then begin result:=11557; exit end;
if Regex.IsMatch(d, '[бжпфцчшщъэ]би') then begin result:=11558; exit end;
if Regex.IsMatch(d, '[пфщъэ]ви') then begin result:=11559; exit end;
if Regex.IsMatch(d, '[гджпфцчшщъэю]ги') then begin result:=11560; exit end;
if Regex.IsMatch(d, '[бгпфцчшщъэ]ди') then begin result:=11561; exit end;
if Regex.IsMatch(d, '[ёуъэюя]еи') then begin result:=11562; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпртуфхцчшъыэюя]ёи') then begin result:=11563; exit end;
if Regex.IsMatch(d, '[бпфшщъэ]жи') then begin result:=11564; exit end;
if Regex.IsMatch(d, '[бвгджзклпстфцчшщъыь]зи') then begin result:=11565; exit end;
if Regex.IsMatch(d, '[ёъэ]ии') then begin result:=11566; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]йи') then begin result:=11567; exit end;
if Regex.IsMatch(d, '[фщъ]ки') then begin result:=15168; exit end;
if Regex.IsMatch(d, '[цщъ]ли') then begin result:=11569; exit end;
if Regex.IsMatch(d, '[бпфцщъэ]ми') then begin result:=11570; exit end;
if Regex.IsMatch(d, '[фъ]ни') then begin result:=11571; exit end;
if Regex.IsMatch(d, '[аеёзйоущъыьэюя]ои') then begin result:=11572; exit end;
if Regex.IsMatch(d, '[бфщъ]пи') then begin result:=11573; exit end;
if Regex.IsMatch(d, '[жсцчшъ]ри') then begin result:=11574; exit end;
if Regex.IsMatch(d, '[бжцшщъэ]си') then begin result:=11575; exit end;
if Regex.IsMatch(d, '[жцщъ]ти') then begin result:=11576; exit end;
if Regex.IsMatch(d, '[аеёийуфъыьэюя]уи') then begin result:=11577; exit end;
if Regex.IsMatch(d, '[бжзпфцчшщъэ]фи') then begin result:=11578; exit end;
if Regex.IsMatch(d, '[бгджклнптфхцчшщъэ]хи') then begin result:=11579; exit end;
if Regex.IsMatch(d, '[бвгдёжзлмптфцчщъыэ]ци') then begin result:=11580; exit end;
if Regex.IsMatch(d, '[цчшщъэ]чи') then begin result:=11581; exit end;
if Regex.IsMatch(d, '[ёжфцшщъэ]ши') then begin result:=11582; exit end;
if Regex.IsMatch(d, '[гдёжзклстфцчшщъыэ]щи') then begin result:=11583; exit end;
if Regex.IsMatch(d, '[агеёжийкоухчшщъыьэюя]ыи') then begin result:=11584; exit end;
if Regex.IsMatch(d, '[абгеёийкоухцъыьэюя]ьи') then begin result:=11585; exit end;
if Regex.IsMatch(d, '[вгёжзйкмпфхцчшщъыэю]юи') then begin result:=11586; exit end;
if Regex.IsMatch(d, '[гёфхцчшщъэ]яи') then begin result:=11587; exit end;
if Regex.IsMatch(d, '[аеёиуцъыэюя]ай') then begin result:=11588; exit end;
if Regex.IsMatch(d, '[ъэ]ей') then begin result:=11589; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийкмопрстуфхцчшщъыьэюя]ёй') then begin result:=11590; exit end;
if Regex.IsMatch(d, '[аеёзийоуъыьэюя]ий') then begin result:=11591; exit end;
if Regex.IsMatch(d, '[аеёийцщъыьэюя]ой') then begin result:=11592; exit end;
if Regex.IsMatch(d, '[гдёжзймрсфхцчшщъыэю]уй') then begin result:=11593; exit end;
if Regex.IsMatch(d, '[агеёжзийкоуфхцчшщъыьэюя]ый') then begin result:=11594; exit end;
if Regex.IsMatch(d, '[абвгдеёжзиклопрстфхцчшщъыьэюя]эй') then begin result:=11595; exit end;
if Regex.IsMatch(d, '[абвгдеёжймопсуфхцчшщъыьэю]яй') then begin result:=11596; exit end;
if Regex.IsMatch(d, '[ъэ]ак') then begin result:=11597; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэ]бк') then begin result:=11598; exit end;
if Regex.IsMatch(d, '[бгджпфцчщъэ]вк') then begin result:=11599; exit end;
if Regex.IsMatch(d, '[бвгджйкмнпстфхцчшщъыьэю]гк') then begin result:=11600; exit end;
if Regex.IsMatch(d, '[бвгджйклмпрстфхцчшщъыьэю]дк') then begin result:=11601; exit end;
if Regex.IsMatch(d, '[ёуэя]ек') then begin result:=11602; exit end;
if Regex.IsMatch(d, '[абвгдёжзйкпуфхцчшъыэюя]ёк') then begin result:=11603; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]жк') then begin result:=11604; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъыэю]зк') then begin result:=11605; exit end;
if Regex.IsMatch(d, '[ъэ]ик') then begin result:=11606; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]йк') then begin result:=11607; exit end;
if Regex.IsMatch(d, '[бгджзпфцчшщъэ]кк') then begin result:=11608; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэю]лк') then begin result:=11609; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэ]мк') then begin result:=11610; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэ]нк') then begin result:=11611; exit end;
if Regex.IsMatch(d, '[щъэ]ок') then begin result:=11612; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнрсфхцчшщъыьэю]пк') then begin result:=11613; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрсфхцчшщъьэ]рк') then begin result:=11614; exit end;
if Regex.IsMatch(d, '[ъ]ск') then begin result:=11615; exit end;
if Regex.IsMatch(d, '[бвгджзлмптфцчшщъьэ]тк') then begin result:=11616; exit end;
if Regex.IsMatch(d, '[ёъэ]ук') then begin result:=11617; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстухцчшщъыьэюя]фк') then begin result:=11618; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]хк') then begin result:=11619; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмопрстуфхцчшщъыьэюя]цк') then begin result:=11620; exit end;
if Regex.IsMatch(d, '[бвгджзйкмнпрстфхцчшщъьэ]чк') then begin result:=11621; exit end;
if Regex.IsMatch(d, '[бгджнпсфцчшщъэ]шк') then begin result:=11622; exit end;
if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ык') then begin result:=11623; exit end;
if Regex.IsMatch(d, '[абгеёийкмоуфхцъыьэюя]ьк') then begin result:=11624; exit end;
if Regex.IsMatch(d, '[бгджнпрфцчшщъэ]эк') then begin result:=11625; exit end;
if Regex.IsMatch(d, '[бвгдёжйкмпфхцчшщъыэ]юк') then begin result:=11626; exit end;
if Regex.IsMatch(d, '[вгёкпцчшщъыэ]як') then begin result:=11627; exit end;
if Regex.IsMatch(d, '[ъэ]ал') then begin result:=11628; exit end;
if Regex.IsMatch(d, '[бпфцшщъэ]бл') then begin result:=11629; exit end;
if Regex.IsMatch(d, '[бжпфцшщъэ]вл') then begin result:=11630; exit end;
if Regex.IsMatch(d, '[пфшщъэ]гл') then begin result:=11631; exit end;
if Regex.IsMatch(d, '[бжпфцчшщъэ]дл') then begin result:=11632; exit end;
if Regex.IsMatch(d, '[ёухэ]ел') then begin result:=11633; exit end;
if Regex.IsMatch(d, '[абгдёзийклмнпуфхцъыьэюя]ёл') then begin result:=11634; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстфхцчшщъыьэюя]жл') then begin result:=11635; exit end;
if Regex.IsMatch(d, '[гджнпфцчшщъэ]зл') then begin result:=11636; exit end;
if Regex.IsMatch(d, '[ъэ]ил') then begin result:=11637; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йл') then begin result:=11638; exit end;
if Regex.IsMatch(d, '[гжпфцщъэ]кл') then begin result:=11639; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъью]лл') then begin result:=11640; exit end;
if Regex.IsMatch(d, '[бвгджзйклнпстфхцчшщъьэю]мл') then begin result:=11641; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]нл') then begin result:=11642; exit end;
if Regex.IsMatch(d, '[ёфчщъыэю]ол') then begin result:=11643; exit end;
if Regex.IsMatch(d, '[жпцшщъэ]пл') then begin result:=11644; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъыью]рл') then begin result:=11645; exit end;
if Regex.IsMatch(d, '[фщъэ]сл') then begin result:=11646; exit end;
if Regex.IsMatch(d, '[бвгджзймптфхцчшщъыьэ]тл') then begin result:=11647; exit end;
if Regex.IsMatch(d, '[щъэ]ул') then begin result:=11648; exit end;
if Regex.IsMatch(d, '[абвгдёжзлмпсфцчшщъыэ]фл') then begin result:=11649; exit end;
if Regex.IsMatch(d, '[бгджзнпфцчщъэю]хл') then begin result:=11650; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]цл') then begin result:=11651; exit end;
if Regex.IsMatch(d, '[бвгдёпуфцчшщъэю]чл') then begin result:=11652; exit end;
if Regex.IsMatch(d, '[гджпрсфцчщъэ]шл') then begin result:=11653; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]щл') then begin result:=11654; exit end;
if Regex.IsMatch(d, '[агеёжзийкоуфхчшщъыьэюя]ыл') then begin result:=11655; exit end;
if Regex.IsMatch(d, '[агеёжзийкопуфхцъыьэюя]ьл') then begin result:=11656; exit end;
if Regex.IsMatch(d, '[бвгёжзлпрсфцчшщъыэ]эл') then begin result:=11657; exit end;
if Regex.IsMatch(d, '[бвгдёжйкпсфхцчшщъыэя]юл') then begin result:=11558; exit end;
if Regex.IsMatch(d, '[гёжфхцчшщъыэ]ял') then begin result:=11659; exit end;
if Regex.IsMatch(d, '[ёъэ]ам') then begin result:=11660; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпрстфхцчшщъыьэюя]бм') then begin result:=11661; exit end;
if Regex.IsMatch(d, '[бзпфшщъэ]вм') then begin result:=11662; exit end;
if Regex.IsMatch(d, '[абвгдежзийклмнпрстфхцчшщъыьэюя]гм') then begin result:=11663; exit end;
if Regex.IsMatch(d, '[бвгджклмпстфхцчшщъыьэю]дм') then begin result:=11664; exit end;
if Regex.IsMatch(d, '[пфэ]ем') then begin result:=11665; exit end;
if Regex.IsMatch(d, '[бвгёзйклмпуфхцшыэюя]ём') then begin result:=11666; exit end;
if Regex.IsMatch(d, '[бвдеёжзийклмпрстфхцчшщъыьэюя]жм') then begin result:=11667; exit end;
if Regex.IsMatch(d, '[бгдёжзйклмнпрстуфхцчшщъьэюя]зм') then begin result:=11668; exit end;
if Regex.IsMatch(d, '[ъэ]им') then begin result:=11669; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьюя]йм') then begin result:=11670; exit end;
if Regex.IsMatch(d, '[бгжзйкмпрфцчшщъэ]км') then begin result:=11671; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпртуфхцчшщъьэю]лм') then begin result:=11672; exit end;
if Regex.IsMatch(d, '[бвгджйклмнпрсфхцчшщъьэю]мм') then begin result:=11673; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъью]нм') then begin result:=11674; exit end;
if Regex.IsMatch(d, '[ёуъыэ]ом') then begin result:=11675; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстфхцчшщъыьэюя]пм') then begin result:=11676; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыью]рм') then begin result:=11677; exit end;
if Regex.IsMatch(d, '[бпфцщъэ]см') then begin result:=11678; exit end;
if Regex.IsMatch(d, '[бвгджзйлмнпртфхцчшщъыьэ]тм') then begin result:=11679; exit end;
if Regex.IsMatch(d, '[пщъэ]ум') then begin result:=11680; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстфхцчшщъыьэюя]фм') then begin result:=11681; exit end;
if Regex.IsMatch(d, '[бвгджзклмпрсфхцшщъэю]хм') then begin result:=11682; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмопрстуфхцчшщъыьэю]цм') then begin result:=11683; exit end;
if Regex.IsMatch(d, '[абвгджзлмнпрстуфхцчшщъыьэю]чм') then begin result:=11684; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]шм') then begin result:=11685; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]щм') then begin result:=11686; exit end;
if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ым') then begin result:=11687; exit end;
if Regex.IsMatch(d, '[агеёжийкопуфхцъыьэюя]ьм') then begin result:=11688; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыьэя]эм') then begin result:=11689; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмпфхцчшщъыэя]юм') then begin result:=11690; exit end;
if Regex.IsMatch(d, '[гёжфцчшщъэ]ям') then begin result:=11691; exit end;
if Regex.IsMatch(d, '[ъэ]ан') then begin result:=11692; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэ]бн') then begin result:=11693; exit end;
if Regex.IsMatch(d, '[гджпсфцшщъэ]вн') then begin result:=11694; exit end;
if Regex.IsMatch(d, '[бвджкпфхцчшщъьэю]гн') then begin result:=11695; exit end;
if Regex.IsMatch(d, '[бгджпсфцчшщъэю]дн') then begin result:=11696; exit end;
if Regex.IsMatch(d, '[ёйуъэя]ен') then begin result:=11697; exit end;
if Regex.IsMatch(d, '[гёийкпуфхцъыэюя]ён') then begin result:=11698; exit end;
if Regex.IsMatch(d, '[бвгджзйкнпрстфхцчшщъьэ]жн') then begin result:=11699; exit end;
if Regex.IsMatch(d, '[бпфцшщъэ]зн') then begin result:=11700; exit end;
if Regex.IsMatch(d, '[ъэ]ин') then begin result:=11701; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэю]йн') then begin result:=11702; exit end;
if Regex.IsMatch(d, '[бпфшщъэ]кн') then begin result:=11703; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэю]лн') then begin result:=11704; exit end;
if Regex.IsMatch(d, '[бпрфшщъэ]мн') then begin result:=11705; exit end;
if Regex.IsMatch(d, '[бгджзйклмпстфхцчшщъьэ]нн') then begin result:=11706; exit end;
if Regex.IsMatch(d, '[ъэ]он') then begin result:=11707; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэюя]пн') then begin result:=11708; exit end;
if Regex.IsMatch(d, '[вгжзйклмнпрсфхцчшщъьэю]рн') then begin result:=11709; exit end;
if Regex.IsMatch(d, '[бпфцшщъэ]сн') then begin result:=11710; exit end;
if Regex.IsMatch(d, '[бвгджзйлмптфцчшщъь]тн') then begin result:=11711; exit end;
if Regex.IsMatch(d, '[ъэ]ун') then begin result:=11712; exit end;
if Regex.IsMatch(d, '[бвгдеёжзклмнпрстуфхцчшщъыьэюя]фн') then begin result:=11713; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]хн') then begin result:=11714; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъыьэю]цн') then begin result:=11715; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмнпрстфхцчшщъьэю]чн') then begin result:=11716; exit end;
if Regex.IsMatch(d, '[бвгёжзйкмнпстфхцчшщъьэ]шн') then begin result:=11717; exit end;
if Regex.IsMatch(d, '[авгдеёжзйклмнпрстфхцчшщъыьэю]щн') then begin result:=11718; exit end;
if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ын') then begin result:=11719; exit end;
if Regex.IsMatch(d, '[абгеёийкопуфхцъыьэюя]ьн') then begin result:=11720; exit end;
if Regex.IsMatch(d, '[бвджзкнпрфхцчшщъыэ]эн') then begin result:=11721; exit end;
if Regex.IsMatch(d, '[бгёжзкпфцчшщъыэ]юн') then begin result:=11722; exit end;
if Regex.IsMatch(d, '[фшщъэ]ян') then begin result:=11723; exit end;
if Regex.IsMatch(d, '[фщъэ]ао') then begin result:=11724; exit end;
if Regex.IsMatch(d, '[пфшщъэ]бо') then begin result:=11725; exit end;
if Regex.IsMatch(d, '[фшщъэ]во') then begin result:=11726; exit end;
if Regex.IsMatch(d, '[пфщъ]го') then begin result:=11727; exit end;
if Regex.IsMatch(d, '[пфшщъэ]до') then begin result:=11728; exit end;
if Regex.IsMatch(d, '[ёйуъэюя]ео') then begin result:=11729; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпртуфхцчшъыьэюя]ёо') then begin result:=11730; exit end;
if Regex.IsMatch(d, '[бёжклмнпртфхцчщъэюя]жо') then begin result:=11731; exit end;
if Regex.IsMatch(d, '[гжзпфцшщъэ]зо') then begin result:=11732; exit end;
if Regex.IsMatch(d, '[пфъэ]ио') then begin result:=11733; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъью]йо') then begin result:=11734; exit end;
if Regex.IsMatch(d, '[щъ]ко') then begin result:=11735; exit end;
if Regex.IsMatch(d, '[жцчщъэ]ло') then begin result:=11736; exit end;
if Regex.IsMatch(d, '[пфъэ]мо') then begin result:=11737; exit end;
if Regex.IsMatch(d, '[ъэ]но') then begin result:=11738; exit end;
if Regex.IsMatch(d, '[аеёжйучщъыэя]оо') then begin result:=11739; exit end;
if Regex.IsMatch(d, '[ъ]по') then begin result:=11740; exit end;
if Regex.IsMatch(d, '[шщъэ]ро') then begin result:=11741; exit end;
if Regex.IsMatch(d, '[фцшщъэ]со') then begin result:=11742; exit end;
if Regex.IsMatch(d, '[щъ]то') then begin result:=11743; exit end;
if Regex.IsMatch(d, '[ёпуфъыэю]уо') then begin result:=11744; exit end;
if Regex.IsMatch(d, '[бджзнфхцчшщъэ]фо') then begin result:=11745; exit end;
if Regex.IsMatch(d, '[жпфщъэ]хо') then begin result:=11746; exit end;
if Regex.IsMatch(d, '[агёжйклоуфхчшщъыэю]цо') then begin result:=11747; exit end;
if Regex.IsMatch(d, '[бгдёжзйкмнпрстфхцчшщъэ]чо') then begin result:=11748; exit end;
if Regex.IsMatch(d, '[бгдёжзкмнптфхцчшщъыэю]шо') then begin result:=11749; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэя]що') then begin result:=11750; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрсуфхцчшщъыьэюя]ъо') then begin result:=11751; exit end;
if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ыо') then begin result:=11752; exit end;
if Regex.IsMatch(d, '[абгеёийкопуфхцщъыьэюя]ьо') then begin result:=11753; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмптфхцчшщъыэ]юо') then begin result:=11754; exit end;
if Regex.IsMatch(d, '[гпфцшщъэ]яо') then begin result:=11755; exit end;
if Regex.IsMatch(d, '[ёфъэ]ап') then begin result:=11756; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэюя]бп') then begin result:=11757; exit end;
if Regex.IsMatch(d, '[бжпфшщъэ]вп') then begin result:=11758; exit end;
if Regex.IsMatch(d, '[бвгджийклмнпстфхцчшщъыьэюя]гп') then begin result:=11759; exit end;
if Regex.IsMatch(d, '[бвгджийклмнпсфхцчшщъьэю]дп') then begin result:=11760; exit end;
if Regex.IsMatch(d, '[ёйуъэюя]еп') then begin result:=11761; exit end;
if Regex.IsMatch(d, '[абвгдёзийкмнпуфхцчъыэюя]ёп') then begin result:=11762; exit end;//ж
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]жп') then begin result:=11763; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъыьэюя]зп') then begin result:=11764; exit end;
if Regex.IsMatch(d, '[фъэ]ип') then begin result:=11765; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъью]йп') then begin result:=11766; exit end;
if Regex.IsMatch(d, '[бвжзкпрфцчшщъэ]кп') then begin result:=11767; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэю]лп') then begin result:=11768; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]мп') then begin result:=11769; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэюя]нп') then begin result:=11770; exit end;
if Regex.IsMatch(d, '[фщъэ]оп') then begin result:=11771; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнпрстфхцчшщъыьэюя]пп') then begin result:=11772; exit end;
if Regex.IsMatch(d, '[бвгжзйклмпрсуфхцчшщъьэя]рп') then begin result:=11773; exit end;
if Regex.IsMatch(d, '[бфшщъэ]сп') then begin result:=11774; exit end;
if Regex.IsMatch(d, '[бвгджзйлмптфхцчшщъыьэ]тп') then begin result:=11775; exit end;
if Regex.IsMatch(d, '[ъэю]уп') then begin result:=11776; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъыьэюя]фп') then begin result:=11777; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]хп') then begin result:=11778; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмопрстуфхцчшщъыьэю]цп') then begin result:=11779; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъьэю]чп') then begin result:=11780; exit end;
if Regex.IsMatch(d, '[бвгдёжзклмнпрстуфхцчшщъэю]шп') then begin result:=11781; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]щп') then begin result:=11782; exit end;
if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ып') then begin result:=11783; exit end;
if Regex.IsMatch(d, '[абгеёжийкопуфхцъыьэюя]ьп') then begin result:=11784; exit end;
if Regex.IsMatch(d, '[абвгдеёжзклмнопрстуфхцчшщъыэя]эп') then begin result:=11785; exit end;
if Regex.IsMatch(d, '[бвгёжйкмтфхцчшщъыэ]юп') then begin result:=11786; exit end;
if Regex.IsMatch(d, '[гжфцшщъэ]яп') then begin result:=11787; exit end;
if Regex.IsMatch(d, '[щъэ]ар') then begin result:=11788; exit end;
if Regex.IsMatch(d, '[бпфщъэ]бр') then begin result:=11789; exit end;
if Regex.IsMatch(d, '[бпъэ]вр') then begin result:=11790; exit end;
if Regex.IsMatch(d, '[гпфцшщъэ]гр') then begin result:=11791; exit end;
if Regex.IsMatch(d, '[бпрфшщъэ]др') then begin result:=11792; exit end;
if Regex.IsMatch(d, '[ёйэя]ер') then begin result:=11793; exit end;
if Regex.IsMatch(d, '[абгёийклруфхцшъыьэюя]ёр') then begin result:=11794; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстфхцчшщъыьэюя]жр') then begin result:=11795; exit end;
if Regex.IsMatch(d, '[бгджйлнпрстфцчшщъэю]зр') then begin result:=11796; exit end;
if Regex.IsMatch(d, '[щъэ]ир') then begin result:=11797; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]йр') then begin result:=11798; exit end;
if Regex.IsMatch(d, '[бжфшщъэ]кр') then begin result:=11799; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]лр') then begin result:=11800; exit end;
if Regex.IsMatch(d, '[бжйкпрфцчшщъэ]мр') then begin result:=11801; exit end;
if Regex.IsMatch(d, '[бвгджмпрфцчшщъэ]нр') then begin result:=11802; exit end;
if Regex.IsMatch(d, '[ёущъьэ]ор') then begin result:=11803; exit end;
if Regex.IsMatch(d, '[фъэ]пр') then begin result:=11804; exit end;
if Regex.IsMatch(d, '[вгджзйклмнрстуфхцчшщъыьэюя]рр') then begin result:=11805; exit end;
if Regex.IsMatch(d, '[бжпрфцшщъэ]ср') then begin result:=11806; exit end;
if Regex.IsMatch(d, '[бпфщъэ]тр') then begin result:=11807; exit end;
if Regex.IsMatch(d, '[ёпъэю]ур') then begin result:=11808; exit end;
if Regex.IsMatch(d, '[бгжпрфцчшщъэ]фр') then begin result:=11809; exit end;
if Regex.IsMatch(d, '[бгджзпрфцчщъэ]хр') then begin result:=11810; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъыьэюя]цр') then begin result:=11811; exit end;
if Regex.IsMatch(d, '[бгджзпрфцчшщъэю]чр') then begin result:=11812; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпстуфхцчшщъыьэюя]шр') then begin result:=11813; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпрстуфхцчшщъыьэюя]щр') then begin result:=11814; exit end;
if Regex.IsMatch(d, '[агеёжийкоухчшщъыьэюя]ыр') then begin result:=11815; exit end;
if Regex.IsMatch(d, '[абвгеёжийкопуфхцъыьэюя]ьр') then begin result:=11816; exit end;
if Regex.IsMatch(d, '[абгдеёжзийклмнопруфхцчшщъыэюя]эр') then begin result:=11817; exit end;
if Regex.IsMatch(d, '[бгдёжзйкхцчщъыэя]юр') then begin result:=11818; exit end;
if Regex.IsMatch(d, '[жпфцчшщъэ]яр') then begin result:=11819; exit end;
if Regex.IsMatch(d, '[ёъэ]ас') then begin result:=11820; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпстфхцчшщъыьэюя]бс') then begin result:=11821; exit end;
if Regex.IsMatch(d, '[фщъэ]вс') then begin result:=11822; exit end;
if Regex.IsMatch(d, '[бвгджзйкмнпстфхцчшщъыьэюя]гс') then begin result:=11823; exit end;
if Regex.IsMatch(d, '[бвгдйклмпсфхцчшщъыьэ]дс') then begin result:=11824; exit end;
if Regex.IsMatch(d, '[зэ]ес') then begin result:=11825; exit end;
if Regex.IsMatch(d, '[абгдёзийкмртуфхцшъыэюя]ёс') then begin result:=11826; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнпрстфхцчшщъыьэю]жс') then begin result:=11827; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэюя]зс') then begin result:=11828; exit end;
if Regex.IsMatch(d, '[ъэ]ис') then begin result:=11829; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]йс') then begin result:=11830; exit end;
if Regex.IsMatch(d, '[бгджпрфшщъ]кс') then begin result:=11831; exit end;
//if Regex.IsMatch(d, '[бвгджзйклмнптфхцчшщъьэю]лс') then begin result:=11832; exit end;// ЛС-личные сообщения
if Regex.IsMatch(d, '[бвгджйклнпрстфхцчшщъьэю]мс') then begin result:=11833; exit end;
if Regex.IsMatch(d, '[бвгджзйклмпстфхцчшщъьэю]нс') then begin result:=11834; exit end;
if Regex.IsMatch(d, '[щъэ]ос') then begin result:=11835; exit end;
if Regex.IsMatch(d, '[абвгдёжзклнрсфхцчшщъыьэюя]пс') then begin result:=11836; exit end;
if Regex.IsMatch(d, '[вгжзйклмнпрсфхцчшщъьэя]рс') then begin result:=11837; exit end;
if Regex.IsMatch(d, '[гпфшщъэ]сс') then begin result:=11838; exit end;
if Regex.IsMatch(d, '[бвгджзйлмптфхцчшщъьэ]тс') then begin result:=11839; exit end;
if Regex.IsMatch(d, '[фъэ]ус') then begin result:=11840; exit end;
if Regex.IsMatch(d, '[бвгдеёжзклмнпрстуфхцчшщъыьэюя]фс') then begin result:=11841; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]хс') then begin result:=11842; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмопрстуфхцчшщъыэю]цс') then begin result:=11843; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъьэю]чс') then begin result:=11844; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]шс') then begin result:=11845; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]щс') then begin result:=11846; exit end;
if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ыс') then begin result:=11847; exit end;
if Regex.IsMatch(d, '[абгеёийкопуфхцъыьэюя]ьс') then begin result:=11848; exit end;
if Regex.IsMatch(d, '[бгдеёжзийклмнпрстуфхцчшщъьэюя]эс') then begin result:=11849; exit end;
if Regex.IsMatch(d, '[вгёжзйкмтфхцчшщъыэ]юс') then begin result:=11850; exit end;
if Regex.IsMatch(d, '[фшщэ]яс') then begin result:=11851; exit end;
if Regex.IsMatch(d, '[ъэ]ат') then begin result:=11852; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]бт') then begin result:=11853; exit end;
if Regex.IsMatch(d, '[бпфцчшщъэ]вт') then begin result:=11854; exit end;
if Regex.IsMatch(d, '[абвгджзийклмнпстфхцчшщъыьэюя]гт') then begin result:=11855; exit end;
if Regex.IsMatch(d, '[бвдйклмпстфхцчшщъыьэю]дт') then begin result:=11856; exit end;
if Regex.IsMatch(d, '[ёйъэю]ет') then begin result:=11857; exit end;
if Regex.IsMatch(d, '[бгёийкуфхцъыэюя]ёт') then begin result:=11858; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]жт') then begin result:=11859; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъьэюя]зт') then begin result:=11860; exit end;
if Regex.IsMatch(d, '[ъэ]ит') then begin result:=11861; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэю]йт') then begin result:=11862; exit end;
if Regex.IsMatch(d, '[бвгжзпфцшщъэ]кт') then begin result:=11863; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэю]лт') then begin result:=11864; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]мт') then begin result:=11865; exit end;
if Regex.IsMatch(d, '[бвгджзклмнпрстфхцчшщъью]нт') then begin result:=11866; exit end;
if Regex.IsMatch(d, '[э]от') then begin result:=11867; exit end;
if Regex.IsMatch(d, '[бвгдёжзлмнрсфцчшщъыэ]пт') then begin result:=11868; exit end;
if Regex.IsMatch(d, '[бгджзйлпрсфцчшщъьэ]рт') then begin result:=11869; exit end;
if Regex.IsMatch(d, '[щъэ]ст') then begin result:=11870; exit end;
if Regex.IsMatch(d, '[бвгджзйлмнптфхцчшщъыьэ]тт') then begin result:=11871; exit end;
if Regex.IsMatch(d, '[ъэ]ут') then begin result:=11872; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстфхцчшщъыьэюя]фт') then begin result:=11873; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]хт') then begin result:=11874; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэю]цт') then begin result:=11875; exit end;
if Regex.IsMatch(d, '[пщъэ]чт') then begin result:=11876; exit end;
if Regex.IsMatch(d, '[бгджзнпрфцчщъэ]шт') then begin result:=11877; exit end;
if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ыт') then begin result:=11878; exit end;
if Regex.IsMatch(d, '[абгеёийкоуфхцщъыьэюя]ьт') then begin result:=11879; exit end;
if Regex.IsMatch(d, '[фъэ]эт') then begin result:=11880; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмпфхцчшщыэ]ют') then begin result:=11881; exit end;
if Regex.IsMatch(d, '[гфцшщэ]ят') then begin result:=11882; exit end;
if Regex.IsMatch(d, '[ёйуфъэ]ау') then begin result:=11883; exit end;
if Regex.IsMatch(d, '[бгпфчщъэ]бу') then begin result:=11884; exit end;
if Regex.IsMatch(d, '[бвжпсфцшщъэ]ву') then begin result:=11885; exit end;
if Regex.IsMatch(d, '[гпфчщъэ]гу') then begin result:=11886; exit end;
if Regex.IsMatch(d, '[пфшщъэ]ду') then begin result:=11887; exit end;
if Regex.IsMatch(d, '[аёзйпуъэюя]еу') then begin result:=11888; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпртуфхцчшъыьэюя]ёу') then begin result:=11889; exit end;
if Regex.IsMatch(d, '[бгдпстфцчшщъьэю]жу') then begin result:=11890; exit end;
if Regex.IsMatch(d, '[бгёжкнпрсфцчшщъыэя]зу') then begin result:=11891; exit end;
if Regex.IsMatch(d, '[жфцъэ]иу') then begin result:=11892; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэю]йу') then begin result:=11893; exit end;
if Regex.IsMatch(d, '[фщъэ]ку') then begin result:=11894; exit end;
if Regex.IsMatch(d, '[фцчщъэ]лу') then begin result:=11895; exit end;
if Regex.IsMatch(d, '[пфчщъэ]му') then begin result:=11896; exit end;
if Regex.IsMatch(d, '[фъэ]ну') then begin result:=11897; exit end;
if Regex.IsMatch(d, '[аеёжзийоуфщъьэюя]оу') then begin result:=11898; exit end;
if Regex.IsMatch(d, '[бфшщъэ]пу') then begin result:=11899; exit end;
if Regex.IsMatch(d, '[цщъэ]ру') then begin result:=11900; exit end;
if Regex.IsMatch(d, '[гжпфшщъэ]су') then begin result:=11901; exit end;
if Regex.IsMatch(d, '[бцщъ]ту') then begin result:=11902; exit end;
if Regex.IsMatch(d, '[ёйопуфъыьэюя]уу') then begin result:=11903; exit end;
if Regex.IsMatch(d, '[бгдёжзлпртфхцчшщъьэ]фу') then begin result:=11904; exit end;
if Regex.IsMatch(d, '[бвгджзнпфцчшщъэ]ху') then begin result:=11905; exit end;
if Regex.IsMatch(d, '[агёжйклосуфхцчщъыэюя]цу') then begin result:=11906; exit end;
if Regex.IsMatch(d, '[бжфцшщъэ]чу') then begin result:=11907; exit end;
if Regex.IsMatch(d, '[жфцшщъэ]шу') then begin result:=11908; exit end;
if Regex.IsMatch(d, '[вгдёжзйклмнпрстфхцчшщъэ]щу') then begin result:=11909; exit end;
if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ыу') then begin result:=11910; exit end;
if Regex.IsMatch(d, '[абгеёжийкопуфхцщъыьэюя]ьу') then begin result:=11911; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмптфхцчшщъыэя]юу') then begin result:=11912; exit end;
if Regex.IsMatch(d, '[вгёжйпфшщъэ]яу') then begin result:=11913; exit end;
if Regex.IsMatch(d, '[абёжиопуфхщъыэю]аф') then begin result:=11914; exit end;
if Regex.IsMatch(d, '[бвгджзйнпрстфхцчшщъыэ]вф') then begin result:=11915; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмопстфхцчшщъыьэюя]гф') then begin result:=11916; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъыьэю]дф') then begin result:=11917; exit end;
if Regex.IsMatch(d, '[агёзйлуфхшщъьэю]еф') then begin result:=11918; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопртуфхцчшщъыьэюя]ёф') then begin result:=11919; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]зф') then begin result:=11920; exit end;
if Regex.IsMatch(d, '[ёйпуфхъэюя]иф') then begin result:=11921; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнпрстуфхцчшщъьэюя]йф') then begin result:=11922; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйкмопрстуфхцчшщъэюя]кф') then begin result:=11923; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопстуфхцчшщъьэю]лф') then begin result:=11924; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъьэюя]мф') then begin result:=11925; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэюя]нф') then begin result:=11926; exit end;
if Regex.IsMatch(d, '[дёзфцшщъыэ]оф') then begin result:=11927; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]пф') then begin result:=11928; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстуфхцчшщъыьэюя]рф') then begin result:=11929; exit end;
if Regex.IsMatch(d, '[абгджзклмпртфцчшщъыэюя]сф') then begin result:=11930; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнптфхцчшщъыьэю]тф') then begin result:=11931; exit end;
if Regex.IsMatch(d, '[вдеёжзйлпсухчшщъыэю]уф') then begin result:=11932; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстфхцчшщъыьюя]фф') then begin result:=11933; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъьэю]хф') then begin result:=11934; exit end;
if Regex.IsMatch(d, '[агдеёжийклмопрсуфхцчшщъыьэюя]ыф') then begin result:=11935; exit end;
if Regex.IsMatch(d, '[абвгеёжзийкмнопуфхцчщъыьэюя]ьф') then begin result:=11936; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстуфхцчшщъыьэя]эф') then begin result:=11937; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпфхцчшщъыэюя]юф') then begin result:=11938; exit end;
if Regex.IsMatch(d, '[вгеёжзйкмнпртуфхцчшщъыэюя]яф') then begin result:=11939; exit end;
if Regex.IsMatch(d, '[ёъэ]ах') then begin result:=11940; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэюя]бх') then begin result:=11941; exit end;
if Regex.IsMatch(d, '[бвгжрфхцщъыэ]вх') then begin result:=11942; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстфхцчшщъыьэюя]гх') then begin result:=11943; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэю]дх') then begin result:=11944; exit end;
if Regex.IsMatch(d, '[ёзщэ]ех') then begin result:=11945; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнптуфхцчшъыьэюя]ёх') then begin result:=11946; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнопрстуфхцчшщъыьэюя]зх') then begin result:=11947; exit end;
if Regex.IsMatch(d, '[пфцъэ]их') then begin result:=11948; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йх') then begin result:=11949; exit end;
if Regex.IsMatch(d, '[вгдёжзйкнпрсфхцчшщъэюя]кх') then begin result:=11950; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнопрстфхцчшщъьэю]лх') then begin result:=11951; exit end;
if Regex.IsMatch(d, '[бвгджйклмнпстуфхцчшщъьэю]мх') then begin result:=11952; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнпрстуфхцчшщъьэюя]нх') then begin result:=11953; exit end;
if Regex.IsMatch(d, '[жфщъэ]ох') then begin result:=11954; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]рх') then begin result:=11955; exit end;
if Regex.IsMatch(d, '[дёжпсфхцчшщъэю]сх') then begin result:=11956; exit end;
if Regex.IsMatch(d, '[бвгджзйклмпрстфхцчшщъыьэ]тх') then begin result:=11957; exit end;
if Regex.IsMatch(d, '[фхшщъыэ]ух') then begin result:=11958; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъьэю]хх') then begin result:=11959; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]цх') then begin result:=11960; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]чх') then begin result:=11961; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъыьэюя]шх') then begin result:=11962; exit end;
if Regex.IsMatch(d, '[агеёжзийкоуфхчшщъыьэюя]ых') then begin result:=11963; exit end;
if Regex.IsMatch(d, '[абвгеёжийкмопуфхцщъыьэюя]ьх') then begin result:=11964; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэю]эх') then begin result:=11965; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмпфхцчшщъыэя]юх') then begin result:=11966; exit end;
if Regex.IsMatch(d, '[гжпфцшщъэ]ях') then begin result:=11967; exit end;
if Regex.IsMatch(d, '[геёжйосуфчшщъыьэюя]ац') then begin result:=11968; exit end;
if Regex.IsMatch(d, '[абвгдёзийклмнопрстфхцчшщъыьэюя]бц') then begin result:=11969; exit end;
if Regex.IsMatch(d, '[бвгдёжзнпрстфхцчшщъэю]вц') then begin result:=11970; exit end;
if Regex.IsMatch(d, '[бвгдеёжйклмнпстуфхцчшщъыьэюя]дц') then begin result:=11971; exit end;
if Regex.IsMatch(d, '[агеёйкуфхчъьэюя]ец') then begin result:=11972; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшъыьэюя]ёц') then begin result:=11973; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]жц') then begin result:=11974; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]зц') then begin result:=11975; exit end;
if Regex.IsMatch(d, '[гёйхцшъэ]иц') then begin result:=11976; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнпрстуфхцчшщъьэю]йц') then begin result:=11977; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклпрстуфхцчшщъыьэю]кц') then begin result:=11978; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэю]лц') then begin result:=11979; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]мц') then begin result:=11980; exit end;
if Regex.IsMatch(d, '[бвгджзйкмнпрстуфхцчшщъыьэю]нц') then begin result:=11981; exit end;
if Regex.IsMatch(d, '[бвёжзуфхцчшщъыэю]оц') then begin result:=11982; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстфхцчшщъыьэюя]пц') then begin result:=11983; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпрстфхцчшщъыьэюя]рц') then begin result:=11984; exit end;
if Regex.IsMatch(d, '[бвгдёжзмпрстфцчшщъыэю]сц') then begin result:=11985; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэя]тц') then begin result:=11986; exit end;
if Regex.IsMatch(d, '[абвгеёжзйлнпухцшщъыэюя]уц') then begin result:=11987; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъьэюя]хц') then begin result:=11988; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъыьэю]цц') then begin result:=11989; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]чц') then begin result:=11990; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъьэюя]шц') then begin result:=11991; exit end;
if Regex.IsMatch(d, '[агдеёжзийклнопсуфхчшщъыьэюя]ыц') then begin result:=11992; exit end;
if Regex.IsMatch(d, '[абгеёзийкмопруфхцчшщъыьэюя]ьц') then begin result:=11993; exit end;
if Regex.IsMatch(d, '[абвгдёжзйкмнпртфхцчщъыэюя]юц') then begin result:=11994; exit end;
if Regex.IsMatch(d, '[вгдеёжзйкпртуфхцчшщъыьэю]яц') then begin result:=11995; exit end;
if Regex.IsMatch(d, '[ёщъэю]ач') then begin result:=11996; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстфхцчшщъыьэя]бч') then begin result:=11997; exit end;
if Regex.IsMatch(d, '[бгджзпрсфшщъэ]вч') then begin result:=11998; exit end;
if Regex.IsMatch(d, '[бвгдёжзийкмнпрстфхцчшщъыьэю]гч') then begin result:=11999; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]дч') then begin result:=12000; exit end;
if Regex.IsMatch(d, '[гёзйуфхъэюя]еч') then begin result:=12001; exit end;
if Regex.IsMatch(d, '[абвгдёжзийкмнпртуфхцчшъыьэюя]ёч') then begin result:=12002; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]жч') then begin result:=12003; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэю]зч') then begin result:=12004; exit end;
if Regex.IsMatch(d, '[ъэ]ич') then begin result:=12005; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йч') then begin result:=12006; exit end;
if Regex.IsMatch(d, '[бвгдёжзпрсфхцчшщъэ]кч') then begin result:=12007; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]лч') then begin result:=12008; exit end;
if Regex.IsMatch(d, '[бвгджйклмнпрстфхцчшщъьэ]мч') then begin result:=12009; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъьэю]нч') then begin result:=12010; exit end;
if Regex.IsMatch(d, '[щъэ]оч') then begin result:=12011; exit end;
if Regex.IsMatch(d, '[бвгджзлмнпртфцчшщъыэю]пч') then begin result:=12012; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрсфхцчшщъыьэю]рч') then begin result:=12013; exit end;
if Regex.IsMatch(d, '[бдзфшщъэ]сч') then begin result:=12014; exit end;
if Regex.IsMatch(d, '[бвгджзйлмнптфхцчшщъыьэ]тч') then begin result:=12015; exit end;
if Regex.IsMatch(d, '[фщъэ]уч') then begin result:=12016; exit end;
if Regex.IsMatch(d, '[бвгдеёжзиклмнопрстуфхцчшщъыьэюя]фч') then begin result:=12017; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнопстфхцчшщъьэю]хч') then begin result:=12018; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъыьэюя]цч') then begin result:=12019; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъьэю]чч') then begin result:=12020; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]шч') then begin result:=12021; exit end;
if Regex.IsMatch(d, '[агеёжзийкоуфхчшщъыьэюя]ыч') then begin result:=12022; exit end;
if Regex.IsMatch(d, '[абвгеёийкопуфхцщъыьэюя]ьч') then begin result:=12023; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмпстфхцчшщъыэ]юч') then begin result:=12024; exit end;
if Regex.IsMatch(d, '[гёжйпфцчшщъыэ]яч') then begin result:=120225; exit end;
if Regex.IsMatch(d, '[аеёийофщъыьэюя]аш') then begin result:=12026; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстуфхцчшщъыьэю]бш') then begin result:=12027; exit end;
if Regex.IsMatch(d, '[бвгджзкпртфцшщъэю]вш') then begin result:=12028; exit end;
if Regex.IsMatch(d, '[абвгджзйклмнпрстфхцчшщъыьэюя]гш') then begin result:=12029; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыэю]дш') then begin result:=12030; exit end;
if Regex.IsMatch(d, '[ёзйфхъэю]еш') then begin result:=12031; exit end;
if Regex.IsMatch(d, '[бгёжзийкптуфхцчшъыэюя]ёш') then begin result:=12032; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстфхцчшщъыьэюя]жш') then begin result:=12033; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопстуфхцчшщъыьэю]зш') then begin result:=12034; exit end;
if Regex.IsMatch(d, '[цъэ]иш') then begin result:=12035; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йш') then begin result:=12036; exit end;
if Regex.IsMatch(d, '[бвгжзйлмнпрстфхцчшщъьэюя]кш') then begin result:=12037; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]лш') then begin result:=12038; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмнпстфхцчшщъьэя]мш') then begin result:=12039; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]нш') then begin result:=12040; exit end;
if Regex.IsMatch(d, '[ёжчшщъэ]ош') then begin result:=12041; exit end;
if Regex.IsMatch(d, '[бгдёжзкмпрстфхцчшщъыэя]пш') then begin result:=12042; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]рш') then begin result:=12043; exit end;
if Regex.IsMatch(d, '[бдёжзлмпрстфхцчшщъэ]сш') then begin result:=12044; exit end;
if Regex.IsMatch(d, '[абвгджзйклмнпртфхцчшщъыьэюя]тш') then begin result:=12045; exit end;
if Regex.IsMatch(d, '[зфшщъэ]уш') then begin result:=12046; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]хш') then begin result:=12047; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстфхцчшщъыьэюя]чш') then begin result:=12048; exit end;
if Regex.IsMatch(d, '[бвгдежзийклмнопрстуфхцчщъыьэюя]шш') then begin result:=12049; exit end;
if Regex.IsMatch(d, '[агеёжзийкостуфхчшщъыьэюя]ыш') then begin result:=12050; exit end;
if Regex.IsMatch(d, '[абвгеёжийкмопуфхцъыьэюя]ьш') then begin result:=12051; exit end;
if Regex.IsMatch(d, '[абвгдеёжзиклмнопрстуфхцчшщъыьэюя]эш') then begin result:=12052; exit end;
if Regex.IsMatch(d, '[бвгеёжзийклмпсфхцчшщъыэя]юш') then begin result:=12053; exit end;
if Regex.IsMatch(d, '[бвгёжзфхцшщъэ]яш') then begin result:=12054; exit end;
if Regex.IsMatch(d, '[абгеёийкопсуфхцщъыьэюя]ащ') then begin result:=12055; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэюя]бщ') then begin result:=12056; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстуфхцчшщъыэюя]вщ') then begin result:=12057; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]дщ') then begin result:=12058; exit end;
if Regex.IsMatch(d, '[фшъэ]ещ') then begin result:=12059; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрсуфхцчшщъыьэюя]ёщ') then begin result:=12060; exit end;
if Regex.IsMatch(d, '[бгдеёзсфъэ]ищ') then begin result:=12061; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстуфхцчшщъьэюя]йщ') then begin result:=12062; exit end;
if Regex.IsMatch(d, '[абвгдёжзйкнпрстуфхчшщъыэюя]кщ') then begin result:=1206; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнпрстфхцчшщъыьэюя]лщ') then begin result:=12064; exit end;
if Regex.IsMatch(d, '[абгдеёжзйклмнпрсуфхцчшщъьэю]мщ') then begin result:=12065; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъыьэюя]нщ') then begin result:=12066; exit end;
if Regex.IsMatch(d, '[ёжфчшщъэю]ощ') then begin result:=12067; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстфхцчшщъыьэюя]пщ') then begin result:=12068; exit end;
if Regex.IsMatch(d, '[бвгеёжзийклмнпрсуфхцчшщъыьэюя]рщ') then begin result:=12069; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнопрстуфцчшщъыьэюя]сщ') then begin result:=12070; exit end;
if Regex.IsMatch(d, '[бвгдёжзкнпртуфхцчшщъьэю]тщ') then begin result:=12071; exit end;
if Regex.IsMatch(d, '[абеёзийоруфхшъыьэя]ущ') then begin result:=12072; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъьэюя]хщ') then begin result:=12073; exit end;
if Regex.IsMatch(d, '[абгдеёжзийклмопртуфхчшщъыьэюя]ыщ') then begin result:=12074; exit end;
if Regex.IsMatch(d, '[абвгдеёжийкмопрсуфхцчшщъыьэюя]ьщ') then begin result:=12075; exit end;
if Regex.IsMatch(d, '[бвгдёжзийкмнпстфхцчшщъыэю]ющ') then begin result:=12076; exit end;
if Regex.IsMatch(d, '[геёжфхцчшщъыьэю]ящ') then begin result:=12077; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]бъ') then begin result:=12078; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмпстуфхцчшщъыьэюя]въ') then begin result:=12079; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]дъ') then begin result:=12080; exit end;
if Regex.IsMatch(d, '[бгдеёжзйклмнопрстуфхцчшщъыьэюя]зъ') then begin result:=12081; exit end;
if Regex.IsMatch(d, '[бвгдёжзмпртуфцчшщъьэю]съ') then begin result:=12082; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнпртуфхцчшщъыьэюя]тъ') then begin result:=12083; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопстуфхцчшщъыьэюя]хъ') then begin result:=12084; exit end;
if Regex.IsMatch(d, '[фщъэ]бы') then begin result:=12085; exit end;
if Regex.IsMatch(d, '[пфщъэ]вы') then begin result:=12086; exit end;
if Regex.IsMatch(d, '[бгдпсфхцчшщъэ]ды') then begin result:=12087; exit end;
if Regex.IsMatch(d, '[бгджзйклмнпрсфхцчшщъэю]зы') then begin result:=12088; exit end;
if Regex.IsMatch(d, '[бвжнфцчщъьэ]лы') then begin result:=12089; exit end;
if Regex.IsMatch(d, '[пфцщъэ]мы') then begin result:=12090; exit end;
if Regex.IsMatch(d, '[гцщъэ]ны') then begin result:=12091; exit end;
if Regex.IsMatch(d, '[бвгдёжйфхцчшщъэ]пы') then begin result:=12092; exit end;
if Regex.IsMatch(d, '[вжнфхцчшщъэ]ры') then begin result:=12093; exit end;
if Regex.IsMatch(d, '[гжпфцчщъэ]сы') then begin result:=12094; exit end;
if Regex.IsMatch(d, '[бгщъэ]ты') then begin result:=12095; exit end;
if Regex.IsMatch(d, '[бвгдеёжзклмнпрсуфцчшщъыэя]фы') then begin result:=12096; exit end;
if Regex.IsMatch(d, '[гёжфхцчщъыэю]цы') then begin result:=12097; exit end;
if Regex.IsMatch(d, '[абвгджзйклмпрстфхцчшщъыьэюя]бь') then begin result:=12098; exit end;
if Regex.IsMatch(d, '[бвгёжзйклмнпуфхцчшщъьэюя]вь') then begin result:=12099; exit end;
if Regex.IsMatch(d, '[бгдёзклнпрфхцчшщъэ]дь') then begin result:=12100; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнорстуфхцчшщъыьэюя]еь') then begin result:=12101; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпрстфхцчшщъыьэю]жь') then begin result:=12102; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэю]зь') then begin result:=12103; exit end;
if Regex.IsMatch(d, '[вгдёжзфцчшъ]ль') then begin result:=12104; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнпрстфхцчшщъыьэюя]мь') then begin result:=12105; exit end;
if Regex.IsMatch(d, '[бвгдёжйклмнпртфхцчшщъьэ]нь') then begin result:=12106; exit end;
if Regex.IsMatch(d, '[бгёжзпртфхцчшщъэю]пь') then begin result:=12107; exit end;
if Regex.IsMatch(d, '[бвгдёжзийклмнпрсфхцчшщъьэя]рь') then begin result:=12108; exit end;
if Regex.IsMatch(d, '[бгдёжзйклмнпрстфхцчшщъьэ]сь') then begin result:=12109; exit end;
if Regex.IsMatch(d, '[бвгжйклмнптфхцчшщъэ]ть') then begin result:=12110; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]фь') then begin result:=12111; exit end;
if Regex.IsMatch(d, '[бгдёжзйкмнпрстфхцчшщъэю]чь') then begin result:=12112; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъыэюя]шь') then begin result:=12113; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпрстуфхцчшщъыьэюя]щь') then begin result:=12114; exit end;
if Regex.IsMatch(d, '[ёпъыэюя]аэ') then begin result:=12115; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнпрстуфхцшщъыьэюя]бэ') then begin result:=12116; exit end;
if Regex.IsMatch(d, '[бпсфцшщъэ]вэ') then begin result:=12117; exit end;
if Regex.IsMatch(d, '[абвгдеёжзкмнпстфхцчшщъыьэюя]гэ') then begin result:=12118; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэю]дэ') then begin result:=12119; exit end;
if Regex.IsMatch(d, '[аёзйпуфщъэюя]еэ') then begin result:=12120; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопртуфхцчшъыьэюя]ёэ') then begin result:=12121; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]жэ') then begin result:=12122; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъыьэюя]зэ') then begin result:=12123; exit end;
if Regex.IsMatch(d, '[бфцъэ]иэ') then begin result:=12124; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йэ') then begin result:=12125; exit end;
if Regex.IsMatch(d, '[бгджзйптфцчшщъэ]кэ') then begin result:=12126; exit end;
if Regex.IsMatch(d, '[бвгджйклмнпрстфхцчшщъьэю]лэ') then begin result:=12127; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]мэ') then begin result:=12128; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъыьэюя]нэ') then begin result:=12129; exit end;
if Regex.IsMatch(d, '[беёжзийсуфчщъыьэюя]оэ') then begin result:=12130; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстфхцчшщъыьэюя]пэ') then begin result:=12131; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнпрстуфхцчшщъыьэюя]рэ') then begin result:=12132; exit end;
if Regex.IsMatch(d, '[бвгджзпруфцчшщъэю]сэ') then begin result:=12133; exit end;
if Regex.IsMatch(d, '[бвгджзлмнптфцчшщъыьэ]тэ') then begin result:=12134; exit end;
if Regex.IsMatch(d, '[аёзйлоуфхщъыэю]уэ') then begin result:=12135; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпстуфхцчшщъыьэю]хэ') then begin result:=12136; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]цэ') then begin result:=12137; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэю]чэ') then begin result:=12138; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыьэюя]шэ') then begin result:=12139; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]щэ') then begin result:=12140; exit end;
if Regex.IsMatch(d, '[агдеёжзийкоуфхчшщъыьэюя]ыэ') then begin result:=12141; exit end;
if Regex.IsMatch(d, '[абгеёжийкмопуфхцщъыьэюя]ьэ') then begin result:=12142; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмптфхцчшщъыэю]юэ') then begin result:=12143; exit end;
if Regex.IsMatch(d, '[гёжпфхцчшщъыэю]яэ') then begin result:=12144; exit end;
if Regex.IsMatch(d, '[аеёийоуфъыьэюя]аю') then begin result:=12145; exit end;
if Regex.IsMatch(d, '[абгдеёжзйклнопрстфхцчшщъыьэюя]бю') then begin result:=12146; exit end;
if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыэюя]вю') then begin result:=12147; exit end;
if Regex.IsMatch(d, '[абгдеёжзийклмнопрстуфхцчшщъыьэюя]гю') then begin result:=12148; exit end;
if Regex.IsMatch(d, '[бвгдеёзийклмопрстфхцчшщъыьэю]дю') then begin result:=12149; exit end;
if Regex.IsMatch(d, '[ёзцъыэ]ею') then begin result:=12150; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэю]зю') then begin result:=12151; exit end;
if Regex.IsMatch(d, '[ёжйопуфщъыьэюя]ию') then begin result:=12152; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъьэюя]йю') then begin result:=12153; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]кю') then begin result:=12154; exit end;
if Regex.IsMatch(d, '[жфцщъэ]лю') then begin result:=12155; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]мю') then begin result:=12156; exit end;
if Regex.IsMatch(d, '[гёзкпуфцчщъэю]ню') then begin result:=12157; exit end;
if Regex.IsMatch(d, '[аеёийоуфцчщъыьэюя]ою') then begin result:=12158; exit end;
if Regex.IsMatch(d, '[бгдеёжзйклмнопрсуфхцчшщъыьэюя]пю') then begin result:=12159; exit end;
if Regex.IsMatch(d, '[вгджзйнпрсхцчшщъыьэ]рю') then begin result:=12160; exit end;
if Regex.IsMatch(d, '[бгджзпсфчшщъэю]сю') then begin result:=12161; exit end;
if Regex.IsMatch(d, '[бджкптфцчшщъыя]тю') then begin result:=12162; exit end;
if Regex.IsMatch(d, '[аеёйуфъыьэюя]ую') then begin result:=12163; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэю]фю') then begin result:=12164; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъьэюя]хю') then begin result:=12165; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]шю') then begin result:=12166; exit end;
if Regex.IsMatch(d, '[абвгеёжзийклмнопрстуфхцчшщъыьэюя]ъю') then begin result:=12167; exit end;
if Regex.IsMatch(d, '[агеёийкоухцъыьэюя]ью') then begin result:=12168; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмпрстуфхцчшщъыэюя]юю') then begin result:=12169; exit end;
if Regex.IsMatch(d, '[бвгдеёжзйкмптуфхцчшщъыьэюя]яю') then begin result:=12170; exit end;
if Regex.IsMatch(d, '[ёфъэ]ая') then begin result:=12171; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэя]бя') then begin result:=12172; exit end;
if Regex.IsMatch(d, '[вгёжймнпфцчшщъыэ]вя') then begin result:=12173; exit end;
if Regex.IsMatch(d, '[бвгдежзийклмнпстфхцчшщъыьэюя]гя') then begin result:=12174; exit end;
if Regex.IsMatch(d, '[бвгдмнпсфцчшщъэ]дя') then begin result:=12175; exit end;
if Regex.IsMatch(d, '[ёзйуфхъэюя]ея') then begin result:=12176; exit end;
if Regex.IsMatch(d, '[абвгдёжзийклмнопртуфхцчшъыьэюя]ёя') then begin result:=12177; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]жя') then begin result:=12178; exit end;
if Regex.IsMatch(d, '[бгджзклмнпрфхцчшщъэю]зя') then begin result:=12179; exit end;
if Regex.IsMatch(d, '[ъэ]ия') then begin result:=12180; exit end;
if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]йя') then begin result:=12181; exit end;
if Regex.IsMatch(d, '[бгджзйклмнпрстуфхцчшщъыьэю]кя') then begin result:=12182; exit end;
if Regex.IsMatch(d, '[жзйлнцчщъьэ]ля') then begin result:=12183; exit end;
if Regex.IsMatch(d, '[бгджлнпфцчшщъэ]мя') then begin result:=12184; exit end;
if Regex.IsMatch(d, '[пфцчщъэ]ня') then begin result:=12185; exit end;
if Regex.IsMatch(d, '[аеёжзйсуфчщъыьэюя]оя') then begin result:=12186; exit end;
if Regex.IsMatch(d, '[бгпфхцчшщъыэ]пя') then begin result:=12187; exit end;
if Regex.IsMatch(d, '[жфшъэ]ря') then begin result:=12188; exit end;
if Regex.IsMatch(d, '[джзнпфцшщъэ]ся') then begin result:=12189; exit end;
if Regex.IsMatch(d, '[жзфцшщъэ]тя') then begin result:=12190; exit end;
if Regex.IsMatch(d, '[ёуфшщъыэю]уя') then begin result:=12191; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэя]фя') then begin result:=12192; exit end;
if Regex.IsMatch(d, '[бвгджзйклмнопстфхцчшщъьэю]хя') then begin result:=12193; exit end;
if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъыьэюя]ця') then begin result:=12194; exit end;
if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэю]чя') then begin result:=12195; exit end;
if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэюя]шя') then begin result:=12196; exit end;
if Regex.IsMatch(d, '[авгдеёжийклмнопрстуфхцчшщъыьэюя]ъя') then begin result:=12197; exit end;
if Regex.IsMatch(d, '[агеёжийклопуфхцчшщъыьэюя]ыя') then begin result:=12198; exit end;
if Regex.IsMatch(d, '[агеёийкоухцъыьэюя]ья') then begin result:=12199; exit end;
if Regex.IsMatch(d, '[бвгдёжзйкмпстфхцчшщъыэюя]юя') then begin result:=12200; exit end;
if Regex.IsMatch(d, '[вгеёжйпуфхцчшщъэю]яя') then begin result:=12201; exit end;  
end; //fnn2 
  //if Regex.IsMatch(s2,'\bяф[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]') then begin ufo:=1; continue end;

function bitbi(x: string):boolean;// биграммы смерти
begin
  result:=Regex.IsMatch(x, '\bа[веёжцчщъыь]\b|\bб[^аениоту]\b|\bв[^авдеиоу]\b|'+
 '\bг[^абеиоуэ]\b|\bд[^авгежикотуэю]\b|\bе[^джбзйлмнртуя]\b|\bж[^део]\b|\bз[^ау]'+
 '\b|\bи[^авдежзийклмнорсфшэя]\b|\bк[^абвеиоуцшэю]\b|\bл[^агеилосуэя]\b'+
 '\bм[^аеикопуыюя]\b');
end;   


function badword(x:string):integer;// одиночные п, начальные ъ
begin
  if Regex.IsMatch(x,'\b[гдеёзйлмнпртфхцчшщъыью]\b') then 
    begin 
    result:=668; 
    ufo:=668;
    exit;
    end;// однобуквенные недоразумения
  if Regex.IsMatch(x,'\b[ъыь]') then 
    begin 
    result:=667; 
    ufo:=667;
    exit; 
    end;// начало слов с нетех букв
end; 

  
begin// main
  var lowerh:=lowercase(h);// перевел исходную шифростроку в нижний регистр 
  
  for var lk:=l3k to ek do // перебор длинн ключа
    begin
  {рафинирование шифротекста. остасляю только русс буквы}
      //h:=lowerh; 
      o:=lowerh;
      
    
         
 
    {автоматизация подбора алфавита. от присутствия символов делется вывод.}
      a[0]:='абвгдеёжзийклмнопрстуфхцчшщъыьэюя';//_ //'';//
      a[1]:='абвгдежзийклмнопрстуфхцчшщъыьэюя';//'';//ё_'';//
      a[2]:='абвгдеёжзийклмнопрстуфхцчшщыьэюя';//ъ_'';//
      a[3]:='абвгдежзийклмнопрстуфхцчшщыьэюя';//'';//ёъ_
      
      a[4]:='абвгдеёжзийклмнопрстуфхцчшщъыьэюя_';// ////
      a[5]:='абвгдежзийклмнопрстуфхцчшщъыьэюя_';//ё //
      a[6]:='абвгдеёжзийклмнопрстуфхцчшщыьэюя_';//ъ ////    
      a[7]:='абвгдежзийклмнопрстуфхцчшщыьэюя_';//ёъ //    
      
      var withspaceh:='';   
      for var i:=1 to length(o) do
        if pos(o[i],a[4])>0 then withspaceh:=withspaceh+o[i];      
      var h2x:=withspaceh+withspaceh;
      
for aba:=0 to 7 do // перебор алфавитов
  begin  
  if a[aba]='' then goto esc;
  if (aba=0)and(pos('_',o)>0) then continue;
  if (aba=1)and((pos('ё',o)>0)or(pos('_',o)>0)) then continue;  
  if (aba=2)and((pos('ъ',o)>0)or(pos('_',o)>0)) then continue;  
  if (aba=3)and((pos('ё',o)>0)or(pos('ъ',o)>0)or(pos('_',o)>0)) then continue;  
  //if (aba=1)and(pos('ё',o)>0) then continue;
  if (aba=5)and((pos('ё',o)>0)) then continue;  
  if (aba=6)and((pos('ъ',o)>0)) then continue;  
  if (aba=7)and((pos('ё',o)>0)or(pos('ъ',o)>0)) then continue;  
  if (aba in [4..7])and(pos(' ',o)>0)then continue;
  writeln(aba,' пошел **************************(',aba,')   ',a[aba]);
  {
  s:='';  
  for var i:=1 to length(o) do
    if pos(o[i],a[aba])>0 then s:=s+o[i];    
  var withspaceh:=s;   
  }
  // в алфавите должны быть все бувы шифровки. иначе алфавит не совместим с шифровкой.
  for var i:=1 to length(withspaceh) do
    if pos(withspaceh[i],a[aba])=0 then continue;
  //
  if (aba in [4..7])and(length(o)<>length(h)) then 
    continue;
  
  
  strip[0]:=copy(lowerh,1,3);
  strip[1]:=copy(lowerh,1+lk,3);  
  strip[2]:=copy(lowerh,1+2*lk,3);  
  gap:='';for var i:=1 to lk-3 do gap:=gap+'_';//'*';//
  gap5:='';for var i:=1 to lk-3 do gap5:=gap5+'@';// чтобы
// стартовое значние ключа
  var cv:='ааа';//'МИФ';//'ЖАЖ';//'ФАЙ';//'ЁБА';//'ФАК';//'СИР';//'сир';//
  if cv='ааа' then limit:=0 else limit:=1; 
  n:=0;
  for var i:=pot(cv[1]) to length(a[aba]) do
  for var j:=pot(cv[2]) to length(a[aba]) do    
  for var k:=pot(cv[3]) to length(a[aba]) do  
     
  begin
    if limit>0 then
      if n>=limit then continue;    
    inc(n);
   //if limit>0 then if ufo>0 then writeln(key,gap,ufo:6,e5:15);   
     key:=
    a[aba][1+(length(a[aba])*2-i+1)mod length(a[aba])]+
    a[aba][1+(length(a[aba])*2-j+1)mod length(a[aba])]+
    a[aba][1+(length(a[aba])*2-k+1)mod length(a[aba])];

    if pos('_',key)>0 then continue;//нехуй в ключах подчеркивание
//********************************/
    s:=
    a[aba][1+(pos(strip[0][1],a[aba])-2+i)mod length(a[aba])]+
    a[aba][1+(pos(strip[0][2],a[aba])-2+j)mod length(a[aba])]+
    a[aba][1+(pos(strip[0][3],a[aba])-2+k)mod length(a[aba])]+
    gap+
    a[aba][1+(pos(strip[1][1],a[aba])-2+i)mod length(a[aba])]+
    a[aba][1+(pos(strip[1][2],a[aba])-2+j)mod length(a[aba])]+
    a[aba][1+(pos(strip[1][3],a[aba])-2+k)mod length(a[aba])]+    
    gap+
    a[aba][1+(pos(strip[2][1],a[aba])-2+i)mod length(a[aba])]+
    a[aba][1+(pos(strip[2][2],a[aba])-2+j)mod length(a[aba])]+
    a[aba][1+(pos(strip[2][3],a[aba])-2+k)mod length(a[aba])]; 
    
    //s:=lowercase(s);

   e5:=s;// деши
   //if limit>0 then writeln(uppercase(key),e5:25); // СИР          мра___ряс___зао   

   ufo:=fnn1(s);
   if ufo>0 then 
   begin
     //writeln(ufo);
     continue
   end;
   d:='';e5:='';
    //var h3s: string=lowerh+lowerh; // удвоеная исходная шифрострока 
    var h3s: string=withspaceh+withspaceh; // удвоеная исходная шифрострока 
    //for var w:=1 to 1+(length(h)div lk) do //
    for var w:=1 to 1+(length(withspaceh)div lk) do //    
    begin
      //w:=v;
      d:=d
      +a[aba][1+(pos(h3s[1+(w-1)*lk+0],a[aba])-2+i)mod length(a[aba])]
      +a[aba][1+(pos(h3s[1+(w-1)*lk+1],a[aba])-2+j)mod length(a[aba])]
      +a[aba][1+(pos(h3s[1+(w-1)*lk+2],a[aba])-2+k)mod length(a[aba])]
      +gap;  
      e5:=e5
      +a[aba][1+(pos(h3s[1+(w-1)*lk+0],a[aba])-2+i)mod length(a[aba])]
      +a[aba][1+(pos(h3s[1+(w-1)*lk+1],a[aba])-2+j)mod length(a[aba])]
      +a[aba][1+(pos(h3s[1+(w-1)*lk+2],a[aba])-2+k)mod length(a[aba])]
      +gap5;      
    end;  
    d:=copy(d,1,length(h));//
    e5:=copy(e5,1,length(h)); 

    
 ufo:=fnn2(d);//
 if ufo>0 then 
   begin
     //writeln( ufo);
     continue
   end;
 
{
 if length(d)<>length(h) then 
   begin 
     writeln('fucking world hello');
     writeln(length(d),length(h):20);
     writeln(d,h:20);
     halt(0) 
   end;
   
    key:=
    a[aba][1+(length(a[aba])*2-i+1)mod length(a[aba])]+
    a[aba][1+(length(a[aba])*2-j+1)mod length(a[aba])]+
    a[aba][1+(length(a[aba])*2-k+1)mod length(a[aba])];
    }
    ak47:=kolt(e5);
    ufo:=badword(ak47);// одиночные п, начальные ъ   
    if ufo>0 then continue;  
 //**********************************************************************/

 if lk>3 then 
   for var fourth:=1 to length(a[aba]) do  
     begin 
     d:='';e5:='';
    for var w:=1 to 1+(length(h)div lk) do 
    begin
      d:=d
      +a[aba][1+(pos((h3s)[1+(w-1)*lk+0],a[aba])-2+i)mod length(a[aba])]
      +a[aba][1+(pos((h3s)[1+(w-1)*lk+1],a[aba])-2+j)mod length(a[aba])]
      +a[aba][1+(pos((h3s)[1+(w-1)*lk+2],a[aba])-2+k)mod length(a[aba])]
      +a[aba][1+(pos((h3s)[1+(w-1)*lk+3],a[aba])-2+fourth)mod length(a[aba])]      
      +copy(gap,1,length(gap)-1);  
      e5:=e5
      +a[aba][1+(pos((h3s)[1+(w-1)*lk+0],a[aba])-2+i)mod length(a[aba])]
      +a[aba][1+(pos((h3s)[1+(w-1)*lk+1],a[aba])-2+j)mod length(a[aba])]
      +a[aba][1+(pos((h3s)[1+(w-1)*lk+2],a[aba])-2+k)mod length(a[aba])]
      +a[aba][1+(pos((h3s)[1+(w-1)*lk+3],a[aba])-2+fourth)mod length(a[aba])]      
      +copy(gap5,1,length(gap5)-1);         
    end; 
    d:=copy(d,1,length(h));// деши
    //if(d[1]<>'н')then continue;
    //if(d[4]<>'в')then continue;    
    e5:=copy(e5,1,length(h)); 
      ufo:=fnn1(d);
      if ufo>0 then continue;
      ufo:=fnn2(d);
      if ufo>0 then continue; 
      ufo:=badword(d);// одиночные п, начальные ъ
      if ufo>0 then continue;
  //**********************************************************************/     
      if lk>4 then// ключ длиннее четырех
      begin
        for var fifth:=1 to length(a[aba]) do //подбор пятой буквы
          begin
            d:='';e5:='';        
            //for var w:=1 to 1+(length(h)div lk) do // расшифровка
            for var w:=1 to 1+(length(withspaceh)div lk) do // расшифровка            
              begin
                //w:=v;
                d:=d
                  +a[aba][1+(pos((h2x)[1+(w-1)*lk+0],a[aba])-2+i)mod length(a[aba])]
                  +a[aba][1+(pos((h2x)[1+(w-1)*lk+1],a[aba])-2+j)mod length(a[aba])]
                  +a[aba][1+(pos((h2x)[1+(w-1)*lk+2],a[aba])-2+k)mod length(a[aba])]
                  +a[aba][1+(pos((h2x)[1+(w-1)*lk+3],a[aba])-2+fourth)mod length(a[aba])]   
                  +a[aba][1+(pos((h2x)[1+(w-1)*lk+4],a[aba])-2+fifth)mod length(a[aba])]        
                  +copy(gap,1,length(gap)-2);  
                e5:=e5
                  +a[aba][1+(pos((h2x)[1+(w-1)*lk+0],a[aba])-2+i)mod length(a[aba])]
                  +a[aba][1+(pos((h2x)[1+(w-1)*lk+1],a[aba])-2+j)mod length(a[aba])]
                  +a[aba][1+(pos((h2x)[1+(w-1)*lk+2],a[aba])-2+k)mod length(a[aba])]
                  +a[aba][1+(pos((h2x)[1+(w-1)*lk+3],a[aba])-2+fourth)mod length(a[aba])]   
                  +a[aba][1+(pos((h2x)[1+(w-1)*lk+4],a[aba])-2+fifth)mod length(a[aba])]       
                  +copy(gap5,1,length(gap5)-2);        
              end;         
                

          d:=copy(d,1,length(h)); // обрезка под длину строки
          //if(d[5]<>'и')then continue; 
          e5:=copy((e5),1,length(h)); // расшифровка
          ufo:=fnn1(d);
          if ufo>0 then continue;
          ufo:=fnn2(d);
          if ufo>0 then continue; 
          
           key5:=(key+gap);// длинный ключ СИР___
           key5[4]:=a[aba][1+(length(a[aba])-fourth+1) mod length(a[aba])];// подстановка букв в ключ
           key5[5]:=a[aba][1+(length(a[aba])-fifth+1) mod length(a[aba])];// подстановка букв в ключ
           ak47:=kolt(e5); // конверт в 
ufo:=badword(ak47);// одиночные п, начальные ъ
if ufo>0 then continue;
if bitbi(ak47) then begin ufo:=669; continue end;// биграммы смерти
if not dict(ak47)then begin ufo:=666; continue end;//проверка по словарю
           writeln(uppercase(key5),'    ',ak47); // бинго 
         end;//fifth
      end
      else
      begin
     key4:=(key+gap);
     key4[4]:=a[aba][1+(length(a[aba])-fourth+1) mod length(a[aba])];
     ak47:=kolt(e5);
ufo:=badword(ak47);// одиночные п, начальные ъ   
if ufo>0 then continue;
if bitbi(ak47) then begin ufo:=669; continue end;// биграммы смерти
if not dict(ak47)then begin ufo:=666; continue end;//проверка по словарю
     writeln(key4,'    ',ak47); 
     end;
    end//k2
    else// lk>3
    begin
     ak47:=kolt(e5);
ufo:=badword(ak47);// одиночные п, начальные ъ   
if ufo>0 then continue;     
if bitbi(ak47) then begin ufo:=669; continue end;
if not dict(ak47)then begin ufo:=666; continue end;
     writeln(key,gap,'    ',ak47);      // найденно       
    end;
     
   ufo:=0;  
  end;
esc:  
 end;//aba  
   end;//lk перебор длин ключя
   writeln('the end');
end.
{
СМО____    взб____езж____опн____уюр____чев____изу____дрв____гюб____уле____дщк____або____афж____жие____эщг____
ЙАГ____    кум____нус____цыш____ыкы____ясн____рую____мьн____лкм____ычр____мех____инщ____иас____офр____еео____
ЙЛН____    кив____низ____цро____ыяс____яжг____риф____мсг____ляв____ымж____мъл____ивп____ихз____ойж____еъд____
ДЕЦ____    пощ____тою____ыце____аеи____дмъ____хол____счъ____рещ____атэ____сав____ниж____ныю____упэ____каы____


}