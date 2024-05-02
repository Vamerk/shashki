FROM python:3.12
LABEL authors="V_amerk"

# Установка зависимостей
RUN apt-get update && \
    apt-get install -y \
    libgl1-mesa-glx \
    libxcb-xinerama0


# Установка рабочей директории
WORKDIR /src

# Копирование зависимостей и установка их через pip
COPY requirements.txt /src
RUN pip install -r requirements.txt

# Копирование приложения в контейнер
COPY . /src/

# Команда для запуска вашего приложения
CMD ["python", "main_window.pyw"]
