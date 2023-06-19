label esc;
var h: string='ЦХБПВ ЭДТЛЫТ Ш ЗЩЯПЭ ЮЩЯОЯ ЛРУЭ СОЬУМХМЮЬТЫ';//
//var h: string='ЦХБПВ ЭДТЛЫТ Ш ЗЩЯПЭ ЮЩЯОЯ ЛРУЭ СОЬУМХМЮЬТЫ';//
var len_start: integer=5;// начальная длина ключа 3
var len_end: integer=5;// кончная длина ключа

o: string;
a: array[0..7] of string;//алфавиты
n:integer=0;// отработано вариантов
s,d,e: string;// дешифрованные строки
key: string;
strip: array[0..2]of string;
gap: string;///зазор
ufo: integer=-1;// код ошибки
aba: integer;// цикл алфавитов
gap5: string;//
limit: integer;// сколько вариантов проверить
key4,key5: string;//
ak47: string;
lowerh: string;
doubleh: string;// удвоенная h


//******************************/

function kolt(x: string): string;// разбиение на слова
var k: integer; r: string;
begin
  k:=1;
  r:=o;
  if aba in[4..7] then
  begin // слова разделялись подчеркиванием
    for var i:=1 to length(o) do
      if pos(o[i],a[aba])>0 then 
        begin 
          if k>length(x) then
            writeln('overlord ',length(x),' ',length(o),' ',length(h));
          r[i]:=x[k]; 
          inc(k);
        end;
  
   for var i:=1 to length(r) do if r[i]='_' then r[i]:=' ';
   for var i:=1 to length(r) do if r[i]='@' then r[i]:='_';     
  end
  else
  begin // пробел был разделителем слов
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
     writeln('Error wording...  '); 
  end;
result:=r;
end;


function pot(x: char): integer;//конверсия прямого ключа обратный
begin
  if pos(x,a[aba])=0 then 
    begin 
      writeln('outof alphavit ',x); 
      result:= 1;
      exit 
    end;
  result:=1+(length(a[aba])*2-pos(x,a[aba])+1)mod length(a[aba]);  
end;  


function dict(x: string): boolean;// наличие слов из словаря
begin
  ufo:=0;
  if not Regex.IsMatch(x,
  '\bавтомобил|'+
  '\bавтор\b|'+
  '\bамерикан|'+
  '\bанализ\b|'+
  '\bармия\b|'+
  '\bбаза\b|'+
  '\bбанк\b|'+
  '\bбежать\b|'+
  '\bбез\b|'+
  '\bбезопасность\b|'+
  '\bбелый\b|'+
  '\bберег\b|'+
  '\bбизнес\b|'+
  '\bблизкий\b|'+
  '\bбог[еуа]\b|'+
  '\bбоевой\b|'+
  '\bболее\b|'+
  '\bболее\b|'+
  '\bбольше\b|'+
  '\bбольше\b|'+
  '\bбольший\b|'+
  '\bбольшинство\b|'+
  '\bбольшой\b|'+
  '\bборьба\b|'+
  '\bбояться\b|'+
  '\bбрат\b|'+
  '\bбрать\b|'+
  '\bбросить\b|'+
  '\bбудто\b|'+
  '\bбудто\b|'+
  '\bбудущее\b|'+
  '\bбумага\b|'+
  '\bбы\b|'+
  '\bбывать\b|'+
  '\bбывший\b|'+
  '\bбыстро\b|'+
  '\bбыстрый\b'+
  '\bбыть\b|'+
  '\bбюджет\b|'+
  '\bважный\b|'+
  '\bвариант\b|'+
  '\bваш\b|'+
  '\bвдруг\b|'+
  '\bведь\b|'+
  '\bвек\b|'+
  '\bвеликий\b|'+
  '\bвера\b|'+
  '\bверить\b|'+
  '\bвернуться\b|'+
  '\bвести\b|'+
  '\bвес|'+
  '\bвесьма\b|'+
  '\bветер\b|'+
  '\bвечер|'+
  '\bвещь\b|'+
  '\bвзгляд|'+
  '\bвзять\b|'+
  '\bвид|'+
  '\bвиде|'+
  '\bвидимо\b|'+
  '\bвидно\b|'+
  '\bвласть\b|'+
  '\bвместе\b|'+
  '\bвместо\b|'+
  '\bвнешний\b|'+
  '\bвнимани|'+
  '\bвновь\b|'+
  '\bвнутренн|'+
  '\bво\b|'+
  '\bвовсе\b|'+
  '\bвод[аые]\b|'+
  '\bвоенный\b|'+
  '\bвозвращаться\b|'+
  '\bвоздух\b|'+
  '\bвозможно\b|'+
  '\bвозможност|'+
  '\bвозможный\b|'+
  '\bвозникать\b|'+
  '\bвозникнуть\b|'+
  '\bвозраст\b|'+
  '\bвойн[аеыу]\b|'+
  '\bвойти\b|'+
  '\bвокруг\b|'+
  '\bволос\b|'+
  '\bволя\b|'+
  '\bвообще\b|'+
  '\bвопрос|'+
  '\bвот\b|'+
  '\bвпервые\b|'+
  '\bвперед\b|'+
  '\bвполне\b|'+
  '\bвпрочем\b|'+
  '\bврач\b|'+
  '\bвремя\b|'+
  '\bвсе-таки\b|'+
  '\bвсе\b|'+
  '\bвсе\b|'+
  '\bвсегда\b|'+
  '\bвсего\b|'+
  '\bвспоминать\b|'+
  '\bвспомнить\b|'+
  '\bвстать\b|'+
  '\bвстреча\b|'+
  '\bвсяк|'+
  '\bвторо|'+
  '\bвходить\b|'+
  '\bвчера\b|'+
  '\bвы\b|'+
  '\bвыбор\b|'+
  '\bвыглядеть\b|'+
  '\bвызвать\b|'+
  '\bвызывать\b|'+
  '\bвыйти\b|'+
  '\bвыпить\b|'+
  '\bвысокий\b|'+
  '\bвыступать\b|'+
  '\bвысший\b|'+
  '\bвыход\b|'+
  '\bвыходить\b|'+
  '\bгазета\b|'+
  '\bгде-то\b|'+
  '\bгде\b|'+
  '\bгенерал\b|'+
  '\bгерой\b|'+
  '\bглава\b|'+
  '\bглавный\b|'+
  '\bглаз|'+
  '\bглубокий\b|'+
  '\bглядеть\b|'+
  '\bговорить\b|'+
  '\bгод\b|'+
  '\bголов|'+
  '\bголос|'+
  '\bгород|'+
  '\bгородской\b|'+
  '\bгосподин\b|'+
  '\bгость\b|'+
  '\bгосударств|'+
  '\bгосударственн|'+
  '\bготовый\b|'+
  '\bгражданин\b|'+
  '\bгражданский\b|'+
  '\bграница\b|'+
  '\bгрудь\b|'+
  '\bгруппа\b|'+
  '\bгуба\b|'+
  '\bда\b|'+
  '\bда\b|'+
  '\bдавать\b|'+
  '\bдавно\b|'+
  '\bдаже\b|'+
  '\bдаже\b|'+
  '\bдалее\b|'+
  '\bдалекий\b|'+
  '\bдалеко\b|'+
  '\bданные\b|'+
  '\bданный\b|'+
  '\bдать\b|'+
  '\bдва\b|'+
  '\bдвадцать\b|'+
  '\bдверь\b|'+
  '\bдвижение|'+
  '\bдвор\b|'+
  '\bдевочка\b|'+
  '\bдевушка\b|'+
  '\bдействие\b|'+
  '\bдействительн|'+
  '\bдействовать\b|'+
  '\bдела|'+
  '\bдело\b|'+
  '\bдень\b|'+
  '\bденьг|'+
  '\bдеревня\b|'+
  '\bдерево\b|'+
  '\bдержать\b|'+
  '\bдесять\b|'+
  '\bдетский\b|'+
  '\bдеятельность\b|'+
  '\bдиректор\b|'+
  '\bдлинный\b|'+
  '\bдля\b|'+
  '\bдо\b|'+
  '\bдобрый\b|'+
  '\bдовольно\b|'+
  '\bдоговор\b|'+
  '\bдоктор\b|'+
  '\bдокумент\b|'+
  '\bдолгий\b|'+
  '\bдолго\b|'+
  '\bдолжен\b|'+
  '\bдоллар\b|'+
  '\bдом|'+
  '\bдома\b|'+
  '\bдомой\b|'+
  '\bдорога\b|'+
  '\bдорогой\b|'+
  '\bдостаточно\b|'+
  '\bдочь\b|'+
  '\bдруг|'+
  '\bдругой\b|'+
  '\bдума|'+
  '\bдух\b|'+
  '\bдуша\b|'+
  '\bего\b|'+
  '\bедва\b|'+
  '\bединственный\b|'+
  '\bединый\b|'+
  '\bесли\b|'+
  '\bехать\b|'+
  '\bещё\b|'+
  '\bеё\b|'+
  '\bждать\b|'+
  '\bже\b|'+
  '\bжелание\b|'+
  '\bжелать\b|'+
  '\bжена\b|'+
  '\bженщин|'+
  '\bживой\b|'+
  '\bжизнь\b|'+
  '\bжурнал\b|'+
  '\bза\b|'+
  '\bзабыть\b|'+
  '\bзавод\b|'+
  '\bзавтра\b|'+
  '\bзадача\b|'+
  '\bзакон|'+
  '\bзал\b|'+
  '\bзаметить\b|'+
  '\bзаниматься\b|'+
  '\bзапа|'+
  '\bзатем\b|'+
  '\bзато\b|'+
  '\bзачем\b|'+
  '\bзащита\b|'+
  '\bзаявить\b|'+
  '\bзвать\b|'+
  '\bзвезда\b|'+
  '\bздание\b|'+
  '\bздесь\b|'+
  '\bзеленый\b|'+
  '\bземл|'+
  '\bзнакомый\b|'+
  '\bзнаменитый\b|'+
  '\bзнание\b|'+
  '\bзнать\b|'+
  '\bзначение\b|'+
  '\bзначит\b|'+
  '\bзначить\b|'+
  '\bзолотой\b|'+
  '\bзрение\b|'+
  '\bибо\b|'+
  '\bигра\b|'+
  '\bиграть\b|'+
  '\bидея\b|'+
  '\bидти\b|'+
  '\bиз-за\b|'+
  '\bиз\b|'+
  '\bизвестн|'+
  '\bизменение\b|'+
  '\bили\b|'+
  '\bименно\b|'+
  '\bиметь\b|'+
  '\bиметься\b|'+
  '\bимя\b|'+
  '\bиначе\b|'+
  '\bиногда\b|'+
  '\bиной\b|'+
  '\bинститут\b|'+
  '\bинтерес|'+
  '\bинтересный\b|'+
  '\bинформаци|'+
  '\bискать\b|'+
  '\bискусство\b|'+
  '\bиспользование\b|'+
  '\bиспользовать\b|'+
  '\bисследование\b|'+
  '\bисторический\b|'+
  '\bистория\b|'+
  '\bисточник\b|'+
  '\bитог\b|'+
  '\bих\b|'+
  '\bкабинет\b|'+
  '\bкажд|'+
  '\bкажется\b|'+
  '\bказаться\b|'+
  '\bкак-то\b|'+
  '\bкак\b|'+
  '\bкак\b|'+
  '\bкакой-нибудь\b|'+
  '\bкакой-то\b|'+
  '\bкакой\b|'+
  '\bкамень\b|'+
  '\bкарман\b|'+
  '\bкартина\b|'+
  '\bкасаться\b|'+
  '\bкачество\b|'+
  '\bквартир|'+
  '\bкласс\b|'+
  '\bкнига\b|'+
  '\bко\b|'+
  '\bкогда\b|'+
  '\bкогда\b|'+
  '\bколичество\b|'+
  '\bкоманда\b|'+
  '\bкомната\b|'+
  '\bкомпани\b|'+
  '\bкомплекс\b|'+
  '\bконец\b|'+
  '\bконечно\b|'+
  '\bконтроль\b|'+
  '\bкороткий\b|'+
  '\bкоторый\b|'+
  '\bкрай\b|'+
  '\bкрасивый\b|'+
  '\bкрасный\b|'+
  '\bкричать\b|'+
  '\bкровь\b|'+
  '\bкроме\b|'+
  '\bкруг\b|'+
  '\bкрупный\b|'+
  '\bкстати\b|'+
  '\bкто-то\b|'+
  '\bкто\b|'+
  '\bкуда\b|'+
  '\bкультура\b|'+
  '\bкупить\b|'+
  '\bкурс\b|'+
  '\bкухня\b|'+
  '\bлегкий\b|'+
  '\bлегко\b|'+
  '\bлежать\b|'+
  '\bлес\b|'+
  '\bлето\b|'+
  '\bли\b|'+
  '\bлибо\b|'+
  '\bлиния\b|'+
  '\bлист\b|'+
  '\bлитература\b|'+
  '\bлиц|'+
  '\bличный\b|'+
  '\bлишь\b|'+
  '\bлучший\b|'+
  '\bлюбимый\b|'+
  '\bлюбить\b|'+
  '\bлюбовь|'+
  '\bлюбой\b|'+
  '\bмагазин\b|'+
  '\bмаленьк|'+
  '\bмало\b|'+
  '\bмало\b|'+
  '\bмалый\b|'+
  '\bмальчик\b|'+
  '\bмама\b|'+
  '\bмасса\b|'+
  '\bматериал|'+
  '\bмать\b|'+
  '\bмашин|'+
  '\bмежду\b|'+
  '\bмеждународный\b|'+
  '\bменее\b|'+
  '\bмера\b|'+
  '\bместный\b|'+
  '\bместо\b|'+
  '\bмесяц\b|'+
  '\bметод\b|'+
  '\bмиллион\b|'+
  '\bминистр\b|'+
  '\bминут|'+
  '\bмир|'+
  '\bмировой\b|'+
  '\bмнение\b|'+
  '\bмногий\b|'+
  '\bмного|'+
  '\bмногое\b|'+
  '\bмодель\b|'+
  '\bможет\b|'+
  '\bможно\b|'+
  '\bмой\b|'+
  '\bмолодо|'+
  '\bмоло[кч]|'+
  '\bмолчать\b|'+
  '\bмомент|'+
  '\bморе\b|'+
  '\bмосковск|'+
  '\bмочь\b|'+
  '\bмуж\b|'+
  '\bмужик\b|'+
  '\bмужчина\b|'+
  '\bмузыка\b|'+
  '\bмы\b|'+
  '\bмысль\b|'+
  '\bна\b|'+
  '\bнаверное\b|'+
  '\bнад\b|'+
  '\bнадежда\b|'+
  '\bнадеяться\b|'+
  '\bнадо\b|'+
  '\bназад\b|'+
  '\bназвание\b|'+
  '\bназвать\b|'+
  '\bназывать\b|'+
  '\bназываться\b|'+
  '\bнаиболее\b|'+
  '\bнайти\b|'+
  '\bнаконец\b|'+
  '\bнаписать\b|'+
  '\bнаправление\b|'+
  '\bнапример\b|'+
  '\bнарод|'+
  '\bнародный\b|'+
  '\bнаселение\b|'+
  '\bнастоящ|'+
  '\bнаука\b|'+
  '\bнаучный\b|'+
  '\bнаходиться\b|'+
  '\bнациональный\b|'+
  '\bначало|'+
  '\bначальник\b|'+
  '\bначать|'+
  '\bначаться\b|'+
  '\bначинать\b|'+
  '\bнаш\b|'+
  '\bне\b|'+
  '\bнебо\b|'+
  '\bнебольшой\b|'+
  '\bнедавно\b|'+
  '\bнеделя\b|'+
  '\bнекий\b|'+
  '\bнекоторый\b|'+
  '\bнельзя\b|'+
  '\bнемец\b|'+
  '\bнемецкий\b|'+
  '\bнемного\b|'+
  '\bнеобходимо\b|'+
  '\bнеобходимость\b|'+
  '\bнеобходимый\b|'+
  '\bнескольк|'+
  '\bнесмотря\b|'+
  '\bнести\b|'+
  '\bнет\b|'+
  '\bни\b|'+
  '\bнизкий\b|'+
  '\bникак\b|'+
  '\bникакой\b|'+
  '\bникогда\b|'+
  '\bникто\b|'+
  '\bничто\b|'+
  '\bно\b|'+
  '\bновый\b|'+
  '\bног[аеиу]\b|'+
  '\bномер\b|'+
  '\bнормальный\b|'+
  '\bнос\b|'+
  '\bночь\b|'+
  '\bнрав|'+
  '\bну\b|'+
  '\bнужно\b|'+
  '\bнужный\b|'+
  '\bнынешний\b|'+
  '\bоб\b|'+
  '\bоба\b|'+
  '\bобласт|'+
  '\bобнаружить\b|'+
  '\bобраз|'+
  '\bобразование\b|'+
  '\bобстоятельство\b|'+
  '\bобществ|'+
  '\bобщественный\b|'+
  '\bобъект\b|'+
  '\bобъем\b|'+
  '\bобъяснить\b|'+
  '\bобычно\b|'+
  '\bобычный\b|'+
  '\bобязательно\b|'+
  '\bогонь\b|'+
  '\bогромный\b|'+
  '\bодин\b|'+
  '\bодин\b|'+
  '\bоднажды\b|'+
  '\bоднако\b|'+
  '\bодин|'+
  '\bодно|'+
  '\bодновременно\b|'+
  '\bожидать\b|'+
  '\bоказаться\b|'+
  '\bоказываться\b|'+
  '\bокно\b|'+
  '\bоколо\b|'+
  '\bон\b|'+
  '\bон[аио]\b|'+
  '\bопера|'+
  '\bопределение\b|'+
  '\bопределенный\b|'+
  '\bопределить\b|'+
  '\bопыт\b|'+
  '\bопять\b|'+
  '\bорган|'+
  '\bорганизаци|'+
  '\bоружие\b|'+
  '\bоснова\b|'+
  '\bоснование\b|'+
  '\bосновной\b|'+
  '\bособенно\b|'+
  '\bособый\b|'+
  '\bоставаться\b|'+
  '\bоставить\b|'+
  '\bостановиться\b|'+
  '\bостаться\b|'+
  '\bот\b|'+
  '\bответ|'+
  '\bответить\b|'+
  '\bотвечать\b|'+
  '\bотдать\b|'+
  '\bотдельный\b|'+
  '\bотец\b|'+
  '\bоткрытый\b|'+
  '\bоткрыть\b|'+
  '\bоткуда\b|'+
  '\bотметить\b|'+
  '\bотноситься\b|'+
  '\bотношени|'+
  '\bотсутствие\b|'+
  '\bоценка\b|'+
  '\bочень\b|'+
  '\bочередной\b|'+
  '\bочередь\b|'+
  '\bпалец\b|'+
  '\bпамять\b|'+
  '\bпапа\b|'+
  '\bпара\b|'+
  '\bпарень\b|'+
  '\bпартия\b|'+
  '\bпервый\b|'+
  '\bперед|'+
  '\bпередать\b|'+
  '\bпериод\b|'+
  '\bпесня\b|'+
  '\bпеть\b|'+
  '\bписатель\b|'+
  '\bписать\b|'+
  '\bписьмо\b|'+
  '\bпить\b|'+
  '\bплан\b|'+
  '\bплечо\b|'+
  '\bплохо\b|'+
  '\bплохой\b|'+
  '\bплощадь\b|'+
  '\bпо\b|'+
  '\bпобеда\b|'+
  '\bповод\b|'+
  '\bпод\b|'+
  '\bподготовка\b|'+
  '\bподнять\b|'+
  '\bподняться\b|'+
  '\bподобный\b|'+
  '\bподойти\b|'+
  '\bподумать\b|'+
  '\bпоехать\b|'+
  '\bпозволить\b|'+
  '\bпозволять\b|'+
  '\bпозвонить\b|'+
  '\bпоздний\b|'+
  '\bпозиция\b|'+
  '\bпойти\b|'+
  '\bпока\b|'+
  '\bпока\b|'+
  '\bпоказать\b|'+
  '\bпоказаться\b|'+
  '\bпоказывать\b|'+
  '\bпол\b|'+
  '\bполе\b|'+
  '\bполитика\b|'+
  '\bполитическ|'+
  '\bполностью\b|'+
  '\bполный\b|'+
  '\bполовина\b|'+
  '\bположени|'+
  '\bположить\b|'+
  '\bполучать\b|'+
  '\bполучаться\b|'+
  '\bполучи|'+
  '\bполучиться\b|'+
  '\bпользоваться\b|'+
  '\bпомнить\b|'+
  '\bпомогать\b|'+
  '\bпомочь\b|'+
  '\bпомощь\b|'+
  '\bпонима|'+
  '\bпоня|'+
  '\bпонятие\b|'+
  '\bпопасть\b|'+
  '\bпопросить\b|'+
  '\bпора\b|'+
  '\bпорядок\b|'+
  '\bпоскольку\b|'+
  '\bпосле\b|'+
  '\bпоследн|'+
  '\bпосмотреть\b|'+
  '\bпоставить\b|'+
  '\bпостоянно\b|'+
  '\bпотерять\b|'+
  '\bпотом\b|'+
  '\bпотому\b|'+
  '\bпохожий\b|'+
  '\bпочему-то\b|'+
  '\bпочему\b|'+
  '\bпочти\b|'+
  '\bпочувствовать\b|'+
  '\bпоэт\b|'+
  '\bпоэтому\b|'+
  '\bпоявиться\b|'+
  '\bправда\b|'+
  '\bправда\b|'+
  '\bправил|'+
  '\bправительств|'+
  '\bправо\b|'+
  '\bправый\b|'+
  '\bпрактика\b|'+
  '\bпрактически\b|'+
  '\bпредлагать\b|'+
  '\bпредложение\b|'+
  '\bпредложить\b|'+
  '\bпредмет\b|'+
  '\bпредприяти|'+
  '\bпредседатель\b|'+
  '\bпредставитель\b|'+
  '\bпредставить\b|'+
  '\bпредставление\b|'+
  '\bпредставлять\b|'+
  '\bпрежде\b|'+
  '\bпрезидент|'+
  '\bпрекрасный\b|'+
  '\bпри\b|'+
  '\bпривести\b|'+
  '\bприехать\b|'+
  '\bприйти\b|'+
  '\bприйтись\b|'+
  '\bпример\b|'+
  '\bпринести\b|'+
  '\bпринимать\b|'+
  '\bпринцип\b|'+
  '\bпринять\b|'+
  '\bприрода\b|'+
  '\bприходить\b|'+
  '\bприходиться\b|'+
  '\bпричем\b|'+
  '\bпричина\b|'+
  '\bпро\b|'+
  '\bпроблем|'+
  '\bпроведение\b|'+
  '\bпровести\b|'+
  '\bпроводить\b|'+
  '\bпрограмм|'+
  '\bпродолжать\b|'+
  '\bпродукт\b|'+
  '\bпродукция\b|'+
  '\bпроект\b|'+
  '\bпроизводств|'+
  '\bпроизойти\b|'+
  '\bпроисходить\b|'+
  '\bпройти\b|'+
  '\bпросить\b|'+
  '\bпросто\b|'+
  '\bпростой\b|'+
  '\bпространство\b|'+
  '\bпротив\b|'+
  '\bпроходить\b|'+
  '\bпроцент\b|'+
  '\bпроцесс|'+
  '\bпрошлый\b|'+
  '\bпрямо\b|'+
  '\bпрямой\b|'+
  '\bпункт\b|'+
  '\bпустой\b|'+
  '\bпусть\b|'+
  '\bпуть\b|'+
  '\bпытаться\b|'+
  '\bпять\b|'+
  '\bработа\b|'+
  '\bработа|'+
  '\bрабочий\b|'+
  '\bравный\b|'+
  '\bрадость\b|'+
  '\bраз\b|'+
  '\bразве\b|'+
  '\bразвити|'+
  '\bразговор|'+
  '\bразличный\b|'+
  '\bразмер\b|'+
  '\bразный\b|'+
  '\bрайон\b|'+
  '\bранний\b|'+
  '\bрано\b|'+
  '\bрассказ\b|'+
  '\bрассказать\b|'+
  '\bрассказывать\b|'+
  '\bрасти\b|'+
  '\bреальный\b|'+
  '\bребенк|'+
  '\bребенок\b|'+
  '\bребята\b|'+
  '\bрегион\b|'+
  '\bрезультат|'+
  '\bрека\b|'+
  '\bреспублика\b|'+
  '\bреформа\b|'+
  '\bречь\b|'+
  '\bрешение\b|'+
  '\bрешить\b|'+
  '\bрисунок\b|'+
  '\bрод\b|'+
  '\bродитель\b|'+
  '\bродной\b|'+
  '\bроль\b|'+
  '\bроман\b|'+
  '\bроссийск|'+
  '\bрост\b|'+
  '\bрот\b|'+
  '\bрубль\b|'+
  '\bрука\b|'+
  '\bруководитель\b|'+
  '\bруководство\b|'+
  '\bрусск|'+
  '\bрынок\b|'+
  '\bряд\b|'+
  '\bрядом\b|'+
  '\bсад\b|'+
  '\bсам\b|'+
  '\bсамолет\b|'+
  '\bсамый\b|'+
  '\bсвет|'+
  '\bсвобода\b|'+
  '\bсвободный\b|'+
  '\bсвой\b|'+
  '\bсвязать\b|'+
  '\bсвязь\b|'+
  '\bсдела|'+
  '\bсебя\b|'+
  '\bсегодня\b|'+
  '\bсей\b|'+
  '\bсейчас\b|'+
  '\bсемья\b|'+
  '\bсердце|'+
  '\bсерьезный\b|'+
  '\bсестра\b|'+
  '\bсесть\b|'+
  '\bсиде|'+
  '\bсил|'+
  '\bсильно\b|'+
  '\bсильный\b|'+
  '\bсистем|'+
  '\bситуация\b|'+
  '\bсказать\b|'+
  '\bсколько\b|'+
  '\bскоро\b|'+
  '\bскорый\b|'+
  '\bслава\b|'+
  '\bслед|'+
  '\bслез|'+
  '\bследующий\b|'+
  '\bслишком\b|'+
  '\bсловно\b|'+
  '\bслово\b|'+
  '\bсложный\b|'+
  '\bслуж[би]|'+
  '\bслуча|'+
  '\bслучиться\b|'+
  '\bслушать\b|'+
  '\bслышать\b|'+
  '\bсмерть\b|'+
  '\bсмотр|'+
  '\bсмочь\b|'+
  '\bсмысл|'+
  '\bсначала\b|'+
  '\bснег\b|'+
  '\bснова\b|'+
  '\bснять\b|'+
  '\bсо\b|'+
  '\bсобака\b|'+
  '\bсобираться\b|'+
  '\bсобственн|'+
  '\bсобытие\b|'+
  '\bсовершенн|'+
  '\bсовет|'+
  '\bсоветск|'+
  '\bсовременн|'+
  '\bсовсем\b|'+
  '\bсогласи|'+
  '\bсодержан|'+
  '\bсоздани|'+
  '\bсоздат|'+
  '\bсолдат|'+
  '\bсолнц|'+
  '\bсон\b|'+
  '\bсообщит|'+
  '\bсоответств|'+
  '\bсостав|'+
  '\bсостояни|'+
  '\bсостоят|'+
  '\bсотрудни|'+
  '\bсоциальн|'+
  '\bсоюз|'+
  '\bспать\b|'+
  '\bспектакл|'+
  '\bспециалист|'+
  '\bспециал|'+
  '\bспин|'+
  '\bспособ|'+
  '\bспрашива|'+
  '\bспроси|'+
  '\bсразу\b|'+
  '\bсред|'+
  '\bсреди\b|'+
  '\bсредн|'+
  '\bсредств|'+
  '\bсрок\b|'+
  '\bстави|'+
  '\bстановить?ся\b|'+
  '\bстараться\b|'+
  '\bстарик\b|'+
  '\bстарший\b|'+
  '\bстарый\b|'+
  '\bстать\b|'+
  '\bстать|'+
  '\bстена\b|'+
  '\bстепень\b|'+
  '\bстихи\b|'+
  '\bсто\b|'+
  '\bстоить?\b|'+
  '\bстол|'+
  '\bстоль\b|'+
  '\bсторон|'+
  '\bстоять\b|'+
  '\bстран|'+
  '\bстранн|'+
  '\bстрах\b|'+
  '\bстрашный\b|'+
  '\bстроитель|'+
  '\bструктур|'+
  '\bсуд\b|'+
  '\bсудн\b|'+
  '\bсудебн|'+
  '\bсудьб|'+
  '\bсумм|'+
  '\bсущество|'+
  '\bсфера\b|'+
  '\bсцена\b|'+
  '\bсчастье\b|'+
  '\bсчет|'+
  '\bсчита\b|'+
  '\bсын\b|'+
  '\bсюда\b|'+
  '\bтак\b|'+
  '\bтакже\b|'+
  '\bтакой\b|'+
  '\bтам\b|'+
  '\bтвой\b|'+
  '\bтеатр|'+
  '\bтекст\b|'+
  '\bтелефон\b|'+
  '\bтело\b|'+
  '\bтема\b|'+
  '\bтемн\b|'+
  '\bтеперь\b|'+
  '\bтерритори|'+
  '\bтехник|'+
  '\bтехническ|'+
  '\bтехнолог|'+
  '\bтечение\b|'+
  '\bтип\b|'+
  '\bтихо\b|'+
  '\bто\b|'+
  '\bтобой\b|'+
  '\bтоварищ\b|'+
  '\bтогда\b|'+
  '\bтоже\b|'+
  '\bтолько\b|'+
  '\bтот\b|'+
  '\bточка\b|'+
  '\bточно\b|'+
  '\bтребова|'+
  '\bтребуе|'+
  '\bтретий\b|'+
  '\bтри\b|'+
  '\bтруд|'+
  '\bтрудно\b|'+
  '\bтуда\b|'+
  '\bтут\b|'+
  '\bты\b|'+
  '\bтысяч|'+
  '\bтяжелый\b|'+
  '\bубит|'+
  '\bувидеть\b|'+
  '\bугол|'+
  '\bудар|'+
  '\bудаться\b|'+
  '\bуж\b|'+
  '\bуже\b|'+
  '\bузнать\b|'+
  '\bуйти\b|'+
  '\bулица\b|'+
  '\bум\b|'+
  '\bумереть\b|'+
  '\bуметь\b|'+
  '\bуправлени|'+
  '\bуровень\b|'+
  '\bусловие|'+
  '\bуслуга\b|'+
  '\bуслышать\b|'+
  '\bуспеть\b|'+
  '\bуспех\b|'+
  '\bустановить\b|'+
  '\bутро\b|'+
  '\bухо\b|'+
  '\bуходить\b|'+
  '\bучастие\b|'+
  '\bучастник\b|'+
  '\bучасток\b|'+
  '\bучиться\b|'+
  '\bфакт\b|'+
  '\bфедеральный\b|'+
  '\bфедераци|'+
  '\bфильм|'+
  '\bфинанс|'+
  '\bфирма\b|'+
  '\bфонд|'+
  '\bформа|'+
  '\bфраер|'+
  '\bхарактер\b|'+
  '\bхватать\b|'+
  '\bход\b|'+
  '\bходить\b|'+
  '\bхозяин\b|'+
  '\bхозяйство\b|'+
  '\b[хг]олод|'+
  '\bхорош|'+
  '\bхороший\b|'+
  '\bхотеть\b|'+
  '\bхотеться\b|'+
  '\bхоть\b|'+
  '\bхотя\b|'+
  '\bхудожник|'+
  '\bцвет\b|'+
  '\bцелый\b|'+
  '\bцель\b|'+
  '\bцена\b|'+
  '\bцентр|'+
  '\bцерковь\b|'+
  '\bчас\b|'+
  '\bчаст|'+
  '\bчасто\b|'+
  '\bчеловек\b|'+
  '\bчеловеческий\b|'+
  '\bчем\b|'+
  '\bчерез|'+
  '\bчерный\b|'+
  '\bчетыре\b|'+
  '\bчисло\b|'+
  '\bчистый\b|'+
  '\bчитать\b|'+
  '\bчлен\b|'+
  '\bчто-нибудь\b|'+
  '\bчто-то\b|'+
  '\bчто\b|'+
  '\bчто\b|'+
  '\bчто\b|'+
  '\bчтоб\b|'+
  '\bчтобы\b|'+
  '\bчувство\b|'+
  '\bчувствовать\b|'+
  '\bчужой\b|'+
  '\bчуть\b|'+
  '\bшаг\b|'+
  '\bшесть\b|'+
  '\bширокий\b|'+
  '\bшкола\b|'+
  '\bэкономика\b|'+
  '\bэкономический\b|'+
  '\bэлемент\b|'+
  '\bэто\b|'+
  '\bэто\b|'+
  '\bэтот\b|'+
  '\bявляться\b|'+
  '\bязык|'+
  '\bясно\b'
  ) then ufo:=666; 
  result:=ufo>0;//true     
