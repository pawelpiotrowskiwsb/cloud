from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return '''
        <html>
            <head>
                <title>Moja strona internetowa</title>
            </head>
            <body>
                <h1 style="color:blue;">Witaj na mojej stronie!</h1>
                <p style="font-size:20px;">Ta strona została stworzona za pomocą Flask.</p>
                <img src="https://picsum.photos/200/300" alt="Losowe zdjęcie">
            </body>
        </html>
    '''

if __name__ == '__main__':
    app.run()

