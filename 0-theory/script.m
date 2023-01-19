% first
disp('first')
disp('a=ones(5)')
a=ones(5)
disp('a=[]')
a=[]
disp('a=""')
a=""
disp("a=''")
a=['']
disp('a(5).b(1,3) = "Good day"')
a(5).b(1,3) = "Good day"
disp('a(4).c = false')
a(4).c = false
disp('a=uint8(17)')
a=uint8(17)

disp('second')
disp('clear all - ничего')
clear all
disp('a = j, i,j - системные мнимые единицы')
a = j
disp("a': если переменной а не было, то Unrecognized function or variable 'a'. Если до этого было выполнено a = j, то a =     0.0000 - 1.0000i. Если a было целым числом, то выведет значение а. Если а было string, то выведет значение а. Если а было char, то транспонирует строку. Матрицу он транспонирует (колонки и строки меняется местами)")
a'
disp('1/ans: выведет результат деления, при этом в переменную ans перезапишется текущий результат')
1/ans
disp('pi: если перед этим выполнить format long, то выведет 3.141592653589793. По умолчанию format short')
pi
disp('1/2i')
1/2i
disp('1/2*i')
1/2*i
disp('pi=3; pi')
pi=3; pi
disp('randi(1,1,1)')
randi(1,1,1)
disp('rng(0); a=randn; rng(0); a==randn')
rng(0); a=randn; rng(0); a==randn
disp('a=1:3; a*a’')
a=1:3; a*a'
disp('a(end-1): выведет предпоследний эл. массива а')
a(end-1)
disp('2^3^2')
2^3^2
disp('1/Inf')
1/Inf
disp('1i^-1')
1i^-1	
disp('clear pi, atan2(sqrt(3),-1)*180/pi: clear pi присваивает pi значение по умолчанию, если оно было переназначено. Как этот арктангенс в уме считать я хз')
clear pi, atan2(sqrt(3),-1)*180/pi
disp('a=1:4; a=reshape(a,2,2)')
a=1:4; a=reshape(a,2,2)
disp('a(3): третий элемент массива. если выполнять после пред. команды, то выведет 3')
a(3)
disp('a=a’; a(3): транспонирует матрицу и выведет третий элемент (элементы хранятся по столбикам, те из пред. примера 1,2,3,4)')
a=a'

disp('third')
disp('3.1')
clear all
a.UserData{3}.x=1;
b=a;
a.UserData{3}.x=2;
b.UserData{3}.x

disp('3.2: как я понял, что line, что handle в примере ниже - это классы какие то общие, и если мы их переопределяем, то атрибуты переопределяются у всех объектов этих классов')
figure visible off
a = line;
a.UserData{3}.x=1;
b = a;
c = a.UserData;
a.UserData{3}.x=2;
b.UserData{3}.x
c{3}.x
%keyboard

disp('3.3')
a.UserData=3;
b=a;
a.UserData=4;
b.UserData

disp('3.4')
a=[];
a.UserData=5;
b=a;
a.UserData=6;
b.UserData
% keyboard

disp('3.5: как я понял, что line в примере выше, что handle - это классы какие то общие, и если мы их переопределяем, то атрибуты переопределяются у всех объектов этих классов')
a = handle(0);
a.UserData.x=7;
b=a;
a.UserData.x=8;
b.UserData.x
%return


disp('fourth (%3 по его билетам КЕКW)')

close all;
clear all;
fclose all;
1/0;
ans';
disp("'ans - Character vector is not terminated properly")
%'ans
0^0^0;
disp('a(8,9){2,3}.x.y.z = 0 - Invalid array indexing')
%a(8,9){2,3}.x.y.z=0;
a(8,9).x{2,3}.y.z=0;
disp('b(2){3}=1 - Invalid array indexing')
%b(2){3}=1;
b{3}(2)=1;
disp('x - Unrecognized function or variable "x"')
%x
x=NaN;
x=x==x;
disp('x==x=x - Incorrect use of "=" operator. Assign a value to a variable using "=" and compare values for equality using "==".')
%x==x=x
disp('[x,y] = [1,2] - Too many output arguments')
%[x,y]=[1,2]
disp('[x,y] = {1,2} - Too many output arguments')
%[x,y] = {1,2}
[x,y]=deal({1,2});
[x,y]=deal(1,2);
[x,y,z]=deal({1,2});
disp('[x,y,z]=deal(1,2) - The number of outputs should match the number of inputs.')
%[x,y,z]=deal(1,2)