end;


function fb1(s: string): boolean;// 
begin  
	result:=true;
	ufo:=0;
	if Regex.IsMatch(s,'аъ' ) then begin ufo:=9001; exit end;//пусььлучанацсвеьитяъкоолгонйемичомАЪку   9001
	if Regex.IsMatch(s,'аы' ) then begin ufo:=9002; exit end;
	if Regex.IsMatch(s,'аь' ) then begin ufo:=9003; exit end;
	if Regex.IsMatch(s,'бй' ) then begin ufo:=9004; exit end;
	if Regex.IsMatch(s,'бф' ) then begin ufo:=9005; exit end;
	if Regex.IsMatch(s,'вй' ) then begin ufo:=9006; exit end;
	if Regex.IsMatch(s,'гё' ) then begin ufo:=9007; exit end;
	if Regex.IsMatch(s,'гй' ) then begin ufo:=9008; exit end;
	if Regex.IsMatch(s,'гц' ) then begin ufo:=9009; exit end;
	if Regex.IsMatch(s,'гщ' ) then begin ufo:=9010; exit end;
	if Regex.IsMatch(s,'гъ' ) then begin ufo:=9011; exit end;
	if Regex.IsMatch(s,'гы' ) then begin ufo:=9012; exit end;
	if Regex.IsMatch(s,'гь' ) then begin ufo:=9013; exit end;
	if Regex.IsMatch(s,'дй' ) then begin ufo:=9014; exit end;
	if Regex.IsMatch(s,'еъ' ) then begin ufo:=9015; exit end;
	if Regex.IsMatch(s,'еы' ) then begin ufo:=9016; exit end;
	if Regex.IsMatch(s,'ёё' ) then begin ufo:=9017; exit end;
	if Regex.IsMatch(s,'ёъ' ) then begin ufo:=9018; exit end;
	if Regex.IsMatch(s,'ёы' ) then begin ufo:=9019; exit end;
	if Regex.IsMatch(s,'ёь' ) then begin ufo:=9020; exit end;
	if Regex.IsMatch(s,'ёю' ) then begin ufo:=9021; exit end;
	if Regex.IsMatch(s,'жй' ) then begin ufo:=9022; exit end;
	if Regex.IsMatch(s,'жф' ) then begin ufo:=9023; exit end;
	if Regex.IsMatch(s,'жх' ) then begin ufo:=9024; exit end;
	if Regex.IsMatch(s,'жщ' ) then begin ufo:=9025; exit end;
	if Regex.IsMatch(s,'жъ' ) then begin ufo:=9026; exit end;
	if Regex.IsMatch(s,'жы' ) then begin ufo:=9027; exit end;
	if Regex.IsMatch(s,'жю' ) then begin ufo:=9028; exit end;
	if Regex.IsMatch(s,'зй' ) then begin ufo:=9029; exit end;
	if Regex.IsMatch(s,'зщ' ) then begin ufo:=9030; exit end;
	if Regex.IsMatch(s,'иъ' ) then begin ufo:=9031; exit end;
	if Regex.IsMatch(s,'иы' ) then begin ufo:=9032; exit end;
	if Regex.IsMatch(s,'иь' ) then begin ufo:=9033; exit end;
	if Regex.IsMatch(s,'йё' ) then begin ufo:=9034; exit end;
	if Regex.IsMatch(s,'йй' ) then begin ufo:=9035; exit end;
	if Regex.IsMatch(s,'йъ' ) then begin ufo:=9036; exit end;
	if Regex.IsMatch(s,'йы' ) then begin ufo:=9037; exit end;
	if Regex.IsMatch(s,'йь' ) then begin ufo:=9038; exit end;
	if Regex.IsMatch(s,'кё' ) then begin ufo:=9039; exit end;
	if Regex.IsMatch(s,'кй' ) then begin ufo:=9040; exit end;
	if Regex.IsMatch(s,'къ' ) then begin ufo:=9041; exit end;
	if Regex.IsMatch(s,'кы' ) then begin ufo:=9042; exit end;
	if Regex.IsMatch(s,'кь' ) then begin ufo:=9043; exit end;
	if Regex.IsMatch(s,'лй' ) then begin ufo:=9044; exit end;
	if Regex.IsMatch(s,'лъ' ) then begin ufo:=9045; exit end;
	if Regex.IsMatch(s,'мй' ) then begin ufo:=9046; exit end;
	if Regex.IsMatch(s,'мъ' ) then begin ufo:=9047; exit end;
	if Regex.IsMatch(s,'нй' ) then begin ufo:=9048; exit end;
	if Regex.IsMatch(s,'нъ' ) then begin ufo:=9049; exit end;
	if Regex.IsMatch(s,'оъ' ) then begin ufo:=9050; exit end;
	if Regex.IsMatch(s,'оы' ) then begin ufo:=9051; exit end;
	if Regex.IsMatch(s,'оь' ) then begin ufo:=9052; exit end;
	if Regex.IsMatch(s,'пг' ) then begin ufo:=9053; exit end;
	if Regex.IsMatch(s,'пй' ) then begin ufo:=9054; exit end;
	if Regex.IsMatch(s,'пх' ) then begin ufo:=9055; exit end;
	if Regex.IsMatch(s,'пъ' ) then begin ufo:=9057; exit end;
	if Regex.IsMatch(s,'рй' ) then begin ufo:=9058; exit end;
	if Regex.IsMatch(s,'ръ' ) then begin ufo:=9059; exit end;
	if Regex.IsMatch(s,'сй' ) then begin ufo:=9060; exit end;
	if Regex.IsMatch(s,'тй' ) then begin ufo:=9061; exit end;
	if Regex.IsMatch(s,'уё' ) then begin ufo:=9062; exit end;
	if Regex.IsMatch(s,'уъ' ) then begin ufo:=9063; exit end;
	if Regex.IsMatch(s,'уы' ) then begin ufo:=9064; exit end;
	if Regex.IsMatch(s,'уь' ) then begin ufo:=9065; exit end;
	if Regex.IsMatch(s,'фд' ) then begin ufo:=9066; exit end;
	if Regex.IsMatch(s,'фж' ) then begin ufo:=9067; exit end;
	if Regex.IsMatch(s,'фз' ) then begin ufo:=9068; exit end;
	if Regex.IsMatch(s,'фй' ) then begin ufo:=9069; exit end;
	if Regex.IsMatch(s,'фх' ) then begin ufo:=9070; exit end;
	if Regex.IsMatch(s,'фц' ) then begin ufo:=9071; exit end;
	if Regex.IsMatch(s,'фш' ) then begin ufo:=9072; exit end;
	if Regex.IsMatch(s,'фщ' ) then begin ufo:=9073; exit end;
	if Regex.IsMatch(s,'фъ' ) then begin ufo:=9074; exit end;
	if Regex.IsMatch(s,'фэ' ) then begin ufo:=9075; exit end;
	if Regex.IsMatch(s,'хё' ) then begin ufo:=9076; exit end;
	if Regex.IsMatch(s,'хй' ) then begin ufo:=9077; exit end;
	if Regex.IsMatch(s,'хы' ) then begin ufo:=9078; exit end;
	if Regex.IsMatch(s,'хь' ) then begin ufo:=9079; exit end;
	if Regex.IsMatch(s,'цё' ) then begin ufo:=9080; exit end;
	if Regex.IsMatch(s,'цй' ) then begin ufo:=9081; exit end;
	if Regex.IsMatch(s,'цф' ) then begin ufo:=9082; exit end;
	if Regex.IsMatch(s,'цш' ) then begin ufo:=9083; exit end;
	if Regex.IsMatch(s,'цщ' ) then begin ufo:=9084; exit end;
	if Regex.IsMatch(s,'цъ' ) then begin ufo:=9085; exit end;
	if Regex.IsMatch(s,'ць' ) then begin ufo:=9086; exit end;
	if Regex.IsMatch(s,'цю' ) then begin ufo:=9087; exit end;
	if Regex.IsMatch(s,'чй' ) then begin ufo:=9088; exit end;
	if Regex.IsMatch(s,'чф' ) then begin ufo:=9089; exit end;
	if Regex.IsMatch(s,'чщ' ) then begin ufo:=9090; exit end;
	if Regex.IsMatch(s,'чъ' ) then begin ufo:=9091; exit end;
	if Regex.IsMatch(s,'чы' ) then begin ufo:=9092; exit end;
	if Regex.IsMatch(s,'чю' ) then begin ufo:=9093; exit end;
	if Regex.IsMatch(s,'шй' ) then begin ufo:=9094; exit end;
	if Regex.IsMatch(s,'шф' ) then begin ufo:=9095; exit end;
	if Regex.IsMatch(s,'шщ' ) then begin ufo:=9096; exit end;
	if Regex.IsMatch(s,'шъ' ) then begin ufo:=9097; exit end;
	if Regex.IsMatch(s,'шы' ) then begin ufo:=9098; exit end;
	if Regex.IsMatch(s,'щб' ) then begin ufo:=9099; exit end;
	if Regex.IsMatch(s,'щг' ) then begin ufo:=9100; exit end;
	if Regex.IsMatch(s,'щд' ) then begin ufo:=9101; exit end;
	if Regex.IsMatch(s,'щж' ) then begin ufo:=9102; exit end;
	if Regex.IsMatch(s,'щз' ) then begin ufo:=9103; exit end;
	if Regex.IsMatch(s,'щй' ) then begin ufo:=9104; exit end;
	if Regex.IsMatch(s,'щк' ) then begin ufo:=9105; exit end;
	if Regex.IsMatch(s,'щт' ) then begin ufo:=9106; exit end;
	if Regex.IsMatch(s,'щф' ) then begin ufo:=9107; exit end;
	if Regex.IsMatch(s,'щх' ) then begin ufo:=9108; exit end;
	if Regex.IsMatch(s,'щц' ) then begin ufo:=9109; exit end;
	if Regex.IsMatch(s,'щч' ) then begin ufo:=9110; exit end;
	if Regex.IsMatch(s,'щш' ) then begin ufo:=9111; exit end;
	if Regex.IsMatch(s,'щщ' ) then begin ufo:=9112; exit end;
	if Regex.IsMatch(s,'щъ' ) then begin ufo:=9113; exit end;
	if Regex.IsMatch(s,'щы' ) then begin ufo:=9114; exit end;
	if Regex.IsMatch(s,'щю' ) then begin ufo:=9115; exit end;
	if Regex.IsMatch(s,'щя' ) then begin ufo:=9116; exit end;
	if Regex.IsMatch(s,'ъа' ) then begin ufo:=9117; exit end;
	if Regex.IsMatch(s,'ъб' ) then begin ufo:=9118; exit end;
	if Regex.IsMatch(s,'ъв' ) then begin ufo:=9119; exit end;
	if Regex.IsMatch(s,'ъг' ) then begin ufo:=9120; exit end;
	if Regex.IsMatch(s,'ъд' ) then begin ufo:=9121; exit end;
	if Regex.IsMatch(s,'ъз' ) then begin ufo:=9122; exit end;
	if Regex.IsMatch(s,'ъи' ) then begin ufo:=9123; exit end;
	if Regex.IsMatch(s,'ъй' ) then begin ufo:=9124; exit end;
	if Regex.IsMatch(s,'ък' ) then begin ufo:=9125; exit end;
	if Regex.IsMatch(s,'ъл' ) then begin ufo:=9126; exit end;
	if Regex.IsMatch(s,'ъм' ) then begin ufo:=9127; exit end;
	if Regex.IsMatch(s,'ън' ) then begin ufo:=9128; exit end;
	if Regex.IsMatch(s,'ъп' ) then begin ufo:=9129; exit end;
	if Regex.IsMatch(s,'ър' ) then begin ufo:=9130; exit end;
	if Regex.IsMatch(s,'ъс' ) then begin ufo:=9131; exit end;
	if Regex.IsMatch(s,'ът' ) then begin ufo:=9132; exit end;
	if Regex.IsMatch(s,'ъу' ) then begin ufo:=9133; exit end;
	if Regex.IsMatch(s,'ъф' ) then begin ufo:=9134; exit end;
	if Regex.IsMatch(s,'ъх' ) then begin ufo:=9135; exit end;
	if Regex.IsMatch(s,'ъц' ) then begin ufo:=9136; exit end;
	if Regex.IsMatch(s,'ъч' ) then begin ufo:=9137; exit end;
	if Regex.IsMatch(s,'ъш' ) then begin ufo:=9138; exit end;
	if Regex.IsMatch(s,'ъщ' ) then begin ufo:=9139; exit end;
	if Regex.IsMatch(s,'ъъ' ) then begin ufo:=9140; exit end;
	if Regex.IsMatch(s,'ъы' ) then begin ufo:=9141; exit end;
	if Regex.IsMatch(s,'ъь' ) then begin ufo:=9142; exit end;
	if Regex.IsMatch(s,'ъэ' ) then begin ufo:=9143; exit end;
	if Regex.IsMatch(s,'ыё' ) then begin ufo:=9144; exit end;
	if Regex.IsMatch(s,'ыъ' ) then begin ufo:=9145; exit end;
	if Regex.IsMatch(s,'ыы' ) then begin ufo:=9146; exit end;
	if Regex.IsMatch(s,'ыь' ) then begin ufo:=9147; exit end;
	if Regex.IsMatch(s,'ыю' ) then begin ufo:=9148; exit end;
	if Regex.IsMatch(s,'ьй' ) then begin ufo:=9149; exit end;
	if Regex.IsMatch(s,'ьъ' ) then begin ufo:=9150; exit end;
	if Regex.IsMatch(s,'ьы' ) then begin ufo:=9151; exit end;
	if Regex.IsMatch(s,'ьь' ) then begin ufo:=9152; exit end;
	if Regex.IsMatch(s,'эа' ) then begin ufo:=9153; exit end;
	if Regex.IsMatch(s,'эб' ) then begin ufo:=9154; exit end;
	if Regex.IsMatch(s,'эв' ) then begin ufo:=9155; exit end;
	if Regex.IsMatch(s,'эе' ) then begin ufo:=9156; exit end;
	if Regex.IsMatch(s,'эё' ) then begin ufo:=9157; exit end;
	if Regex.IsMatch(s,'эж' ) then begin ufo:=9158; exit end;
	if Regex.IsMatch(s,'эи' ) then begin ufo:=9159; exit end;
	if Regex.IsMatch(s,'эо' ) then begin ufo:=9160; exit end;
	if Regex.IsMatch(s,'эу' ) then begin ufo:=9161; exit end;
	if Regex.IsMatch(s,'эц' ) then begin ufo:=9162; exit end;
	if Regex.IsMatch(s,'эч' ) then begin ufo:=9163; exit end;
	if Regex.IsMatch(s,'эщ' ) then begin ufo:=9164; exit end;
	if Regex.IsMatch(s,'эъ' ) then begin ufo:=9165; exit end;
	if Regex.IsMatch(s,'эы' ) then begin ufo:=9166; exit end;
	if Regex.IsMatch(s,'эь' ) then begin ufo:=9167; exit end;
	if Regex.IsMatch(s,'ээ' ) then begin ufo:=9168; exit end;
	if Regex.IsMatch(s,'эю' ) then begin ufo:=9169; exit end;
	if Regex.IsMatch(s,'эя' ) then begin ufo:=9170; exit end;
	if Regex.IsMatch(s,'юё' ) then begin ufo:=9171; exit end;
	if Regex.IsMatch(s,'юй' ) then begin ufo:=9172; exit end;
	if Regex.IsMatch(s,'юъ' ) then begin ufo:=9173; exit end;
	if Regex.IsMatch(s,'юы' ) then begin ufo:=9174; exit end;
	if Regex.IsMatch(s,'юь' ) then begin ufo:=9175; exit end;
	if Regex.IsMatch(s,'яё' ) then begin ufo:=9176; exit end;
	if Regex.IsMatch(s,'яъ' ) then begin ufo:=9177; exit end;
	if Regex.IsMatch(s,'яы' ) then begin ufo:=9178; exit end;
	if Regex.IsMatch(s,'яь' ) then begin ufo:=9179; exit end;
	result:=false;
