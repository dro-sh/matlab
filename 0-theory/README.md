### Док

В скрипте **script.m** скопированы все примеры из дока. Ниже приведена консолька с из самого матлаба немного откорректированная.

### Задачи
#### First

Первая строчка: выполняемая команда, следующая - результат.

```matlab
a=ones(5)
a =
     1     1     1     1     1
     1     1     1     1     1
     1     1     1     1     1
     1     1     1     1     1
     1     1     1     1     1

a=[]
a =
     []

a=""
a =
    ""

a=''
a =
  0×0 empty char array

a(5).b(1,3) = "Good day"
a =
  1×5 struct array with fields:
    b

a(4).c = false
a =
  1×5 struct array with fields:
    b
    c

a=uint8(17)
output: a =
  uint8
   17
```

#### Second

Первая строчка - выполняемая команда, следущая - результат
```matlab
clear all - ничего

a = j, i,j - системные мнимые единицы
a =
   0.0000 + 1.0000i

a': если переменной а не было, то Unrecognized function or variable 'a'. Если до этого было выполнено a = j, то a =     0.0000 - 1.0000i
Если a было целым числом, то выведет значение а. Если а было string, то выведет значение а
Если а было char, то транспонирует строку. Матрицу он транспонирует (колонки и строки меняется местами)
ans =
   0.0000 - 1.0000i

1/ans: выведет результат деления, при этом в переменную ans перезапишется текущий результат
ans =
   0.0000 + 1.0000i

pi: если перед этим выполнить format long, то выведет 3.141592653589793. По умолчанию format short
ans =
    3.1416

1/2i
ans =
   0.0000 - 0.5000i

1/2*i
ans =
   0.0000 + 0.5000i

pi=3; pi
pi =
     3

randi(1,1,1)
ans =
     1

rng(0); a=randn; rng(0); a==randn
ans =
  logical
   1

a=1:3; a*a’
ans =
    14

a(end-1): выведет предпоследний эл. массива а
ans =
     2

2^3^2
ans =
    64

1/Inf
ans =
     0

1i^-1
ans =
   0.0000 - 1.0000i

clear pi, atan2(sqrt(3),-1)*180/pi: clear pi присваивает pi значение по умолчанию, если оно было переназначено. 
Как этот арктангенс в уме считать я хз
ans =
  120.0000

a=1:4; a=reshape(a,2,2)
a =
     1     3
     2     4

a(3): третий элемент массива. если выполнять после пред. команды, то выведет 3
ans =
     3

a=a’; a(3):
a = 2
```

#### Third

Номер задачи, ниже результат.
```matlab
3.1
ans =
1

3.2: как я понял, что line, что handle в примере ниже - это классы какие то общие, и если мы их переопределяем, то атрибуты переопределяются у всех объектов этих классов (2 ответа)
ans =
2
ans =
1

3.3
ans =
4

3.4
ans =
5

3.5: как я понял, что line в примере выше, что handle - это классы какие то общие, и если мы их переопределяем, то атрибуты переопределяются у всех объектов этих классов
ans =
8
```

#### Fourth (%3 по его билетам КЕКW)

Тут строки только в которых ошибки


`'ans - Character vector is not terminated properly`

`a(8,9){2,3}.x.y.z = 0 - Invalid array indexing`

`b(2){3}=1 - Invalid array indexing`

`x - Unrecognized function or variable "x"`

`x==x=x - Incorrect use of "=" operator. Assign a value to a variable using "=" and compare values for equality using "==".`

`[x,y] = [1,2] - Too many output arguments`

`[x,y] = {1,2} - Too many output arguments`

`[x,y,z]=deal(1,2) - The number of outputs should match the number of inputs.`

`[x,y] = deal(a{:}) - The number of outputs should match the number of inputs`

`error - Not enough input arguments`

`error error - Error using script \n error - Как бы ошибка, но вызывается скриптом`


`continue - A CONTINUE may only be used within a FOR or WHILE loop, and then only within the same file as its corresponding FOR or WHILE statement`

`c{1}{2}(3) - Index exceeds the number of array elements. Index must not exceed 2`

`for = 2 - Incorrect use of '=' operator. Assign a value to a variable using '=' and compare values for equality using '=='`

`if NaN==1, then 1, else 2, end - Unrecognized function or variable 'then'.`

`a += 1 - Unrecognized function or variable 'a'`

`a(2:3,3:end)=[0;0] - Unable to perform assignment because the size of the left side is 2-by-3 and the size of the right side is 2-by-1.`

`inv(b) - Matrix must be square`


#### предсказать верно ли

`{вариант}: {0 - неверно | 1 - верно}`

```matlab
2^2^2^2 == 2^2^(2^2): 1
2^2^2^2 == 2^(2^(2^2)): 0
quaternion(0,1,0,0)\*quaternion(0,0,1,0) == quaternion(0,0,0,1): 1
isequal({[]},{}): 0
isequal([{}],{}): 1
isequal("'",''''): 1
isequal("'",''''): 0
isequal('"',""""): 1
ismember('',{''}): 1
ismember('''',{'"'}): 0
ismember('''',{''''}): 1,
ismember('''',''''): 1
ismember('''',"'"): 1
```

### предсказать, пусто (isempty) или нет:
```matlab
isempty( {{}} ): 0
isempty( [[{}]] ): 1
isempty( {[]} ): 0
isempty( setdiff({'a','b','b','c'},{'a','b','c'}) ): 1
isempty( setdiff({},{'a','b','c'}) ): 1
isempty( ismember([],[[]]) ): 1
```


### предсказать ошибку при выполнении каждой из следующих строк:

Тут только строки, в которых ошибки:

`'`

`'''`

`'''''`

`"""`

`"""""`

`''"`

`"""'`

`"'`

`'"'"'`

``"``

``""" ''' '''``

``'``

```
""`'
"`"`"
'`"`''
```

`~''`

`~""`

```
~'`''
```


`'-'-'-'-'`

`-'-'-'-'-'`

`[ ' ' ' ' ' ' ' ]`

`1/[]`

`[]^[]`
