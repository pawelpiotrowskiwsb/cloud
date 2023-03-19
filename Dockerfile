# Pobieramy obraz systemu Ubuntu
FROM ubuntu:latest

# Aktualizujemy system i instalujemy potrzebne pakiety
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Kopiujemy pliki z bieżącego katalogu do katalogu /app w kontenerze
COPY . /app

# Pracujemy w katalogu /app
WORKDIR /app

# Instalujemy zależności
RUN pip install flask
RUN pip3 install -r requirements.txt

# Ustawiamy zmienne środowiskowe
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=8080

# Otwieramy port 8080
EXPOSE 8080

# Uruchamiamy serwer HTTP
CMD ["flask", "run"]