end;//fb1  


function fb2(d: string): boolean; // 
begin
	result:=true;
	ufo:=0;  
	if Regex.IsMatch(d, 'аъ|аы|аь|бй|бф|вй|гё|гй|гц|гщ|гъ|гы|гь|дй|еъ|еы|ёё|'+
	  'фц|фш|фщ|фъ|фэ|хё|хй|хы|хь|цё|цй|цф|цш|цщ|цъ|ць|цю|чй|чф|чщ|чъ|чы|чю|шй|шф|шщ|'+
	  'шъ|шы|щб|щг|щд|щж|щз|щй|щк|щт|щф|щх|щц|щч|щш|щщ|щъ|щы|щю|щя|ъа|ъб|ъв|ъг|ъд|ъз|'+  
	  'ъи|ъй|ък|ъл|ъм|ън|ъп|ър|ъс|ът|ъу|ъф|ъх|ъц|ъч|ъш|ъщ|ъъ|ъы|ъь|ъэ|ыё|ыъ|ыы|ыь|ыю|'+
	  'ёъ|ёы|ёь|ёю|жй|жф|жх|жщ|жъ|жы|жю|зй|зщ|иъ|иы|иь|йё|йй|йъ|йы|йь|кё|кй|къ|кы|кь|'+
	  'лй|лъ|мй|мъ|нй|нъ|оъ|оы|оь|пг|пй|пх|пъ|рй|ръ|сй|тй|уё|уъ|уы|уь|фд|фж|фз|фй|фх|'+
	  'ьй|ьъ|ьы|ьь|эа|эб|эв|эе|эё|эж|эи|эо|эу|эц|эч|эщ|эъ|эы|эь|ээ|эю|эя|юё|юй|юъ|юы|'+
	  'юь|яё|яъ|яы|яь')// плохие биграммы на стыке слов и в середине
	  then begin ufo:=10000; exit end; 

		
	if Regex.IsMatch(d, '[айцуеъыоэяиью]ь') then begin ufo:=11090; exit end;
	if Regex.IsMatch(d, 'ь[ъы]') then begin ufo:=11091; exit end;//нет слов начинающ с ъ
	if Regex.IsMatch(d, 'ааа|ббб|ггг|ддд|еее|жжж|ззз|ллл|ммм|ппп|ррр|ттт|ффф|ххх|ццц|ччч|шшш|щщщ|ыыы|эээ|ююю') then
		begin ufo:=11092; exit end;//
	if Regex.IsMatch(d, '[бвгдёжзийклмнпстфхцчэю]бь') then begin ufo:=11093; exit end;//
	if Regex.IsMatch(d, '[бвгдёжзйклмнпстфхцчэю]вь') then begin ufo:=11094; exit end;//    
	if Regex.IsMatch(d, '[абвгджзйклмпрстфхцчшщъыьэюя]бь') then begin ufo:=11095; exit end;
	if Regex.IsMatch(d, '[бвгёжзйклмнпуфхцчшщъьэюя]вь') then begin ufo:=11096; exit end;
	if Regex.IsMatch(d, '[бгдёзклнпрфхцчшщъэ]дь') then begin ufo:=11097; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпрстфхцчшщъыьэю]жь') then begin ufo:=11098; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэю]зь') then begin ufo:=11099; exit end;
	if Regex.IsMatch(d, '[вгдёжзфцчшъ]ль') then begin ufo:=11100; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнпрстфхцчшщъыьэюя]мь') then begin ufo:=11101; exit end;
	if Regex.IsMatch(d, '[бвгдёжйклмнпртфхцчшщъьэ]нь') then begin ufo:=11102; exit end;
	if Regex.IsMatch(d, '[бгёжзпртфхцчшщъэю]пь') then begin ufo:=11103; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрсфхцчшщъьэя]рь') then begin ufo:=11104; exit end;
	if Regex.IsMatch(d, '[бгдёжзйклмнпрстфхцчшщъьэ]сь') then begin ufo:=11105; exit end;
	if Regex.IsMatch(d, '[бвгжйклмнптфхцчшщъэ]ть') then begin ufo:=11106; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]фь') then begin ufo:=11107; exit end;
	if Regex.IsMatch(d, '[бгдёжзйкмнпрстфхцчшщъэю]чь') then begin ufo:=11108; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъыэюя]шь') then begin ufo:=11109; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпрстуфхцчшщъыьэюя]щь') then begin ufo:=11110; exit end;

	// ы
	if Regex.IsMatch(d, '[фщъэ]бы') then begin ufo:=11111; exit end;
	if Regex.IsMatch(d, '[пфщъэ]вы') then begin ufo:=11112; exit end;
	if Regex.IsMatch(d, '[бгдпсфхцчшщъэ]ды') then begin ufo:=11113; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]жы') then begin ufo:=11114; exit end;
	if Regex.IsMatch(d, '[бгджзйклмнпрсфхцчшщъэю]зы') then begin ufo:=11115; exit end;
	if Regex.IsMatch(d, '[бвжнфцчщъьэ]лы') then begin ufo:=11116; exit end;
	if Regex.IsMatch(d, '[пфцщъэ]мы') then begin ufo:=11117; exit end;
	if Regex.IsMatch(d, '[гцщъэ]ны') then begin ufo:=11118; exit end;
	if Regex.IsMatch(d, '[бвгдёжйфхцчшщъэ]пы') then begin ufo:=11119; exit end;
	if Regex.IsMatch(d, '[вжнфхцчшщъэ]ры') then begin ufo:=11120; exit end;
	if Regex.IsMatch(d, '[гжпфцчщъэ]сы') then begin ufo:=11121; exit end;
	if Regex.IsMatch(d, '[бгщъэ]ты') then begin ufo:=11122; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзклмнпрсуфцчшщъыэя]фы') then begin ufo:=11123; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]чы') then begin ufo:=11124; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]шы') then begin ufo:=11125; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]щы') then begin ufo:=11126; exit end;

	//  ф
	if Regex.IsMatch(d, '[абёжиопуфхщъыэю]аф') then begin ufo:=11127; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмопстфхцчшщъыьэюя]гф') then begin ufo:=11128; exit end;
	if Regex.IsMatch(d, '[агёзйлуфхшщъьэю]еф') then begin ufo:=11129; exit end;
	if Regex.IsMatch(d, '[ёйпуфхъэюя]иф') then begin ufo:=11130; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнпрстуфхцчшщъьэюя]йф') then begin ufo:=11131; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйкмопрстуфхцчшщъэюя]кф') then begin ufo:=11132; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопстуфхцчшщъьэю]лф') then begin ufo:=11133; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъьэюя]мф') then begin ufo:=11134; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэюя]нф') then begin ufo:=11135; exit end;
	if Regex.IsMatch(d, '[дёзфцшщъыэ]оф') then begin ufo:=11136; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]пф') then begin ufo:=11137; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстуфхцчшщъыьэюя]рф') then begin ufo:=11138; exit end;
	if Regex.IsMatch(d, '[абгджзклмпртфцчшщъыэюя]сф') then begin ufo:=11139; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнптфхцчшщъыьэю]тф') then begin ufo:=11140; exit end;
	if Regex.IsMatch(d, '[вдеёжзйлпсухчшщъыэю]уф') then begin ufo:=11141; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстфхцчшщъыьюя]фф') then begin ufo:=11142; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстуфхцчшщъыьэя]эф') then begin ufo:=11143; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпфхцчшщъыэюя]юф') then begin ufo:=11144; exit end;
	// х
	if Regex.IsMatch(d, '[ёъэ]ах') then begin ufo:=11145; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэюя]бх') then begin ufo:=11146; exit end;
	if Regex.IsMatch(d, '[бвгжрфхцщъыэ]вх') then begin ufo:=11147; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэю]дх') then begin ufo:=11148; exit end;
	if Regex.IsMatch(d, '[ёзщэ]ех') then begin ufo:=11149; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнптуфхцчшъыьэюя]ёх') then begin ufo:=11150; exit end;
	if Regex.IsMatch(d, '[пфцъэ]их') then begin ufo:=11151; exit end;
	if Regex.IsMatch(d, '[вгдёжзйкнпрсфхцчшщъэюя]кх') then begin ufo:=11152; exit end;
	if Regex.IsMatch(d, '[бвгджйклмнпстуфхцчшщъьэю]мх') then begin ufo:=11153; exit end;
	if Regex.IsMatch(d, '[жфщъэ]ох') then begin ufo:=11154; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]рх') then begin ufo:=11155; exit end;
	if Regex.IsMatch(d, '[дёжпсфхцчшщъэю]сх') then begin ufo:=11156; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмпрстфхцчшщъыьэ]тх') then begin ufo:=11157; exit end;
	if Regex.IsMatch(d, '[фхшщъыэ]ух') then begin ufo:=11158; exit end;
	if Regex.IsMatch(d, '[агеёжзийкоуфхчшщъыьэюя]ых') then begin ufo:=11159; exit end;
	if Regex.IsMatch(d, '[абвгеёжийкмопуфхцщъыьэюя]ьх') then begin ufo:=11160; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэю]эх') then begin ufo:=11161; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмпфхцчшщъыэя]юх') then begin ufo:=11162; exit end;
	if Regex.IsMatch(d, '[гжпфцшщъэ]ях') then begin ufo:=11163; exit end;
	// ц
	 if Regex.IsMatch(d, '[геёжйосуфчшщъыьэюя]ац') then begin ufo:=11164; exit end;
	if Regex.IsMatch(d, '[абвгдёзийклмнопрстфхцчшщъыьэюя]бц') then begin ufo:=11165; exit end;
	if Regex.IsMatch(d, '[бвгдёжзнпрстфхцчшщъэю]вц') then begin ufo:=11166; exit end;
	if Regex.IsMatch(d, '[бвгдеёжйклмнпстуфхцчшщъыьэюя]дц') then begin ufo:=11167; exit end;
	if Regex.IsMatch(d, '[агеёйкуфхчъьэюя]ец') then begin ufo:=11168; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]жц') then begin ufo:=11169; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]зц') then begin ufo:=11170; exit end;
	if Regex.IsMatch(d, '[гёйхцшъэ]иц') then begin ufo:=11171; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнпрстуфхцчшщъьэю]йц') then begin ufo:=11172; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклпрстуфхцчшщъыьэю]кц') then begin ufo:=11173; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэю]лц') then begin ufo:=11174; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]мц') then begin ufo:=11175; exit end;
	if Regex.IsMatch(d, '[бвгджзйкмнпрстуфхцчшщъыьэю]нц') then begin ufo:=11176; exit end;
	if Regex.IsMatch(d, '[бвёжзуфхцчшщъыэю]оц') then begin ufo:=11177; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстфхцчшщъыьэюя]пц') then begin ufo:=11178; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпрстфхцчшщъыьэюя]рц') then begin ufo:=11179; exit end;
	if Regex.IsMatch(d, '[бвгдёжзмпрстфцчшщъыэю]сц') then begin ufo:=11180; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэя]тц') then begin ufo:=11181; exit end;
	if Regex.IsMatch(d, '[абвгеёжзйлнпухцшщъыэюя]уц') then begin ufo:=11182; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъыьэю]цц') then begin ufo:=11183; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъьэюя]шц') then begin ufo:=11184; exit end;
	if Regex.IsMatch(d, '[агдеёжзийклнопсуфхчшщъыьэюя]ыц') then begin ufo:=11185; exit end;
	if Regex.IsMatch(d, '[абгеёзийкмопруфхцчшщъыьэюя]ьц') then begin ufo:=11186; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйкмнпртфхцчщъыэюя]юц') then begin ufo:=11187; exit end;
	if Regex.IsMatch(d, '[вгдеёжзйкпртуфхцчшщъыьэю]яц') then begin ufo:=11188; exit end;
	//ч
	if Regex.IsMatch(d, '[ёщъэю]ач') then begin ufo:=11189; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстфхцчшщъыьэя]бч') then begin ufo:=11190; exit end;
	if Regex.IsMatch(d, '[бгджзпрсфшщъэ]вч') then begin ufo:=11191; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийкмнпрстфхцчшщъыьэю]гч') then begin ufo:=11192; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]дч') then begin ufo:=11193; exit end;
	if Regex.IsMatch(d, '[гёзйуфхъэюя]еч') then begin ufo:=11194; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийкмнпртуфхцчшъыьэюя]ёч') then begin ufo:=11195; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]жч') then begin ufo:=11196; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэю]зч') then begin ufo:=11197; exit end;
	if Regex.IsMatch(d, '[ъэ]ич') then begin ufo:=11198; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йч') then begin ufo:=11199; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]лч') then begin ufo:=11200; exit end;
	if Regex.IsMatch(d, '[бвгджйклмнпрстфхцчшщъьэ]мч') then begin ufo:=11201; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъьэю]нч') then begin ufo:=11202; exit end;
	if Regex.IsMatch(d, '[щъэ]оч') then begin ufo:=11203; exit end;
	if Regex.IsMatch(d, '[бвгджзлмнпртфцчшщъыэю]пч') then begin ufo:=11204; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрсфхцчшщъыьэю]рч') then begin ufo:=11205; exit end;
	if Regex.IsMatch(d, '[бдзфшщъэ]сч') then begin ufo:=11206; exit end;
	if Regex.IsMatch(d, '[бвгджзйлмнптфхцчшщъыьэ]тч') then begin ufo:=11207; exit end;
	if Regex.IsMatch(d, '[фщъэ]уч') then begin ufo:=11208; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзиклмнопрстуфхцчшщъыьэюя]фч') then begin ufo:=11209; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнопстфхцчшщъьэю]хч') then begin ufo:=11210; exit end;
	if Regex.IsMatch(d, '[агеёжзийкоуфхчшщъыьэюя]ыч') then begin ufo:=11211; exit end;
	if Regex.IsMatch(d, '[абвгеёийкопуфхцщъыьэюя]ьч') then begin ufo:=11212; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмпстфхцчшщъыэ]юч') then begin ufo:=11213; exit end;
	if Regex.IsMatch(d, '[гёжйпфцчшщъыэ]яч') then begin ufo:=11214; exit end;
	//ш
	if Regex.IsMatch(d, '[аеёийофщъыьэюя]аш') then begin ufo:=11215; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстуфхцчшщъыьэю]бш') then begin ufo:=11216; exit end;
	if Regex.IsMatch(d, '[бвгджзкпртфцшщъэю]вш') then begin ufo:=11217; exit end;
	if Regex.IsMatch(d, '[абвгджзйклмнпрстфхцчшщъыьэюя]гш') then begin ufo:=11218; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыэю]дш') then begin ufo:=11219; exit end;
	if Regex.IsMatch(d, '[ёзйфхъэю]еш') then begin ufo:=11220; exit end;
	if Regex.IsMatch(d, '[бгёжзийкптуфхцчшъыэюя]ёш') then begin ufo:=11221; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопстуфхцчшщъыьэю]зш') then begin ufo:=11222; exit end;
	if Regex.IsMatch(d, '[цъэ]иш') then begin ufo:=11223; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йш') then begin ufo:=11224; exit end;
	if Regex.IsMatch(d, '[бвгжзйлмнпрстфхцчшщъьэюя]кш') then begin ufo:=11225; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]лш') then begin ufo:=11226; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмнпстфхцчшщъьэя]мш') then begin ufo:=11227; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]нш') then begin ufo:=11228; exit end;
	if Regex.IsMatch(d, '[ёжчшщъэ]ош') then begin ufo:=11229; exit end;
	if Regex.IsMatch(d, '[бгдёжзкмпрстфхцчшщъыэя]пш') then begin ufo:=11230; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]рш') then begin ufo:=11231; exit end;
	if Regex.IsMatch(d, '[бдёжзлмпрстфхцчшщъэ]сш') then begin ufo:=11232; exit end;
	if Regex.IsMatch(d, '[абвгджзйклмнпртфхцчшщъыьэюя]тш') then begin ufo:=11233; exit end;
	if Regex.IsMatch(d, '[зфшщъэ]уш') then begin ufo:=11234; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]хш') then begin ufo:=11235; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстфхцчшщъыьэюя]чш') then begin ufo:=11236; exit end;
	if Regex.IsMatch(d, '[бвгдежзийклмнопрстуфхцчщъыьэюя]шш') then begin ufo:=11237; exit end;
	if Regex.IsMatch(d, '[агеёжзийкостуфхчшщъыьэюя]ыш') then begin ufo:=11238; exit end;
	if Regex.IsMatch(d, '[абвгеёжийкмопуфхцъыьэюя]ьш') then begin ufo:=11239; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзиклмнопрстуфхцчшщъыьэюя]эш') then begin ufo:=11240; exit end;
	if Regex.IsMatch(d, '[бвгеёжзийклмпсфхцчшщъыэя]юш') then begin ufo:=11241; exit end;
	if Regex.IsMatch(d, '[бвгёжзфхцшщъэ]яш') then begin ufo:=11242; exit end;
	//щ
	if Regex.IsMatch(d, '[абгеёийкопсуфхцщъыьэюя]ащ') then begin ufo:=11243; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэюя]бщ') then begin ufo:=11244; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстуфхцчшщъыэюя]вщ') then begin ufo:=11245; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]дщ') then begin ufo:=11246; exit end;
	if Regex.IsMatch(d, '[фшъэ]ещ') then begin ufo:=11247; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрсуфхцчшщъыьэюя]ёщ') then begin ufo:=11248; exit end;
	if Regex.IsMatch(d, '[бгдеёзсфъэ]ищ') then begin ufo:=11249; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстуфхцчшщъьэюя]йщ') then begin ufo:=11250; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнпрстфхцчшщъыьэюя]лщ') then begin ufo:=11251; exit end;
	if Regex.IsMatch(d, '[абгдеёжзйклмнпрсуфхцчшщъьэю]мщ') then begin ufo:=11252; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъыьэюя]нщ') then begin ufo:=11253; exit end;
	if Regex.IsMatch(d, '[ёжфчшщъэю]ощ') then begin ufo:=11254; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстфхцчшщъыьэюя]пщ') then begin ufo:=11255; exit end;
	if Regex.IsMatch(d, '[бвгеёжзийклмнпрсуфхцчшщъыьэюя]рщ') then begin ufo:=11256; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнопрстуфцчшщъыьэюя]сщ') then begin ufo:=11257; exit end;
	if Regex.IsMatch(d, '[бвгдёжзкнпртуфхцчшщъьэю]тщ') then begin ufo:=11258; exit end;
	if Regex.IsMatch(d, '[абеёзийоруфхшъыьэя]ущ') then begin ufo:=11259; exit end;
	if Regex.IsMatch(d, '[абгдеёжзийклмопртуфхчшщъыьэюя]ыщ') then begin ufo:=11260; exit end;
	if Regex.IsMatch(d, '[абвгдеёжийкмопрсуфхцчшщъыьэюя]ьщ') then begin ufo:=11261; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийкмнпстфхцчшщъыэю]ющ') then begin ufo:=11262; exit end;
	if Regex.IsMatch(d, '[геёжфхцчшщъыьэю]ящ') then begin ufo:=11263; exit end;
	//э
	if Regex.IsMatch(d, '[ёпъыэюя]аэ') then begin ufo:=11264; exit end;
	if Regex.IsMatch(d, '[беёжзийсуфчщъыьэюя]оэ') then begin ufo:=11265; exit end;
	if Regex.IsMatch(d, '[бвгджзпруфцчшщъэю]сэ') then begin ufo:=11266; exit end;
	if Regex.IsMatch(d, '[бвгджзлмнптфцчшщъыьэ]тэ') then begin ufo:=11267; exit end;
	if Regex.IsMatch(d, '[аёзйлоуфхщъыэю]уэ') then begin ufo:=11268; exit end;
	if Regex.IsMatch(d, '[абгеёжийкмопуфхцщъыьэюя]ьэ') then begin ufo:=11269; exit end;
	//ю
	if Regex.IsMatch(d, '[аеёийоуфъыьэюя]аю') then begin ufo:=11270; exit end;
	if Regex.IsMatch(d, '[абгдеёжзйклнопрстфхцчшщъыьэюя]бю') then begin ufo:=11271; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыэюя]вю') then begin ufo:=11272; exit end;
	if Regex.IsMatch(d, '[абгдеёжзийклмнопрстуфхцчшщъыьэюя]гю') then begin ufo:=11273; exit end;
	if Regex.IsMatch(d, '[бвгдеёзийклмопрстфхцчшщъыьэю]дю') then begin ufo:=11274; exit end;
	if Regex.IsMatch(d, '[ёзцъыэ]ею') then begin ufo:=11275; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэю]зю') then begin ufo:=11276; exit end;
	if Regex.IsMatch(d, '[ёжйопуфщъыьэюя]ию') then begin ufo:=11277; exit end;
	if Regex.IsMatch(d, '[жфцщъэ]лю') then begin ufo:=11278; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]мю') then begin ufo:=11279; exit end;
	if Regex.IsMatch(d, '[гёзкпуфцчщъэю]ню') then begin ufo:=11280; exit end;
	if Regex.IsMatch(d, '[аеёийоуфцчщъыьэюя]ою') then begin ufo:=11281; exit end;
	if Regex.IsMatch(d, '[бгдеёжзйклмнопрсуфхцчшщъыьэюя]пю') then begin ufo:=11282; exit end;
	if Regex.IsMatch(d, '[вгджзйнпрсхцчшщъыьэ]рю') then begin ufo:=11283; exit end;
	if Regex.IsMatch(d, '[бгджзпсфчшщъэю]сю') then begin ufo:=11284; exit end;
	if Regex.IsMatch(d, '[бджкптфцчшщъыя]тю') then begin ufo:=11285; exit end;
	if Regex.IsMatch(d, '[аеёйуфъыьэюя]ую') then begin ufo:=11286; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэю]фю') then begin ufo:=11287; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]шю') then begin ufo:=11288; exit end;
	if Regex.IsMatch(d, '[абвгеёжзийклмнопрстуфхцчшщъыьэюя]ъю') then begin ufo:=11289; exit end;
	if Regex.IsMatch(d, '[агеёийкоухцъыьэюя]ью') then begin ufo:=11290; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмпрстуфхцчшщъыэюя]юю') then begin ufo:=11291; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйкмптуфхцчшщъыьэюя]яю') then begin ufo:=11292; exit end;
	//я
	if Regex.IsMatch(d, '[ёфъэ]ая') then begin ufo:=11293; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэя]бя') then begin ufo:=11294; exit end;
	if Regex.IsMatch(d, '[вгёжймнпфцчшщъыэ]вя') then begin ufo:=11295; exit end;
	if Regex.IsMatch(d, '[бвгдмнпсфцчшщъэ]дя') then begin ufo:=11296; exit end;
	if Regex.IsMatch(d, '[ёзйуфхъэюя]ея') then begin ufo:=11297; exit end;
	if Regex.IsMatch(d, '[бгджзклмнпрфхцчшщъэю]зя') then begin ufo:=11298; exit end;
	if Regex.IsMatch(d, '[ъэ]ия') then begin ufo:=11299; exit end;
	if Regex.IsMatch(d, '[жзйлнцчщъьэ]ля') then begin ufo:=11300; exit end;
	if Regex.IsMatch(d, '[бгджлнпфцчшщъэ]мя') then begin ufo:=11301; exit end;
	if Regex.IsMatch(d, '[пфцчщъэ]ня') then begin ufo:=11302; exit end;
	if Regex.IsMatch(d, '[аеёжзйсуфчщъыьэюя]оя') then begin ufo:=11303; exit end;
	if Regex.IsMatch(d, '[бгпфхцчшщъыэ]пя') then begin ufo:=11304; exit end;
	if Regex.IsMatch(d, '[жфшъэ]ря') then begin ufo:=11305; exit end;
	if Regex.IsMatch(d, '[джзнпфцшщъэ]ся') then begin ufo:=11306; exit end;
	if Regex.IsMatch(d, '[жзфцшщъэ]тя') then begin ufo:=11307; exit end;
	if Regex.IsMatch(d, '[ёуфшщъыэю]уя') then begin ufo:=11308; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэя]фя') then begin ufo:=11309; exit end;
	if Regex.IsMatch(d, '[авгдеёжийклмнопрстуфхцчшщъыьэюя]ъя') then begin ufo:=11310; exit end;
	if Regex.IsMatch(d, '[агеёжийклопуфхцчшщъыьэюя]ыя') then begin ufo:=11311; exit end;
	if Regex.IsMatch(d, '[агеёийкоухцъыьэюя]ья') then begin ufo:=11312; exit end;
	if Regex.IsMatch(d, '[вгеёжйпуфхцчшщъэю]яя') then begin ufo:=11313; exit end;
	//-----------------------------------------
	//-----------------------------------------
	//-----------------------------------------
	if Regex.IsMatch(d, '[ёийщъыэя]аа') then begin ufo:=11314; exit end;
	if Regex.IsMatch(d, '[бпфщъэ]ба') then begin ufo:=11315; exit end;
	if Regex.IsMatch(d, '[жпцщъэ]ва') then begin ufo:=11316; exit end;
	if Regex.IsMatch(d, '[бгджпфчшщъэ]га') then begin ufo:=11317; exit end;
	if Regex.IsMatch(d, '[фщъ]да') then begin ufo:=11318; exit end;
	if Regex.IsMatch(d, '[ёзйпуфщъэюя]еа') then begin ufo:=11319; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшъыьэюя]ёа') then begin ufo:=11320; exit end;
	if Regex.IsMatch(d, '[бпфцшщъэ]жа') then begin ufo:=11321; exit end;
	if Regex.IsMatch(d, '[бфщъэ]за') then begin ufo:=11322; exit end;
	if Regex.IsMatch(d, '[бщъэ]иа') then begin ufo:=11323; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]йа') then begin ufo:=11324; exit end;
	if Regex.IsMatch(d, '[щъ]ка') then begin ufo:=11325; exit end;
	if Regex.IsMatch(d, '[жщъ]ла') then begin ufo:=11326; exit end;
	if Regex.IsMatch(d, '[чщъ]ма') then begin ufo:=11327; exit end;
	if Regex.IsMatch(d, '[ъ]на') then begin ufo:=11328; exit end;
	if Regex.IsMatch(d, '[аеёжзйосуфчщъыьэюя]оа') then begin ufo:=11329; exit end;
	if Regex.IsMatch(d, '[рщъэ]па') then begin ufo:=11330; exit end;
	if Regex.IsMatch(d, '[щъэ]ра') then begin ufo:=11331; exit end;
	if Regex.IsMatch(d, '[жшщъэ]са') then begin ufo:=11332; exit end;
	if Regex.IsMatch(d, '[цщъ]та') then begin ufo:=11333; exit end;
	if Regex.IsMatch(d, '[еёйуфхшъыэю]уа') then begin ufo:=11334; exit end;
	if Regex.IsMatch(d, '[бгдёжзпрцчшщъыэ]фа') then begin ufo:=11335; exit end;
	if Regex.IsMatch(d, '[бгдёжнптфхцчшщъьэ]ха') then begin ufo:=11336; exit end;
	if Regex.IsMatch(d, '[гёжлуфхчшщъэю]ца') then begin ufo:=11337; exit end;
	if Regex.IsMatch(d, '[бфцчщъэ]ча') then begin ufo:=11338; exit end;
	if Regex.IsMatch(d, '[пфцшщъ]ша') then begin ufo:=11339; exit end;
	if Regex.IsMatch(d, '[вгджзклмнпсфхцчшщъыэ]ща') then begin ufo:=11340; exit end;
	if Regex.IsMatch(d, '[агеёжийклоуфхчшщъыьэюя]ыа') then begin ufo:=11341; exit end;
	if Regex.IsMatch(d, '[агеёжийкмопуфхцъыьэюя]ьа') then begin ufo:=11342; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмпсфхцчшщъыэюя]юа') then begin ufo:=11343; exit end;
	if Regex.IsMatch(d, '[вгёжпуфхцчшщъыэю]яа') then begin ufo:=11344; exit end;
	if Regex.IsMatch(d, '[ёщъэюя]аб') then begin ufo:=11345; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстфхцчшщъыьэюя]бб') then begin ufo:=11346; exit end;
	if Regex.IsMatch(d, '[бгджзпсфцшщъэ]вб') then begin ufo:=11347; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийкмнпстфхцчшщъыьэюя]гб') then begin ufo:=11348; exit end;
	if Regex.IsMatch(d, '[бвгджйклмнпрстфхцчшщъыьэю]дб') then begin ufo:=11349; exit end;
	if Regex.IsMatch(d, '[аёзйпуфъэюя]еб') then begin ufo:=11350; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийкмнптуфхцчшъыьэюя]ёб') then begin ufo:=11351; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]жб') then begin ufo:=11352; exit end;
	if Regex.IsMatch(d, '[бгджзйклмнпрстуфхцчшщъыьэюя]зб') then begin ufo:=11353; exit end;
	if Regex.IsMatch(d, '[цъэ]иб') then begin ufo:=11354; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йб') then begin ufo:=11355; exit end;
	if Regex.IsMatch(d, '[бвгджзпсфцчшщъэ]кб') then begin ufo:=11356; exit end;
	if Regex.IsMatch(d, '[бвгжзйклнпрстфхцчшщъэю]лб') then begin ufo:=11357; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмпрстфхцчшщъьэю]мб') then begin ufo:=11358; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъыьэю]нб') then begin ufo:=11359; exit end;
	if Regex.IsMatch(d, '[щъэ]об') then begin ufo:=11360; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстфхцчшщъыьэюя]пб') then begin ufo:=11361; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэя]рб') then begin ufo:=11362; exit end;
	if Regex.IsMatch(d, '[бджпфчшщъэ]сб') then begin ufo:=11363; exit end;
	if Regex.IsMatch(d, '[бвгжзйклмнптфхцчшщъыьэ]тб') then begin ufo:=11364; exit end;
	if Regex.IsMatch(d, '[фщъэ]уб') then begin ufo:=11365; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыьэюя]фб') then begin ufo:=11366; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъью]хб') then begin ufo:=11367; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмопрстуфхцчшщъыэя]цб') then begin ufo:=11368; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнорстуфхцчшщъьэю]чб') then begin ufo:=11369; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъьэюя]шб') then begin ufo:=11370; exit end;
	if Regex.IsMatch(d, '[агеёжийкопуфхчшщъыьэюя]ыб') then begin ufo:=11371; exit end;
	if Regex.IsMatch(d, '[абгеёийкопуфхцщъыьэюя]ьб') then begin ufo:=11372; exit end;
	if Regex.IsMatch(d, '[бёжзкмпфцчшщъыэ]юб') then begin ufo:=11373; exit end;
	if Regex.IsMatch(d, '[гпфцшщъэ]яб') then begin ufo:=11374; exit end;
	if Regex.IsMatch(d, '[ъэ]ав') then begin ufo:=11375; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэя]бв') then begin ufo:=11376; exit end;
	if Regex.IsMatch(d, '[бдзпрфцчшщъэ]вв') then begin ufo:=11377; exit end;
	if Regex.IsMatch(d, '[бгджзийклнптфхцчшщъьэюя]гв') then begin ufo:=11378; exit end;
	if Regex.IsMatch(d, '[бпфшщъ]дв') then begin ufo:=11379; exit end;
	if Regex.IsMatch(d, '[ёэ]ев') then begin ufo:=11380; exit end;
	if Regex.IsMatch(d, '[абвгёзийкмнпртуфхцшъыэюя]ёв') then begin ufo:=11381; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстфхцчшщъыьэя]жв') then begin ufo:=11382; exit end;
	if Regex.IsMatch(d, '[бгджпрфцчшщъэ]зв') then begin ufo:=11383; exit end;
	if Regex.IsMatch(d, '[фъэ]ив') then begin ufo:=11384; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]йв') then begin ufo:=11385; exit end;
	if Regex.IsMatch(d, '[бвгдзпфчщъэ]кв') then begin ufo:=11386; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэю]лв') then begin ufo:=11387; exit end;
	if Regex.IsMatch(d, '[бвгджйклмнпстфхцчшщъьэю]мв') then begin ufo:=11388; exit end;
	if Regex.IsMatch(d, '[бвгджзклмнпрстфхцчшщъьэю]нв') then begin ufo:=11389; exit end;
	if Regex.IsMatch(d, '[ёщъэ]ов') then begin ufo:=11390; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнопрсфхцчшщъыьэюя]пв') then begin ufo:=11391; exit end;
	if Regex.IsMatch(d, '[бвжзйклмнпсфхцчшщъэю]рв') then begin ufo:=11392; exit end;
	if Regex.IsMatch(d, '[бфшщъэ]св') then begin ufo:=11393; exit end;
	if Regex.IsMatch(d, '[бгфхцшщъэ]тв') then begin ufo:=11394; exit end;
	if Regex.IsMatch(d, '[ъэ]ув') then begin ufo:=11395; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыьэюя]фв') then begin ufo:=11396; exit end;
	if Regex.IsMatch(d, '[жзптфхцчшщъэю]хв') then begin ufo:=11397; exit end;
	if Regex.IsMatch(d, '[бгдёжзлнпрфцчшщъыэ]цв') then begin ufo:=11398; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнпрстуфхцчшщъьэю]чв') then begin ufo:=11399; exit end;
	if Regex.IsMatch(d, '[бгджнпрфхцшщъэю]шв') then begin ufo:=11400; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]щв') then begin ufo:=11401; exit end;
	if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ыв') then begin ufo:=11402; exit end;
	if Regex.IsMatch(d, '[абгёийкопуфхцщъыьэюя]ьв') then begin ufo:=11403; exit end;
	if Regex.IsMatch(d, '[вгдёжйкпфхцчшщъыэ]юв') then begin ufo:=11404; exit end;
	if Regex.IsMatch(d, '[фцшщэ]яв') then begin ufo:=11405; exit end;
	if Regex.IsMatch(d, '[ёфъэ]аг') then begin ufo:=11406; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзклмнпрстфхцчшщъыьэюя]бг') then begin ufo:=11407; exit end;
	if Regex.IsMatch(d, '[бгзпсфцшщъэ]вг') then begin ufo:=11408; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийкмнпрстфхцчшщъыьэюя]гг') then begin ufo:=11409; exit end;
	if Regex.IsMatch(d, '[бвгджзийклмнпстуфхцчшщъыьэю]дг') then begin ufo:=11410; exit end;
	if Regex.IsMatch(d, '[фъэ]ег') then begin ufo:=11411; exit end;
	if Regex.IsMatch(d, '[абвгдёзийкмнпуфхцчшъыьэюя]ёг') then begin ufo:=11412; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклнпрстфхцчшщъыьэю]жг') then begin ufo:=11413; exit end;
	if Regex.IsMatch(d, '[бгджзйклмнпрстуфхцчшщъьэю]зг') then begin ufo:=11414; exit end;
	if Regex.IsMatch(d, '[пцъэ]иг') then begin ufo:=11415; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]йг') then begin ufo:=11416; exit end;
	if Regex.IsMatch(d, '[бгдёзнптфхцчшщъыэ]кг') then begin ufo:=11417; exit end;
	if Regex.IsMatch(d, '[бвгджзйкмнпрстфхцчшщъэ]лг') then begin ufo:=11418; exit end;
	if Regex.IsMatch(d, '[бгджзйклстуфхцчшщъьэю]мг') then begin ufo:=11419; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъьэю]нг') then begin ufo:=11420; exit end;
	if Regex.IsMatch(d, '[щъэ]ог') then begin ufo:=11421; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрсфхцчшщъыьэюя]рг') then begin ufo:=11422; exit end;
	if Regex.IsMatch(d, '[бгджпфцшщъэ]сг') then begin ufo:=11423; exit end;
	if Regex.IsMatch(d, '[бвгджзйклнпрстфхцчшщъьэ]тг') then begin ufo:=11424; exit end;
	if Regex.IsMatch(d, '[фщъэ]уг') then begin ufo:=11425; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыьэюя]фг') then begin ufo:=11426; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопстфхцчшщъьэю]хг') then begin ufo:=11427; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъыьэюя]цг') then begin ufo:=11428; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэю]чг') then begin ufo:=11429; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]шг') then begin ufo:=11430; exit end;
	if Regex.IsMatch(d, '[агеёжзийкопухчшщъыьэюя]ыг') then begin ufo:=11431; exit end;
	if Regex.IsMatch(d, '[абгеёийкмопуфхцщъыьэюя]ьг') then begin ufo:=11432; exit end;
	if Regex.IsMatch(d, '[абвгдёжзиклмнпрстуфхцчшщъыэюя]эг') then begin ufo:=11433; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийпфхцчшщъыэ]юг') then begin ufo:=11434; exit end;
	if Regex.IsMatch(d, '[гёжпфцшщъэ]яг') then begin ufo:=11435; exit end;
	if Regex.IsMatch(d, '[ёфъэ]ад') then begin ufo:=11436; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстфхцчшщъыьэюя]бд') then begin ufo:=11437; exit end;
	if Regex.IsMatch(d, '[бжпфцшщъэ]вд') then begin ufo:=11438; exit end;
	if Regex.IsMatch(d, '[бжзпсчшщъэ]гд') then begin ufo:=11439; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъыьэ]дд') then begin ufo:=11440; exit end;
	if Regex.IsMatch(d, '[ёхэю]ед') then begin ufo:=11441; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийкнптухцчшъыэюя]ёд') then begin ufo:=11442; exit end;
	if Regex.IsMatch(d, '[бджзклпфхцшщъэ]жд') then begin ufo:=11443; exit end;
	if Regex.IsMatch(d, '[гжзпсфцшщъэ]зд') then begin ufo:=11444; exit end;
	if Regex.IsMatch(d, '[фцъэ]ид') then begin ufo:=11445; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьюя]йд') then begin ufo:=11446; exit end;
	if Regex.IsMatch(d, '[бджзкпрсфцчшщъыэ]кд') then begin ufo:=11447; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэю]лд') then begin ufo:=11448; exit end;
	if Regex.IsMatch(d, '[бвгджзйклнпрстфхцчшщъьэю]мд') then begin ufo:=11449; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]нд') then begin ufo:=11450; exit end;
	if Regex.IsMatch(d, '[щъэ]од') then begin ufo:=11451; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]пд') then begin ufo:=11452; exit end;
	if Regex.IsMatch(d, '[бвгжзйклмнпрсуфхцчшщъыью]рд') then begin ufo:=11453; exit end;
	if Regex.IsMatch(d, '[бжпфшъэ]сд') then begin ufo:=11454; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэ]тд') then begin ufo:=11455; exit end;
	if Regex.IsMatch(d, '[щъэ]уд') then begin ufo:=11456; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]хд') then begin ufo:=11457; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмопрстуфхцчшщъыьэю]цд') then begin ufo:=11458; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъьэю]чд') then begin ufo:=11459; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэюя]шд') then begin ufo:=11460; exit end;
	if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ыд') then begin ufo:=11461; exit end;
	if Regex.IsMatch(d, '[абгеёжийкопуфхцъыьэюя]ьд') then begin ufo:=11462; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнопртуфхцчшщъыьэюя]эд') then begin ufo:=14163; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмпфхцчшщъыэ]юд') then begin ufo:=11464; exit end;
	if Regex.IsMatch(d, '[жпфцшщъэ]яд') then begin ufo:=11465; exit end;
	if Regex.IsMatch(d, '[ёъыэ]ае') then begin ufo:=11466; exit end;
	if Regex.IsMatch(d, '[бцщъэ]бе') then begin ufo:=11467; exit end;
	if Regex.IsMatch(d, '[пщъэ]ве') then begin ufo:=11468; exit end;
	if Regex.IsMatch(d, '[бгжзпфхцчшщъы]ге') then begin ufo:=11469; exit end;
	if Regex.IsMatch(d, '[пфшщъэ]де') then begin ufo:=11470; exit end;
	if Regex.IsMatch(d, '[ёзйухъэюя]ее') then begin ufo:=11471; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопртуфхцчшъыьэюя]ёе') then begin ufo:=11472; exit end;
	if Regex.IsMatch(d, '[фшщэ]же') then begin ufo:=11473; exit end;
	if Regex.IsMatch(d, '[гжфшщъэ]зе') then begin ufo:=11474; exit end;
	if Regex.IsMatch(d, '[ъэ]ие') then begin ufo:=11475; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йе') then begin ufo:=11475; exit end;
	if Regex.IsMatch(d, '[гзфхцщъэ]ке') then begin ufo:=11476; exit end;
	if Regex.IsMatch(d, '[жцъ]ле') then begin ufo:=11477; exit end;
	if Regex.IsMatch(d, '[жпцщъэ]ме') then begin ufo:=11478; exit end;
	if Regex.IsMatch(d, '[щъ]не') then begin ufo:=11479; exit end;
	if Regex.IsMatch(d, '[ёзщъэ]ое') then begin ufo:=11480; exit end;
	if Regex.IsMatch(d, '[фщъэ]пе') then begin ufo:=11481; exit end;
	if Regex.IsMatch(d, '[шъэ]ре') then begin ufo:=11482; exit end;
	if Regex.IsMatch(d, '[фшщъэ]се') then begin ufo:=11483; exit end;
	if Regex.IsMatch(d, '[фшщъэ]те') then begin ufo:=11484; exit end;
	if Regex.IsMatch(d, '[фъэ]уе') then begin ufo:=11485; exit end;
	if Regex.IsMatch(d, '[бгдёжкпрхцчшщъьэюя]фе') then begin ufo:=11486; exit end;
	if Regex.IsMatch(d, '[бвгджзйлмнпрфцчшщъьэ]хе') then begin ufo:=11487; exit end;
	if Regex.IsMatch(d, '[гфшщъэ]це') then begin ufo:=11488; exit end;
	if Regex.IsMatch(d, '[бфшщъэ]че') then begin ufo:=11489; exit end;
	if Regex.IsMatch(d, '[жфцшщъэ]ше') then begin ufo:=11490; exit end;
	if Regex.IsMatch(d, '[вгжзпфцчшщъэ]ще') then begin ufo:=11491; exit end;
	if Regex.IsMatch(d, '[агеёжийклмнопруфцчшщъыьэюя]ъе') then begin ufo:=11492; exit end;
	if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ые') then begin ufo:=11493; exit end;
	if Regex.IsMatch(d, '[агеёийкоухцщъыьэюя]ье') then begin ufo:=11494; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмптфхцчшщъыэю]юе') then begin ufo:=11495; exit end;
	if Regex.IsMatch(d, '[гёжпфшщъыэ]яе') then begin ufo:=11496; exit end;
	if Regex.IsMatch(d, '[ийоуфщъыьэя]аж') then begin ufo:=11497; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]бж') then begin ufo:=11498; exit end;
	if Regex.IsMatch(d, '[бдёжйпрсфцчшщъэю]вж') then begin ufo:=11499; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийлмнпрфхцчшщъыьэюя]гж') then begin ufo:=11500; exit end;
	if Regex.IsMatch(d, '[бвгджийкмнпстфхцчшщъыьэюя]дж') then begin ufo:=11501; exit end;
	if Regex.IsMatch(d, '[ёзуфхъэюя]еж') then begin ufo:=11502; exit end;
	if Regex.IsMatch(d, '[абвгёжзийкмнпуфхцчшъыьэюя]ёж') then begin ufo:=11503; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстфхцчшщъыьэюя]жж') then begin ufo:=11504; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]зж') then begin ufo:=11505; exit end;
	if Regex.IsMatch(d, '[пфцъэ]иж') then begin ufo:=11506; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йж') then begin ufo:=11507; exit end;
	if Regex.IsMatch(d, '[бвгдёжзкпрстфхцшщъэю]кж') then begin ufo:=11508; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрфхцчшщъьэ]лж') then begin ufo:=11509; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]мж') then begin ufo:=11510; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]нж') then begin ufo:=11511; exit end;
	if Regex.IsMatch(d, '[жфцщъэ]ож') then begin ufo:=11512; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]пж') then begin ufo:=11513; exit end;
	if Regex.IsMatch(d, '[бгдёжзлмнпрстфхцчшщъэ]рж') then begin ufo:=11514; exit end;
	if Regex.IsMatch(d, '[бвдзпстфцчшщъэ]сж') then begin ufo:=11515; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъыьэ]тж') then begin ufo:=11516; exit end;
	if Regex.IsMatch(d, '[пщъэ]уж') then begin ufo:=11517; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопстуфхцчшщъьэю]хж') then begin ufo:=11518; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмопрстуфхцчшщъыьэю]цж') then begin ufo:=11519; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъьэю]чж') then begin ufo:=11520; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъьэюя]шж') then begin ufo:=11521; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрсуфхцчшщъыьэюя]ъж') then begin ufo:=11522; exit end;
	if Regex.IsMatch(d, '[агеёжийкопуфхчшщъыьэюя]ыж') then begin ufo:=11523; exit end;
	if Regex.IsMatch(d, '[абгеёжийкмопуфхцчщъыьэюя]ьж') then begin ufo:=11524; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмптфхцчшщъыэя]юж') then begin ufo:=11525; exit end;
	if Regex.IsMatch(d, '[гдёжпуфхцчшщъэю]яж') then begin ufo:=11526; exit end;
	if Regex.IsMatch(d, '[ёъыэ]аз') then begin ufo:=11527; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклнпстуфхцчшщъыьэюя]бз') then begin ufo:=11528; exit end;
	if Regex.IsMatch(d, '[бжфшщъэ]вз') then begin ufo:=11529; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпстфхцчшщъыьэюя]гз') then begin ufo:=11530; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрсфхцчшщъьэю]дз') then begin ufo:=11531; exit end;
	if Regex.IsMatch(d, '[э]ез') then begin ufo:=11532; exit end;
	if Regex.IsMatch(d, '[абгдёжзийкмптуфхцчшъыэюя]ёз') then begin ufo:=11533; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстфхцчшщъыьэюя]жз') then begin ufo:=11534; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмпрстфхцчшщъыьэюя]зз') then begin ufo:=11535; exit end;
	if Regex.IsMatch(d, '[цъэ]из') then begin ufo:=11536; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]йз') then begin ufo:=11537; exit end;
	if Regex.IsMatch(d, '[бгдёжзйкнпртфхцчшщъю]кз') then begin ufo:=11538; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]лз') then begin ufo:=11539; exit end;
	if Regex.IsMatch(d, '[бгджзйклмнпрстфхцчшщъьэю]мз') then begin ufo:=11540; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъьэюя]нз') then begin ufo:=11541; exit end;
	if Regex.IsMatch(d, '[жзчщъэ]оз') then begin ufo:=11542; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]пз') then begin ufo:=11543; exit end;
	if Regex.IsMatch(d, '[вгдёжзйклмнпрстфхцчшщъыьэюя]рз') then begin ufo:=11544; exit end;
	if Regex.IsMatch(d, '[бгджзпстфхцчшщъэ]сз') then begin ufo:=11545; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмпртфхцчшщъыьэ]тз') then begin ufo:=11546; exit end;
	if Regex.IsMatch(d, '[ёщъэ]уз') then begin ufo:=11547; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопстфхцчшщъьэю]хз') then begin ufo:=11548; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъыьэю]цз') then begin ufo:=11549; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъьэю]чз') then begin ufo:=11550; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчщъыьэюя]шз') then begin ufo:=11551; exit end;
	if Regex.IsMatch(d, '[агеёжийкопуфхчшщъыьэюя]ыз') then begin ufo:=11552; exit end;
	if Regex.IsMatch(d, '[агеёжзийкмопуфхцщъыьэюя]ьз') then begin ufo:=11553; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэюя]эз') then begin ufo:=11554; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмптфхцчшщъыэ]юз') then begin ufo:=11555; exit end;
	if Regex.IsMatch(d, '[гёпфщъэ]яз') then begin ufo:=11556; exit end;
	if Regex.IsMatch(d, '[уъыьэ]аи') then begin ufo:=11557; exit end;
	if Regex.IsMatch(d, '[бжпфцчшщъэ]би') then begin ufo:=11558; exit end;
	if Regex.IsMatch(d, '[пфщъэ]ви') then begin ufo:=11559; exit end;
	if Regex.IsMatch(d, '[гджпфцчшщъэю]ги') then begin ufo:=11560; exit end;
	if Regex.IsMatch(d, '[бгпфцчшщъэ]ди') then begin ufo:=11561; exit end;
	if Regex.IsMatch(d, '[ёуъэюя]еи') then begin ufo:=11562; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпртуфхцчшъыэюя]ёи') then begin ufo:=11563; exit end;
	if Regex.IsMatch(d, '[бпфшщъэ]жи') then begin ufo:=11564; exit end;
	if Regex.IsMatch(d, '[бвгджзклпстфцчшщъыь]зи') then begin ufo:=11565; exit end;
	if Regex.IsMatch(d, '[ёъэ]ии') then begin ufo:=11566; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]йи') then begin ufo:=11567; exit end;
	if Regex.IsMatch(d, '[фщъ]ки') then begin ufo:=15168; exit end;
	if Regex.IsMatch(d, '[цщъ]ли') then begin ufo:=11569; exit end;
	if Regex.IsMatch(d, '[бпфцщъэ]ми') then begin ufo:=11570; exit end;
	if Regex.IsMatch(d, '[фъ]ни') then begin ufo:=11571; exit end;
	if Regex.IsMatch(d, '[аеёзйоущъыьэюя]ои') then begin ufo:=11572; exit end;
	if Regex.IsMatch(d, '[бфщъ]пи') then begin ufo:=11573; exit end;
	if Regex.IsMatch(d, '[жсцчшъ]ри') then begin ufo:=11574; exit end;
	if Regex.IsMatch(d, '[бжцшщъэ]си') then begin ufo:=11575; exit end;
	if Regex.IsMatch(d, '[жцщъ]ти') then begin ufo:=11576; exit end;
	if Regex.IsMatch(d, '[аеёийуфъыьэюя]уи') then begin ufo:=11577; exit end;
	if Regex.IsMatch(d, '[бжзпфцчшщъэ]фи') then begin ufo:=11578; exit end;
	if Regex.IsMatch(d, '[бгджклнптфхцчшщъэ]хи') then begin ufo:=11579; exit end;
	if Regex.IsMatch(d, '[бвгдёжзлмптфцчщъыэ]ци') then begin ufo:=11580; exit end;
	if Regex.IsMatch(d, '[цчшщъэ]чи') then begin ufo:=11581; exit end;
	if Regex.IsMatch(d, '[ёжфцшщъэ]ши') then begin ufo:=11582; exit end;
	if Regex.IsMatch(d, '[гдёжзклстфцчшщъыэ]щи') then begin ufo:=11583; exit end;
	if Regex.IsMatch(d, '[агеёжийкоухчшщъыьэюя]ыи') then begin ufo:=11584; exit end;
	if Regex.IsMatch(d, '[абгеёийкоухцъыьэюя]ьи') then begin ufo:=11585; exit end;
	if Regex.IsMatch(d, '[вгёжзйкмпфхцчшщъыэю]юи') then begin ufo:=11586; exit end;
	if Regex.IsMatch(d, '[гёфхцчшщъэ]яи') then begin ufo:=11587; exit end;
	if Regex.IsMatch(d, '[аеёиуцъыэюя]ай') then begin ufo:=11588; exit end;
	if Regex.IsMatch(d, '[ъэ]ей') then begin ufo:=11589; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийкмопрстуфхцчшщъыьэюя]ёй') then begin ufo:=11590; exit end;
	if Regex.IsMatch(d, '[аеёзийоуъыьэюя]ий') then begin ufo:=11591; exit end;
	if Regex.IsMatch(d, '[аеёийцщъыьэюя]ой') then begin ufo:=11592; exit end;
	if Regex.IsMatch(d, '[гдёжзймрсфхцчшщъыэю]уй') then begin ufo:=11593; exit end;
	if Regex.IsMatch(d, '[агеёжзийкоуфхцчшщъыьэюя]ый') then begin ufo:=11594; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзиклопрстфхцчшщъыьэюя]эй') then begin ufo:=11595; exit end;
	if Regex.IsMatch(d, '[абвгдеёжймопсуфхцчшщъыьэю]яй') then begin ufo:=11596; exit end;
	if Regex.IsMatch(d, '[ъэ]ак') then begin ufo:=11597; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэ]бк') then begin ufo:=11598; exit end;
	if Regex.IsMatch(d, '[бгджпфцчщъэ]вк') then begin ufo:=11599; exit end;
	if Regex.IsMatch(d, '[бвгджйкмнпстфхцчшщъыьэю]гк') then begin ufo:=11600; exit end;
	if Regex.IsMatch(d, '[бвгджйклмпрстфхцчшщъыьэю]дк') then begin ufo:=11601; exit end;
	if Regex.IsMatch(d, '[ёуэя]ек') then begin ufo:=11602; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйкпуфхцчшъыэюя]ёк') then begin ufo:=11603; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]жк') then begin ufo:=11604; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъыэю]зк') then begin ufo:=11605; exit end;
	if Regex.IsMatch(d, '[ъэ]ик') then begin ufo:=11606; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]йк') then begin ufo:=11607; exit end;
	if Regex.IsMatch(d, '[бгджзпфцчшщъэ]кк') then begin ufo:=11608; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэю]лк') then begin ufo:=11609; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэ]мк') then begin ufo:=11610; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэ]нк') then begin ufo:=11611; exit end;
	if Regex.IsMatch(d, '[щъэ]ок') then begin ufo:=11612; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнрсфхцчшщъыьэю]пк') then begin ufo:=11613; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрсфхцчшщъьэ]рк') then begin ufo:=11614; exit end;
	if Regex.IsMatch(d, '[ъ]ск') then begin ufo:=11615; exit end;
	if Regex.IsMatch(d, '[бвгджзлмптфцчшщъьэ]тк') then begin ufo:=11616; exit end;
	if Regex.IsMatch(d, '[ёъэ]ук') then begin ufo:=11617; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстухцчшщъыьэюя]фк') then begin ufo:=11618; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]хк') then begin ufo:=11619; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмопрстуфхцчшщъыьэюя]цк') then begin ufo:=11620; exit end;
	if Regex.IsMatch(d, '[бвгджзйкмнпрстфхцчшщъьэ]чк') then begin ufo:=11621; exit end;
	if Regex.IsMatch(d, '[бгджнпсфцчшщъэ]шк') then begin ufo:=11622; exit end;
	if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ык') then begin ufo:=11623; exit end;
	if Regex.IsMatch(d, '[абгеёийкмоуфхцъыьэюя]ьк') then begin ufo:=11624; exit end;
	if Regex.IsMatch(d, '[бгджнпрфцчшщъэ]эк') then begin ufo:=11625; exit end;
	if Regex.IsMatch(d, '[бвгдёжйкмпфхцчшщъыэ]юк') then begin ufo:=11626; exit end;
	if Regex.IsMatch(d, '[вгёкпцчшщъыэ]як') then begin ufo:=11627; exit end;
	if Regex.IsMatch(d, '[ъэ]ал') then begin ufo:=11628; exit end;
	if Regex.IsMatch(d, '[бпфцшщъэ]бл') then begin ufo:=11629; exit end;
	if Regex.IsMatch(d, '[бжпфцшщъэ]вл') then begin ufo:=11630; exit end;
	if Regex.IsMatch(d, '[пфшщъэ]гл') then begin ufo:=11631; exit end;
	if Regex.IsMatch(d, '[бжпфцчшщъэ]дл') then begin ufo:=11632; exit end;
	if Regex.IsMatch(d, '[ёухэ]ел') then begin ufo:=11633; exit end;
	if Regex.IsMatch(d, '[абгдёзийклмнпуфхцъыьэюя]ёл') then begin ufo:=11634; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстфхцчшщъыьэюя]жл') then begin ufo:=11635; exit end;
	if Regex.IsMatch(d, '[гджнпфцчшщъэ]зл') then begin ufo:=11636; exit end;
	if Regex.IsMatch(d, '[ъэ]ил') then begin ufo:=11637; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йл') then begin ufo:=11638; exit end;
	if Regex.IsMatch(d, '[гжпфцщъэ]кл') then begin ufo:=11639; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъью]лл') then begin ufo:=11640; exit end;
	if Regex.IsMatch(d, '[бвгджзйклнпстфхцчшщъьэю]мл') then begin ufo:=11641; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]нл') then begin ufo:=11642; exit end;
	if Regex.IsMatch(d, '[ёфчщъыэю]ол') then begin ufo:=11643; exit end;
	if Regex.IsMatch(d, '[жпцшщъэ]пл') then begin ufo:=11644; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъыью]рл') then begin ufo:=11645; exit end;
	if Regex.IsMatch(d, '[фщъэ]сл') then begin ufo:=11646; exit end;
	if Regex.IsMatch(d, '[бвгджзймптфхцчшщъыьэ]тл') then begin ufo:=11647; exit end;
	if Regex.IsMatch(d, '[щъэ]ул') then begin ufo:=11648; exit end;
	if Regex.IsMatch(d, '[абвгдёжзлмпсфцчшщъыэ]фл') then begin ufo:=11649; exit end;
	if Regex.IsMatch(d, '[бгджзнпфцчщъэю]хл') then begin ufo:=11650; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]цл') then begin ufo:=11651; exit end;
	if Regex.IsMatch(d, '[бвгдёпуфцчшщъэю]чл') then begin ufo:=11652; exit end;
	if Regex.IsMatch(d, '[гджпрсфцчщъэ]шл') then begin ufo:=11653; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]щл') then begin ufo:=11654; exit end;
	if Regex.IsMatch(d, '[агеёжзийкоуфхчшщъыьэюя]ыл') then begin ufo:=11655; exit end;
	if Regex.IsMatch(d, '[агеёжзийкопуфхцъыьэюя]ьл') then begin ufo:=11656; exit end;
	if Regex.IsMatch(d, '[бвгёжзлпрсфцчшщъыэ]эл') then begin ufo:=11657; exit end;
	if Regex.IsMatch(d, '[бвгдёжйкпсфхцчшщъыэя]юл') then begin ufo:=11558; exit end;
	if Regex.IsMatch(d, '[гёжфхцчшщъыэ]ял') then begin ufo:=11659; exit end;
	if Regex.IsMatch(d, '[ёъэ]ам') then begin ufo:=11660; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпрстфхцчшщъыьэюя]бм') then begin ufo:=11661; exit end;
	if Regex.IsMatch(d, '[бзпфшщъэ]вм') then begin ufo:=11662; exit end;
	if Regex.IsMatch(d, '[абвгдежзийклмнпрстфхцчшщъыьэюя]гм') then begin ufo:=11663; exit end;
	if Regex.IsMatch(d, '[бвгджклмпстфхцчшщъыьэю]дм') then begin ufo:=11664; exit end;
	if Regex.IsMatch(d, '[пфэ]ем') then begin ufo:=11665; exit end;
	if Regex.IsMatch(d, '[бвгёзйклмпуфхцшыэюя]ём') then begin ufo:=11666; exit end;
	if Regex.IsMatch(d, '[бвдеёжзийклмпрстфхцчшщъыьэюя]жм') then begin ufo:=11667; exit end;
	if Regex.IsMatch(d, '[бгдёжзйклмнпрстуфхцчшщъьэюя]зм') then begin ufo:=11668; exit end;
	if Regex.IsMatch(d, '[ъэ]им') then begin ufo:=11669; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьюя]йм') then begin ufo:=11670; exit end;
	if Regex.IsMatch(d, '[бгжзйкмпрфцчшщъэ]км') then begin ufo:=11671; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпртуфхцчшщъьэю]лм') then begin ufo:=11672; exit end;
	if Regex.IsMatch(d, '[бвгджйклмнпрсфхцчшщъьэю]мм') then begin ufo:=11673; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъью]нм') then begin ufo:=11674; exit end;
	if Regex.IsMatch(d, '[ёуъыэ]ом') then begin ufo:=11675; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстфхцчшщъыьэюя]пм') then begin ufo:=11676; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыью]рм') then begin ufo:=11677; exit end;
	if Regex.IsMatch(d, '[бпфцщъэ]см') then begin ufo:=11678; exit end;
	if Regex.IsMatch(d, '[бвгджзйлмнпртфхцчшщъыьэ]тм') then begin ufo:=11679; exit end;
	if Regex.IsMatch(d, '[пщъэ]ум') then begin ufo:=11680; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстфхцчшщъыьэюя]фм') then begin ufo:=11681; exit end;
	if Regex.IsMatch(d, '[бвгджзклмпрсфхцшщъэю]хм') then begin ufo:=11682; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмопрстуфхцчшщъыьэю]цм') then begin ufo:=11683; exit end;
	if Regex.IsMatch(d, '[абвгджзлмнпрстуфхцчшщъыьэю]чм') then begin ufo:=11684; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]шм') then begin ufo:=11685; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]щм') then begin ufo:=11686; exit end;
	if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ым') then begin ufo:=11687; exit end;
	if Regex.IsMatch(d, '[агеёжийкопуфхцъыьэюя]ьм') then begin ufo:=11688; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыьэя]эм') then begin ufo:=11689; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмпфхцчшщъыэя]юм') then begin ufo:=11690; exit end;
	if Regex.IsMatch(d, '[гёжфцчшщъэ]ям') then begin ufo:=11691; exit end;
	if Regex.IsMatch(d, '[ъэ]ан') then begin ufo:=11692; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэ]бн') then begin ufo:=11693; exit end;
	if Regex.IsMatch(d, '[гджпсфцшщъэ]вн') then begin ufo:=11694; exit end;
	if Regex.IsMatch(d, '[бвджкпфхцчшщъьэю]гн') then begin ufo:=11695; exit end;
	if Regex.IsMatch(d, '[бгджпсфцчшщъэю]дн') then begin ufo:=11696; exit end;
	if Regex.IsMatch(d, '[ёйуъэя]ен') then begin ufo:=11697; exit end;
	if Regex.IsMatch(d, '[гёийкпуфхцъыэюя]ён') then begin ufo:=11698; exit end;
	if Regex.IsMatch(d, '[бвгджзйкнпрстфхцчшщъьэ]жн') then begin ufo:=11699; exit end;
	if Regex.IsMatch(d, '[бпфцшщъэ]зн') then begin ufo:=11700; exit end;
	if Regex.IsMatch(d, '[ъэ]ин') then begin ufo:=11701; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэю]йн') then begin ufo:=11702; exit end;
	if Regex.IsMatch(d, '[бпфшщъэ]кн') then begin ufo:=11703; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэю]лн') then begin ufo:=11704; exit end;
	if Regex.IsMatch(d, '[бпрфшщъэ]мн') then begin ufo:=11705; exit end;
	if Regex.IsMatch(d, '[бгджзйклмпстфхцчшщъьэ]нн') then begin ufo:=11706; exit end;
	if Regex.IsMatch(d, '[ъэ]он') then begin ufo:=11707; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэюя]пн') then begin ufo:=11708; exit end;
	if Regex.IsMatch(d, '[вгжзйклмнпрсфхцчшщъьэю]рн') then begin ufo:=11709; exit end;
	if Regex.IsMatch(d, '[бпфцшщъэ]сн') then begin ufo:=11710; exit end;
	if Regex.IsMatch(d, '[бвгджзйлмптфцчшщъь]тн') then begin ufo:=11711; exit end;
	if Regex.IsMatch(d, '[ъэ]ун') then begin ufo:=11712; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзклмнпрстуфхцчшщъыьэюя]фн') then begin ufo:=11713; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]хн') then begin ufo:=11714; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъыьэю]цн') then begin ufo:=11715; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмнпрстфхцчшщъьэю]чн') then begin ufo:=11716; exit end;
	if Regex.IsMatch(d, '[бвгёжзйкмнпстфхцчшщъьэ]шн') then begin ufo:=11717; exit end;
	if Regex.IsMatch(d, '[авгдеёжзйклмнпрстфхцчшщъыьэю]щн') then begin ufo:=11718; exit end;
	if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ын') then begin ufo:=11719; exit end;
	if Regex.IsMatch(d, '[абгеёийкопуфхцъыьэюя]ьн') then begin ufo:=11720; exit end;
	if Regex.IsMatch(d, '[бвджзкнпрфхцчшщъыэ]эн') then begin ufo:=11721; exit end;
	if Regex.IsMatch(d, '[бгёжзкпфцчшщъыэ]юн') then begin ufo:=11722; exit end;
	if Regex.IsMatch(d, '[фшщъэ]ян') then begin ufo:=11723; exit end;
	if Regex.IsMatch(d, '[фщъэ]ао') then begin ufo:=11724; exit end;
	if Regex.IsMatch(d, '[пфшщъэ]бо') then begin ufo:=11725; exit end;
	if Regex.IsMatch(d, '[фшщъэ]во') then begin ufo:=11726; exit end;
	if Regex.IsMatch(d, '[пфщъ]го') then begin ufo:=11727; exit end;
	if Regex.IsMatch(d, '[пфшщъэ]до') then begin ufo:=11728; exit end;
	if Regex.IsMatch(d, '[ёйуъэюя]ео') then begin ufo:=11729; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпртуфхцчшъыьэюя]ёо') then begin ufo:=11730; exit end;
	if Regex.IsMatch(d, '[бёжклмнпртфхцчщъэюя]жо') then begin ufo:=11731; exit end;
	if Regex.IsMatch(d, '[гжзпфцшщъэ]зо') then begin ufo:=11732; exit end;
	if Regex.IsMatch(d, '[пфъэ]ио') then begin ufo:=11733; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъью]йо') then begin ufo:=11734; exit end;
	if Regex.IsMatch(d, '[щъ]ко') then begin ufo:=11735; exit end;
	if Regex.IsMatch(d, '[жцчщъэ]ло') then begin ufo:=11736; exit end;
	if Regex.IsMatch(d, '[пфъэ]мо') then begin ufo:=11737; exit end;
	if Regex.IsMatch(d, '[ъэ]но') then begin ufo:=11738; exit end;
	if Regex.IsMatch(d, '[аеёжйучщъыэя]оо') then begin ufo:=11739; exit end;
	if Regex.IsMatch(d, '[ъ]по') then begin ufo:=11740; exit end;
	if Regex.IsMatch(d, '[шщъэ]ро') then begin ufo:=11741; exit end;
	if Regex.IsMatch(d, '[фцшщъэ]со') then begin ufo:=11742; exit end;
	if Regex.IsMatch(d, '[щъ]то') then begin ufo:=11743; exit end;
	if Regex.IsMatch(d, '[ёпуфъыэю]уо') then begin ufo:=11744; exit end;
	if Regex.IsMatch(d, '[бджзнфхцчшщъэ]фо') then begin ufo:=11745; exit end;
	if Regex.IsMatch(d, '[жпфщъэ]хо') then begin ufo:=11746; exit end;
	if Regex.IsMatch(d, '[агёжйклоуфхчшщъыэю]цо') then begin ufo:=11747; exit end;
	if Regex.IsMatch(d, '[бгдёжзйкмнпрстфхцчшщъэ]чо') then begin ufo:=11748; exit end;
	if Regex.IsMatch(d, '[бгдёжзкмнптфхцчшщъыэю]шо') then begin ufo:=11749; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэя]що') then begin ufo:=11750; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрсуфхцчшщъыьэюя]ъо') then begin ufo:=11751; exit end;
	if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ыо') then begin ufo:=11752; exit end;
	if Regex.IsMatch(d, '[абгеёийкопуфхцщъыьэюя]ьо') then begin ufo:=11753; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмптфхцчшщъыэ]юо') then begin ufo:=11754; exit end;
	if Regex.IsMatch(d, '[гпфцшщъэ]яо') then begin ufo:=11755; exit end;
	if Regex.IsMatch(d, '[ёфъэ]ап') then begin ufo:=11756; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэюя]бп') then begin ufo:=11757; exit end;
	if Regex.IsMatch(d, '[бжпфшщъэ]вп') then begin ufo:=11758; exit end;
	if Regex.IsMatch(d, '[бвгджийклмнпстфхцчшщъыьэюя]гп') then begin ufo:=11759; exit end;
	if Regex.IsMatch(d, '[бвгджийклмнпсфхцчшщъьэю]дп') then begin ufo:=11760; exit end;
	if Regex.IsMatch(d, '[ёйуъэюя]еп') then begin ufo:=11761; exit end;
	if Regex.IsMatch(d, '[абвгдёзийкмнпуфхцчъыэюя]ёп') then begin ufo:=11762; exit end;//ж
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]жп') then begin ufo:=11763; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъыьэюя]зп') then begin ufo:=11764; exit end;
	if Regex.IsMatch(d, '[фъэ]ип') then begin ufo:=11765; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъью]йп') then begin ufo:=11766; exit end;
	if Regex.IsMatch(d, '[бвжзкпрфцчшщъэ]кп') then begin ufo:=11767; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэю]лп') then begin ufo:=11768; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]мп') then begin ufo:=11769; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэюя]нп') then begin ufo:=11770; exit end;
	if Regex.IsMatch(d, '[фщъэ]оп') then begin ufo:=11771; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнпрстфхцчшщъыьэюя]пп') then begin ufo:=11772; exit end;
	if Regex.IsMatch(d, '[бвгжзйклмпрсуфхцчшщъьэя]рп') then begin ufo:=11773; exit end;
	if Regex.IsMatch(d, '[бфшщъэ]сп') then begin ufo:=11774; exit end;
	if Regex.IsMatch(d, '[бвгджзйлмптфхцчшщъыьэ]тп') then begin ufo:=11775; exit end;
	if Regex.IsMatch(d, '[ъэю]уп') then begin ufo:=11776; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъыьэюя]фп') then begin ufo:=11777; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]хп') then begin ufo:=11778; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмопрстуфхцчшщъыьэю]цп') then begin ufo:=11779; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъьэю]чп') then begin ufo:=11780; exit end;
	if Regex.IsMatch(d, '[бвгдёжзклмнпрстуфхцчшщъэю]шп') then begin ufo:=11781; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]щп') then begin ufo:=11782; exit end;
	if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ып') then begin ufo:=11783; exit end;
	if Regex.IsMatch(d, '[абгеёжийкопуфхцъыьэюя]ьп') then begin ufo:=11784; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзклмнопрстуфхцчшщъыэя]эп') then begin ufo:=11785; exit end;
	if Regex.IsMatch(d, '[бвгёжйкмтфхцчшщъыэ]юп') then begin ufo:=11786; exit end;
	if Regex.IsMatch(d, '[гжфцшщъэ]яп') then begin ufo:=11787; exit end;
	if Regex.IsMatch(d, '[щъэ]ар') then begin ufo:=11788; exit end;
	if Regex.IsMatch(d, '[бпфщъэ]бр') then begin ufo:=11789; exit end;
	if Regex.IsMatch(d, '[бпъэ]вр') then begin ufo:=11790; exit end;
	if Regex.IsMatch(d, '[гпфцшщъэ]гр') then begin ufo:=11791; exit end;
	if Regex.IsMatch(d, '[бпрфшщъэ]др') then begin ufo:=11792; exit end;
	if Regex.IsMatch(d, '[ёйэя]ер') then begin ufo:=11793; exit end;
	if Regex.IsMatch(d, '[абгёийклруфхцшъыьэюя]ёр') then begin ufo:=11794; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстфхцчшщъыьэюя]жр') then begin ufo:=11795; exit end;
	if Regex.IsMatch(d, '[бгджйлнпрстфцчшщъэю]зр') then begin ufo:=11796; exit end;
	if Regex.IsMatch(d, '[щъэ]ир') then begin ufo:=11797; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]йр') then begin ufo:=11798; exit end;
	if Regex.IsMatch(d, '[бжфшщъэ]кр') then begin ufo:=11799; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]лр') then begin ufo:=11800; exit end;
	if Regex.IsMatch(d, '[бжйкпрфцчшщъэ]мр') then begin ufo:=11801; exit end;
	if Regex.IsMatch(d, '[бвгджмпрфцчшщъэ]нр') then begin ufo:=11802; exit end;
	if Regex.IsMatch(d, '[ёущъьэ]ор') then begin ufo:=11803; exit end;
	if Regex.IsMatch(d, '[фъэ]пр') then begin ufo:=11804; exit end;
	if Regex.IsMatch(d, '[вгджзйклмнрстуфхцчшщъыьэюя]рр') then begin ufo:=11805; exit end;
	if Regex.IsMatch(d, '[бжпрфцшщъэ]ср') then begin ufo:=11806; exit end;
	if Regex.IsMatch(d, '[бпфщъэ]тр') then begin ufo:=11807; exit end;
	if Regex.IsMatch(d, '[ёпъэю]ур') then begin ufo:=11808; exit end;
	if Regex.IsMatch(d, '[бгжпрфцчшщъэ]фр') then begin ufo:=11809; exit end;
	if Regex.IsMatch(d, '[бгджзпрфцчщъэ]хр') then begin ufo:=11810; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъыьэюя]цр') then begin ufo:=11811; exit end;
	if Regex.IsMatch(d, '[бгджзпрфцчшщъэю]чр') then begin ufo:=11812; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпстуфхцчшщъыьэюя]шр') then begin ufo:=11813; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпрстуфхцчшщъыьэюя]щр') then begin ufo:=11814; exit end;
	if Regex.IsMatch(d, '[агеёжийкоухчшщъыьэюя]ыр') then begin ufo:=11815; exit end;
	if Regex.IsMatch(d, '[абвгеёжийкопуфхцъыьэюя]ьр') then begin ufo:=11816; exit end;
	if Regex.IsMatch(d, '[абгдеёжзийклмнопруфхцчшщъыэюя]эр') then begin ufo:=11817; exit end;
	if Regex.IsMatch(d, '[бгдёжзйкхцчщъыэя]юр') then begin ufo:=11818; exit end;
	if Regex.IsMatch(d, '[жпфцчшщъэ]яр') then begin ufo:=11819; exit end;
	if Regex.IsMatch(d, '[ёъэ]ас') then begin ufo:=11820; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпстфхцчшщъыьэюя]бс') then begin ufo:=11821; exit end;
	if Regex.IsMatch(d, '[фщъэ]вс') then begin ufo:=11822; exit end;
	if Regex.IsMatch(d, '[бвгджзйкмнпстфхцчшщъыьэюя]гс') then begin ufo:=11823; exit end;
	if Regex.IsMatch(d, '[бвгдйклмпсфхцчшщъыьэ]дс') then begin ufo:=11824; exit end;
	if Regex.IsMatch(d, '[зэ]ес') then begin ufo:=11825; exit end;
	if Regex.IsMatch(d, '[абгдёзийкмртуфхцшъыэюя]ёс') then begin ufo:=11826; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнпрстфхцчшщъыьэю]жс') then begin ufo:=11827; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэюя]зс') then begin ufo:=11828; exit end;
	if Regex.IsMatch(d, '[ъэ]ис') then begin ufo:=11829; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]йс') then begin ufo:=11830; exit end;
	if Regex.IsMatch(d, '[бгджпрфшщъ]кс') then begin ufo:=11831; exit end;
	//if Regex.IsMatch(d, '[бвгджзйклмнптфхцчшщъьэю]лс') then begin ufo:=11832; exit end;// ЛС-личные сообщения
	if Regex.IsMatch(d, '[бвгджйклнпрстфхцчшщъьэю]мс') then begin ufo:=11833; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмпстфхцчшщъьэю]нс') then begin ufo:=11834; exit end;
	if Regex.IsMatch(d, '[щъэ]ос') then begin ufo:=11835; exit end;
	if Regex.IsMatch(d, '[абвгдёжзклнрсфхцчшщъыьэюя]пс') then begin ufo:=11836; exit end;
	if Regex.IsMatch(d, '[вгжзйклмнпрсфхцчшщъьэя]рс') then begin ufo:=11837; exit end;
	if Regex.IsMatch(d, '[гпфшщъэ]сс') then begin ufo:=11838; exit end;
	if Regex.IsMatch(d, '[бвгджзйлмптфхцчшщъьэ]тс') then begin ufo:=11839; exit end;
	if Regex.IsMatch(d, '[фъэ]ус') then begin ufo:=11840; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзклмнпрстуфхцчшщъыьэюя]фс') then begin ufo:=11841; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]хс') then begin ufo:=11842; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмопрстуфхцчшщъыэю]цс') then begin ufo:=11843; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъьэю]чс') then begin ufo:=11844; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]шс') then begin ufo:=11845; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]щс') then begin ufo:=11846; exit end;
	if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ыс') then begin ufo:=11847; exit end;
	if Regex.IsMatch(d, '[абгеёийкопуфхцъыьэюя]ьс') then begin ufo:=11848; exit end;
	if Regex.IsMatch(d, '[бгдеёжзийклмнпрстуфхцчшщъьэюя]эс') then begin ufo:=11849; exit end;
	if Regex.IsMatch(d, '[вгёжзйкмтфхцчшщъыэ]юс') then begin ufo:=11850; exit end;
	if Regex.IsMatch(d, '[фшщэ]яс') then begin ufo:=11851; exit end;
	if Regex.IsMatch(d, '[ъэ]ат') then begin ufo:=11852; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]бт') then begin ufo:=11853; exit end;
	if Regex.IsMatch(d, '[бпфцчшщъэ]вт') then begin ufo:=11854; exit end;
	if Regex.IsMatch(d, '[абвгджзийклмнпстфхцчшщъыьэюя]гт') then begin ufo:=11855; exit end;
	if Regex.IsMatch(d, '[бвдйклмпстфхцчшщъыьэю]дт') then begin ufo:=11856; exit end;
	if Regex.IsMatch(d, '[ёйъэю]ет') then begin ufo:=11857; exit end;
	if Regex.IsMatch(d, '[бгёийкуфхцъыэюя]ёт') then begin ufo:=11858; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]жт') then begin ufo:=11859; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъьэюя]зт') then begin ufo:=11860; exit end;
	if Regex.IsMatch(d, '[ъэ]ит') then begin ufo:=11861; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэю]йт') then begin ufo:=11862; exit end;
	if Regex.IsMatch(d, '[бвгжзпфцшщъэ]кт') then begin ufo:=11863; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпртфхцчшщъьэю]лт') then begin ufo:=11864; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]мт') then begin ufo:=11865; exit end;
	if Regex.IsMatch(d, '[бвгджзклмнпрстфхцчшщъью]нт') then begin ufo:=11866; exit end;
	if Regex.IsMatch(d, '[э]от') then begin ufo:=11867; exit end;
	if Regex.IsMatch(d, '[бвгдёжзлмнрсфцчшщъыэ]пт') then begin ufo:=11868; exit end;
	if Regex.IsMatch(d, '[бгджзйлпрсфцчшщъьэ]рт') then begin ufo:=11869; exit end;
	if Regex.IsMatch(d, '[щъэ]ст') then begin ufo:=11870; exit end;
	if Regex.IsMatch(d, '[бвгджзйлмнптфхцчшщъыьэ]тт') then begin ufo:=11871; exit end;
	if Regex.IsMatch(d, '[ъэ]ут') then begin ufo:=11872; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстфхцчшщъыьэюя]фт') then begin ufo:=11873; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпстфхцчшщъьэю]хт') then begin ufo:=11874; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэю]цт') then begin ufo:=11875; exit end;
	if Regex.IsMatch(d, '[пщъэ]чт') then begin ufo:=11876; exit end;
	if Regex.IsMatch(d, '[бгджзнпрфцчщъэ]шт') then begin ufo:=11877; exit end;
	if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ыт') then begin ufo:=11878; exit end;
	if Regex.IsMatch(d, '[абгеёийкоуфхцщъыьэюя]ьт') then begin ufo:=11879; exit end;
	if Regex.IsMatch(d, '[фъэ]эт') then begin ufo:=11880; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмпфхцчшщыэ]ют') then begin ufo:=11881; exit end;
	if Regex.IsMatch(d, '[гфцшщэ]ят') then begin ufo:=11882; exit end;
	if Regex.IsMatch(d, '[ёйуфъэ]ау') then begin ufo:=11883; exit end;
	if Regex.IsMatch(d, '[бгпфчщъэ]бу') then begin ufo:=11884; exit end;
	if Regex.IsMatch(d, '[бвжпсфцшщъэ]ву') then begin ufo:=11885; exit end;
	if Regex.IsMatch(d, '[гпфчщъэ]гу') then begin ufo:=11886; exit end;
	if Regex.IsMatch(d, '[пфшщъэ]ду') then begin ufo:=11887; exit end;
	if Regex.IsMatch(d, '[аёзйпуъэюя]еу') then begin ufo:=11888; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпртуфхцчшъыьэюя]ёу') then begin ufo:=11889; exit end;
	if Regex.IsMatch(d, '[бгдпстфцчшщъьэю]жу') then begin ufo:=11890; exit end;
	if Regex.IsMatch(d, '[бгёжкнпрсфцчшщъыэя]зу') then begin ufo:=11891; exit end;
	if Regex.IsMatch(d, '[жфцъэ]иу') then begin ufo:=11892; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэю]йу') then begin ufo:=11893; exit end;
	if Regex.IsMatch(d, '[фщъэ]ку') then begin ufo:=11894; exit end;
	if Regex.IsMatch(d, '[фцчщъэ]лу') then begin ufo:=11895; exit end;
	if Regex.IsMatch(d, '[пфчщъэ]му') then begin ufo:=11896; exit end;
	if Regex.IsMatch(d, '[фъэ]ну') then begin ufo:=11897; exit end;
	if Regex.IsMatch(d, '[аеёжзийоуфщъьэюя]оу') then begin ufo:=11898; exit end;
	if Regex.IsMatch(d, '[бфшщъэ]пу') then begin ufo:=11899; exit end;
	if Regex.IsMatch(d, '[цщъэ]ру') then begin ufo:=11900; exit end;
	if Regex.IsMatch(d, '[гжпфшщъэ]су') then begin ufo:=11901; exit end;
	if Regex.IsMatch(d, '[бцщъ]ту') then begin ufo:=11902; exit end;
	if Regex.IsMatch(d, '[ёйопуфъыьэюя]уу') then begin ufo:=11903; exit end;
	if Regex.IsMatch(d, '[бгдёжзлпртфхцчшщъьэ]фу') then begin ufo:=11904; exit end;
	if Regex.IsMatch(d, '[бвгджзнпфцчшщъэ]ху') then begin ufo:=11905; exit end;
	if Regex.IsMatch(d, '[агёжйклосуфхцчщъыэюя]цу') then begin ufo:=11906; exit end;
	if Regex.IsMatch(d, '[бжфцшщъэ]чу') then begin ufo:=11907; exit end;
	if Regex.IsMatch(d, '[жфцшщъэ]шу') then begin ufo:=11908; exit end;
	if Regex.IsMatch(d, '[вгдёжзйклмнпрстфхцчшщъэ]щу') then begin ufo:=11909; exit end;
	if Regex.IsMatch(d, '[агеёжийкоуфхчшщъыьэюя]ыу') then begin ufo:=11910; exit end;
	if Regex.IsMatch(d, '[абгеёжийкопуфхцщъыьэюя]ьу') then begin ufo:=11911; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмптфхцчшщъыэя]юу') then begin ufo:=11912; exit end;
	if Regex.IsMatch(d, '[вгёжйпфшщъэ]яу') then begin ufo:=11913; exit end;
	if Regex.IsMatch(d, '[абёжиопуфхщъыэю]аф') then begin ufo:=11914; exit end;
	if Regex.IsMatch(d, '[бвгджзйнпрстфхцчшщъыэ]вф') then begin ufo:=11915; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмопстфхцчшщъыьэюя]гф') then begin ufo:=11916; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъыьэю]дф') then begin ufo:=11917; exit end;
	if Regex.IsMatch(d, '[агёзйлуфхшщъьэю]еф') then begin ufo:=11918; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопртуфхцчшщъыьэюя]ёф') then begin ufo:=11919; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]зф') then begin ufo:=11920; exit end;
	if Regex.IsMatch(d, '[ёйпуфхъэюя]иф') then begin ufo:=11921; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнпрстуфхцчшщъьэюя]йф') then begin ufo:=11922; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйкмопрстуфхцчшщъэюя]кф') then begin ufo:=11923; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопстуфхцчшщъьэю]лф') then begin ufo:=11924; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъьэюя]мф') then begin ufo:=11925; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэюя]нф') then begin ufo:=11926; exit end;
	if Regex.IsMatch(d, '[дёзфцшщъыэ]оф') then begin ufo:=11927; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]пф') then begin ufo:=11928; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстуфхцчшщъыьэюя]рф') then begin ufo:=11929; exit end;
	if Regex.IsMatch(d, '[абгджзклмпртфцчшщъыэюя]сф') then begin ufo:=11930; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнптфхцчшщъыьэю]тф') then begin ufo:=11931; exit end;
	if Regex.IsMatch(d, '[вдеёжзйлпсухчшщъыэю]уф') then begin ufo:=11932; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстфхцчшщъыьюя]фф') then begin ufo:=11933; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъьэю]хф') then begin ufo:=11934; exit end;
	if Regex.IsMatch(d, '[агдеёжийклмопрсуфхцчшщъыьэюя]ыф') then begin ufo:=11935; exit end;
	if Regex.IsMatch(d, '[абвгеёжзийкмнопуфхцчщъыьэюя]ьф') then begin ufo:=11936; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстуфхцчшщъыьэя]эф') then begin ufo:=11937; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпфхцчшщъыэюя]юф') then begin ufo:=11938; exit end;
	if Regex.IsMatch(d, '[вгеёжзйкмнпртуфхцчшщъыэюя]яф') then begin ufo:=11939; exit end;
	if Regex.IsMatch(d, '[ёъэ]ах') then begin ufo:=11940; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэюя]бх') then begin ufo:=11941; exit end;
	if Regex.IsMatch(d, '[бвгжрфхцщъыэ]вх') then begin ufo:=11942; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстфхцчшщъыьэюя]гх') then begin ufo:=11943; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэю]дх') then begin ufo:=11944; exit end;
	if Regex.IsMatch(d, '[ёзщэ]ех') then begin ufo:=11945; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнптуфхцчшъыьэюя]ёх') then begin ufo:=11946; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнопрстуфхцчшщъыьэюя]зх') then begin ufo:=11947; exit end;
	if Regex.IsMatch(d, '[пфцъэ]их') then begin ufo:=11948; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йх') then begin ufo:=11949; exit end;
	if Regex.IsMatch(d, '[вгдёжзйкнпрсфхцчшщъэюя]кх') then begin ufo:=11950; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнопрстфхцчшщъьэю]лх') then begin ufo:=11951; exit end;
	if Regex.IsMatch(d, '[бвгджйклмнпстуфхцчшщъьэю]мх') then begin ufo:=11952; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнпрстуфхцчшщъьэюя]нх') then begin ufo:=11953; exit end;
	if Regex.IsMatch(d, '[жфщъэ]ох') then begin ufo:=11954; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]рх') then begin ufo:=11955; exit end;
	if Regex.IsMatch(d, '[дёжпсфхцчшщъэю]сх') then begin ufo:=11956; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмпрстфхцчшщъыьэ]тх') then begin ufo:=11957; exit end;
	if Regex.IsMatch(d, '[фхшщъыэ]ух') then begin ufo:=11958; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъьэю]хх') then begin ufo:=11959; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]цх') then begin ufo:=11960; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]чх') then begin ufo:=11961; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъыьэюя]шх') then begin ufo:=11962; exit end;
	if Regex.IsMatch(d, '[агеёжзийкоуфхчшщъыьэюя]ых') then begin ufo:=11963; exit end;
	if Regex.IsMatch(d, '[абвгеёжийкмопуфхцщъыьэюя]ьх') then begin ufo:=11964; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэю]эх') then begin ufo:=11965; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмпфхцчшщъыэя]юх') then begin ufo:=11966; exit end;
	if Regex.IsMatch(d, '[гжпфцшщъэ]ях') then begin ufo:=11967; exit end;
	if Regex.IsMatch(d, '[геёжйосуфчшщъыьэюя]ац') then begin ufo:=11968; exit end;
	if Regex.IsMatch(d, '[абвгдёзийклмнопрстфхцчшщъыьэюя]бц') then begin ufo:=11969; exit end;
	if Regex.IsMatch(d, '[бвгдёжзнпрстфхцчшщъэю]вц') then begin ufo:=11970; exit end;
	if Regex.IsMatch(d, '[бвгдеёжйклмнпстуфхцчшщъыьэюя]дц') then begin ufo:=11971; exit end;
	if Regex.IsMatch(d, '[агеёйкуфхчъьэюя]ец') then begin ufo:=11972; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшъыьэюя]ёц') then begin ufo:=11973; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]жц') then begin ufo:=11974; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]зц') then begin ufo:=11975; exit end;
	if Regex.IsMatch(d, '[гёйхцшъэ]иц') then begin ufo:=11976; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнпрстуфхцчшщъьэю]йц') then begin ufo:=11977; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклпрстуфхцчшщъыьэю]кц') then begin ufo:=11978; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэю]лц') then begin ufo:=11979; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]мц') then begin ufo:=11980; exit end;
	if Regex.IsMatch(d, '[бвгджзйкмнпрстуфхцчшщъыьэю]нц') then begin ufo:=11981; exit end;
	if Regex.IsMatch(d, '[бвёжзуфхцчшщъыэю]оц') then begin ufo:=11982; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстфхцчшщъыьэюя]пц') then begin ufo:=11983; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпрстфхцчшщъыьэюя]рц') then begin ufo:=11984; exit end;
	if Regex.IsMatch(d, '[бвгдёжзмпрстфцчшщъыэю]сц') then begin ufo:=11985; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэя]тц') then begin ufo:=11986; exit end;
	if Regex.IsMatch(d, '[абвгеёжзйлнпухцшщъыэюя]уц') then begin ufo:=11987; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъьэюя]хц') then begin ufo:=11988; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъыьэю]цц') then begin ufo:=11989; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]чц') then begin ufo:=11990; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъьэюя]шц') then begin ufo:=11991; exit end;
	if Regex.IsMatch(d, '[агдеёжзийклнопсуфхчшщъыьэюя]ыц') then begin ufo:=11992; exit end;
	if Regex.IsMatch(d, '[абгеёзийкмопруфхцчшщъыьэюя]ьц') then begin ufo:=11993; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйкмнпртфхцчщъыэюя]юц') then begin ufo:=11994; exit end;
	if Regex.IsMatch(d, '[вгдеёжзйкпртуфхцчшщъыьэю]яц') then begin ufo:=11995; exit end;
	if Regex.IsMatch(d, '[ёщъэю]ач') then begin ufo:=11996; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстфхцчшщъыьэя]бч') then begin ufo:=11997; exit end;
	if Regex.IsMatch(d, '[бгджзпрсфшщъэ]вч') then begin ufo:=11998; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийкмнпрстфхцчшщъыьэю]гч') then begin ufo:=11999; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]дч') then begin ufo:=12000; exit end;
	if Regex.IsMatch(d, '[гёзйуфхъэюя]еч') then begin ufo:=12001; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийкмнпртуфхцчшъыьэюя]ёч') then begin ufo:=12002; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]жч') then begin ufo:=12003; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэю]зч') then begin ufo:=12004; exit end;
	if Regex.IsMatch(d, '[ъэ]ич') then begin ufo:=12005; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йч') then begin ufo:=12006; exit end;
	if Regex.IsMatch(d, '[бвгдёжзпрсфхцчшщъэ]кч') then begin ufo:=12007; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]лч') then begin ufo:=12008; exit end;
	if Regex.IsMatch(d, '[бвгджйклмнпрстфхцчшщъьэ]мч') then begin ufo:=12009; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъьэю]нч') then begin ufo:=12010; exit end;
	if Regex.IsMatch(d, '[щъэ]оч') then begin ufo:=12011; exit end;
	if Regex.IsMatch(d, '[бвгджзлмнпртфцчшщъыэю]пч') then begin ufo:=12012; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрсфхцчшщъыьэю]рч') then begin ufo:=12013; exit end;
	if Regex.IsMatch(d, '[бдзфшщъэ]сч') then begin ufo:=12014; exit end;
	if Regex.IsMatch(d, '[бвгджзйлмнптфхцчшщъыьэ]тч') then begin ufo:=12015; exit end;
	if Regex.IsMatch(d, '[фщъэ]уч') then begin ufo:=12016; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзиклмнопрстуфхцчшщъыьэюя]фч') then begin ufo:=12017; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнопстфхцчшщъьэю]хч') then begin ufo:=12018; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъыьэюя]цч') then begin ufo:=12019; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъьэю]чч') then begin ufo:=12020; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]шч') then begin ufo:=12021; exit end;
	if Regex.IsMatch(d, '[агеёжзийкоуфхчшщъыьэюя]ыч') then begin ufo:=12022; exit end;
	if Regex.IsMatch(d, '[абвгеёийкопуфхцщъыьэюя]ьч') then begin ufo:=12023; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмпстфхцчшщъыэ]юч') then begin ufo:=12024; exit end;
	if Regex.IsMatch(d, '[гёжйпфцчшщъыэ]яч') then begin ufo:=120225; exit end;
	if Regex.IsMatch(d, '[аеёийофщъыьэюя]аш') then begin ufo:=12026; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнпрстуфхцчшщъыьэю]бш') then begin ufo:=12027; exit end;
	if Regex.IsMatch(d, '[бвгджзкпртфцшщъэю]вш') then begin ufo:=12028; exit end;
	if Regex.IsMatch(d, '[абвгджзйклмнпрстфхцчшщъыьэюя]гш') then begin ufo:=12029; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыэю]дш') then begin ufo:=12030; exit end;
	if Regex.IsMatch(d, '[ёзйфхъэю]еш') then begin ufo:=12031; exit end;
	if Regex.IsMatch(d, '[бгёжзийкптуфхцчшъыэюя]ёш') then begin ufo:=12032; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстфхцчшщъыьэюя]жш') then begin ufo:=12033; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопстуфхцчшщъыьэю]зш') then begin ufo:=12034; exit end;
	if Regex.IsMatch(d, '[цъэ]иш') then begin ufo:=12035; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йш') then begin ufo:=12036; exit end;
	if Regex.IsMatch(d, '[бвгжзйлмнпрстфхцчшщъьэюя]кш') then begin ufo:=12037; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]лш') then begin ufo:=12038; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмнпстфхцчшщъьэя]мш') then begin ufo:=12039; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]нш') then begin ufo:=12040; exit end;
	if Regex.IsMatch(d, '[ёжчшщъэ]ош') then begin ufo:=12041; exit end;
	if Regex.IsMatch(d, '[бгдёжзкмпрстфхцчшщъыэя]пш') then begin ufo:=12042; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэюя]рш') then begin ufo:=12043; exit end;
	if Regex.IsMatch(d, '[бдёжзлмпрстфхцчшщъэ]сш') then begin ufo:=12044; exit end;
	if Regex.IsMatch(d, '[абвгджзйклмнпртфхцчшщъыьэюя]тш') then begin ufo:=12045; exit end;
	if Regex.IsMatch(d, '[зфшщъэ]уш') then begin ufo:=12046; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]хш') then begin ufo:=12047; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстфхцчшщъыьэюя]чш') then begin ufo:=12048; exit end;
	if Regex.IsMatch(d, '[бвгдежзийклмнопрстуфхцчщъыьэюя]шш') then begin ufo:=12049; exit end;
	if Regex.IsMatch(d, '[агеёжзийкостуфхчшщъыьэюя]ыш') then begin ufo:=12050; exit end;
	if Regex.IsMatch(d, '[абвгеёжийкмопуфхцъыьэюя]ьш') then begin ufo:=12051; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзиклмнопрстуфхцчшщъыьэюя]эш') then begin ufo:=12052; exit end;
	if Regex.IsMatch(d, '[бвгеёжзийклмпсфхцчшщъыэя]юш') then begin ufo:=12053; exit end;
	if Regex.IsMatch(d, '[бвгёжзфхцшщъэ]яш') then begin ufo:=12054; exit end;
	if Regex.IsMatch(d, '[абгеёийкопсуфхцщъыьэюя]ащ') then begin ufo:=12055; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэюя]бщ') then begin ufo:=12056; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстуфхцчшщъыэюя]вщ') then begin ufo:=12057; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]дщ') then begin ufo:=12058; exit end;
	if Regex.IsMatch(d, '[фшъэ]ещ') then begin ufo:=12059; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрсуфхцчшщъыьэюя]ёщ') then begin ufo:=12060; exit end;
	if Regex.IsMatch(d, '[бгдеёзсфъэ]ищ') then begin ufo:=12061; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстуфхцчшщъьэюя]йщ') then begin ufo:=12062; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйкнпрстуфхчшщъыэюя]кщ') then begin ufo:=1206; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнпрстфхцчшщъыьэюя]лщ') then begin ufo:=12064; exit end;
	if Regex.IsMatch(d, '[абгдеёжзйклмнпрсуфхцчшщъьэю]мщ') then begin ufo:=12065; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъыьэюя]нщ') then begin ufo:=12066; exit end;
	if Regex.IsMatch(d, '[ёжфчшщъэю]ощ') then begin ufo:=12067; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстфхцчшщъыьэюя]пщ') then begin ufo:=12068; exit end;
	if Regex.IsMatch(d, '[бвгеёжзийклмнпрсуфхцчшщъыьэюя]рщ') then begin ufo:=12069; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнопрстуфцчшщъыьэюя]сщ') then begin ufo:=12070; exit end;
	if Regex.IsMatch(d, '[бвгдёжзкнпртуфхцчшщъьэю]тщ') then begin ufo:=12071; exit end;
	if Regex.IsMatch(d, '[абеёзийоруфхшъыьэя]ущ') then begin ufo:=12072; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъьэюя]хщ') then begin ufo:=12073; exit end;
	if Regex.IsMatch(d, '[абгдеёжзийклмопртуфхчшщъыьэюя]ыщ') then begin ufo:=12074; exit end;
	if Regex.IsMatch(d, '[абвгдеёжийкмопрсуфхцчшщъыьэюя]ьщ') then begin ufo:=12075; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийкмнпстфхцчшщъыэю]ющ') then begin ufo:=12076; exit end;
	if Regex.IsMatch(d, '[геёжфхцчшщъыьэю]ящ') then begin ufo:=12077; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]бъ') then begin ufo:=12078; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмпстуфхцчшщъыьэюя]въ') then begin ufo:=12079; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]дъ') then begin ufo:=12080; exit end;
	if Regex.IsMatch(d, '[бгдеёжзйклмнопрстуфхцчшщъыьэюя]зъ') then begin ufo:=12081; exit end;
	if Regex.IsMatch(d, '[бвгдёжзмпртуфцчшщъьэю]съ') then begin ufo:=12082; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнпртуфхцчшщъыьэюя]тъ') then begin ufo:=12083; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопстуфхцчшщъыьэюя]хъ') then begin ufo:=12084; exit end;
	if Regex.IsMatch(d, '[фщъэ]бы') then begin ufo:=12085; exit end;
	if Regex.IsMatch(d, '[пфщъэ]вы') then begin ufo:=12086; exit end;
	if Regex.IsMatch(d, '[бгдпсфхцчшщъэ]ды') then begin ufo:=12087; exit end;
	if Regex.IsMatch(d, '[бгджзйклмнпрсфхцчшщъэю]зы') then begin ufo:=12088; exit end;
	if Regex.IsMatch(d, '[бвжнфцчщъьэ]лы') then begin ufo:=12089; exit end;
	if Regex.IsMatch(d, '[пфцщъэ]мы') then begin ufo:=12090; exit end;
	if Regex.IsMatch(d, '[гцщъэ]ны') then begin ufo:=12091; exit end;
	if Regex.IsMatch(d, '[бвгдёжйфхцчшщъэ]пы') then begin ufo:=12092; exit end;
	if Regex.IsMatch(d, '[вжнфхцчшщъэ]ры') then begin ufo:=12093; exit end;
	if Regex.IsMatch(d, '[гжпфцчщъэ]сы') then begin ufo:=12094; exit end;
	if Regex.IsMatch(d, '[бгщъэ]ты') then begin ufo:=12095; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзклмнпрсуфцчшщъыэя]фы') then begin ufo:=12096; exit end;
	if Regex.IsMatch(d, '[гёжфхцчщъыэю]цы') then begin ufo:=12097; exit end;
	if Regex.IsMatch(d, '[абвгджзйклмпрстфхцчшщъыьэюя]бь') then begin ufo:=12098; exit end;
	if Regex.IsMatch(d, '[бвгёжзйклмнпуфхцчшщъьэюя]вь') then begin ufo:=12099; exit end;
	if Regex.IsMatch(d, '[бгдёзклнпрфхцчшщъэ]дь') then begin ufo:=12100; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнорстуфхцчшщъыьэюя]еь') then begin ufo:=12101; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпрстфхцчшщъыьэю]жь') then begin ufo:=12102; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрстфхцчшщъыьэю]зь') then begin ufo:=12103; exit end;
	if Regex.IsMatch(d, '[вгдёжзфцчшъ]ль') then begin ufo:=12104; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнпрстфхцчшщъыьэюя]мь') then begin ufo:=12105; exit end;
	if Regex.IsMatch(d, '[бвгдёжйклмнпртфхцчшщъьэ]нь') then begin ufo:=12106; exit end;
	if Regex.IsMatch(d, '[бгёжзпртфхцчшщъэю]пь') then begin ufo:=12107; exit end;
	if Regex.IsMatch(d, '[бвгдёжзийклмнпрсфхцчшщъьэя]рь') then begin ufo:=12108; exit end;
	if Regex.IsMatch(d, '[бгдёжзйклмнпрстфхцчшщъьэ]сь') then begin ufo:=12109; exit end;
	if Regex.IsMatch(d, '[бвгжйклмнптфхцчшщъэ]ть') then begin ufo:=12110; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнпрстуфхцчшщъыьэюя]фь') then begin ufo:=12111; exit end;
	if Regex.IsMatch(d, '[бгдёжзйкмнпрстфхцчшщъэю]чь') then begin ufo:=12112; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъыэюя]шь') then begin ufo:=12113; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпрстуфхцчшщъыьэюя]щь') then begin ufo:=12114; exit end;
	if Regex.IsMatch(d, '[ёпъыэюя]аэ') then begin ufo:=12115; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнпрстуфхцшщъыьэюя]бэ') then begin ufo:=12116; exit end;
	if Regex.IsMatch(d, '[бпсфцшщъэ]вэ') then begin ufo:=12117; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзкмнпстфхцчшщъыьэюя]гэ') then begin ufo:=12118; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэю]дэ') then begin ufo:=12119; exit end;
	if Regex.IsMatch(d, '[аёзйпуфщъэюя]еэ') then begin ufo:=12120; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопртуфхцчшъыьэюя]ёэ') then begin ufo:=12121; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]жэ') then begin ufo:=12122; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнопрстуфхцчшщъыьэюя]зэ') then begin ufo:=12123; exit end;
	if Regex.IsMatch(d, '[бфцъэ]иэ') then begin ufo:=12124; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъьэюя]йэ') then begin ufo:=12125; exit end;
	if Regex.IsMatch(d, '[бгджзйптфцчшщъэ]кэ') then begin ufo:=12126; exit end;
	if Regex.IsMatch(d, '[бвгджйклмнпрстфхцчшщъьэю]лэ') then begin ufo:=12127; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстфхцчшщъьэю]мэ') then begin ufo:=12128; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнпрстуфхцчшщъыьэюя]нэ') then begin ufo:=12129; exit end;
	if Regex.IsMatch(d, '[беёжзийсуфчщъыьэюя]оэ') then begin ufo:=12130; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстфхцчшщъыьэюя]пэ') then begin ufo:=12131; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнпрстуфхцчшщъыьэюя]рэ') then begin ufo:=12132; exit end;
	if Regex.IsMatch(d, '[бвгджзпруфцчшщъэю]сэ') then begin ufo:=12133; exit end;
	if Regex.IsMatch(d, '[бвгджзлмнптфцчшщъыьэ]тэ') then begin ufo:=12134; exit end;
	if Regex.IsMatch(d, '[аёзйлоуфхщъыэю]уэ') then begin ufo:=12135; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпстуфхцчшщъыьэю]хэ') then begin ufo:=12136; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопрстуфхцчшщъыьэюя]цэ') then begin ufo:=12137; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэю]чэ') then begin ufo:=12138; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыьэюя]шэ') then begin ufo:=12139; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]щэ') then begin ufo:=12140; exit end;
	if Regex.IsMatch(d, '[агдеёжзийкоуфхчшщъыьэюя]ыэ') then begin ufo:=12141; exit end;
	if Regex.IsMatch(d, '[абгеёжийкмопуфхцщъыьэюя]ьэ') then begin ufo:=12142; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмптфхцчшщъыэю]юэ') then begin ufo:=12143; exit end;
	if Regex.IsMatch(d, '[гёжпфхцчшщъыэю]яэ') then begin ufo:=12144; exit end;
	if Regex.IsMatch(d, '[аеёийоуфъыьэюя]аю') then begin ufo:=12145; exit end;
	if Regex.IsMatch(d, '[абгдеёжзйклнопрстфхцчшщъыьэюя]бю') then begin ufo:=12146; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзийклмнопрстуфхцчшщъыэюя]вю') then begin ufo:=12147; exit end;
	if Regex.IsMatch(d, '[абгдеёжзийклмнопрстуфхцчшщъыьэюя]гю') then begin ufo:=12148; exit end;
	if Regex.IsMatch(d, '[бвгдеёзийклмопрстфхцчшщъыьэю]дю') then begin ufo:=12149; exit end;
	if Regex.IsMatch(d, '[ёзцъыэ]ею') then begin ufo:=12150; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэю]зю') then begin ufo:=12151; exit end;
	if Regex.IsMatch(d, '[ёжйопуфщъыьэюя]ию') then begin ufo:=12152; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъьэюя]йю') then begin ufo:=12153; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэюя]кю') then begin ufo:=12154; exit end;
	if Regex.IsMatch(d, '[жфцщъэ]лю') then begin ufo:=12155; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстуфхцчшщъыьэюя]мю') then begin ufo:=12156; exit end;
	if Regex.IsMatch(d, '[гёзкпуфцчщъэю]ню') then begin ufo:=12157; exit end;
	if Regex.IsMatch(d, '[аеёийоуфцчщъыьэюя]ою') then begin ufo:=12158; exit end;
	if Regex.IsMatch(d, '[бгдеёжзйклмнопрсуфхцчшщъыьэюя]пю') then begin ufo:=12159; exit end;
	if Regex.IsMatch(d, '[вгджзйнпрсхцчшщъыьэ]рю') then begin ufo:=12160; exit end;
	if Regex.IsMatch(d, '[бгджзпсфчшщъэю]сю') then begin ufo:=12161; exit end;
	if Regex.IsMatch(d, '[бджкптфцчшщъыя]тю') then begin ufo:=12162; exit end;
	if Regex.IsMatch(d, '[аеёйуфъыьэюя]ую') then begin ufo:=12163; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэю]фю') then begin ufo:=12164; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйклмнопрстуфхцчшщъьэюя]хю') then begin ufo:=12165; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]шю') then begin ufo:=12166; exit end;
	if Regex.IsMatch(d, '[абвгеёжзийклмнопрстуфхцчшщъыьэюя]ъю') then begin ufo:=12167; exit end;
	if Regex.IsMatch(d, '[агеёийкоухцъыьэюя]ью') then begin ufo:=12168; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмпрстуфхцчшщъыэюя]юю') then begin ufo:=12169; exit end;
	if Regex.IsMatch(d, '[бвгдеёжзйкмптуфхцчшщъыьэюя]яю') then begin ufo:=12170; exit end;
	if Regex.IsMatch(d, '[ёфъэ]ая') then begin ufo:=12171; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъыьэя]бя') then begin ufo:=12172; exit end;
	if Regex.IsMatch(d, '[вгёжймнпфцчшщъыэ]вя') then begin ufo:=12173; exit end;
	if Regex.IsMatch(d, '[бвгдежзийклмнпстфхцчшщъыьэюя]гя') then begin ufo:=12174; exit end;
	if Regex.IsMatch(d, '[бвгдмнпсфцчшщъэ]дя') then begin ufo:=12175; exit end;
	if Regex.IsMatch(d, '[ёзйуфхъэюя]ея') then begin ufo:=12176; exit end;
	if Regex.IsMatch(d, '[абвгдёжзийклмнопртуфхцчшъыьэюя]ёя') then begin ufo:=12177; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстфхцчшщъыьэюя]жя') then begin ufo:=12178; exit end;
	if Regex.IsMatch(d, '[бгджзклмнпрфхцчшщъэю]зя') then begin ufo:=12179; exit end;
	if Regex.IsMatch(d, '[ъэ]ия') then begin ufo:=12180; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйклмнпрстфхцчшщъьэюя]йя') then begin ufo:=12181; exit end;
	if Regex.IsMatch(d, '[бгджзйклмнпрстуфхцчшщъыьэю]кя') then begin ufo:=12182; exit end;
	if Regex.IsMatch(d, '[жзйлнцчщъьэ]ля') then begin ufo:=12183; exit end;
	if Regex.IsMatch(d, '[бгджлнпфцчшщъэ]мя') then begin ufo:=12184; exit end;
	if Regex.IsMatch(d, '[пфцчщъэ]ня') then begin ufo:=12185; exit end;
	if Regex.IsMatch(d, '[аеёжзйсуфчщъыьэюя]оя') then begin ufo:=12186; exit end;
	if Regex.IsMatch(d, '[бгпфхцчшщъыэ]пя') then begin ufo:=12187; exit end;
	if Regex.IsMatch(d, '[жфшъэ]ря') then begin ufo:=12188; exit end;
	if Regex.IsMatch(d, '[джзнпфцшщъэ]ся') then begin ufo:=12189; exit end;
	if Regex.IsMatch(d, '[жзфцшщъэ]тя') then begin ufo:=12190; exit end;
	if Regex.IsMatch(d, '[ёуфшщъыэю]уя') then begin ufo:=12191; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнопрстуфхцчшщъыьэя]фя') then begin ufo:=12192; exit end;
	if Regex.IsMatch(d, '[бвгджзйклмнопстфхцчшщъьэю]хя') then begin ufo:=12193; exit end;
	if Regex.IsMatch(d, '[абвгдёжзйклмнопрстуфхцчшщъыьэюя]ця') then begin ufo:=12194; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзйклмнопрстуфхцчшщъыьэю]чя') then begin ufo:=12195; exit end;
	if Regex.IsMatch(d, '[абвгдеёжзийклмнпрстуфхцчшщъыьэюя]шя') then begin ufo:=12196; exit end;
	if Regex.IsMatch(d, '[авгдеёжийклмнопрстуфхцчшщъыьэюя]ъя') then begin ufo:=12197; exit end;
	if Regex.IsMatch(d, '[агеёжийклопуфхцчшщъыьэюя]ыя') then begin ufo:=12198; exit end;
	if Regex.IsMatch(d, '[агеёийкоухцъыьэюя]ья') then begin ufo:=12199; exit end;
	if Regex.IsMatch(d, '[бвгдёжзйкмпстфхцчшщъыэюя]юя') then begin ufo:=12200; exit end;
	if Regex.IsMatch(d, '[вгеёжйпуфхцчшщъэю]яя') then begin ufo:=12201; exit end; 
	result:=false; 
