#### 1
Когда мы перетащили файлы с произведением Льва Толстого – мы перетащили их в файловую систему виртуальной машины, но не в HDFS, соответственно, в первую очередь нам нужно перенести их в папку нашего пользователя именно на HDFS.
```
[cloudera@quickstart Downloads]$ hadoop fs -put ./*.txt .
```

#### 2
После того, как файлы окажутся на HDFS попробуйте выполнить команду, которая выводит содержимое папки. Особенно обратите внимание на права доступа к вашим файлам.
```
[cloudera@quickstart Downloads]$ hadoop fs -ls
Found 4 items
-rw-r--r--   1 cloudera cloudera     736519 2022-11-17 01:26 voyna-i-mir-tom-1.txt
-rw-r--r--   1 cloudera cloudera     770324 2022-11-17 01:26 voyna-i-mir-tom-2.txt
-rw-r--r--   1 cloudera cloudera     843205 2022-11-17 01:26 voyna-i-mir-tom-3.txt
-rw-r--r--   1 cloudera cloudera     697960 2022-11-17 01:26 voyna-i-mir-tom-4.txt
```

#### 3
Далее сожмите все 4 тома в 1 файл.
```
[cloudera@quickstart Downloads]$ hadoop fs -getmerge -nl *.txt ./tolstoi.txt
[cloudera@quickstart Downloads]$ hadoop fs -put tolstoi.txt .
```

#### 4
Теперь давайте изменим права доступа к нашему файлу. Чтобы с нашим файлом могли взаимодействовать коллеги, установите режим доступа, который дает полный доступ для владельца файла, а для сторонних пользователей возможность читать и выполнять.

```
[cloudera@quickstart Downloads]$ hadoop fs -chmod 755 tolstoi.txt
```

#### 5
Попробуйте заново использовать команду для вывода содержимого папки и обратите внимание как изменились права доступа к файлу.
```
[cloudera@quickstart Downloads]$ hadoop fs -ls
Found 5 items
-rwxr-xr-x   1 cloudera cloudera    3048012 2022-11-17 01:36 tolstoi.txt
-rw-r--r--   1 cloudera cloudera     736519 2022-11-17 01:26 voyna-i-mir-tom-1.txt
-rw-r--r--   1 cloudera cloudera     770324 2022-11-17 01:26 voyna-i-mir-tom-2.txt
-rw-r--r--   1 cloudera cloudera     843205 2022-11-17 01:26 voyna-i-mir-tom-3.txt
-rw-r--r--   1 cloudera cloudera     697960 2022-11-17 01:26 voyna-i-mir-tom-4.txt
```
Видим, что права изменились

#### 6

Теперь попробуем вывести на экран информацию о том, сколько места на диске занимает наш файл. Желательно, чтобы размер файла был удобочитаемым.
```
[cloudera@quickstart Downloads]$ hadoop fs -du -h tolstoi.txt
2.9 M  2.9 M  tolstoi.txt
```

#### 7
На экране вы можете заметить 2 числа. Первое число – это фактический размер файла, а второе – это занимаемое файлом место на диске с учетом репликации. По умолчанию в данной версии HDFS эти числа будут одинаковы – это означает, что никакой репликации нет – нас это не очень устраивает, мы хотели бы, чтобы у наших файлов существовали резервные копии, поэтому напишите команду, которая изменит фактор репликации на 2.
```
[cloudera@quickstart Downloads]$ hadoop fs -setrep 2 tolstoi.txt
Replication 2 set: tolstoi.txt
```

#### 8
Повторите команду, которая выводит информацию о том, какое место на диске занимает файл и убедитесь, что изменения произошли.
```
[cloudera@quickstart Downloads]$ hadoop fs -du -h tolstoi.txt
2.9 M  5.8 M  tolstoi.txt
```

#### 9
Напишите команду, которая подсчитывает количество строк в вашем файле
```
[cloudera@quickstart Downloads]$ hadoop fs -cat tolstoi.txt | wc -l
10276
```