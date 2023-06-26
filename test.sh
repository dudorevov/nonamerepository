#!/bin/bash

# Спросить у пользователя имя директории и путь для поиска
echo "Введите имя директории:"
read dirname
echo "Введите полный путь для поиска (например, /home/user):"
read path

# Искать директорию с заданным именем в указанном пути
result=$(find $path -type d -name $dirname)

# Проверить, нашли ли директорию
if [ -z "$result" ]
then
  echo "Директория не найдена"
else
  echo "Найдена директория:"
  echo $result
fi

exit 0