end; //fb2 


function bido(x: string):boolean;// биграммы смерти
begin
  ufo:=0;
  if Regex.IsMatch(x, '\bа[веёжцчщъыь ]\b') then ufo:=970;
  if Regex.IsMatch(x, '\bб[^аениоту ]\b') then ufo:=970;
  if Regex.IsMatch(x, '\bв[^авдеиоу ]\b') then ufo:=971;
  if Regex.IsMatch(x, '\bг[^абеиоуэ]\b') then ufo:=972;
  if Regex.IsMatch(x, '\bд[^авгежикотуэю]\b') then ufo:=973;
  if Regex.IsMatch(x, '\bе[^джбзйлмнртуя]\b') then ufo:=974;
  if Regex.IsMatch(x, '\bж[^део ]\b') then ufo:=975;
  if Regex.IsMatch(x, '\bз[^ау]\b') then ufo:=976;
  if Regex.IsMatch(x, '\bи[^авдежзийклмнорсфхшэя ]\b') then ufo:=977;
  if Regex.IsMatch(x, '\bк[^абвеиоуцшэю ]\b') then ufo:=978;
  if Regex.IsMatch(x, '\bл[^агеилосуэя]\b') then ufo:=979;
  if Regex.IsMatch(x, '\bм[^аеикопуыюя]\b') then ufo:=980;
  result:=ufo>0;