disp("после 4 (%3)")
a={1,2,3}
[x,y,z]=deal(a{:})
disp('[x,y] = deal(a{:}) - The number of outputs should match the number of inputs')
%[x,y]=deal(a{:})
[x,y]=deal(a(:))
disp('error - Not enough input arguments')
%error
disp("error error - Error using script \n error - Как бы ошибка, но вызывается скриптом")
%error error
warning
try error, catch me, end
disp("continue - A CONTINUE may only be used within a FOR or WHILE loop, and then only within the same file as its corresponding FOR or WHILE statement")
%continue
[c]=textscan("this is a test",'%s')
c = textscan("this is a test",'%s')
c(:) = textscan('this is a test','%s')
[c(:)] = textscan('this is a test','%s')
celldisp(c)
disp("на 151 строке открывается плот")
%cellplot(c)
c{1}{4}(2)
disp('c{1}{2}(3) - Index exceeds the number of array elements. Index must not exceed 2')
%c{1}{2}(3)
NaN=1
disp("for = 2 - Incorrect use of '=' operator. Assign a value to a variable using '=' and compare values for equality using '=='")
%for = 2
for i=1, i, end
a=-1:-1:-3
for i=a, i, end
for i=i, i, end
for a=a, a, end
for i=i(1:end), i, end
disp("if NaN==1, then 1, else 2, end - Unrecognized function or variable 'then'.")
%if NaN==1, then 1, else 2, end
if NaN~=1, 1, else 2, end
disp("a += 1 - Unrecognized function or variable 'a'")
%a += 1;
a =+ 1;
a=magic(5);
b=a(2:3,3:end)
a(2:3,3:end)=b
disp("a(2:3,3:end)=[0;0] - Unable to perform assignment because the size of the left side is 2-by-3 and the size of the right side is 2-by-1.")
%a(2:3,3:end)=[0;0]
a(2:3,3:end)=b+[0;0]
a(2:3,3:end)=0
inv(a)
disp("Matrix must be square")
%inv(b)
a(a==0)=-1
a(find(a==0))=-1
a(find(a==-1))=0
funm(a,@cos)

disp("%----предсказать верно ли")
fprintf("2^2^2^2 == 2^2^(2^2): %d\n", 2^2^2^2 == 2^2^(2^2))
fprintf("2^2^2^2 == 2^(2^(2^2)): %d\n", 2^2^2^2 == 2^(2^(2^2)))
fprintf("quaternion(0,1,0,0)*quaternion(0,0,1,0) == quaternion(0,0,0,1): %d\n", quaternion(0,1,0,0)*quaternion(0,0,1,0) == quaternion(0,0,0,1))
fprintf("isequal({[]},{}): %d\n", isequal({[]},{}))
fprintf("isequal([{}],{}): %d\n", isequal([{}],{}))
fprintf('isequal("''",''''''''): %d\n', isequal("'",''''))
fprintf('isequal("''",''''''''): %d\n', isequal("''",''''))
fprintf('isequal(''"'',""""): %d\n', isequal('"',""""))
fprintf("ismember('',{''}): %d\n", ismember('',{''}))
fprintf('ismember('''''''',{''"''}): %d\n', ismember('''',{'"'}))
fprintf('ismember('''''''',{''''''''}): %d, \n', ismember('''',{''''}))
fprintf('ismember('''''''',''''''''): %d\n', ismember('''',''''))
fprintf('ismember('''''''',"''"): %d\n', ismember('''',"'"))

disp("%-----предсказать, пусто (isempty) или нет:")
fprintf('isempty( {{}} ): %d\n', isempty( {{}} ))
fprintf('isempty( [[{}]] ): %d\n', isempty( [[{}]] ))
fprintf('isempty( {[]} ): %d\n', isempty( {[]} ))
fprintf('isempty( setdiff({''a'',''b'',''b'',''c''},{''a'',''b'',''c''}) ): %d\n', isempty( setdiff({'a','b','b','c'},{'a','b','c'}) ))
fprintf('isempty( setdiff({},{''a'',''b'',''c''}) ): %d\n', isempty( setdiff({},{'a','b','c'}) ))
fprintf('isempty( ismember([],[[]]) ): %d\n', isempty( ismember([],[[]]) ))

disp('%-----предсказать ошибку при выполнении каждой из следующих строк:')
disp("'")
'';
disp("'''")
'''';
disp("'''''")
disp('"""')
"""";
disp('"""""')
"'";
"''";
"'''";
'"""';
""';
disp('''''"')
disp('"""''')
'"';
disp('"''')
disp('''"''"''')
"'"';
'""';
disp('"')
"""'""";
'''"''';
''' """ ''';
disp('""" '''''' ''''''')
""" ''""";
disp('`''`')
'`';
"`'";
"`"';
disp('""`''')
""'';
"`"''''';
disp('"`"`"')
disp('''`"`''''')
'`"`''';
disp("~''")
disp('~""')
~'''';
disp("~'`''")
~'`''';
disp("'-'-'-'-'")
-'-'-'-';
disp("-'-'-'-'-'")
'=='=='=='=='==';
[ ' ' ' ' ' ']';
disp("[ ' ' ' ' ' ' ' ]")
[]/[];
disp("1/[]")
disp("[]^[]")
[].^[];