end;   




function badword(x:string):boolean;// одиночные п, начальные ъ
begin
  ufo:=0;
  if Regex.IsMatch(x,'\b[гдеёзйлмнпртфхцчшщъыью]\b') then ufo:=668;// однобуквенные недоразумения
  if Regex.IsMatch(x,'\b[ъыь]') then ufo:=667;// начало слов с нетех букв
  result:=ufo>0; 
end; 

  
begin// main
if len_end<len_start then len_end:=len_start;// хотя бы
  //readln(h);// юзер вводит шифростроку
  lowerh:=lowercase(h);// перевел исходную шифростроку в нижний регистр  
  for var len:=len_start to len_end do // перебор длинн ключа
    begin
  {рафинирование шифротекста. оставляю только русс буквы}
      o:=lowerh;
///************************************
    {автоматизация подбора алфавита. от присутствия символов делется вывод.}
      a[0]:='абвгдеёжзийклмнопрстуфхцчшщъыьэюя';//_ //'';//
      a[1]:='абвгдежзийклмнопрстуфхцчшщъыьэюя';//'';//ё_'';//
      a[2]:='абвгдеёжзийклмнопрстуфхцчшщыьэюя';//ъ_'';//
      a[3]:='абвгдежзийклмнопрстуфхцчшщыьэюя';//'';//ёъ_
      
      a[4]:='абвгдеёжзийклмнопрстуфхцчшщъыьэюя_';// ////
      a[5]:='абвгдежзийклмнопрстуфхцчшщъыьэюя_';//ё //
      a[6]:='абвгдеёжзийклмнопрстуфхцчшщыьэюя_';//ъ ////    
      a[7]:='абвгдежзийклмнопрстуфхцчшщыьэюя_';//ёъ //    
//************************      
      var withspaceh:='';   
      for var i:=1 to length(o) do
        if pos(o[i],a[4])>0 then withspaceh:=withspaceh+o[i];      
      doubleh:=withspaceh+withspaceh;// удвоенная шифрострока
      
for aba:=0 to 7 do // перебор алфавитов
begin
  //if aba<>3 then continue;
  
  if a[aba]='' then goto esc;
  if (aba=0)and(pos('_',o)>0) then continue;
  if (aba=1)and((pos('ё',o)>0)or(pos('_',o)>0)) then continue;  
  if (aba=2)and((pos('ъ',o)>0)or(pos('_',o)>0)) then continue;  
  if (aba=3)and((pos('ё',o)>0)or(pos('ъ',o)>0)or(pos('_',o)>0)) then continue;  
  if (aba=5)and((pos('ё',o)>0)) then continue;  
  if (aba=6)and((pos('ъ',o)>0)) then continue;  
  if (aba=7)and((pos('ё',o)>0)or(pos('ъ',o)>0)) then continue;  
  if (aba in [4..7])and(pos(' ',o)>0)then continue;
  writeln('**************************(',aba,')   ',a[aba]);
  // в алфавите должны быть все бувы шифровки. иначе алфавит не совместим с шифровкой.
  for var i:=1 to length(withspaceh) do
    if pos(withspaceh[i],a[aba])=0 then continue;
  //
  if (aba in [4..7])and(length(o)<>length(h)) then 
    continue;
  if len*3>length(withspaceh) then 
    begin
      writeln('too long key'); 
      halt(0);
    end;  
  strip[0]:=copy(withspaceh,1,3);// обломки слов
  strip[1]:=copy(withspaceh,1+len,3);  
  strip[2]:=copy(withspaceh,1+2*len,3);  
  gap:=''; for var i:=1 to len-3 do gap:=gap+'_';//
  gap5:=''; for var i:=1 to len-3 do gap5:=gap5+'@';// чтобы регулярки не спотыкались о края слов
// стартовое значние ключа
  var cv:='ааа';//'кры';//'ено';//'сир';//'МИФ';//'ЖАЖ';//'ФАЙ';//'ЁБА';//'ФАК';//'СИР';//
  if cv='ааа' then limit:=0 else limit:=1; 
  n:=0;
  for var i:=pot(cv[1]) to length(a[aba]) do
  for var j:=pot(cv[2]) to length(a[aba]) do    
  for var k:=pot(cv[3]) to length(a[aba]) do      
    begin
      if limit>0 then// превышен лимит попыток
        if n>=limit then continue;    
      inc(n);// попытки ключа
      //результат конкретного ключа здесь
     //if limit>0 then if ufo>0 then writeln(key,gap,ufo:6,e5:15);   
      key:=
        a[aba][1+(length(a[aba])*2-i+1)mod length(a[aba])]+
        a[aba][1+(length(a[aba])*2-j+1)mod length(a[aba])]+
        a[aba][1+(length(a[aba])*2-k+1)mod length(a[aba])];  
      if pos('_',key)>0 then continue;//нельзя в ключах подчеркивание

  //********************************/
      s:=//зям___быо___знщ
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

      // лимитированый вывод если просто проверить определенный ключ
     //if limit>0 then writeln(uppercase(key),e5:25); // СИР          мра___ряс___зао   
      if fb1(s) then continue;    
      d:='';e:='';
      doubleh:=withspaceh+withspaceh; // удвоеная исходная шифрострока 
      for var w:=1 to 1+(length(withspaceh)div len) do //    
        begin
          d:=d
            +a[aba][1+(pos(doubleh[1+(w-1)*len+0],a[aba])-2+i)mod length(a[aba])]
            +a[aba][1+(pos(doubleh[1+(w-1)*len+1],a[aba])-2+j)mod length(a[aba])]
            +a[aba][1+(pos(doubleh[1+(w-1)*len+2],a[aba])-2+k)mod length(a[aba])]
            +gap;  
          e:=e
            +a[aba][1+(pos(doubleh[1+(w-1)*len+0],a[aba])-2+i)mod length(a[aba])]
            +a[aba][1+(pos(doubleh[1+(w-1)*len+1],a[aba])-2+j)mod length(a[aba])]
            +a[aba][1+(pos(doubleh[1+(w-1)*len+2],a[aba])-2+k)mod length(a[aba])]
            +gap5;      
        end;  
      d:=copy(d,1,length(withspaceh));//
      e:=copy(e,1,length(withspaceh)); 
      if fb2(d) then continue;   
      ak47:=kolt(e);// бить на слова
      if badword(ak47) then continue;// одиночные п, начальные ъ   
   //**********************************************************************/ 
   if len>3 then 
     for var fourth:=1 to length(a[aba]) do  
       begin 
       d:=''; e:='';
      for var w:=1 to 1+(length(h)div len) do 
      begin
        d:=d
          +a[aba][1+(pos((doubleh)[1+(w-1)*len+0],a[aba])-2+i)mod length(a[aba])]
          +a[aba][1+(pos((doubleh)[1+(w-1)*len+1],a[aba])-2+j)mod length(a[aba])]
          +a[aba][1+(pos((doubleh)[1+(w-1)*len+2],a[aba])-2+k)mod length(a[aba])]
          +a[aba][1+(pos((doubleh)[1+(w-1)*len+3],a[aba])-2+fourth)mod length(a[aba])]      
          +copy(gap,1,length(gap)-1);  
        e:=e
          +a[aba][1+(pos((doubleh)[1+(w-1)*len+0],a[aba])-2+i)mod length(a[aba])]
          +a[aba][1+(pos((doubleh)[1+(w-1)*len+1],a[aba])-2+j)mod length(a[aba])]
          +a[aba][1+(pos((doubleh)[1+(w-1)*len+2],a[aba])-2+k)mod length(a[aba])]
          +a[aba][1+(pos((doubleh)[1+(w-1)*len+3],a[aba])-2+fourth)mod length(a[aba])]      
          +copy(gap5,1,length(gap5)-1);         
      end; 
      d:=copy(d,1,length(withspaceh));// деши
      //if(d[1]<>'н')then continue;// если известна первая буква открытого можно не церемониться
      //if(d[4]<>'д')then continue;// если известна четвертая буква открытого можно не церемониться   
      e:=copy(e,1,length(h)); 
        if fb1(d) then continue;
        if fb2(d) then continue;
        if badword(d) then continue; // одиночные п, начальные ъ
    //**********************************************************************/     
        if len>4 then// ключ длиннее четырех
          begin
            for var fifth:=1 to length(a[aba]) do //подбор пятой буквы
              begin
                d:=''; e:='';        
                for var w:=1 to 1+(length(withspaceh)div len) do // расшифровка            
                  begin
                    d:=d
                      +a[aba][1+(pos((doubleh)[1+(w-1)*len+0],a[aba])-2+i)mod length(a[aba])]
                      +a[aba][1+(pos((doubleh)[1+(w-1)*len+1],a[aba])-2+j)mod length(a[aba])]
                      +a[aba][1+(pos((doubleh)[1+(w-1)*len+2],a[aba])-2+k)mod length(a[aba])]
                      +a[aba][1+(pos((doubleh)[1+(w-1)*len+3],a[aba])-2+fourth)mod length(a[aba])]   
                      +a[aba][1+(pos((doubleh)[1+(w-1)*len+4],a[aba])-2+fifth)mod length(a[aba])]        
                      +copy(gap,1,length(gap)-2);  
                    e:=e
                      +a[aba][1+(pos((doubleh)[1+(w-1)*len+0],a[aba])-2+i)mod length(a[aba])]
                      +a[aba][1+(pos((doubleh)[1+(w-1)*len+1],a[aba])-2+j)mod length(a[aba])]
                      +a[aba][1+(pos((doubleh)[1+(w-1)*len+2],a[aba])-2+k)mod length(a[aba])]
                      +a[aba][1+(pos((doubleh)[1+(w-1)*len+3],a[aba])-2+fourth)mod length(a[aba])]   
                      +a[aba][1+(pos((doubleh)[1+(w-1)*len+4],a[aba])-2+fifth)mod length(a[aba])]       
                      +copy(gap5,1,length(gap5)-2);        
                  end;           
                d:=copy(d,1,length(withspaceh)); // обрезка под длину строки
                //if(d[5]<>'у')then continue; // известная буква открытого текста
                e:=copy(e,1,length(withspaceh)); // расшифровка
                if fb1(d) then continue;
                if fb2(d) then continue;             
                key5:=(key+gap);// длинный ключ СИР___
                key5[4]:=a[aba][1+(length(a[aba])-fourth+1) mod length(a[aba])];// подстановка букв в ключ
                key5[5]:=a[aba][1+(length(a[aba])-fifth+1) mod length(a[aba])];// подстановка букв в ключ
                ak47:=kolt(e); // разделение на слова 
                if badword(ak47) then continue;// одиночные п, начальные ъ
                if bido(ak47) then continue;// биграммы смерти
                if dict(ak47) then continue;//проверка по словарю
                writeln(uppercase(key5),'    ',ak47); // бинго 
              end;//fifth
            end
            else
            begin
              key4:=(key+gap);
              key4[4]:=a[aba][1+(length(a[aba])-fourth+1) mod length(a[aba])];
              ak47:=kolt(e);
              if badword(ak47) then continue;// одиночные п, начальные ъ  
              if bido(ak47) then continue;// биграммы смерти
              if dict(ak47) then continue;//проверка по словарю
              writeln(key4,'    ',ak47); 
            end;
          end//k2
          else// len>3
          begin
            ak47:=kolt(e);
            if badword(ak47) then continue;  // одиночные п, начальные ъ   
            if bido(ak47) then continue;// биграммы смерти
            if dict(ak47) then continue;// проверка по словарю
            writeln(key,gap,'    ',ak47);      // найденно       
          end;      
      end;// k
  esc:  
    end;//aba  
  end;//len перебор длин ключя
  writeln('the end');
end.

